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
$ docker pull maven@sha256:1ab1dab08e84de1d2434d0dc4d945e2b696c27a1a79b8a1e5da3c6a453fac977
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261182774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fccd9964928631774ced4e8b577bb52114a8bd114c1125a1e2ca9eacd4c4727`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:29:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:29:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Fri, 23 Sep 2016 19:29:54 GMT
ENV JAVA_VERSION=7u111
# Fri, 23 Sep 2016 19:29:54 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Fri, 23 Sep 2016 19:30:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 24 Sep 2016 04:16:27 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 24 Sep 2016 04:16:27 GMT
ARG USER_HOME_DIR=/root
# Sat, 24 Sep 2016 04:16:29 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 24 Sep 2016 04:16:29 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 24 Sep 2016 04:16:29 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 24 Sep 2016 04:16:30 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 24 Sep 2016 04:16:30 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 24 Sep 2016 04:16:31 GMT
VOLUME [/root/.m2]
# Sat, 24 Sep 2016 04:16:31 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 24 Sep 2016 04:16:31 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409661ef3bb5533bc0d9af9714600368cbe4db3b090bf03c3ffc064fbb01380b`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22859462f4f732a7f8402b7b8c50cab274b8e5481af8770168aabd775441cf0`  
		Last Modified: Fri, 23 Sep 2016 19:31:32 GMT  
		Size: 139.6 MB (139611053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbdcec50cf804551f399c103771004cd2b1385b2974feaaa20885a12bdece8c`  
		Last Modified: Sat, 24 Sep 2016 04:16:41 GMT  
		Size: 8.6 MB (8598849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1033576fcc168323c1ce4cda3b76a6a79576d02b296c550c703082c0440ece5`  
		Last Modified: Sat, 24 Sep 2016 04:16:39 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77be925de7effb9cea8d437d8f590da1422369abdaefe802899bbae88e659781`  
		Last Modified: Sat, 24 Sep 2016 04:16:41 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-7`

```console
$ docker pull maven@sha256:0d1fb622f42fa39c5516579db1d3f3bb46ec6b1f41666a53b1fdb09502a183a3
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261182862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd5906c898a8c88d9db0382e10df4b4d9f15a68b49e56ce17c35f249ad0f1959`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 04:55:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 04:55:27 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 04:55:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 04:55:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Tue, 20 Sep 2016 04:55:29 GMT
ENV JAVA_VERSION=7u111
# Tue, 20 Sep 2016 04:55:29 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Tue, 20 Sep 2016 16:30:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 19:06:30 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 20 Sep 2016 19:06:30 GMT
ARG USER_HOME_DIR=/root
# Tue, 20 Sep 2016 19:06:32 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 20 Sep 2016 19:06:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 20 Sep 2016 19:06:32 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 20 Sep 2016 19:06:33 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 20 Sep 2016 19:06:33 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 20 Sep 2016 19:06:34 GMT
VOLUME [/root/.m2]
# Tue, 20 Sep 2016 19:06:34 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 20 Sep 2016 19:06:34 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e9f9640562cf88eb4fbb29ff94d3c527e1abcaada715ce9b71011b7b9cdbc7`  
		Last Modified: Mon, 19 Sep 2016 17:55:02 GMT  
		Size: 42.5 MB (42496798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bb34190d78de660a5162c939bf1b690a7aa136c429d2aafac110d76b7bcad3`  
		Last Modified: Wed, 21 Sep 2016 16:59:32 GMT  
		Size: 592.9 KB (592910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67afd07ae545118006eb1760f32933231b3fc5a403d1b975ecf3f3439c17d93`  
		Last Modified: Wed, 21 Sep 2016 22:54:21 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9345fb42626d74c6446e1b40300b9ca6f2df76065efeb462ed02e276c3781c`  
		Last Modified: Wed, 21 Sep 2016 22:54:51 GMT  
		Size: 139.6 MB (139610831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8700dfaf27e69eef03d4235e1fa219c8189a3734034f158915705236fe048b`  
		Last Modified: Thu, 22 Sep 2016 18:40:43 GMT  
		Size: 8.6 MB (8598850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdebca3c927583c037d8bcacf802a7ec8ce569276a9a693e75cc8f5d23638ae`  
		Last Modified: Thu, 22 Sep 2016 18:40:40 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44882c8dd3c2d913979287617c7490d96ab50c92c88955580d15174e3d402b46`  
		Last Modified: Thu, 22 Sep 2016 18:40:40 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7`

```console
$ docker pull maven@sha256:1ab1dab08e84de1d2434d0dc4d945e2b696c27a1a79b8a1e5da3c6a453fac977
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261182774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fccd9964928631774ced4e8b577bb52114a8bd114c1125a1e2ca9eacd4c4727`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:29:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:29:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Fri, 23 Sep 2016 19:29:54 GMT
ENV JAVA_VERSION=7u111
# Fri, 23 Sep 2016 19:29:54 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Fri, 23 Sep 2016 19:30:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 24 Sep 2016 04:16:27 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 24 Sep 2016 04:16:27 GMT
ARG USER_HOME_DIR=/root
# Sat, 24 Sep 2016 04:16:29 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 24 Sep 2016 04:16:29 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 24 Sep 2016 04:16:29 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 24 Sep 2016 04:16:30 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 24 Sep 2016 04:16:30 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 24 Sep 2016 04:16:31 GMT
VOLUME [/root/.m2]
# Sat, 24 Sep 2016 04:16:31 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 24 Sep 2016 04:16:31 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409661ef3bb5533bc0d9af9714600368cbe4db3b090bf03c3ffc064fbb01380b`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22859462f4f732a7f8402b7b8c50cab274b8e5481af8770168aabd775441cf0`  
		Last Modified: Fri, 23 Sep 2016 19:31:32 GMT  
		Size: 139.6 MB (139611053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbdcec50cf804551f399c103771004cd2b1385b2974feaaa20885a12bdece8c`  
		Last Modified: Sat, 24 Sep 2016 04:16:41 GMT  
		Size: 8.6 MB (8598849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1033576fcc168323c1ce4cda3b76a6a79576d02b296c550c703082c0440ece5`  
		Last Modified: Sat, 24 Sep 2016 04:16:39 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77be925de7effb9cea8d437d8f590da1422369abdaefe802899bbae88e659781`  
		Last Modified: Sat, 24 Sep 2016 04:16:41 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-7-onbuild`

```console
$ docker pull maven@sha256:56800b20720732bbb169438108ae41c8723195c844b4891417a1f1319b833c60
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-7-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261182934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7f1b539387c721ab3aba0b94a9a4a91074589a1f027f1fda007075f7d931579`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:29:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:29:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Fri, 23 Sep 2016 19:29:54 GMT
ENV JAVA_VERSION=7u111
# Fri, 23 Sep 2016 19:29:54 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Fri, 23 Sep 2016 19:30:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 24 Sep 2016 04:16:27 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 24 Sep 2016 04:16:27 GMT
ARG USER_HOME_DIR=/root
# Sat, 24 Sep 2016 04:16:29 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 24 Sep 2016 04:16:29 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 24 Sep 2016 04:16:29 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 24 Sep 2016 04:16:30 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 24 Sep 2016 04:16:30 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 24 Sep 2016 04:16:31 GMT
VOLUME [/root/.m2]
# Sat, 24 Sep 2016 04:16:31 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 24 Sep 2016 04:16:31 GMT
CMD ["mvn"]
# Sat, 24 Sep 2016 04:17:09 GMT
RUN mkdir -p /usr/src/app
# Sat, 24 Sep 2016 04:17:09 GMT
WORKDIR /usr/src/app
# Sat, 24 Sep 2016 04:17:10 GMT
ONBUILD ADD . /usr/src/app
# Sat, 24 Sep 2016 04:17:10 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409661ef3bb5533bc0d9af9714600368cbe4db3b090bf03c3ffc064fbb01380b`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22859462f4f732a7f8402b7b8c50cab274b8e5481af8770168aabd775441cf0`  
		Last Modified: Fri, 23 Sep 2016 19:31:32 GMT  
		Size: 139.6 MB (139611053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbdcec50cf804551f399c103771004cd2b1385b2974feaaa20885a12bdece8c`  
		Last Modified: Sat, 24 Sep 2016 04:16:41 GMT  
		Size: 8.6 MB (8598849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1033576fcc168323c1ce4cda3b76a6a79576d02b296c550c703082c0440ece5`  
		Last Modified: Sat, 24 Sep 2016 04:16:39 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77be925de7effb9cea8d437d8f590da1422369abdaefe802899bbae88e659781`  
		Last Modified: Sat, 24 Sep 2016 04:16:41 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a3766ec24e1c7e2fa97c1915c1ae3345f5122b2c922cc63aae8e04f2bf4428`  
		Last Modified: Sat, 24 Sep 2016 04:17:18 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-7-onbuild`

```console
$ docker pull maven@sha256:56800b20720732bbb169438108ae41c8723195c844b4891417a1f1319b833c60
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-7-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261182934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7f1b539387c721ab3aba0b94a9a4a91074589a1f027f1fda007075f7d931579`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:29:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:29:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Fri, 23 Sep 2016 19:29:54 GMT
ENV JAVA_VERSION=7u111
# Fri, 23 Sep 2016 19:29:54 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Fri, 23 Sep 2016 19:30:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 24 Sep 2016 04:16:27 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 24 Sep 2016 04:16:27 GMT
ARG USER_HOME_DIR=/root
# Sat, 24 Sep 2016 04:16:29 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 24 Sep 2016 04:16:29 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 24 Sep 2016 04:16:29 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 24 Sep 2016 04:16:30 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 24 Sep 2016 04:16:30 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 24 Sep 2016 04:16:31 GMT
VOLUME [/root/.m2]
# Sat, 24 Sep 2016 04:16:31 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 24 Sep 2016 04:16:31 GMT
CMD ["mvn"]
# Sat, 24 Sep 2016 04:17:09 GMT
RUN mkdir -p /usr/src/app
# Sat, 24 Sep 2016 04:17:09 GMT
WORKDIR /usr/src/app
# Sat, 24 Sep 2016 04:17:10 GMT
ONBUILD ADD . /usr/src/app
# Sat, 24 Sep 2016 04:17:10 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409661ef3bb5533bc0d9af9714600368cbe4db3b090bf03c3ffc064fbb01380b`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22859462f4f732a7f8402b7b8c50cab274b8e5481af8770168aabd775441cf0`  
		Last Modified: Fri, 23 Sep 2016 19:31:32 GMT  
		Size: 139.6 MB (139611053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbdcec50cf804551f399c103771004cd2b1385b2974feaaa20885a12bdece8c`  
		Last Modified: Sat, 24 Sep 2016 04:16:41 GMT  
		Size: 8.6 MB (8598849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1033576fcc168323c1ce4cda3b76a6a79576d02b296c550c703082c0440ece5`  
		Last Modified: Sat, 24 Sep 2016 04:16:39 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77be925de7effb9cea8d437d8f590da1422369abdaefe802899bbae88e659781`  
		Last Modified: Sat, 24 Sep 2016 04:16:41 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a3766ec24e1c7e2fa97c1915c1ae3345f5122b2c922cc63aae8e04f2bf4428`  
		Last Modified: Sat, 24 Sep 2016 04:17:18 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-onbuild`

```console
$ docker pull maven@sha256:56800b20720732bbb169438108ae41c8723195c844b4891417a1f1319b833c60
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261182934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7f1b539387c721ab3aba0b94a9a4a91074589a1f027f1fda007075f7d931579`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:29:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:29:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Fri, 23 Sep 2016 19:29:54 GMT
ENV JAVA_VERSION=7u111
# Fri, 23 Sep 2016 19:29:54 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Fri, 23 Sep 2016 19:30:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 24 Sep 2016 04:16:27 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 24 Sep 2016 04:16:27 GMT
ARG USER_HOME_DIR=/root
# Sat, 24 Sep 2016 04:16:29 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 24 Sep 2016 04:16:29 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 24 Sep 2016 04:16:29 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 24 Sep 2016 04:16:30 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 24 Sep 2016 04:16:30 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 24 Sep 2016 04:16:31 GMT
VOLUME [/root/.m2]
# Sat, 24 Sep 2016 04:16:31 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 24 Sep 2016 04:16:31 GMT
CMD ["mvn"]
# Sat, 24 Sep 2016 04:17:09 GMT
RUN mkdir -p /usr/src/app
# Sat, 24 Sep 2016 04:17:09 GMT
WORKDIR /usr/src/app
# Sat, 24 Sep 2016 04:17:10 GMT
ONBUILD ADD . /usr/src/app
# Sat, 24 Sep 2016 04:17:10 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409661ef3bb5533bc0d9af9714600368cbe4db3b090bf03c3ffc064fbb01380b`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22859462f4f732a7f8402b7b8c50cab274b8e5481af8770168aabd775441cf0`  
		Last Modified: Fri, 23 Sep 2016 19:31:32 GMT  
		Size: 139.6 MB (139611053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfbdcec50cf804551f399c103771004cd2b1385b2974feaaa20885a12bdece8c`  
		Last Modified: Sat, 24 Sep 2016 04:16:41 GMT  
		Size: 8.6 MB (8598849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1033576fcc168323c1ce4cda3b76a6a79576d02b296c550c703082c0440ece5`  
		Last Modified: Sat, 24 Sep 2016 04:16:39 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77be925de7effb9cea8d437d8f590da1422369abdaefe802899bbae88e659781`  
		Last Modified: Sat, 24 Sep 2016 04:16:41 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a3766ec24e1c7e2fa97c1915c1ae3345f5122b2c922cc63aae8e04f2bf4428`  
		Last Modified: Sat, 24 Sep 2016 04:17:18 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-7-alpine`

```console
$ docker pull maven@sha256:2d61bbdfc00a49d971e285ea254c9b6fd8d4517d84f4cac9e98ae7676c309549
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-7-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.6 MB (89578346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3beb7ab46c5eb6e8ae98f0e30274824ea4dd88f878175d8f9adb6faf870e60e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:02:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Fri, 23 Sep 2016 17:02:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 23 Sep 2016 17:02:30 GMT
ENV JAVA_VERSION=7u91
# Fri, 23 Sep 2016 17:02:31 GMT
ENV JAVA_ALPINE_VERSION=7.91.2.6.3-r2
# Fri, 23 Sep 2016 17:02:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:59:00 GMT
RUN apk add --no-cache curl tar bash
# Fri, 23 Sep 2016 18:59:01 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 23 Sep 2016 18:59:01 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Sep 2016 18:59:03 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Sep 2016 18:59:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Sep 2016 18:59:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Sep 2016 18:59:04 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Sep 2016 18:59:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Sep 2016 18:59:05 GMT
VOLUME [/root/.m2]
# Fri, 23 Sep 2016 18:59:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Sep 2016 18:59:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31023985e10510c0dc4dac5fe3ac63b0f53f89b1e6046bee2b996d183a509fa4`  
		Last Modified: Fri, 23 Sep 2016 17:03:05 GMT  
		Size: 76.6 MB (76601405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c86fd19ae63eaa534681fa748fbb3f982613a4aee21e2250dbc764aab9304a`  
		Last Modified: Fri, 23 Sep 2016 18:59:17 GMT  
		Size: 2.1 MB (2063887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33fed8e26d7d444d7b17b99f0a161b810de8ebd43ab7a00df7a08cbcb432fb2`  
		Last Modified: Fri, 23 Sep 2016 18:59:18 GMT  
		Size: 8.6 MB (8598860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb027a3c2dea775409385f83ed23773984baa6d5a97d6ee442aca36771b5825`  
		Last Modified: Fri, 23 Sep 2016 18:59:16 GMT  
		Size: 684.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ce5d528873fbdb864d54252775df7e2f8cca84ec6799cad17610f23edc6bc8`  
		Last Modified: Fri, 23 Sep 2016 18:59:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-7-alpine`

```console
$ docker pull maven@sha256:2d61bbdfc00a49d971e285ea254c9b6fd8d4517d84f4cac9e98ae7676c309549
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-7-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.6 MB (89578346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3beb7ab46c5eb6e8ae98f0e30274824ea4dd88f878175d8f9adb6faf870e60e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:02:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Fri, 23 Sep 2016 17:02:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 23 Sep 2016 17:02:30 GMT
ENV JAVA_VERSION=7u91
# Fri, 23 Sep 2016 17:02:31 GMT
ENV JAVA_ALPINE_VERSION=7.91.2.6.3-r2
# Fri, 23 Sep 2016 17:02:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:59:00 GMT
RUN apk add --no-cache curl tar bash
# Fri, 23 Sep 2016 18:59:01 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 23 Sep 2016 18:59:01 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Sep 2016 18:59:03 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Sep 2016 18:59:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Sep 2016 18:59:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Sep 2016 18:59:04 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Sep 2016 18:59:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Sep 2016 18:59:05 GMT
VOLUME [/root/.m2]
# Fri, 23 Sep 2016 18:59:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Sep 2016 18:59:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31023985e10510c0dc4dac5fe3ac63b0f53f89b1e6046bee2b996d183a509fa4`  
		Last Modified: Fri, 23 Sep 2016 17:03:05 GMT  
		Size: 76.6 MB (76601405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c86fd19ae63eaa534681fa748fbb3f982613a4aee21e2250dbc764aab9304a`  
		Last Modified: Fri, 23 Sep 2016 18:59:17 GMT  
		Size: 2.1 MB (2063887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33fed8e26d7d444d7b17b99f0a161b810de8ebd43ab7a00df7a08cbcb432fb2`  
		Last Modified: Fri, 23 Sep 2016 18:59:18 GMT  
		Size: 8.6 MB (8598860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb027a3c2dea775409385f83ed23773984baa6d5a97d6ee442aca36771b5825`  
		Last Modified: Fri, 23 Sep 2016 18:59:16 GMT  
		Size: 684.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ce5d528873fbdb864d54252775df7e2f8cca84ec6799cad17610f23edc6bc8`  
		Last Modified: Fri, 23 Sep 2016 18:59:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-alpine`

```console
$ docker pull maven@sha256:2d61bbdfc00a49d971e285ea254c9b6fd8d4517d84f4cac9e98ae7676c309549
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.6 MB (89578346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3beb7ab46c5eb6e8ae98f0e30274824ea4dd88f878175d8f9adb6faf870e60e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:02:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Fri, 23 Sep 2016 17:02:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 23 Sep 2016 17:02:30 GMT
ENV JAVA_VERSION=7u91
# Fri, 23 Sep 2016 17:02:31 GMT
ENV JAVA_ALPINE_VERSION=7.91.2.6.3-r2
# Fri, 23 Sep 2016 17:02:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:59:00 GMT
RUN apk add --no-cache curl tar bash
# Fri, 23 Sep 2016 18:59:01 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 23 Sep 2016 18:59:01 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Sep 2016 18:59:03 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Sep 2016 18:59:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Sep 2016 18:59:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Sep 2016 18:59:04 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Sep 2016 18:59:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Sep 2016 18:59:05 GMT
VOLUME [/root/.m2]
# Fri, 23 Sep 2016 18:59:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Sep 2016 18:59:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31023985e10510c0dc4dac5fe3ac63b0f53f89b1e6046bee2b996d183a509fa4`  
		Last Modified: Fri, 23 Sep 2016 17:03:05 GMT  
		Size: 76.6 MB (76601405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c86fd19ae63eaa534681fa748fbb3f982613a4aee21e2250dbc764aab9304a`  
		Last Modified: Fri, 23 Sep 2016 18:59:17 GMT  
		Size: 2.1 MB (2063887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33fed8e26d7d444d7b17b99f0a161b810de8ebd43ab7a00df7a08cbcb432fb2`  
		Last Modified: Fri, 23 Sep 2016 18:59:18 GMT  
		Size: 8.6 MB (8598860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb027a3c2dea775409385f83ed23773984baa6d5a97d6ee442aca36771b5825`  
		Last Modified: Fri, 23 Sep 2016 18:59:16 GMT  
		Size: 684.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ce5d528873fbdb864d54252775df7e2f8cca84ec6799cad17610f23edc6bc8`  
		Last Modified: Fri, 23 Sep 2016 18:59:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-7-onbuild-alpine`

```console
$ docker pull maven@sha256:074fc03080233354477f14d1a645311462dc6f2009575051ab5ca3749b5bd79c
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-7-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.6 MB (89578506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d77a4cd8afc442c6b969ef4dac2600c9d9cb132f48fd002319515628e8b07dd2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:02:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Fri, 23 Sep 2016 17:02:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 23 Sep 2016 17:02:30 GMT
ENV JAVA_VERSION=7u91
# Fri, 23 Sep 2016 17:02:31 GMT
ENV JAVA_ALPINE_VERSION=7.91.2.6.3-r2
# Fri, 23 Sep 2016 17:02:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:59:00 GMT
RUN apk add --no-cache curl tar bash
# Fri, 23 Sep 2016 18:59:01 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 23 Sep 2016 18:59:01 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Sep 2016 18:59:03 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Sep 2016 18:59:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Sep 2016 18:59:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Sep 2016 18:59:04 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Sep 2016 18:59:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Sep 2016 18:59:05 GMT
VOLUME [/root/.m2]
# Fri, 23 Sep 2016 18:59:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Sep 2016 18:59:06 GMT
CMD ["mvn"]
# Fri, 23 Sep 2016 18:59:51 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Sep 2016 18:59:51 GMT
WORKDIR /usr/src/app
# Fri, 23 Sep 2016 18:59:52 GMT
ONBUILD ADD . /usr/src/app
# Fri, 23 Sep 2016 18:59:52 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31023985e10510c0dc4dac5fe3ac63b0f53f89b1e6046bee2b996d183a509fa4`  
		Last Modified: Fri, 23 Sep 2016 17:03:05 GMT  
		Size: 76.6 MB (76601405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c86fd19ae63eaa534681fa748fbb3f982613a4aee21e2250dbc764aab9304a`  
		Last Modified: Fri, 23 Sep 2016 18:59:17 GMT  
		Size: 2.1 MB (2063887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33fed8e26d7d444d7b17b99f0a161b810de8ebd43ab7a00df7a08cbcb432fb2`  
		Last Modified: Fri, 23 Sep 2016 18:59:18 GMT  
		Size: 8.6 MB (8598860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb027a3c2dea775409385f83ed23773984baa6d5a97d6ee442aca36771b5825`  
		Last Modified: Fri, 23 Sep 2016 18:59:16 GMT  
		Size: 684.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ce5d528873fbdb864d54252775df7e2f8cca84ec6799cad17610f23edc6bc8`  
		Last Modified: Fri, 23 Sep 2016 18:59:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a043ec20d15f58d808cb35d4dcdd0232d156de45f345ba4c770b08322dbe8cc`  
		Last Modified: Fri, 23 Sep 2016 19:00:02 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-7-onbuild-alpine`

```console
$ docker pull maven@sha256:074fc03080233354477f14d1a645311462dc6f2009575051ab5ca3749b5bd79c
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-7-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.6 MB (89578506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d77a4cd8afc442c6b969ef4dac2600c9d9cb132f48fd002319515628e8b07dd2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:02:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Fri, 23 Sep 2016 17:02:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 23 Sep 2016 17:02:30 GMT
ENV JAVA_VERSION=7u91
# Fri, 23 Sep 2016 17:02:31 GMT
ENV JAVA_ALPINE_VERSION=7.91.2.6.3-r2
# Fri, 23 Sep 2016 17:02:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:59:00 GMT
RUN apk add --no-cache curl tar bash
# Fri, 23 Sep 2016 18:59:01 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 23 Sep 2016 18:59:01 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Sep 2016 18:59:03 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Sep 2016 18:59:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Sep 2016 18:59:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Sep 2016 18:59:04 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Sep 2016 18:59:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Sep 2016 18:59:05 GMT
VOLUME [/root/.m2]
# Fri, 23 Sep 2016 18:59:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Sep 2016 18:59:06 GMT
CMD ["mvn"]
# Fri, 23 Sep 2016 18:59:51 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Sep 2016 18:59:51 GMT
WORKDIR /usr/src/app
# Fri, 23 Sep 2016 18:59:52 GMT
ONBUILD ADD . /usr/src/app
# Fri, 23 Sep 2016 18:59:52 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31023985e10510c0dc4dac5fe3ac63b0f53f89b1e6046bee2b996d183a509fa4`  
		Last Modified: Fri, 23 Sep 2016 17:03:05 GMT  
		Size: 76.6 MB (76601405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c86fd19ae63eaa534681fa748fbb3f982613a4aee21e2250dbc764aab9304a`  
		Last Modified: Fri, 23 Sep 2016 18:59:17 GMT  
		Size: 2.1 MB (2063887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33fed8e26d7d444d7b17b99f0a161b810de8ebd43ab7a00df7a08cbcb432fb2`  
		Last Modified: Fri, 23 Sep 2016 18:59:18 GMT  
		Size: 8.6 MB (8598860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb027a3c2dea775409385f83ed23773984baa6d5a97d6ee442aca36771b5825`  
		Last Modified: Fri, 23 Sep 2016 18:59:16 GMT  
		Size: 684.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ce5d528873fbdb864d54252775df7e2f8cca84ec6799cad17610f23edc6bc8`  
		Last Modified: Fri, 23 Sep 2016 18:59:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a043ec20d15f58d808cb35d4dcdd0232d156de45f345ba4c770b08322dbe8cc`  
		Last Modified: Fri, 23 Sep 2016 19:00:02 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-onbuild-alpine`

```console
$ docker pull maven@sha256:074fc03080233354477f14d1a645311462dc6f2009575051ab5ca3749b5bd79c
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.6 MB (89578506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d77a4cd8afc442c6b969ef4dac2600c9d9cb132f48fd002319515628e8b07dd2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:02:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Fri, 23 Sep 2016 17:02:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 23 Sep 2016 17:02:30 GMT
ENV JAVA_VERSION=7u91
# Fri, 23 Sep 2016 17:02:31 GMT
ENV JAVA_ALPINE_VERSION=7.91.2.6.3-r2
# Fri, 23 Sep 2016 17:02:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:59:00 GMT
RUN apk add --no-cache curl tar bash
# Fri, 23 Sep 2016 18:59:01 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 23 Sep 2016 18:59:01 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Sep 2016 18:59:03 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Sep 2016 18:59:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Sep 2016 18:59:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Sep 2016 18:59:04 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Sep 2016 18:59:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Sep 2016 18:59:05 GMT
VOLUME [/root/.m2]
# Fri, 23 Sep 2016 18:59:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Sep 2016 18:59:06 GMT
CMD ["mvn"]
# Fri, 23 Sep 2016 18:59:51 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Sep 2016 18:59:51 GMT
WORKDIR /usr/src/app
# Fri, 23 Sep 2016 18:59:52 GMT
ONBUILD ADD . /usr/src/app
# Fri, 23 Sep 2016 18:59:52 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31023985e10510c0dc4dac5fe3ac63b0f53f89b1e6046bee2b996d183a509fa4`  
		Last Modified: Fri, 23 Sep 2016 17:03:05 GMT  
		Size: 76.6 MB (76601405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c86fd19ae63eaa534681fa748fbb3f982613a4aee21e2250dbc764aab9304a`  
		Last Modified: Fri, 23 Sep 2016 18:59:17 GMT  
		Size: 2.1 MB (2063887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33fed8e26d7d444d7b17b99f0a161b810de8ebd43ab7a00df7a08cbcb432fb2`  
		Last Modified: Fri, 23 Sep 2016 18:59:18 GMT  
		Size: 8.6 MB (8598860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb027a3c2dea775409385f83ed23773984baa6d5a97d6ee442aca36771b5825`  
		Last Modified: Fri, 23 Sep 2016 18:59:16 GMT  
		Size: 684.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ce5d528873fbdb864d54252775df7e2f8cca84ec6799cad17610f23edc6bc8`  
		Last Modified: Fri, 23 Sep 2016 18:59:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a043ec20d15f58d808cb35d4dcdd0232d156de45f345ba4c770b08322dbe8cc`  
		Last Modified: Fri, 23 Sep 2016 19:00:02 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-8`

```console
$ docker pull maven@sha256:2afc299b6f9da42c896e3b1c0e3b753334dfdf78bd855a09c7eee9b47619f8b6
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251930295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7addddbdd730b1bc8dd9deab5e045589ee9a677d4868df22215dfeb1d0248351`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:34:26 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:34:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:34:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:34:28 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:34:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:35:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:35:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 04:15:03 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 24 Sep 2016 04:15:03 GMT
ARG USER_HOME_DIR=/root
# Sat, 24 Sep 2016 04:15:05 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 24 Sep 2016 04:15:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 24 Sep 2016 04:15:06 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 24 Sep 2016 04:15:06 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 24 Sep 2016 04:15:07 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 24 Sep 2016 04:15:07 GMT
VOLUME [/root/.m2]
# Sat, 24 Sep 2016 04:15:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 24 Sep 2016 04:15:08 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b26cafa72d5c36eb885c0fa4d359dac87ce0ecbb1f8c8dbf8d7f17b4a7385c6`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f340301a2a0fd2ddb7dd16b2ea7e7319d473a865c7bc9f93aac4dfb5e9e3a665`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8512ca758302270e4f0a519f8afd1e4aaab0bbdb9f4bb369d93e3a547e53bf4`  
		Last Modified: Fri, 23 Sep 2016 19:36:13 GMT  
		Size: 130.1 MB (130074162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76b0eeb6b4da36f6af1f62ec8b07597883176035553ff18633821edfd3750ad`  
		Last Modified: Fri, 23 Sep 2016 19:35:43 GMT  
		Size: 284.2 KB (284191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076c0e4fff0c42be1997ef8c1aefec8f9973a0646514fcd0885a3e01b5e88ced`  
		Last Modified: Sat, 24 Sep 2016 04:15:18 GMT  
		Size: 8.6 MB (8598852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfc40e1f2fdfdf6908f9ed4ab6702313d4230e53e820b2ab6b56999e2ccd0c9`  
		Last Modified: Sat, 24 Sep 2016 04:15:17 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f92d2bbe47ddfc6a6ee203182404ee69fc3963157237acbdf8ddd47509e988a`  
		Last Modified: Sat, 24 Sep 2016 04:15:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9`

```console
$ docker pull maven@sha256:2afc299b6f9da42c896e3b1c0e3b753334dfdf78bd855a09c7eee9b47619f8b6
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251930295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7addddbdd730b1bc8dd9deab5e045589ee9a677d4868df22215dfeb1d0248351`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:34:26 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:34:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:34:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:34:28 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:34:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:35:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:35:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 04:15:03 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 24 Sep 2016 04:15:03 GMT
ARG USER_HOME_DIR=/root
# Sat, 24 Sep 2016 04:15:05 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 24 Sep 2016 04:15:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 24 Sep 2016 04:15:06 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 24 Sep 2016 04:15:06 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 24 Sep 2016 04:15:07 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 24 Sep 2016 04:15:07 GMT
VOLUME [/root/.m2]
# Sat, 24 Sep 2016 04:15:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 24 Sep 2016 04:15:08 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b26cafa72d5c36eb885c0fa4d359dac87ce0ecbb1f8c8dbf8d7f17b4a7385c6`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f340301a2a0fd2ddb7dd16b2ea7e7319d473a865c7bc9f93aac4dfb5e9e3a665`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8512ca758302270e4f0a519f8afd1e4aaab0bbdb9f4bb369d93e3a547e53bf4`  
		Last Modified: Fri, 23 Sep 2016 19:36:13 GMT  
		Size: 130.1 MB (130074162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76b0eeb6b4da36f6af1f62ec8b07597883176035553ff18633821edfd3750ad`  
		Last Modified: Fri, 23 Sep 2016 19:35:43 GMT  
		Size: 284.2 KB (284191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076c0e4fff0c42be1997ef8c1aefec8f9973a0646514fcd0885a3e01b5e88ced`  
		Last Modified: Sat, 24 Sep 2016 04:15:18 GMT  
		Size: 8.6 MB (8598852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfc40e1f2fdfdf6908f9ed4ab6702313d4230e53e820b2ab6b56999e2ccd0c9`  
		Last Modified: Sat, 24 Sep 2016 04:15:17 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f92d2bbe47ddfc6a6ee203182404ee69fc3963157237acbdf8ddd47509e988a`  
		Last Modified: Sat, 24 Sep 2016 04:15:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-8`

```console
$ docker pull maven@sha256:2afc299b6f9da42c896e3b1c0e3b753334dfdf78bd855a09c7eee9b47619f8b6
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251930295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7addddbdd730b1bc8dd9deab5e045589ee9a677d4868df22215dfeb1d0248351`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:34:26 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:34:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:34:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:34:28 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:34:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:35:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:35:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 04:15:03 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 24 Sep 2016 04:15:03 GMT
ARG USER_HOME_DIR=/root
# Sat, 24 Sep 2016 04:15:05 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 24 Sep 2016 04:15:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 24 Sep 2016 04:15:06 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 24 Sep 2016 04:15:06 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 24 Sep 2016 04:15:07 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 24 Sep 2016 04:15:07 GMT
VOLUME [/root/.m2]
# Sat, 24 Sep 2016 04:15:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 24 Sep 2016 04:15:08 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b26cafa72d5c36eb885c0fa4d359dac87ce0ecbb1f8c8dbf8d7f17b4a7385c6`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f340301a2a0fd2ddb7dd16b2ea7e7319d473a865c7bc9f93aac4dfb5e9e3a665`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8512ca758302270e4f0a519f8afd1e4aaab0bbdb9f4bb369d93e3a547e53bf4`  
		Last Modified: Fri, 23 Sep 2016 19:36:13 GMT  
		Size: 130.1 MB (130074162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76b0eeb6b4da36f6af1f62ec8b07597883176035553ff18633821edfd3750ad`  
		Last Modified: Fri, 23 Sep 2016 19:35:43 GMT  
		Size: 284.2 KB (284191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076c0e4fff0c42be1997ef8c1aefec8f9973a0646514fcd0885a3e01b5e88ced`  
		Last Modified: Sat, 24 Sep 2016 04:15:18 GMT  
		Size: 8.6 MB (8598852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfc40e1f2fdfdf6908f9ed4ab6702313d4230e53e820b2ab6b56999e2ccd0c9`  
		Last Modified: Sat, 24 Sep 2016 04:15:17 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f92d2bbe47ddfc6a6ee203182404ee69fc3963157237acbdf8ddd47509e988a`  
		Last Modified: Sat, 24 Sep 2016 04:15:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3`

```console
$ docker pull maven@sha256:2afc299b6f9da42c896e3b1c0e3b753334dfdf78bd855a09c7eee9b47619f8b6
```

-	Platforms:
	-	linux; amd64

### `maven:3.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251930295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7addddbdd730b1bc8dd9deab5e045589ee9a677d4868df22215dfeb1d0248351`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:34:26 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:34:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:34:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:34:28 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:34:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:35:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:35:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 04:15:03 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 24 Sep 2016 04:15:03 GMT
ARG USER_HOME_DIR=/root
# Sat, 24 Sep 2016 04:15:05 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 24 Sep 2016 04:15:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 24 Sep 2016 04:15:06 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 24 Sep 2016 04:15:06 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 24 Sep 2016 04:15:07 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 24 Sep 2016 04:15:07 GMT
VOLUME [/root/.m2]
# Sat, 24 Sep 2016 04:15:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 24 Sep 2016 04:15:08 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b26cafa72d5c36eb885c0fa4d359dac87ce0ecbb1f8c8dbf8d7f17b4a7385c6`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f340301a2a0fd2ddb7dd16b2ea7e7319d473a865c7bc9f93aac4dfb5e9e3a665`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8512ca758302270e4f0a519f8afd1e4aaab0bbdb9f4bb369d93e3a547e53bf4`  
		Last Modified: Fri, 23 Sep 2016 19:36:13 GMT  
		Size: 130.1 MB (130074162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76b0eeb6b4da36f6af1f62ec8b07597883176035553ff18633821edfd3750ad`  
		Last Modified: Fri, 23 Sep 2016 19:35:43 GMT  
		Size: 284.2 KB (284191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076c0e4fff0c42be1997ef8c1aefec8f9973a0646514fcd0885a3e01b5e88ced`  
		Last Modified: Sat, 24 Sep 2016 04:15:18 GMT  
		Size: 8.6 MB (8598852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfc40e1f2fdfdf6908f9ed4ab6702313d4230e53e820b2ab6b56999e2ccd0c9`  
		Last Modified: Sat, 24 Sep 2016 04:15:17 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f92d2bbe47ddfc6a6ee203182404ee69fc3963157237acbdf8ddd47509e988a`  
		Last Modified: Sat, 24 Sep 2016 04:15:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8`

```console
$ docker pull maven@sha256:f7740f79ea57a7bafd4b930d63df1625890b24014e0c09c8d07659a362055f73
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251930169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52e6d448ec400401ba50b0e68a408621854d4cc0ddf940bc6957d8eb1abc533b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 04:55:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:31:31 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 20 Sep 2016 16:31:32 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 16:31:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 16:31:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 20 Sep 2016 16:31:33 GMT
ENV JAVA_VERSION=8u102
# Tue, 20 Sep 2016 16:31:33 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 20 Sep 2016 16:31:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 20 Sep 2016 16:32:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:32:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Sep 2016 19:06:37 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 20 Sep 2016 19:06:37 GMT
ARG USER_HOME_DIR=/root
# Tue, 20 Sep 2016 19:06:39 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 20 Sep 2016 19:06:39 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 20 Sep 2016 19:06:39 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 20 Sep 2016 19:06:40 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 20 Sep 2016 19:06:40 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 20 Sep 2016 19:06:40 GMT
VOLUME [/root/.m2]
# Tue, 20 Sep 2016 19:06:41 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 20 Sep 2016 19:06:41 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e9f9640562cf88eb4fbb29ff94d3c527e1abcaada715ce9b71011b7b9cdbc7`  
		Last Modified: Mon, 19 Sep 2016 17:55:02 GMT  
		Size: 42.5 MB (42496798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bb34190d78de660a5162c939bf1b690a7aa136c429d2aafac110d76b7bcad3`  
		Last Modified: Wed, 21 Sep 2016 16:59:32 GMT  
		Size: 592.9 KB (592910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c99c854a7534fbe1ce2ee13ec1522172b6b4fc8ef2c79ee47e4dc47bb9e6e3`  
		Last Modified: Wed, 21 Sep 2016 16:59:31 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8843ac35975edea0b8abf9c6c70819188a606fd845de4333631de18997b86081`  
		Last Modified: Wed, 21 Sep 2016 16:59:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba41c7e179c2b55e4a4cdd7c6e1b993932e4cbdd309860d169799d1f92e7610a`  
		Last Modified: Wed, 21 Sep 2016 17:00:06 GMT  
		Size: 130.1 MB (130073726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f56d642a190474a7297f62fe8ad3eb8a88a0094b558a47acc0fc2a10c1a7ab1`  
		Last Modified: Wed, 21 Sep 2016 16:59:29 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:858a27a99161448550f5666808244d3bfd6dff503a16d502d9edec6a1ef08832`  
		Last Modified: Thu, 22 Sep 2016 18:43:11 GMT  
		Size: 8.6 MB (8598848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c16031fe2f82c5702adbdd89995177341e270394b181c12afa3e4e9ca4641be2`  
		Last Modified: Thu, 22 Sep 2016 18:43:10 GMT  
		Size: 690.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e74bd287f220310f759d5ddd0b80304369b61979bd835c2a94070285c235da`  
		Last Modified: Thu, 22 Sep 2016 18:43:10 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3`

```console
$ docker pull maven@sha256:2afc299b6f9da42c896e3b1c0e3b753334dfdf78bd855a09c7eee9b47619f8b6
```

-	Platforms:
	-	linux; amd64

### `maven:3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251930295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7addddbdd730b1bc8dd9deab5e045589ee9a677d4868df22215dfeb1d0248351`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:34:26 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:34:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:34:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:34:28 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:34:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:35:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:35:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 04:15:03 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 24 Sep 2016 04:15:03 GMT
ARG USER_HOME_DIR=/root
# Sat, 24 Sep 2016 04:15:05 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 24 Sep 2016 04:15:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 24 Sep 2016 04:15:06 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 24 Sep 2016 04:15:06 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 24 Sep 2016 04:15:07 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 24 Sep 2016 04:15:07 GMT
VOLUME [/root/.m2]
# Sat, 24 Sep 2016 04:15:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 24 Sep 2016 04:15:08 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b26cafa72d5c36eb885c0fa4d359dac87ce0ecbb1f8c8dbf8d7f17b4a7385c6`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f340301a2a0fd2ddb7dd16b2ea7e7319d473a865c7bc9f93aac4dfb5e9e3a665`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8512ca758302270e4f0a519f8afd1e4aaab0bbdb9f4bb369d93e3a547e53bf4`  
		Last Modified: Fri, 23 Sep 2016 19:36:13 GMT  
		Size: 130.1 MB (130074162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76b0eeb6b4da36f6af1f62ec8b07597883176035553ff18633821edfd3750ad`  
		Last Modified: Fri, 23 Sep 2016 19:35:43 GMT  
		Size: 284.2 KB (284191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076c0e4fff0c42be1997ef8c1aefec8f9973a0646514fcd0885a3e01b5e88ced`  
		Last Modified: Sat, 24 Sep 2016 04:15:18 GMT  
		Size: 8.6 MB (8598852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfc40e1f2fdfdf6908f9ed4ab6702313d4230e53e820b2ab6b56999e2ccd0c9`  
		Last Modified: Sat, 24 Sep 2016 04:15:17 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f92d2bbe47ddfc6a6ee203182404ee69fc3963157237acbdf8ddd47509e988a`  
		Last Modified: Sat, 24 Sep 2016 04:15:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:latest`

```console
$ docker pull maven@sha256:2afc299b6f9da42c896e3b1c0e3b753334dfdf78bd855a09c7eee9b47619f8b6
```

-	Platforms:
	-	linux; amd64

### `maven:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251930295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7addddbdd730b1bc8dd9deab5e045589ee9a677d4868df22215dfeb1d0248351`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:34:26 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:34:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:34:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:34:28 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:34:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:35:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:35:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 04:15:03 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 24 Sep 2016 04:15:03 GMT
ARG USER_HOME_DIR=/root
# Sat, 24 Sep 2016 04:15:05 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 24 Sep 2016 04:15:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 24 Sep 2016 04:15:06 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 24 Sep 2016 04:15:06 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 24 Sep 2016 04:15:07 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 24 Sep 2016 04:15:07 GMT
VOLUME [/root/.m2]
# Sat, 24 Sep 2016 04:15:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 24 Sep 2016 04:15:08 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b26cafa72d5c36eb885c0fa4d359dac87ce0ecbb1f8c8dbf8d7f17b4a7385c6`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f340301a2a0fd2ddb7dd16b2ea7e7319d473a865c7bc9f93aac4dfb5e9e3a665`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8512ca758302270e4f0a519f8afd1e4aaab0bbdb9f4bb369d93e3a547e53bf4`  
		Last Modified: Fri, 23 Sep 2016 19:36:13 GMT  
		Size: 130.1 MB (130074162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76b0eeb6b4da36f6af1f62ec8b07597883176035553ff18633821edfd3750ad`  
		Last Modified: Fri, 23 Sep 2016 19:35:43 GMT  
		Size: 284.2 KB (284191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076c0e4fff0c42be1997ef8c1aefec8f9973a0646514fcd0885a3e01b5e88ced`  
		Last Modified: Sat, 24 Sep 2016 04:15:18 GMT  
		Size: 8.6 MB (8598852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfc40e1f2fdfdf6908f9ed4ab6702313d4230e53e820b2ab6b56999e2ccd0c9`  
		Last Modified: Sat, 24 Sep 2016 04:15:17 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f92d2bbe47ddfc6a6ee203182404ee69fc3963157237acbdf8ddd47509e988a`  
		Last Modified: Sat, 24 Sep 2016 04:15:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-8-onbuild`

```console
$ docker pull maven@sha256:e952a73c2f0b65dce99ef8ce62ab890ee60a261ab6eae5e1ffb128019b0b8428
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-8-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251930452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4867c6f875d1429da0c3a2b22a5072215eda8afbfcef1f64ebbd94a249d0ffe6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:34:26 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:34:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:34:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:34:28 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:34:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:35:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:35:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 04:15:03 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 24 Sep 2016 04:15:03 GMT
ARG USER_HOME_DIR=/root
# Sat, 24 Sep 2016 04:15:05 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 24 Sep 2016 04:15:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 24 Sep 2016 04:15:06 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 24 Sep 2016 04:15:06 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 24 Sep 2016 04:15:07 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 24 Sep 2016 04:15:07 GMT
VOLUME [/root/.m2]
# Sat, 24 Sep 2016 04:15:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 24 Sep 2016 04:15:08 GMT
CMD ["mvn"]
# Sat, 24 Sep 2016 04:17:44 GMT
RUN mkdir -p /usr/src/app
# Sat, 24 Sep 2016 04:17:44 GMT
WORKDIR /usr/src/app
# Sat, 24 Sep 2016 04:17:44 GMT
ONBUILD ADD . /usr/src/app
# Sat, 24 Sep 2016 04:17:45 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b26cafa72d5c36eb885c0fa4d359dac87ce0ecbb1f8c8dbf8d7f17b4a7385c6`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f340301a2a0fd2ddb7dd16b2ea7e7319d473a865c7bc9f93aac4dfb5e9e3a665`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8512ca758302270e4f0a519f8afd1e4aaab0bbdb9f4bb369d93e3a547e53bf4`  
		Last Modified: Fri, 23 Sep 2016 19:36:13 GMT  
		Size: 130.1 MB (130074162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76b0eeb6b4da36f6af1f62ec8b07597883176035553ff18633821edfd3750ad`  
		Last Modified: Fri, 23 Sep 2016 19:35:43 GMT  
		Size: 284.2 KB (284191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076c0e4fff0c42be1997ef8c1aefec8f9973a0646514fcd0885a3e01b5e88ced`  
		Last Modified: Sat, 24 Sep 2016 04:15:18 GMT  
		Size: 8.6 MB (8598852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfc40e1f2fdfdf6908f9ed4ab6702313d4230e53e820b2ab6b56999e2ccd0c9`  
		Last Modified: Sat, 24 Sep 2016 04:15:17 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f92d2bbe47ddfc6a6ee203182404ee69fc3963157237acbdf8ddd47509e988a`  
		Last Modified: Sat, 24 Sep 2016 04:15:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719b36968fc8ef1b1ad51a54b125f5568ee2ed6d5e61f662cf86a01365936211`  
		Last Modified: Sat, 24 Sep 2016 04:17:53 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-onbuild`

```console
$ docker pull maven@sha256:e952a73c2f0b65dce99ef8ce62ab890ee60a261ab6eae5e1ffb128019b0b8428
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251930452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4867c6f875d1429da0c3a2b22a5072215eda8afbfcef1f64ebbd94a249d0ffe6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:34:26 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:34:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:34:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:34:28 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:34:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:35:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:35:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 04:15:03 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 24 Sep 2016 04:15:03 GMT
ARG USER_HOME_DIR=/root
# Sat, 24 Sep 2016 04:15:05 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 24 Sep 2016 04:15:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 24 Sep 2016 04:15:06 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 24 Sep 2016 04:15:06 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 24 Sep 2016 04:15:07 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 24 Sep 2016 04:15:07 GMT
VOLUME [/root/.m2]
# Sat, 24 Sep 2016 04:15:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 24 Sep 2016 04:15:08 GMT
CMD ["mvn"]
# Sat, 24 Sep 2016 04:17:44 GMT
RUN mkdir -p /usr/src/app
# Sat, 24 Sep 2016 04:17:44 GMT
WORKDIR /usr/src/app
# Sat, 24 Sep 2016 04:17:44 GMT
ONBUILD ADD . /usr/src/app
# Sat, 24 Sep 2016 04:17:45 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b26cafa72d5c36eb885c0fa4d359dac87ce0ecbb1f8c8dbf8d7f17b4a7385c6`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f340301a2a0fd2ddb7dd16b2ea7e7319d473a865c7bc9f93aac4dfb5e9e3a665`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8512ca758302270e4f0a519f8afd1e4aaab0bbdb9f4bb369d93e3a547e53bf4`  
		Last Modified: Fri, 23 Sep 2016 19:36:13 GMT  
		Size: 130.1 MB (130074162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76b0eeb6b4da36f6af1f62ec8b07597883176035553ff18633821edfd3750ad`  
		Last Modified: Fri, 23 Sep 2016 19:35:43 GMT  
		Size: 284.2 KB (284191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076c0e4fff0c42be1997ef8c1aefec8f9973a0646514fcd0885a3e01b5e88ced`  
		Last Modified: Sat, 24 Sep 2016 04:15:18 GMT  
		Size: 8.6 MB (8598852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfc40e1f2fdfdf6908f9ed4ab6702313d4230e53e820b2ab6b56999e2ccd0c9`  
		Last Modified: Sat, 24 Sep 2016 04:15:17 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f92d2bbe47ddfc6a6ee203182404ee69fc3963157237acbdf8ddd47509e988a`  
		Last Modified: Sat, 24 Sep 2016 04:15:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719b36968fc8ef1b1ad51a54b125f5568ee2ed6d5e61f662cf86a01365936211`  
		Last Modified: Sat, 24 Sep 2016 04:17:53 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-8-onbuild`

```console
$ docker pull maven@sha256:e952a73c2f0b65dce99ef8ce62ab890ee60a261ab6eae5e1ffb128019b0b8428
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-8-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251930452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4867c6f875d1429da0c3a2b22a5072215eda8afbfcef1f64ebbd94a249d0ffe6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:34:26 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:34:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:34:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:34:28 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:34:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:35:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:35:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 04:15:03 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 24 Sep 2016 04:15:03 GMT
ARG USER_HOME_DIR=/root
# Sat, 24 Sep 2016 04:15:05 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 24 Sep 2016 04:15:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 24 Sep 2016 04:15:06 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 24 Sep 2016 04:15:06 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 24 Sep 2016 04:15:07 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 24 Sep 2016 04:15:07 GMT
VOLUME [/root/.m2]
# Sat, 24 Sep 2016 04:15:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 24 Sep 2016 04:15:08 GMT
CMD ["mvn"]
# Sat, 24 Sep 2016 04:17:44 GMT
RUN mkdir -p /usr/src/app
# Sat, 24 Sep 2016 04:17:44 GMT
WORKDIR /usr/src/app
# Sat, 24 Sep 2016 04:17:44 GMT
ONBUILD ADD . /usr/src/app
# Sat, 24 Sep 2016 04:17:45 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b26cafa72d5c36eb885c0fa4d359dac87ce0ecbb1f8c8dbf8d7f17b4a7385c6`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f340301a2a0fd2ddb7dd16b2ea7e7319d473a865c7bc9f93aac4dfb5e9e3a665`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8512ca758302270e4f0a519f8afd1e4aaab0bbdb9f4bb369d93e3a547e53bf4`  
		Last Modified: Fri, 23 Sep 2016 19:36:13 GMT  
		Size: 130.1 MB (130074162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76b0eeb6b4da36f6af1f62ec8b07597883176035553ff18633821edfd3750ad`  
		Last Modified: Fri, 23 Sep 2016 19:35:43 GMT  
		Size: 284.2 KB (284191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076c0e4fff0c42be1997ef8c1aefec8f9973a0646514fcd0885a3e01b5e88ced`  
		Last Modified: Sat, 24 Sep 2016 04:15:18 GMT  
		Size: 8.6 MB (8598852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfc40e1f2fdfdf6908f9ed4ab6702313d4230e53e820b2ab6b56999e2ccd0c9`  
		Last Modified: Sat, 24 Sep 2016 04:15:17 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f92d2bbe47ddfc6a6ee203182404ee69fc3963157237acbdf8ddd47509e988a`  
		Last Modified: Sat, 24 Sep 2016 04:15:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719b36968fc8ef1b1ad51a54b125f5568ee2ed6d5e61f662cf86a01365936211`  
		Last Modified: Sat, 24 Sep 2016 04:17:53 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-onbuild`

```console
$ docker pull maven@sha256:e952a73c2f0b65dce99ef8ce62ab890ee60a261ab6eae5e1ffb128019b0b8428
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251930452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4867c6f875d1429da0c3a2b22a5072215eda8afbfcef1f64ebbd94a249d0ffe6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:34:26 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:34:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:34:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:34:28 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:34:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:35:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:35:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 04:15:03 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 24 Sep 2016 04:15:03 GMT
ARG USER_HOME_DIR=/root
# Sat, 24 Sep 2016 04:15:05 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 24 Sep 2016 04:15:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 24 Sep 2016 04:15:06 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 24 Sep 2016 04:15:06 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 24 Sep 2016 04:15:07 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 24 Sep 2016 04:15:07 GMT
VOLUME [/root/.m2]
# Sat, 24 Sep 2016 04:15:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 24 Sep 2016 04:15:08 GMT
CMD ["mvn"]
# Sat, 24 Sep 2016 04:17:44 GMT
RUN mkdir -p /usr/src/app
# Sat, 24 Sep 2016 04:17:44 GMT
WORKDIR /usr/src/app
# Sat, 24 Sep 2016 04:17:44 GMT
ONBUILD ADD . /usr/src/app
# Sat, 24 Sep 2016 04:17:45 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b26cafa72d5c36eb885c0fa4d359dac87ce0ecbb1f8c8dbf8d7f17b4a7385c6`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f340301a2a0fd2ddb7dd16b2ea7e7319d473a865c7bc9f93aac4dfb5e9e3a665`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8512ca758302270e4f0a519f8afd1e4aaab0bbdb9f4bb369d93e3a547e53bf4`  
		Last Modified: Fri, 23 Sep 2016 19:36:13 GMT  
		Size: 130.1 MB (130074162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76b0eeb6b4da36f6af1f62ec8b07597883176035553ff18633821edfd3750ad`  
		Last Modified: Fri, 23 Sep 2016 19:35:43 GMT  
		Size: 284.2 KB (284191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076c0e4fff0c42be1997ef8c1aefec8f9973a0646514fcd0885a3e01b5e88ced`  
		Last Modified: Sat, 24 Sep 2016 04:15:18 GMT  
		Size: 8.6 MB (8598852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfc40e1f2fdfdf6908f9ed4ab6702313d4230e53e820b2ab6b56999e2ccd0c9`  
		Last Modified: Sat, 24 Sep 2016 04:15:17 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f92d2bbe47ddfc6a6ee203182404ee69fc3963157237acbdf8ddd47509e988a`  
		Last Modified: Sat, 24 Sep 2016 04:15:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719b36968fc8ef1b1ad51a54b125f5568ee2ed6d5e61f662cf86a01365936211`  
		Last Modified: Sat, 24 Sep 2016 04:17:53 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-onbuild`

```console
$ docker pull maven@sha256:e952a73c2f0b65dce99ef8ce62ab890ee60a261ab6eae5e1ffb128019b0b8428
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251930452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4867c6f875d1429da0c3a2b22a5072215eda8afbfcef1f64ebbd94a249d0ffe6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:34:26 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:34:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:34:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:34:28 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:34:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:35:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:35:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 04:15:03 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 24 Sep 2016 04:15:03 GMT
ARG USER_HOME_DIR=/root
# Sat, 24 Sep 2016 04:15:05 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 24 Sep 2016 04:15:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 24 Sep 2016 04:15:06 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 24 Sep 2016 04:15:06 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 24 Sep 2016 04:15:07 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 24 Sep 2016 04:15:07 GMT
VOLUME [/root/.m2]
# Sat, 24 Sep 2016 04:15:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 24 Sep 2016 04:15:08 GMT
CMD ["mvn"]
# Sat, 24 Sep 2016 04:17:44 GMT
RUN mkdir -p /usr/src/app
# Sat, 24 Sep 2016 04:17:44 GMT
WORKDIR /usr/src/app
# Sat, 24 Sep 2016 04:17:44 GMT
ONBUILD ADD . /usr/src/app
# Sat, 24 Sep 2016 04:17:45 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b26cafa72d5c36eb885c0fa4d359dac87ce0ecbb1f8c8dbf8d7f17b4a7385c6`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f340301a2a0fd2ddb7dd16b2ea7e7319d473a865c7bc9f93aac4dfb5e9e3a665`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8512ca758302270e4f0a519f8afd1e4aaab0bbdb9f4bb369d93e3a547e53bf4`  
		Last Modified: Fri, 23 Sep 2016 19:36:13 GMT  
		Size: 130.1 MB (130074162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76b0eeb6b4da36f6af1f62ec8b07597883176035553ff18633821edfd3750ad`  
		Last Modified: Fri, 23 Sep 2016 19:35:43 GMT  
		Size: 284.2 KB (284191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076c0e4fff0c42be1997ef8c1aefec8f9973a0646514fcd0885a3e01b5e88ced`  
		Last Modified: Sat, 24 Sep 2016 04:15:18 GMT  
		Size: 8.6 MB (8598852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfc40e1f2fdfdf6908f9ed4ab6702313d4230e53e820b2ab6b56999e2ccd0c9`  
		Last Modified: Sat, 24 Sep 2016 04:15:17 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f92d2bbe47ddfc6a6ee203182404ee69fc3963157237acbdf8ddd47509e988a`  
		Last Modified: Sat, 24 Sep 2016 04:15:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719b36968fc8ef1b1ad51a54b125f5568ee2ed6d5e61f662cf86a01365936211`  
		Last Modified: Sat, 24 Sep 2016 04:17:53 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-onbuild`

```console
$ docker pull maven@sha256:e952a73c2f0b65dce99ef8ce62ab890ee60a261ab6eae5e1ffb128019b0b8428
```

-	Platforms:
	-	linux; amd64

### `maven:3-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251930452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4867c6f875d1429da0c3a2b22a5072215eda8afbfcef1f64ebbd94a249d0ffe6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:34:26 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:34:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:34:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:34:28 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:34:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:35:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:35:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 04:15:03 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 24 Sep 2016 04:15:03 GMT
ARG USER_HOME_DIR=/root
# Sat, 24 Sep 2016 04:15:05 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 24 Sep 2016 04:15:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 24 Sep 2016 04:15:06 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 24 Sep 2016 04:15:06 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 24 Sep 2016 04:15:07 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 24 Sep 2016 04:15:07 GMT
VOLUME [/root/.m2]
# Sat, 24 Sep 2016 04:15:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 24 Sep 2016 04:15:08 GMT
CMD ["mvn"]
# Sat, 24 Sep 2016 04:17:44 GMT
RUN mkdir -p /usr/src/app
# Sat, 24 Sep 2016 04:17:44 GMT
WORKDIR /usr/src/app
# Sat, 24 Sep 2016 04:17:44 GMT
ONBUILD ADD . /usr/src/app
# Sat, 24 Sep 2016 04:17:45 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b26cafa72d5c36eb885c0fa4d359dac87ce0ecbb1f8c8dbf8d7f17b4a7385c6`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f340301a2a0fd2ddb7dd16b2ea7e7319d473a865c7bc9f93aac4dfb5e9e3a665`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8512ca758302270e4f0a519f8afd1e4aaab0bbdb9f4bb369d93e3a547e53bf4`  
		Last Modified: Fri, 23 Sep 2016 19:36:13 GMT  
		Size: 130.1 MB (130074162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76b0eeb6b4da36f6af1f62ec8b07597883176035553ff18633821edfd3750ad`  
		Last Modified: Fri, 23 Sep 2016 19:35:43 GMT  
		Size: 284.2 KB (284191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076c0e4fff0c42be1997ef8c1aefec8f9973a0646514fcd0885a3e01b5e88ced`  
		Last Modified: Sat, 24 Sep 2016 04:15:18 GMT  
		Size: 8.6 MB (8598852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfc40e1f2fdfdf6908f9ed4ab6702313d4230e53e820b2ab6b56999e2ccd0c9`  
		Last Modified: Sat, 24 Sep 2016 04:15:17 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f92d2bbe47ddfc6a6ee203182404ee69fc3963157237acbdf8ddd47509e988a`  
		Last Modified: Sat, 24 Sep 2016 04:15:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719b36968fc8ef1b1ad51a54b125f5568ee2ed6d5e61f662cf86a01365936211`  
		Last Modified: Sat, 24 Sep 2016 04:17:53 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:onbuild`

```console
$ docker pull maven@sha256:e952a73c2f0b65dce99ef8ce62ab890ee60a261ab6eae5e1ffb128019b0b8428
```

-	Platforms:
	-	linux; amd64

### `maven:onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251930452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4867c6f875d1429da0c3a2b22a5072215eda8afbfcef1f64ebbd94a249d0ffe6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:34:26 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:34:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:34:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:34:28 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:34:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:35:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:35:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 04:15:03 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 24 Sep 2016 04:15:03 GMT
ARG USER_HOME_DIR=/root
# Sat, 24 Sep 2016 04:15:05 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 24 Sep 2016 04:15:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 24 Sep 2016 04:15:06 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 24 Sep 2016 04:15:06 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 24 Sep 2016 04:15:07 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 24 Sep 2016 04:15:07 GMT
VOLUME [/root/.m2]
# Sat, 24 Sep 2016 04:15:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 24 Sep 2016 04:15:08 GMT
CMD ["mvn"]
# Sat, 24 Sep 2016 04:17:44 GMT
RUN mkdir -p /usr/src/app
# Sat, 24 Sep 2016 04:17:44 GMT
WORKDIR /usr/src/app
# Sat, 24 Sep 2016 04:17:44 GMT
ONBUILD ADD . /usr/src/app
# Sat, 24 Sep 2016 04:17:45 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b26cafa72d5c36eb885c0fa4d359dac87ce0ecbb1f8c8dbf8d7f17b4a7385c6`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f340301a2a0fd2ddb7dd16b2ea7e7319d473a865c7bc9f93aac4dfb5e9e3a665`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8512ca758302270e4f0a519f8afd1e4aaab0bbdb9f4bb369d93e3a547e53bf4`  
		Last Modified: Fri, 23 Sep 2016 19:36:13 GMT  
		Size: 130.1 MB (130074162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76b0eeb6b4da36f6af1f62ec8b07597883176035553ff18633821edfd3750ad`  
		Last Modified: Fri, 23 Sep 2016 19:35:43 GMT  
		Size: 284.2 KB (284191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076c0e4fff0c42be1997ef8c1aefec8f9973a0646514fcd0885a3e01b5e88ced`  
		Last Modified: Sat, 24 Sep 2016 04:15:18 GMT  
		Size: 8.6 MB (8598852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfc40e1f2fdfdf6908f9ed4ab6702313d4230e53e820b2ab6b56999e2ccd0c9`  
		Last Modified: Sat, 24 Sep 2016 04:15:17 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f92d2bbe47ddfc6a6ee203182404ee69fc3963157237acbdf8ddd47509e988a`  
		Last Modified: Sat, 24 Sep 2016 04:15:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719b36968fc8ef1b1ad51a54b125f5568ee2ed6d5e61f662cf86a01365936211`  
		Last Modified: Sat, 24 Sep 2016 04:17:53 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-8-alpine`

```console
$ docker pull maven@sha256:fe23144c2aeb0445e4b41faa5020ac99c64c3dd8cfbbb13fcc2af1943c8af361
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-8-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61925420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de30d4d455b2e71d18f72ac4ed348028d9c47b60283a95052e19d7c41873f387`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:05:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 23 Sep 2016 17:05:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:05:18 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:57:33 GMT
RUN apk add --no-cache curl tar bash
# Fri, 23 Sep 2016 18:57:34 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 23 Sep 2016 18:57:34 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Sep 2016 18:57:35 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Sep 2016 18:57:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Sep 2016 18:57:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Sep 2016 18:57:40 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Sep 2016 18:57:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Sep 2016 18:57:41 GMT
VOLUME [/root/.m2]
# Fri, 23 Sep 2016 18:57:41 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Sep 2016 18:57:41 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9536b9909f79d52b70efe60abe868e66019b131e7618f3498475b236a756e2ad`  
		Last Modified: Fri, 23 Sep 2016 17:05:37 GMT  
		Size: 49.3 MB (49325354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ffa75aa52626ee4dde3226c110ca5b5591cc4aacc6668fc80fd0b3671c1f47`  
		Last Modified: Fri, 23 Sep 2016 18:57:50 GMT  
		Size: 1.7 MB (1687031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c00d02793d88597d4958018102b54e13d5705b149b5c0c86aee02ddf3788a84`  
		Last Modified: Fri, 23 Sep 2016 18:57:53 GMT  
		Size: 8.6 MB (8598841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f562987db7c895967cdec564ba4b3339f9538d7ff035cf334bb89fe45d8e67`  
		Last Modified: Fri, 23 Sep 2016 18:57:54 GMT  
		Size: 684.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e66655cd82d19916d3aa89e1b4db59f5d4df0acc4c96ceb312d1e403931e39`  
		Last Modified: Fri, 23 Sep 2016 18:57:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-alpine`

```console
$ docker pull maven@sha256:fe23144c2aeb0445e4b41faa5020ac99c64c3dd8cfbbb13fcc2af1943c8af361
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61925420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de30d4d455b2e71d18f72ac4ed348028d9c47b60283a95052e19d7c41873f387`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:05:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 23 Sep 2016 17:05:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:05:18 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:57:33 GMT
RUN apk add --no-cache curl tar bash
# Fri, 23 Sep 2016 18:57:34 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 23 Sep 2016 18:57:34 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Sep 2016 18:57:35 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Sep 2016 18:57:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Sep 2016 18:57:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Sep 2016 18:57:40 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Sep 2016 18:57:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Sep 2016 18:57:41 GMT
VOLUME [/root/.m2]
# Fri, 23 Sep 2016 18:57:41 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Sep 2016 18:57:41 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9536b9909f79d52b70efe60abe868e66019b131e7618f3498475b236a756e2ad`  
		Last Modified: Fri, 23 Sep 2016 17:05:37 GMT  
		Size: 49.3 MB (49325354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ffa75aa52626ee4dde3226c110ca5b5591cc4aacc6668fc80fd0b3671c1f47`  
		Last Modified: Fri, 23 Sep 2016 18:57:50 GMT  
		Size: 1.7 MB (1687031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c00d02793d88597d4958018102b54e13d5705b149b5c0c86aee02ddf3788a84`  
		Last Modified: Fri, 23 Sep 2016 18:57:53 GMT  
		Size: 8.6 MB (8598841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f562987db7c895967cdec564ba4b3339f9538d7ff035cf334bb89fe45d8e67`  
		Last Modified: Fri, 23 Sep 2016 18:57:54 GMT  
		Size: 684.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e66655cd82d19916d3aa89e1b4db59f5d4df0acc4c96ceb312d1e403931e39`  
		Last Modified: Fri, 23 Sep 2016 18:57:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-8-alpine`

```console
$ docker pull maven@sha256:fe23144c2aeb0445e4b41faa5020ac99c64c3dd8cfbbb13fcc2af1943c8af361
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-8-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61925420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de30d4d455b2e71d18f72ac4ed348028d9c47b60283a95052e19d7c41873f387`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:05:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 23 Sep 2016 17:05:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:05:18 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:57:33 GMT
RUN apk add --no-cache curl tar bash
# Fri, 23 Sep 2016 18:57:34 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 23 Sep 2016 18:57:34 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Sep 2016 18:57:35 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Sep 2016 18:57:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Sep 2016 18:57:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Sep 2016 18:57:40 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Sep 2016 18:57:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Sep 2016 18:57:41 GMT
VOLUME [/root/.m2]
# Fri, 23 Sep 2016 18:57:41 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Sep 2016 18:57:41 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9536b9909f79d52b70efe60abe868e66019b131e7618f3498475b236a756e2ad`  
		Last Modified: Fri, 23 Sep 2016 17:05:37 GMT  
		Size: 49.3 MB (49325354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ffa75aa52626ee4dde3226c110ca5b5591cc4aacc6668fc80fd0b3671c1f47`  
		Last Modified: Fri, 23 Sep 2016 18:57:50 GMT  
		Size: 1.7 MB (1687031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c00d02793d88597d4958018102b54e13d5705b149b5c0c86aee02ddf3788a84`  
		Last Modified: Fri, 23 Sep 2016 18:57:53 GMT  
		Size: 8.6 MB (8598841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f562987db7c895967cdec564ba4b3339f9538d7ff035cf334bb89fe45d8e67`  
		Last Modified: Fri, 23 Sep 2016 18:57:54 GMT  
		Size: 684.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e66655cd82d19916d3aa89e1b4db59f5d4df0acc4c96ceb312d1e403931e39`  
		Last Modified: Fri, 23 Sep 2016 18:57:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-alpine`

```console
$ docker pull maven@sha256:fe23144c2aeb0445e4b41faa5020ac99c64c3dd8cfbbb13fcc2af1943c8af361
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61925420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de30d4d455b2e71d18f72ac4ed348028d9c47b60283a95052e19d7c41873f387`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:05:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 23 Sep 2016 17:05:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:05:18 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:57:33 GMT
RUN apk add --no-cache curl tar bash
# Fri, 23 Sep 2016 18:57:34 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 23 Sep 2016 18:57:34 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Sep 2016 18:57:35 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Sep 2016 18:57:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Sep 2016 18:57:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Sep 2016 18:57:40 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Sep 2016 18:57:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Sep 2016 18:57:41 GMT
VOLUME [/root/.m2]
# Fri, 23 Sep 2016 18:57:41 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Sep 2016 18:57:41 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9536b9909f79d52b70efe60abe868e66019b131e7618f3498475b236a756e2ad`  
		Last Modified: Fri, 23 Sep 2016 17:05:37 GMT  
		Size: 49.3 MB (49325354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ffa75aa52626ee4dde3226c110ca5b5591cc4aacc6668fc80fd0b3671c1f47`  
		Last Modified: Fri, 23 Sep 2016 18:57:50 GMT  
		Size: 1.7 MB (1687031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c00d02793d88597d4958018102b54e13d5705b149b5c0c86aee02ddf3788a84`  
		Last Modified: Fri, 23 Sep 2016 18:57:53 GMT  
		Size: 8.6 MB (8598841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f562987db7c895967cdec564ba4b3339f9538d7ff035cf334bb89fe45d8e67`  
		Last Modified: Fri, 23 Sep 2016 18:57:54 GMT  
		Size: 684.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e66655cd82d19916d3aa89e1b4db59f5d4df0acc4c96ceb312d1e403931e39`  
		Last Modified: Fri, 23 Sep 2016 18:57:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-alpine`

```console
$ docker pull maven@sha256:6cab3c316f79ea1d85935c3b232f523123ce951b62312062a5eb417c9a9e84cc
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61923308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99d2dbdf9a55ecac7a2411b5b2914dc4ecfb5c4815714a514cd5d8a09a7ee2b3`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:20:18 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 00:20:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 00:24:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 20 Sep 2016 00:24:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 00:24:55 GMT
ENV JAVA_VERSION=8u92
# Tue, 20 Sep 2016 00:24:55 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 20 Sep 2016 00:25:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:52:02 GMT
RUN apk add --no-cache curl tar bash
# Tue, 20 Sep 2016 16:52:03 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 20 Sep 2016 16:52:03 GMT
ARG USER_HOME_DIR=/root
# Tue, 20 Sep 2016 16:52:04 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 20 Sep 2016 16:52:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 20 Sep 2016 16:52:05 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 20 Sep 2016 16:52:05 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 20 Sep 2016 16:52:06 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 20 Sep 2016 16:52:06 GMT
VOLUME [/root/.m2]
# Tue, 20 Sep 2016 16:52:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 20 Sep 2016 16:52:07 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187ddf52152d8d92e51722e536dd02ec43d2f66b476ea87b4151c382fc922fea`  
		Last Modified: Tue, 20 Sep 2016 00:20:42 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf67fd54f62e201ba82c703badd08312a6e2eca50d5b9f17b8c3cc7c574d426`  
		Last Modified: Tue, 20 Sep 2016 00:25:28 GMT  
		Size: 49.3 MB (49325081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cef9427ce7bbceb7b6d885e2f2aaea4c177a29983b894f09184eecd53db60d3`  
		Last Modified: Tue, 20 Sep 2016 16:52:15 GMT  
		Size: 1.7 MB (1687055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b8993cbb5e0805e44ee8bd8720de0aab1db7245b5ddc95b4c3a17473dbffc2`  
		Last Modified: Tue, 20 Sep 2016 16:52:16 GMT  
		Size: 8.6 MB (8598858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a441b392788f04b6c3d52d23aea4277adef7124a0456fabb4e4613c05d36af2`  
		Last Modified: Tue, 20 Sep 2016 16:52:14 GMT  
		Size: 684.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a880d76d261ded2b1472b3ea0d313c70d767ded42c6fed20db96df9763eabe`  
		Last Modified: Tue, 20 Sep 2016 16:52:14 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-alpine`

```console
$ docker pull maven@sha256:fe23144c2aeb0445e4b41faa5020ac99c64c3dd8cfbbb13fcc2af1943c8af361
```

-	Platforms:
	-	linux; amd64

### `maven:3-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61925420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de30d4d455b2e71d18f72ac4ed348028d9c47b60283a95052e19d7c41873f387`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:05:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 23 Sep 2016 17:05:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:05:18 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:57:33 GMT
RUN apk add --no-cache curl tar bash
# Fri, 23 Sep 2016 18:57:34 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 23 Sep 2016 18:57:34 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Sep 2016 18:57:35 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Sep 2016 18:57:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Sep 2016 18:57:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Sep 2016 18:57:40 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Sep 2016 18:57:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Sep 2016 18:57:41 GMT
VOLUME [/root/.m2]
# Fri, 23 Sep 2016 18:57:41 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Sep 2016 18:57:41 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9536b9909f79d52b70efe60abe868e66019b131e7618f3498475b236a756e2ad`  
		Last Modified: Fri, 23 Sep 2016 17:05:37 GMT  
		Size: 49.3 MB (49325354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ffa75aa52626ee4dde3226c110ca5b5591cc4aacc6668fc80fd0b3671c1f47`  
		Last Modified: Fri, 23 Sep 2016 18:57:50 GMT  
		Size: 1.7 MB (1687031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c00d02793d88597d4958018102b54e13d5705b149b5c0c86aee02ddf3788a84`  
		Last Modified: Fri, 23 Sep 2016 18:57:53 GMT  
		Size: 8.6 MB (8598841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f562987db7c895967cdec564ba4b3339f9538d7ff035cf334bb89fe45d8e67`  
		Last Modified: Fri, 23 Sep 2016 18:57:54 GMT  
		Size: 684.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e66655cd82d19916d3aa89e1b4db59f5d4df0acc4c96ceb312d1e403931e39`  
		Last Modified: Fri, 23 Sep 2016 18:57:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:alpine`

```console
$ docker pull maven@sha256:fe23144c2aeb0445e4b41faa5020ac99c64c3dd8cfbbb13fcc2af1943c8af361
```

-	Platforms:
	-	linux; amd64

### `maven:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61925420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de30d4d455b2e71d18f72ac4ed348028d9c47b60283a95052e19d7c41873f387`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:05:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 23 Sep 2016 17:05:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:05:18 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:57:33 GMT
RUN apk add --no-cache curl tar bash
# Fri, 23 Sep 2016 18:57:34 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 23 Sep 2016 18:57:34 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Sep 2016 18:57:35 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Sep 2016 18:57:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Sep 2016 18:57:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Sep 2016 18:57:40 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Sep 2016 18:57:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Sep 2016 18:57:41 GMT
VOLUME [/root/.m2]
# Fri, 23 Sep 2016 18:57:41 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Sep 2016 18:57:41 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9536b9909f79d52b70efe60abe868e66019b131e7618f3498475b236a756e2ad`  
		Last Modified: Fri, 23 Sep 2016 17:05:37 GMT  
		Size: 49.3 MB (49325354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ffa75aa52626ee4dde3226c110ca5b5591cc4aacc6668fc80fd0b3671c1f47`  
		Last Modified: Fri, 23 Sep 2016 18:57:50 GMT  
		Size: 1.7 MB (1687031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c00d02793d88597d4958018102b54e13d5705b149b5c0c86aee02ddf3788a84`  
		Last Modified: Fri, 23 Sep 2016 18:57:53 GMT  
		Size: 8.6 MB (8598841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f562987db7c895967cdec564ba4b3339f9538d7ff035cf334bb89fe45d8e67`  
		Last Modified: Fri, 23 Sep 2016 18:57:54 GMT  
		Size: 684.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e66655cd82d19916d3aa89e1b4db59f5d4df0acc4c96ceb312d1e403931e39`  
		Last Modified: Fri, 23 Sep 2016 18:57:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-8-onbuild-alpine`

```console
$ docker pull maven@sha256:14bf26785bff19db8a47a1a67fdec376f94f3ef276dc9b85783b1a988aab396e
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-8-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61925576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b68df0a1f992fa3fb13c47a8e6ea64280aa4f8632d84a3bdaefe12794d875e6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:05:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 23 Sep 2016 17:05:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:05:18 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:57:33 GMT
RUN apk add --no-cache curl tar bash
# Fri, 23 Sep 2016 18:57:34 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 23 Sep 2016 18:57:34 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Sep 2016 18:57:35 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Sep 2016 18:57:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Sep 2016 18:57:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Sep 2016 18:57:40 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Sep 2016 18:57:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Sep 2016 18:57:41 GMT
VOLUME [/root/.m2]
# Fri, 23 Sep 2016 18:57:41 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Sep 2016 18:57:41 GMT
CMD ["mvn"]
# Fri, 23 Sep 2016 19:00:32 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Sep 2016 19:00:32 GMT
WORKDIR /usr/src/app
# Fri, 23 Sep 2016 19:00:32 GMT
ONBUILD ADD . /usr/src/app
# Fri, 23 Sep 2016 19:00:33 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9536b9909f79d52b70efe60abe868e66019b131e7618f3498475b236a756e2ad`  
		Last Modified: Fri, 23 Sep 2016 17:05:37 GMT  
		Size: 49.3 MB (49325354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ffa75aa52626ee4dde3226c110ca5b5591cc4aacc6668fc80fd0b3671c1f47`  
		Last Modified: Fri, 23 Sep 2016 18:57:50 GMT  
		Size: 1.7 MB (1687031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c00d02793d88597d4958018102b54e13d5705b149b5c0c86aee02ddf3788a84`  
		Last Modified: Fri, 23 Sep 2016 18:57:53 GMT  
		Size: 8.6 MB (8598841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f562987db7c895967cdec564ba4b3339f9538d7ff035cf334bb89fe45d8e67`  
		Last Modified: Fri, 23 Sep 2016 18:57:54 GMT  
		Size: 684.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e66655cd82d19916d3aa89e1b4db59f5d4df0acc4c96ceb312d1e403931e39`  
		Last Modified: Fri, 23 Sep 2016 18:57:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd86366780458e2482fffc75b61a007b5424b1810b86075c3bc76f5fced9e6f`  
		Last Modified: Fri, 23 Sep 2016 19:00:41 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-onbuild-alpine`

```console
$ docker pull maven@sha256:14bf26785bff19db8a47a1a67fdec376f94f3ef276dc9b85783b1a988aab396e
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61925576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b68df0a1f992fa3fb13c47a8e6ea64280aa4f8632d84a3bdaefe12794d875e6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:05:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 23 Sep 2016 17:05:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:05:18 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:57:33 GMT
RUN apk add --no-cache curl tar bash
# Fri, 23 Sep 2016 18:57:34 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 23 Sep 2016 18:57:34 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Sep 2016 18:57:35 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Sep 2016 18:57:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Sep 2016 18:57:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Sep 2016 18:57:40 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Sep 2016 18:57:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Sep 2016 18:57:41 GMT
VOLUME [/root/.m2]
# Fri, 23 Sep 2016 18:57:41 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Sep 2016 18:57:41 GMT
CMD ["mvn"]
# Fri, 23 Sep 2016 19:00:32 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Sep 2016 19:00:32 GMT
WORKDIR /usr/src/app
# Fri, 23 Sep 2016 19:00:32 GMT
ONBUILD ADD . /usr/src/app
# Fri, 23 Sep 2016 19:00:33 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9536b9909f79d52b70efe60abe868e66019b131e7618f3498475b236a756e2ad`  
		Last Modified: Fri, 23 Sep 2016 17:05:37 GMT  
		Size: 49.3 MB (49325354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ffa75aa52626ee4dde3226c110ca5b5591cc4aacc6668fc80fd0b3671c1f47`  
		Last Modified: Fri, 23 Sep 2016 18:57:50 GMT  
		Size: 1.7 MB (1687031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c00d02793d88597d4958018102b54e13d5705b149b5c0c86aee02ddf3788a84`  
		Last Modified: Fri, 23 Sep 2016 18:57:53 GMT  
		Size: 8.6 MB (8598841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f562987db7c895967cdec564ba4b3339f9538d7ff035cf334bb89fe45d8e67`  
		Last Modified: Fri, 23 Sep 2016 18:57:54 GMT  
		Size: 684.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e66655cd82d19916d3aa89e1b4db59f5d4df0acc4c96ceb312d1e403931e39`  
		Last Modified: Fri, 23 Sep 2016 18:57:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd86366780458e2482fffc75b61a007b5424b1810b86075c3bc76f5fced9e6f`  
		Last Modified: Fri, 23 Sep 2016 19:00:41 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-8-onbuild-alpine`

```console
$ docker pull maven@sha256:14bf26785bff19db8a47a1a67fdec376f94f3ef276dc9b85783b1a988aab396e
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-8-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61925576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b68df0a1f992fa3fb13c47a8e6ea64280aa4f8632d84a3bdaefe12794d875e6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:05:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 23 Sep 2016 17:05:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:05:18 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:57:33 GMT
RUN apk add --no-cache curl tar bash
# Fri, 23 Sep 2016 18:57:34 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 23 Sep 2016 18:57:34 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Sep 2016 18:57:35 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Sep 2016 18:57:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Sep 2016 18:57:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Sep 2016 18:57:40 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Sep 2016 18:57:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Sep 2016 18:57:41 GMT
VOLUME [/root/.m2]
# Fri, 23 Sep 2016 18:57:41 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Sep 2016 18:57:41 GMT
CMD ["mvn"]
# Fri, 23 Sep 2016 19:00:32 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Sep 2016 19:00:32 GMT
WORKDIR /usr/src/app
# Fri, 23 Sep 2016 19:00:32 GMT
ONBUILD ADD . /usr/src/app
# Fri, 23 Sep 2016 19:00:33 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9536b9909f79d52b70efe60abe868e66019b131e7618f3498475b236a756e2ad`  
		Last Modified: Fri, 23 Sep 2016 17:05:37 GMT  
		Size: 49.3 MB (49325354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ffa75aa52626ee4dde3226c110ca5b5591cc4aacc6668fc80fd0b3671c1f47`  
		Last Modified: Fri, 23 Sep 2016 18:57:50 GMT  
		Size: 1.7 MB (1687031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c00d02793d88597d4958018102b54e13d5705b149b5c0c86aee02ddf3788a84`  
		Last Modified: Fri, 23 Sep 2016 18:57:53 GMT  
		Size: 8.6 MB (8598841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f562987db7c895967cdec564ba4b3339f9538d7ff035cf334bb89fe45d8e67`  
		Last Modified: Fri, 23 Sep 2016 18:57:54 GMT  
		Size: 684.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e66655cd82d19916d3aa89e1b4db59f5d4df0acc4c96ceb312d1e403931e39`  
		Last Modified: Fri, 23 Sep 2016 18:57:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd86366780458e2482fffc75b61a007b5424b1810b86075c3bc76f5fced9e6f`  
		Last Modified: Fri, 23 Sep 2016 19:00:41 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-onbuild-alpine`

```console
$ docker pull maven@sha256:14bf26785bff19db8a47a1a67fdec376f94f3ef276dc9b85783b1a988aab396e
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61925576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b68df0a1f992fa3fb13c47a8e6ea64280aa4f8632d84a3bdaefe12794d875e6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:05:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 23 Sep 2016 17:05:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:05:18 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:57:33 GMT
RUN apk add --no-cache curl tar bash
# Fri, 23 Sep 2016 18:57:34 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 23 Sep 2016 18:57:34 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Sep 2016 18:57:35 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Sep 2016 18:57:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Sep 2016 18:57:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Sep 2016 18:57:40 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Sep 2016 18:57:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Sep 2016 18:57:41 GMT
VOLUME [/root/.m2]
# Fri, 23 Sep 2016 18:57:41 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Sep 2016 18:57:41 GMT
CMD ["mvn"]
# Fri, 23 Sep 2016 19:00:32 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Sep 2016 19:00:32 GMT
WORKDIR /usr/src/app
# Fri, 23 Sep 2016 19:00:32 GMT
ONBUILD ADD . /usr/src/app
# Fri, 23 Sep 2016 19:00:33 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9536b9909f79d52b70efe60abe868e66019b131e7618f3498475b236a756e2ad`  
		Last Modified: Fri, 23 Sep 2016 17:05:37 GMT  
		Size: 49.3 MB (49325354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ffa75aa52626ee4dde3226c110ca5b5591cc4aacc6668fc80fd0b3671c1f47`  
		Last Modified: Fri, 23 Sep 2016 18:57:50 GMT  
		Size: 1.7 MB (1687031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c00d02793d88597d4958018102b54e13d5705b149b5c0c86aee02ddf3788a84`  
		Last Modified: Fri, 23 Sep 2016 18:57:53 GMT  
		Size: 8.6 MB (8598841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f562987db7c895967cdec564ba4b3339f9538d7ff035cf334bb89fe45d8e67`  
		Last Modified: Fri, 23 Sep 2016 18:57:54 GMT  
		Size: 684.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e66655cd82d19916d3aa89e1b4db59f5d4df0acc4c96ceb312d1e403931e39`  
		Last Modified: Fri, 23 Sep 2016 18:57:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd86366780458e2482fffc75b61a007b5424b1810b86075c3bc76f5fced9e6f`  
		Last Modified: Fri, 23 Sep 2016 19:00:41 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-onbuild-alpine`

```console
$ docker pull maven@sha256:14bf26785bff19db8a47a1a67fdec376f94f3ef276dc9b85783b1a988aab396e
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61925576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b68df0a1f992fa3fb13c47a8e6ea64280aa4f8632d84a3bdaefe12794d875e6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:05:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 23 Sep 2016 17:05:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:05:18 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:57:33 GMT
RUN apk add --no-cache curl tar bash
# Fri, 23 Sep 2016 18:57:34 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 23 Sep 2016 18:57:34 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Sep 2016 18:57:35 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Sep 2016 18:57:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Sep 2016 18:57:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Sep 2016 18:57:40 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Sep 2016 18:57:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Sep 2016 18:57:41 GMT
VOLUME [/root/.m2]
# Fri, 23 Sep 2016 18:57:41 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Sep 2016 18:57:41 GMT
CMD ["mvn"]
# Fri, 23 Sep 2016 19:00:32 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Sep 2016 19:00:32 GMT
WORKDIR /usr/src/app
# Fri, 23 Sep 2016 19:00:32 GMT
ONBUILD ADD . /usr/src/app
# Fri, 23 Sep 2016 19:00:33 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9536b9909f79d52b70efe60abe868e66019b131e7618f3498475b236a756e2ad`  
		Last Modified: Fri, 23 Sep 2016 17:05:37 GMT  
		Size: 49.3 MB (49325354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ffa75aa52626ee4dde3226c110ca5b5591cc4aacc6668fc80fd0b3671c1f47`  
		Last Modified: Fri, 23 Sep 2016 18:57:50 GMT  
		Size: 1.7 MB (1687031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c00d02793d88597d4958018102b54e13d5705b149b5c0c86aee02ddf3788a84`  
		Last Modified: Fri, 23 Sep 2016 18:57:53 GMT  
		Size: 8.6 MB (8598841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f562987db7c895967cdec564ba4b3339f9538d7ff035cf334bb89fe45d8e67`  
		Last Modified: Fri, 23 Sep 2016 18:57:54 GMT  
		Size: 684.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e66655cd82d19916d3aa89e1b4db59f5d4df0acc4c96ceb312d1e403931e39`  
		Last Modified: Fri, 23 Sep 2016 18:57:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd86366780458e2482fffc75b61a007b5424b1810b86075c3bc76f5fced9e6f`  
		Last Modified: Fri, 23 Sep 2016 19:00:41 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-onbuild-alpine`

```console
$ docker pull maven@sha256:14bf26785bff19db8a47a1a67fdec376f94f3ef276dc9b85783b1a988aab396e
```

-	Platforms:
	-	linux; amd64

### `maven:3-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61925576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b68df0a1f992fa3fb13c47a8e6ea64280aa4f8632d84a3bdaefe12794d875e6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:05:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 23 Sep 2016 17:05:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:05:18 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:57:33 GMT
RUN apk add --no-cache curl tar bash
# Fri, 23 Sep 2016 18:57:34 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 23 Sep 2016 18:57:34 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Sep 2016 18:57:35 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Sep 2016 18:57:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Sep 2016 18:57:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Sep 2016 18:57:40 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Sep 2016 18:57:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Sep 2016 18:57:41 GMT
VOLUME [/root/.m2]
# Fri, 23 Sep 2016 18:57:41 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Sep 2016 18:57:41 GMT
CMD ["mvn"]
# Fri, 23 Sep 2016 19:00:32 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Sep 2016 19:00:32 GMT
WORKDIR /usr/src/app
# Fri, 23 Sep 2016 19:00:32 GMT
ONBUILD ADD . /usr/src/app
# Fri, 23 Sep 2016 19:00:33 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9536b9909f79d52b70efe60abe868e66019b131e7618f3498475b236a756e2ad`  
		Last Modified: Fri, 23 Sep 2016 17:05:37 GMT  
		Size: 49.3 MB (49325354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ffa75aa52626ee4dde3226c110ca5b5591cc4aacc6668fc80fd0b3671c1f47`  
		Last Modified: Fri, 23 Sep 2016 18:57:50 GMT  
		Size: 1.7 MB (1687031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c00d02793d88597d4958018102b54e13d5705b149b5c0c86aee02ddf3788a84`  
		Last Modified: Fri, 23 Sep 2016 18:57:53 GMT  
		Size: 8.6 MB (8598841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f562987db7c895967cdec564ba4b3339f9538d7ff035cf334bb89fe45d8e67`  
		Last Modified: Fri, 23 Sep 2016 18:57:54 GMT  
		Size: 684.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e66655cd82d19916d3aa89e1b4db59f5d4df0acc4c96ceb312d1e403931e39`  
		Last Modified: Fri, 23 Sep 2016 18:57:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd86366780458e2482fffc75b61a007b5424b1810b86075c3bc76f5fced9e6f`  
		Last Modified: Fri, 23 Sep 2016 19:00:41 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:onbuild-alpine`

```console
$ docker pull maven@sha256:14bf26785bff19db8a47a1a67fdec376f94f3ef276dc9b85783b1a988aab396e
```

-	Platforms:
	-	linux; amd64

### `maven:onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61925576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b68df0a1f992fa3fb13c47a8e6ea64280aa4f8632d84a3bdaefe12794d875e6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:05:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 23 Sep 2016 17:05:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:05:18 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:57:33 GMT
RUN apk add --no-cache curl tar bash
# Fri, 23 Sep 2016 18:57:34 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 23 Sep 2016 18:57:34 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Sep 2016 18:57:35 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Sep 2016 18:57:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Sep 2016 18:57:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Sep 2016 18:57:40 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Sep 2016 18:57:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Sep 2016 18:57:41 GMT
VOLUME [/root/.m2]
# Fri, 23 Sep 2016 18:57:41 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Sep 2016 18:57:41 GMT
CMD ["mvn"]
# Fri, 23 Sep 2016 19:00:32 GMT
RUN mkdir -p /usr/src/app
# Fri, 23 Sep 2016 19:00:32 GMT
WORKDIR /usr/src/app
# Fri, 23 Sep 2016 19:00:32 GMT
ONBUILD ADD . /usr/src/app
# Fri, 23 Sep 2016 19:00:33 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9536b9909f79d52b70efe60abe868e66019b131e7618f3498475b236a756e2ad`  
		Last Modified: Fri, 23 Sep 2016 17:05:37 GMT  
		Size: 49.3 MB (49325354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ffa75aa52626ee4dde3226c110ca5b5591cc4aacc6668fc80fd0b3671c1f47`  
		Last Modified: Fri, 23 Sep 2016 18:57:50 GMT  
		Size: 1.7 MB (1687031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c00d02793d88597d4958018102b54e13d5705b149b5c0c86aee02ddf3788a84`  
		Last Modified: Fri, 23 Sep 2016 18:57:53 GMT  
		Size: 8.6 MB (8598841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f562987db7c895967cdec564ba4b3339f9538d7ff035cf334bb89fe45d8e67`  
		Last Modified: Fri, 23 Sep 2016 18:57:54 GMT  
		Size: 684.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e66655cd82d19916d3aa89e1b4db59f5d4df0acc4c96ceb312d1e403931e39`  
		Last Modified: Fri, 23 Sep 2016 18:57:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd86366780458e2482fffc75b61a007b5424b1810b86075c3bc76f5fced9e6f`  
		Last Modified: Fri, 23 Sep 2016 19:00:41 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-9`

```console
$ docker pull maven@sha256:6660f40e922c0b74e2fe8deaa7a736a6fbc2d609049092087eebd446a5d78c08
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253718563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9270fc7b57faf04555baba62db311cdd3850a09a345781c675619af7c062bf8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 18:09:05 GMT
ADD file:38fc3f9aecc8de28ee67c48e4f26a9dd74b238023b7f92c19da2f642b9d0fc14 in / 
# Fri, 23 Sep 2016 18:09:06 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:39:18 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 23 Sep 2016 19:39:18 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:39:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:39:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Fri, 23 Sep 2016 19:39:19 GMT
ENV JAVA_VERSION=9~b136
# Fri, 23 Sep 2016 19:39:20 GMT
ENV JAVA_DEBIAN_VERSION=9~b136-1
# Fri, 23 Sep 2016 19:39:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 24 Sep 2016 04:19:01 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 24 Sep 2016 04:19:01 GMT
ARG USER_HOME_DIR=/root
# Sat, 24 Sep 2016 04:19:04 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 24 Sep 2016 04:19:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 24 Sep 2016 04:19:05 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 24 Sep 2016 04:19:06 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 24 Sep 2016 04:19:06 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 24 Sep 2016 04:19:07 GMT
VOLUME [/root/.m2]
# Sat, 24 Sep 2016 04:19:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 24 Sep 2016 04:19:07 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8d7c8b969090899eedb896dfcdfc11e08596be2a94b1ae77609086ede354ab53`  
		Last Modified: Fri, 23 Sep 2016 18:11:54 GMT  
		Size: 43.1 MB (43149672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cf27ef20a0d684a2f113fab4b3cf58cdb4b5e3ec312e688e979add4df4d9cb`  
		Last Modified: Fri, 23 Sep 2016 18:27:26 GMT  
		Size: 20.6 MB (20558939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d346a7dd355fc6b042ab875c346181e3a59830f2c0a2961b7512dfc171eb8950`  
		Last Modified: Fri, 23 Sep 2016 18:28:16 GMT  
		Size: 52.3 MB (52334181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61c0ce2aaf48ece0d079535a6ae3a75d760f88be32e826f39042b07a2fd4d95`  
		Last Modified: Fri, 23 Sep 2016 19:40:05 GMT  
		Size: 592.5 KB (592473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d454d9b918097dbfabf38bbb570310a8e69aae04066af9025a14f1970956918`  
		Last Modified: Fri, 23 Sep 2016 19:40:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6698e2f319714131e15680242720372f8ebc7da860484cc00e21f2bb0d9e3ad`  
		Last Modified: Fri, 23 Sep 2016 19:40:03 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688ee1a7ff8dfa0cd12e4cc0458513f2fc461c0f92135f5a6162fca1a6b7dd31`  
		Last Modified: Fri, 23 Sep 2016 19:40:24 GMT  
		Size: 128.5 MB (128482936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4834a6599c5ca67857904761cec0a57b574b45788febc301512b34b889b62a0`  
		Last Modified: Sat, 24 Sep 2016 04:19:18 GMT  
		Size: 8.6 MB (8598862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b334963872268bca1c635778fe93f9e3afcfc97c2e0c5bc7ad1fcbe7b71704`  
		Last Modified: Sat, 24 Sep 2016 04:19:15 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e308c72ec5c4733ee7d28a6cc4ca3a848d78d0996a9e706b6f786771c55ef334`  
		Last Modified: Sat, 24 Sep 2016 04:19:15 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-9`

```console
$ docker pull maven@sha256:6660f40e922c0b74e2fe8deaa7a736a6fbc2d609049092087eebd446a5d78c08
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253718563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9270fc7b57faf04555baba62db311cdd3850a09a345781c675619af7c062bf8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 18:09:05 GMT
ADD file:38fc3f9aecc8de28ee67c48e4f26a9dd74b238023b7f92c19da2f642b9d0fc14 in / 
# Fri, 23 Sep 2016 18:09:06 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:39:18 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 23 Sep 2016 19:39:18 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:39:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:39:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Fri, 23 Sep 2016 19:39:19 GMT
ENV JAVA_VERSION=9~b136
# Fri, 23 Sep 2016 19:39:20 GMT
ENV JAVA_DEBIAN_VERSION=9~b136-1
# Fri, 23 Sep 2016 19:39:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 24 Sep 2016 04:19:01 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 24 Sep 2016 04:19:01 GMT
ARG USER_HOME_DIR=/root
# Sat, 24 Sep 2016 04:19:04 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 24 Sep 2016 04:19:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 24 Sep 2016 04:19:05 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 24 Sep 2016 04:19:06 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 24 Sep 2016 04:19:06 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 24 Sep 2016 04:19:07 GMT
VOLUME [/root/.m2]
# Sat, 24 Sep 2016 04:19:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 24 Sep 2016 04:19:07 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8d7c8b969090899eedb896dfcdfc11e08596be2a94b1ae77609086ede354ab53`  
		Last Modified: Fri, 23 Sep 2016 18:11:54 GMT  
		Size: 43.1 MB (43149672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cf27ef20a0d684a2f113fab4b3cf58cdb4b5e3ec312e688e979add4df4d9cb`  
		Last Modified: Fri, 23 Sep 2016 18:27:26 GMT  
		Size: 20.6 MB (20558939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d346a7dd355fc6b042ab875c346181e3a59830f2c0a2961b7512dfc171eb8950`  
		Last Modified: Fri, 23 Sep 2016 18:28:16 GMT  
		Size: 52.3 MB (52334181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61c0ce2aaf48ece0d079535a6ae3a75d760f88be32e826f39042b07a2fd4d95`  
		Last Modified: Fri, 23 Sep 2016 19:40:05 GMT  
		Size: 592.5 KB (592473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d454d9b918097dbfabf38bbb570310a8e69aae04066af9025a14f1970956918`  
		Last Modified: Fri, 23 Sep 2016 19:40:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6698e2f319714131e15680242720372f8ebc7da860484cc00e21f2bb0d9e3ad`  
		Last Modified: Fri, 23 Sep 2016 19:40:03 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688ee1a7ff8dfa0cd12e4cc0458513f2fc461c0f92135f5a6162fca1a6b7dd31`  
		Last Modified: Fri, 23 Sep 2016 19:40:24 GMT  
		Size: 128.5 MB (128482936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4834a6599c5ca67857904761cec0a57b574b45788febc301512b34b889b62a0`  
		Last Modified: Sat, 24 Sep 2016 04:19:18 GMT  
		Size: 8.6 MB (8598862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b334963872268bca1c635778fe93f9e3afcfc97c2e0c5bc7ad1fcbe7b71704`  
		Last Modified: Sat, 24 Sep 2016 04:19:15 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e308c72ec5c4733ee7d28a6cc4ca3a848d78d0996a9e706b6f786771c55ef334`  
		Last Modified: Sat, 24 Sep 2016 04:19:15 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-9`

```console
$ docker pull maven@sha256:6660f40e922c0b74e2fe8deaa7a736a6fbc2d609049092087eebd446a5d78c08
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253718563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9270fc7b57faf04555baba62db311cdd3850a09a345781c675619af7c062bf8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 18:09:05 GMT
ADD file:38fc3f9aecc8de28ee67c48e4f26a9dd74b238023b7f92c19da2f642b9d0fc14 in / 
# Fri, 23 Sep 2016 18:09:06 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:39:18 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 23 Sep 2016 19:39:18 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:39:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:39:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Fri, 23 Sep 2016 19:39:19 GMT
ENV JAVA_VERSION=9~b136
# Fri, 23 Sep 2016 19:39:20 GMT
ENV JAVA_DEBIAN_VERSION=9~b136-1
# Fri, 23 Sep 2016 19:39:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 24 Sep 2016 04:19:01 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 24 Sep 2016 04:19:01 GMT
ARG USER_HOME_DIR=/root
# Sat, 24 Sep 2016 04:19:04 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 24 Sep 2016 04:19:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 24 Sep 2016 04:19:05 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 24 Sep 2016 04:19:06 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 24 Sep 2016 04:19:06 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 24 Sep 2016 04:19:07 GMT
VOLUME [/root/.m2]
# Sat, 24 Sep 2016 04:19:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 24 Sep 2016 04:19:07 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8d7c8b969090899eedb896dfcdfc11e08596be2a94b1ae77609086ede354ab53`  
		Last Modified: Fri, 23 Sep 2016 18:11:54 GMT  
		Size: 43.1 MB (43149672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cf27ef20a0d684a2f113fab4b3cf58cdb4b5e3ec312e688e979add4df4d9cb`  
		Last Modified: Fri, 23 Sep 2016 18:27:26 GMT  
		Size: 20.6 MB (20558939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d346a7dd355fc6b042ab875c346181e3a59830f2c0a2961b7512dfc171eb8950`  
		Last Modified: Fri, 23 Sep 2016 18:28:16 GMT  
		Size: 52.3 MB (52334181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61c0ce2aaf48ece0d079535a6ae3a75d760f88be32e826f39042b07a2fd4d95`  
		Last Modified: Fri, 23 Sep 2016 19:40:05 GMT  
		Size: 592.5 KB (592473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d454d9b918097dbfabf38bbb570310a8e69aae04066af9025a14f1970956918`  
		Last Modified: Fri, 23 Sep 2016 19:40:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6698e2f319714131e15680242720372f8ebc7da860484cc00e21f2bb0d9e3ad`  
		Last Modified: Fri, 23 Sep 2016 19:40:03 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688ee1a7ff8dfa0cd12e4cc0458513f2fc461c0f92135f5a6162fca1a6b7dd31`  
		Last Modified: Fri, 23 Sep 2016 19:40:24 GMT  
		Size: 128.5 MB (128482936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4834a6599c5ca67857904761cec0a57b574b45788febc301512b34b889b62a0`  
		Last Modified: Sat, 24 Sep 2016 04:19:18 GMT  
		Size: 8.6 MB (8598862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b334963872268bca1c635778fe93f9e3afcfc97c2e0c5bc7ad1fcbe7b71704`  
		Last Modified: Sat, 24 Sep 2016 04:19:15 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e308c72ec5c4733ee7d28a6cc4ca3a848d78d0996a9e706b6f786771c55ef334`  
		Last Modified: Sat, 24 Sep 2016 04:19:15 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-9-onbuild`

```console
$ docker pull maven@sha256:08303230c0ee73948d93b18450c241c7bccc87f7c40b7de6fa2620630bb5dc5c
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-9-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253718721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab2226b298c1cf68ebdeff0df8e61a0443e4cb4f45bf8b0024bf6025edd2bd30`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 18:09:05 GMT
ADD file:38fc3f9aecc8de28ee67c48e4f26a9dd74b238023b7f92c19da2f642b9d0fc14 in / 
# Fri, 23 Sep 2016 18:09:06 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:39:18 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 23 Sep 2016 19:39:18 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:39:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:39:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Fri, 23 Sep 2016 19:39:19 GMT
ENV JAVA_VERSION=9~b136
# Fri, 23 Sep 2016 19:39:20 GMT
ENV JAVA_DEBIAN_VERSION=9~b136-1
# Fri, 23 Sep 2016 19:39:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 24 Sep 2016 04:19:01 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 24 Sep 2016 04:19:01 GMT
ARG USER_HOME_DIR=/root
# Sat, 24 Sep 2016 04:19:04 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 24 Sep 2016 04:19:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 24 Sep 2016 04:19:05 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 24 Sep 2016 04:19:06 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 24 Sep 2016 04:19:06 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 24 Sep 2016 04:19:07 GMT
VOLUME [/root/.m2]
# Sat, 24 Sep 2016 04:19:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 24 Sep 2016 04:19:07 GMT
CMD ["mvn"]
# Sat, 24 Sep 2016 04:19:45 GMT
RUN mkdir -p /usr/src/app
# Sat, 24 Sep 2016 04:19:45 GMT
WORKDIR /usr/src/app
# Sat, 24 Sep 2016 04:19:45 GMT
ONBUILD ADD . /usr/src/app
# Sat, 24 Sep 2016 04:19:46 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:8d7c8b969090899eedb896dfcdfc11e08596be2a94b1ae77609086ede354ab53`  
		Last Modified: Fri, 23 Sep 2016 18:11:54 GMT  
		Size: 43.1 MB (43149672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cf27ef20a0d684a2f113fab4b3cf58cdb4b5e3ec312e688e979add4df4d9cb`  
		Last Modified: Fri, 23 Sep 2016 18:27:26 GMT  
		Size: 20.6 MB (20558939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d346a7dd355fc6b042ab875c346181e3a59830f2c0a2961b7512dfc171eb8950`  
		Last Modified: Fri, 23 Sep 2016 18:28:16 GMT  
		Size: 52.3 MB (52334181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61c0ce2aaf48ece0d079535a6ae3a75d760f88be32e826f39042b07a2fd4d95`  
		Last Modified: Fri, 23 Sep 2016 19:40:05 GMT  
		Size: 592.5 KB (592473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d454d9b918097dbfabf38bbb570310a8e69aae04066af9025a14f1970956918`  
		Last Modified: Fri, 23 Sep 2016 19:40:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6698e2f319714131e15680242720372f8ebc7da860484cc00e21f2bb0d9e3ad`  
		Last Modified: Fri, 23 Sep 2016 19:40:03 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688ee1a7ff8dfa0cd12e4cc0458513f2fc461c0f92135f5a6162fca1a6b7dd31`  
		Last Modified: Fri, 23 Sep 2016 19:40:24 GMT  
		Size: 128.5 MB (128482936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4834a6599c5ca67857904761cec0a57b574b45788febc301512b34b889b62a0`  
		Last Modified: Sat, 24 Sep 2016 04:19:18 GMT  
		Size: 8.6 MB (8598862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b334963872268bca1c635778fe93f9e3afcfc97c2e0c5bc7ad1fcbe7b71704`  
		Last Modified: Sat, 24 Sep 2016 04:19:15 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e308c72ec5c4733ee7d28a6cc4ca3a848d78d0996a9e706b6f786771c55ef334`  
		Last Modified: Sat, 24 Sep 2016 04:19:15 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302bb9b9983bbc0ecfdb731fed46bf73bb916dfea9b9cf6f109f5a6880245ef8`  
		Last Modified: Sat, 24 Sep 2016 04:19:53 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-9-onbuild`

```console
$ docker pull maven@sha256:08303230c0ee73948d93b18450c241c7bccc87f7c40b7de6fa2620630bb5dc5c
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-9-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253718721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab2226b298c1cf68ebdeff0df8e61a0443e4cb4f45bf8b0024bf6025edd2bd30`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 18:09:05 GMT
ADD file:38fc3f9aecc8de28ee67c48e4f26a9dd74b238023b7f92c19da2f642b9d0fc14 in / 
# Fri, 23 Sep 2016 18:09:06 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:39:18 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 23 Sep 2016 19:39:18 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:39:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:39:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Fri, 23 Sep 2016 19:39:19 GMT
ENV JAVA_VERSION=9~b136
# Fri, 23 Sep 2016 19:39:20 GMT
ENV JAVA_DEBIAN_VERSION=9~b136-1
# Fri, 23 Sep 2016 19:39:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 24 Sep 2016 04:19:01 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 24 Sep 2016 04:19:01 GMT
ARG USER_HOME_DIR=/root
# Sat, 24 Sep 2016 04:19:04 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 24 Sep 2016 04:19:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 24 Sep 2016 04:19:05 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 24 Sep 2016 04:19:06 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 24 Sep 2016 04:19:06 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 24 Sep 2016 04:19:07 GMT
VOLUME [/root/.m2]
# Sat, 24 Sep 2016 04:19:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 24 Sep 2016 04:19:07 GMT
CMD ["mvn"]
# Sat, 24 Sep 2016 04:19:45 GMT
RUN mkdir -p /usr/src/app
# Sat, 24 Sep 2016 04:19:45 GMT
WORKDIR /usr/src/app
# Sat, 24 Sep 2016 04:19:45 GMT
ONBUILD ADD . /usr/src/app
# Sat, 24 Sep 2016 04:19:46 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:8d7c8b969090899eedb896dfcdfc11e08596be2a94b1ae77609086ede354ab53`  
		Last Modified: Fri, 23 Sep 2016 18:11:54 GMT  
		Size: 43.1 MB (43149672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cf27ef20a0d684a2f113fab4b3cf58cdb4b5e3ec312e688e979add4df4d9cb`  
		Last Modified: Fri, 23 Sep 2016 18:27:26 GMT  
		Size: 20.6 MB (20558939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d346a7dd355fc6b042ab875c346181e3a59830f2c0a2961b7512dfc171eb8950`  
		Last Modified: Fri, 23 Sep 2016 18:28:16 GMT  
		Size: 52.3 MB (52334181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61c0ce2aaf48ece0d079535a6ae3a75d760f88be32e826f39042b07a2fd4d95`  
		Last Modified: Fri, 23 Sep 2016 19:40:05 GMT  
		Size: 592.5 KB (592473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d454d9b918097dbfabf38bbb570310a8e69aae04066af9025a14f1970956918`  
		Last Modified: Fri, 23 Sep 2016 19:40:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6698e2f319714131e15680242720372f8ebc7da860484cc00e21f2bb0d9e3ad`  
		Last Modified: Fri, 23 Sep 2016 19:40:03 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688ee1a7ff8dfa0cd12e4cc0458513f2fc461c0f92135f5a6162fca1a6b7dd31`  
		Last Modified: Fri, 23 Sep 2016 19:40:24 GMT  
		Size: 128.5 MB (128482936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4834a6599c5ca67857904761cec0a57b574b45788febc301512b34b889b62a0`  
		Last Modified: Sat, 24 Sep 2016 04:19:18 GMT  
		Size: 8.6 MB (8598862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b334963872268bca1c635778fe93f9e3afcfc97c2e0c5bc7ad1fcbe7b71704`  
		Last Modified: Sat, 24 Sep 2016 04:19:15 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e308c72ec5c4733ee7d28a6cc4ca3a848d78d0996a9e706b6f786771c55ef334`  
		Last Modified: Sat, 24 Sep 2016 04:19:15 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302bb9b9983bbc0ecfdb731fed46bf73bb916dfea9b9cf6f109f5a6880245ef8`  
		Last Modified: Sat, 24 Sep 2016 04:19:53 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-9-onbuild`

```console
$ docker pull maven@sha256:08303230c0ee73948d93b18450c241c7bccc87f7c40b7de6fa2620630bb5dc5c
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253718721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab2226b298c1cf68ebdeff0df8e61a0443e4cb4f45bf8b0024bf6025edd2bd30`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 18:09:05 GMT
ADD file:38fc3f9aecc8de28ee67c48e4f26a9dd74b238023b7f92c19da2f642b9d0fc14 in / 
# Fri, 23 Sep 2016 18:09:06 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:39:18 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 23 Sep 2016 19:39:18 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:39:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:39:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Fri, 23 Sep 2016 19:39:19 GMT
ENV JAVA_VERSION=9~b136
# Fri, 23 Sep 2016 19:39:20 GMT
ENV JAVA_DEBIAN_VERSION=9~b136-1
# Fri, 23 Sep 2016 19:39:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 24 Sep 2016 04:19:01 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 24 Sep 2016 04:19:01 GMT
ARG USER_HOME_DIR=/root
# Sat, 24 Sep 2016 04:19:04 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 24 Sep 2016 04:19:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 24 Sep 2016 04:19:05 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 24 Sep 2016 04:19:06 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 24 Sep 2016 04:19:06 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 24 Sep 2016 04:19:07 GMT
VOLUME [/root/.m2]
# Sat, 24 Sep 2016 04:19:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 24 Sep 2016 04:19:07 GMT
CMD ["mvn"]
# Sat, 24 Sep 2016 04:19:45 GMT
RUN mkdir -p /usr/src/app
# Sat, 24 Sep 2016 04:19:45 GMT
WORKDIR /usr/src/app
# Sat, 24 Sep 2016 04:19:45 GMT
ONBUILD ADD . /usr/src/app
# Sat, 24 Sep 2016 04:19:46 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:8d7c8b969090899eedb896dfcdfc11e08596be2a94b1ae77609086ede354ab53`  
		Last Modified: Fri, 23 Sep 2016 18:11:54 GMT  
		Size: 43.1 MB (43149672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cf27ef20a0d684a2f113fab4b3cf58cdb4b5e3ec312e688e979add4df4d9cb`  
		Last Modified: Fri, 23 Sep 2016 18:27:26 GMT  
		Size: 20.6 MB (20558939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d346a7dd355fc6b042ab875c346181e3a59830f2c0a2961b7512dfc171eb8950`  
		Last Modified: Fri, 23 Sep 2016 18:28:16 GMT  
		Size: 52.3 MB (52334181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61c0ce2aaf48ece0d079535a6ae3a75d760f88be32e826f39042b07a2fd4d95`  
		Last Modified: Fri, 23 Sep 2016 19:40:05 GMT  
		Size: 592.5 KB (592473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d454d9b918097dbfabf38bbb570310a8e69aae04066af9025a14f1970956918`  
		Last Modified: Fri, 23 Sep 2016 19:40:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6698e2f319714131e15680242720372f8ebc7da860484cc00e21f2bb0d9e3ad`  
		Last Modified: Fri, 23 Sep 2016 19:40:03 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688ee1a7ff8dfa0cd12e4cc0458513f2fc461c0f92135f5a6162fca1a6b7dd31`  
		Last Modified: Fri, 23 Sep 2016 19:40:24 GMT  
		Size: 128.5 MB (128482936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4834a6599c5ca67857904761cec0a57b574b45788febc301512b34b889b62a0`  
		Last Modified: Sat, 24 Sep 2016 04:19:18 GMT  
		Size: 8.6 MB (8598862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b334963872268bca1c635778fe93f9e3afcfc97c2e0c5bc7ad1fcbe7b71704`  
		Last Modified: Sat, 24 Sep 2016 04:19:15 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e308c72ec5c4733ee7d28a6cc4ca3a848d78d0996a9e706b6f786771c55ef334`  
		Last Modified: Sat, 24 Sep 2016 04:19:15 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302bb9b9983bbc0ecfdb731fed46bf73bb916dfea9b9cf6f109f5a6880245ef8`  
		Last Modified: Sat, 24 Sep 2016 04:19:53 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
