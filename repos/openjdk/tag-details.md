<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `openjdk`

-	[`openjdk:6b38-jdk`](#openjdk6b38-jdk)
-	[`openjdk:6b38`](#openjdk6b38)
-	[`openjdk:6-jdk`](#openjdk6-jdk)
-	[`openjdk:6`](#openjdk6)
-	[`openjdk:6b38-jre`](#openjdk6b38-jre)
-	[`openjdk:6-jre`](#openjdk6-jre)
-	[`openjdk:7u121-jdk`](#openjdk7u121-jdk)
-	[`openjdk:7u121`](#openjdk7u121)
-	[`openjdk:7-jdk`](#openjdk7-jdk)
-	[`openjdk:7`](#openjdk7)
-	[`openjdk:7u121-jdk-alpine`](#openjdk7u121-jdk-alpine)
-	[`openjdk:7u121-alpine`](#openjdk7u121-alpine)
-	[`openjdk:7-jdk-alpine`](#openjdk7-jdk-alpine)
-	[`openjdk:7-alpine`](#openjdk7-alpine)
-	[`openjdk:7u121-jre`](#openjdk7u121-jre)
-	[`openjdk:7-jre`](#openjdk7-jre)
-	[`openjdk:7u121-jre-alpine`](#openjdk7u121-jre-alpine)
-	[`openjdk:7-jre-alpine`](#openjdk7-jre-alpine)
-	[`openjdk:8u121-jdk`](#openjdk8u121-jdk)
-	[`openjdk:8u121`](#openjdk8u121)
-	[`openjdk:8-jdk`](#openjdk8-jdk)
-	[`openjdk:8`](#openjdk8)
-	[`openjdk:jdk`](#openjdkjdk)
-	[`openjdk:latest`](#openjdklatest)
-	[`openjdk:8u111-jdk-alpine`](#openjdk8u111-jdk-alpine)
-	[`openjdk:8u111-alpine`](#openjdk8u111-alpine)
-	[`openjdk:8-jdk-alpine`](#openjdk8-jdk-alpine)
-	[`openjdk:8-alpine`](#openjdk8-alpine)
-	[`openjdk:jdk-alpine`](#openjdkjdk-alpine)
-	[`openjdk:alpine`](#openjdkalpine)
-	[`openjdk:8u121-jdk-windowsservercore`](#openjdk8u121-jdk-windowsservercore)
-	[`openjdk:8u121-windowsservercore`](#openjdk8u121-windowsservercore)
-	[`openjdk:8-jdk-windowsservercore`](#openjdk8-jdk-windowsservercore)
-	[`openjdk:8-windowsservercore`](#openjdk8-windowsservercore)
-	[`openjdk:jdk-windowsservercore`](#openjdkjdk-windowsservercore)
-	[`openjdk:windowsservercore`](#openjdkwindowsservercore)
-	[`openjdk:8u121-jdk-nanoserver`](#openjdk8u121-jdk-nanoserver)
-	[`openjdk:8u121-nanoserver`](#openjdk8u121-nanoserver)
-	[`openjdk:8-jdk-nanoserver`](#openjdk8-jdk-nanoserver)
-	[`openjdk:8-nanoserver`](#openjdk8-nanoserver)
-	[`openjdk:jdk-nanoserver`](#openjdkjdk-nanoserver)
-	[`openjdk:nanoserver`](#openjdknanoserver)
-	[`openjdk:8u121-jre`](#openjdk8u121-jre)
-	[`openjdk:8-jre`](#openjdk8-jre)
-	[`openjdk:jre`](#openjdkjre)
-	[`openjdk:8u111-jre-alpine`](#openjdk8u111-jre-alpine)
-	[`openjdk:8-jre-alpine`](#openjdk8-jre-alpine)
-	[`openjdk:jre-alpine`](#openjdkjre-alpine)
-	[`openjdk:9-b158-jdk`](#openjdk9-b158-jdk)
-	[`openjdk:9-b158`](#openjdk9-b158)
-	[`openjdk:9-jdk`](#openjdk9-jdk)
-	[`openjdk:9`](#openjdk9)
-	[`openjdk:9-b158-jre`](#openjdk9-b158-jre)
-	[`openjdk:9-jre`](#openjdk9-jre)

## `openjdk:6b38-jdk`

```console
$ docker pull openjdk@sha256:c5a8b342ca8c70d4b347cf4dfbff6f2823822d15b2fe1ae4bd9a5bda5a2c89ed
```

-	Platforms:
	-	linux; amd64

### `openjdk:6b38-jdk` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.3 MB (187311799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31eff0ca351d42bccc1aedf3c35ea08d7f9a4dda99a0fb8e1dce5bfd25191151`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:02:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:48:32 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:48:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:48:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64
# Tue, 17 Jan 2017 00:48:33 GMT
ENV JAVA_VERSION=6b38
# Tue, 17 Jan 2017 00:48:34 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 17 Jan 2017 00:49:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c12b04be6f745f58154eeb7b80403f95b355ca3842d384ffb685acf20432ad`  
		Last Modified: Tue, 17 Jan 2017 00:24:03 GMT  
		Size: 6.8 MB (6823701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0998595e89ba3755e57a2e3cd79c8dd7805959a77828f622fa3b344a73ca5d50`  
		Last Modified: Tue, 17 Jan 2017 00:24:49 GMT  
		Size: 37.4 MB (37442207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff75640288162668192a3e192e53ed1a256803c30acbbbedc26b8646548e50a0`  
		Last Modified: Wed, 18 Jan 2017 05:15:52 GMT  
		Size: 413.7 KB (413731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea23632d43c730ab6c1671bc31df3456af028d9290c2c9b6a7e1b3a3b211f875`  
		Last Modified: Wed, 18 Jan 2017 05:15:48 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352ad2a2801fd2a8c6f79f89bb796ace45fd0c0b0a9b12d487f6123b075cede0`  
		Last Modified: Wed, 18 Jan 2017 05:16:26 GMT  
		Size: 105.3 MB (105347433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:6b38`

```console
$ docker pull openjdk@sha256:c5a8b342ca8c70d4b347cf4dfbff6f2823822d15b2fe1ae4bd9a5bda5a2c89ed
```

-	Platforms:
	-	linux; amd64

### `openjdk:6b38` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.3 MB (187311799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31eff0ca351d42bccc1aedf3c35ea08d7f9a4dda99a0fb8e1dce5bfd25191151`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:02:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:48:32 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:48:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:48:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64
# Tue, 17 Jan 2017 00:48:33 GMT
ENV JAVA_VERSION=6b38
# Tue, 17 Jan 2017 00:48:34 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 17 Jan 2017 00:49:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c12b04be6f745f58154eeb7b80403f95b355ca3842d384ffb685acf20432ad`  
		Last Modified: Tue, 17 Jan 2017 00:24:03 GMT  
		Size: 6.8 MB (6823701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0998595e89ba3755e57a2e3cd79c8dd7805959a77828f622fa3b344a73ca5d50`  
		Last Modified: Tue, 17 Jan 2017 00:24:49 GMT  
		Size: 37.4 MB (37442207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff75640288162668192a3e192e53ed1a256803c30acbbbedc26b8646548e50a0`  
		Last Modified: Wed, 18 Jan 2017 05:15:52 GMT  
		Size: 413.7 KB (413731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea23632d43c730ab6c1671bc31df3456af028d9290c2c9b6a7e1b3a3b211f875`  
		Last Modified: Wed, 18 Jan 2017 05:15:48 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352ad2a2801fd2a8c6f79f89bb796ace45fd0c0b0a9b12d487f6123b075cede0`  
		Last Modified: Wed, 18 Jan 2017 05:16:26 GMT  
		Size: 105.3 MB (105347433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:6-jdk`

```console
$ docker pull openjdk@sha256:c5a8b342ca8c70d4b347cf4dfbff6f2823822d15b2fe1ae4bd9a5bda5a2c89ed
```

-	Platforms:
	-	linux; amd64

### `openjdk:6-jdk` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.3 MB (187311799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31eff0ca351d42bccc1aedf3c35ea08d7f9a4dda99a0fb8e1dce5bfd25191151`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:02:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:48:32 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:48:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:48:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64
# Tue, 17 Jan 2017 00:48:33 GMT
ENV JAVA_VERSION=6b38
# Tue, 17 Jan 2017 00:48:34 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 17 Jan 2017 00:49:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c12b04be6f745f58154eeb7b80403f95b355ca3842d384ffb685acf20432ad`  
		Last Modified: Tue, 17 Jan 2017 00:24:03 GMT  
		Size: 6.8 MB (6823701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0998595e89ba3755e57a2e3cd79c8dd7805959a77828f622fa3b344a73ca5d50`  
		Last Modified: Tue, 17 Jan 2017 00:24:49 GMT  
		Size: 37.4 MB (37442207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff75640288162668192a3e192e53ed1a256803c30acbbbedc26b8646548e50a0`  
		Last Modified: Wed, 18 Jan 2017 05:15:52 GMT  
		Size: 413.7 KB (413731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea23632d43c730ab6c1671bc31df3456af028d9290c2c9b6a7e1b3a3b211f875`  
		Last Modified: Wed, 18 Jan 2017 05:15:48 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352ad2a2801fd2a8c6f79f89bb796ace45fd0c0b0a9b12d487f6123b075cede0`  
		Last Modified: Wed, 18 Jan 2017 05:16:26 GMT  
		Size: 105.3 MB (105347433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:6`

```console
$ docker pull openjdk@sha256:c5a8b342ca8c70d4b347cf4dfbff6f2823822d15b2fe1ae4bd9a5bda5a2c89ed
```

-	Platforms:
	-	linux; amd64

### `openjdk:6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.3 MB (187311799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31eff0ca351d42bccc1aedf3c35ea08d7f9a4dda99a0fb8e1dce5bfd25191151`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:02:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:03:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:48:32 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:48:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:48:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64
# Tue, 17 Jan 2017 00:48:33 GMT
ENV JAVA_VERSION=6b38
# Tue, 17 Jan 2017 00:48:34 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 17 Jan 2017 00:49:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c12b04be6f745f58154eeb7b80403f95b355ca3842d384ffb685acf20432ad`  
		Last Modified: Tue, 17 Jan 2017 00:24:03 GMT  
		Size: 6.8 MB (6823701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0998595e89ba3755e57a2e3cd79c8dd7805959a77828f622fa3b344a73ca5d50`  
		Last Modified: Tue, 17 Jan 2017 00:24:49 GMT  
		Size: 37.4 MB (37442207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff75640288162668192a3e192e53ed1a256803c30acbbbedc26b8646548e50a0`  
		Last Modified: Wed, 18 Jan 2017 05:15:52 GMT  
		Size: 413.7 KB (413731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea23632d43c730ab6c1671bc31df3456af028d9290c2c9b6a7e1b3a3b211f875`  
		Last Modified: Wed, 18 Jan 2017 05:15:48 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352ad2a2801fd2a8c6f79f89bb796ace45fd0c0b0a9b12d487f6123b075cede0`  
		Last Modified: Wed, 18 Jan 2017 05:16:26 GMT  
		Size: 105.3 MB (105347433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:6b38-jre`

```console
$ docker pull openjdk@sha256:524bd0c7c8bdea9694e850a80d7e2f77ac5172108b72ad509bcd048a093a0a25
```

-	Platforms:
	-	linux; amd64

### `openjdk:6b38-jre` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.3 MB (97285585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f956f51f8eafacef91440e39176b3f53de5e838592508a10f35b9c8c01b6046a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:02:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:31 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:49:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:49:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64/jre
# Tue, 17 Jan 2017 00:49:32 GMT
ENV JAVA_VERSION=6b38
# Tue, 17 Jan 2017 00:49:33 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 17 Jan 2017 00:49:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c12b04be6f745f58154eeb7b80403f95b355ca3842d384ffb685acf20432ad`  
		Last Modified: Tue, 17 Jan 2017 00:24:03 GMT  
		Size: 6.8 MB (6823701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ce198c8249dc790e4e152c2fa893703e149ffced8add88be063712fde1ad3f`  
		Last Modified: Wed, 18 Jan 2017 05:18:58 GMT  
		Size: 360.3 KB (360346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1baff560f38fe77a869ac6e98c826e1042d4119f960e24bb484280d25a9322b8`  
		Last Modified: Wed, 18 Jan 2017 05:18:57 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1cd3969fdb7283278d2df94dfd913760a4ca30ae49054d7a9b535f222638660`  
		Last Modified: Wed, 18 Jan 2017 05:19:21 GMT  
		Size: 52.8 MB (52816811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:6-jre`

```console
$ docker pull openjdk@sha256:524bd0c7c8bdea9694e850a80d7e2f77ac5172108b72ad509bcd048a093a0a25
```

-	Platforms:
	-	linux; amd64

### `openjdk:6-jre` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.3 MB (97285585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f956f51f8eafacef91440e39176b3f53de5e838592508a10f35b9c8c01b6046a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:02:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:31 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:49:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:49:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64/jre
# Tue, 17 Jan 2017 00:49:32 GMT
ENV JAVA_VERSION=6b38
# Tue, 17 Jan 2017 00:49:33 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 17 Jan 2017 00:49:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c12b04be6f745f58154eeb7b80403f95b355ca3842d384ffb685acf20432ad`  
		Last Modified: Tue, 17 Jan 2017 00:24:03 GMT  
		Size: 6.8 MB (6823701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ce198c8249dc790e4e152c2fa893703e149ffced8add88be063712fde1ad3f`  
		Last Modified: Wed, 18 Jan 2017 05:18:58 GMT  
		Size: 360.3 KB (360346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1baff560f38fe77a869ac6e98c826e1042d4119f960e24bb484280d25a9322b8`  
		Last Modified: Wed, 18 Jan 2017 05:18:57 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1cd3969fdb7283278d2df94dfd913760a4ca30ae49054d7a9b535f222638660`  
		Last Modified: Wed, 18 Jan 2017 05:19:21 GMT  
		Size: 52.8 MB (52816811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7u121-jdk`

```console
$ docker pull openjdk@sha256:221a92b5e08cbaf9ee9728be7480532b74237e4e5244e912321d406ee87412bd
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u121-jdk` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.5 MB (252464550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e557b635aea6987fe4c48a99e69707f4e86045440e3c0a6e97067a18a9db50e`
-	Default Command: `["\/bin\/bash"]`

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

## `openjdk:7u121`

```console
$ docker pull openjdk@sha256:221a92b5e08cbaf9ee9728be7480532b74237e4e5244e912321d406ee87412bd
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u121` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.5 MB (252464550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e557b635aea6987fe4c48a99e69707f4e86045440e3c0a6e97067a18a9db50e`
-	Default Command: `["\/bin\/bash"]`

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

## `openjdk:7-jdk`

```console
$ docker pull openjdk@sha256:221a92b5e08cbaf9ee9728be7480532b74237e4e5244e912321d406ee87412bd
```

-	Platforms:
	-	linux; amd64

### `openjdk:7-jdk` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.5 MB (252464550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e557b635aea6987fe4c48a99e69707f4e86045440e3c0a6e97067a18a9db50e`
-	Default Command: `["\/bin\/bash"]`

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

## `openjdk:7`

```console
$ docker pull openjdk@sha256:221a92b5e08cbaf9ee9728be7480532b74237e4e5244e912321d406ee87412bd
```

-	Platforms:
	-	linux; amd64

### `openjdk:7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.5 MB (252464550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e557b635aea6987fe4c48a99e69707f4e86045440e3c0a6e97067a18a9db50e`
-	Default Command: `["\/bin\/bash"]`

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

## `openjdk:7u121-jdk-alpine`

```console
$ docker pull openjdk@sha256:0409828c56019541322a6719cf6621bc71d7bbddc257dbb42bd4f083870ed8aa
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u121-jdk-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77888829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:417a00e1ebf9643f55f95cf8a721219960d27d1b620638d44531ef89fe776cb6`

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

## `openjdk:7u121-alpine`

```console
$ docker pull openjdk@sha256:0409828c56019541322a6719cf6621bc71d7bbddc257dbb42bd4f083870ed8aa
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u121-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77888829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:417a00e1ebf9643f55f95cf8a721219960d27d1b620638d44531ef89fe776cb6`

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

## `openjdk:7-jdk-alpine`

```console
$ docker pull openjdk@sha256:0409828c56019541322a6719cf6621bc71d7bbddc257dbb42bd4f083870ed8aa
```

-	Platforms:
	-	linux; amd64

### `openjdk:7-jdk-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77888829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:417a00e1ebf9643f55f95cf8a721219960d27d1b620638d44531ef89fe776cb6`

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

## `openjdk:7-alpine`

```console
$ docker pull openjdk@sha256:0409828c56019541322a6719cf6621bc71d7bbddc257dbb42bd4f083870ed8aa
```

-	Platforms:
	-	linux; amd64

### `openjdk:7-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77888829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:417a00e1ebf9643f55f95cf8a721219960d27d1b620638d44531ef89fe776cb6`

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

## `openjdk:7u121-jre`

```console
$ docker pull openjdk@sha256:07cc652a352e29f4373a62deabd87e39ae6640f4da0a9a536e7d3d97f1aa1976
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u121-jre` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.3 MB (148276747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebd0b6343a13365a0b3e746c0a1f407dd1a3120aec1af29d77df2758c6d4f31e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Wed, 08 Feb 2017 22:16:54 GMT
ENV JAVA_VERSION=7u121
# Wed, 08 Feb 2017 22:16:55 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 08 Feb 2017 22:17:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9789263043d1903b4bfb12d55378dce8182df44901ba747f53b662dfbddd0f10`  
		Last Modified: Wed, 18 Jan 2017 05:27:33 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6ea13aad1573ad87eb6d2f38f7c42ea634532edc51d19039f4e57e82d3c549`  
		Last Modified: Wed, 08 Feb 2017 22:22:10 GMT  
		Size: 77.8 MB (77813197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7-jre`

```console
$ docker pull openjdk@sha256:07cc652a352e29f4373a62deabd87e39ae6640f4da0a9a536e7d3d97f1aa1976
```

-	Platforms:
	-	linux; amd64

### `openjdk:7-jre` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.3 MB (148276747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebd0b6343a13365a0b3e746c0a1f407dd1a3120aec1af29d77df2758c6d4f31e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Wed, 08 Feb 2017 22:16:54 GMT
ENV JAVA_VERSION=7u121
# Wed, 08 Feb 2017 22:16:55 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 08 Feb 2017 22:17:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9789263043d1903b4bfb12d55378dce8182df44901ba747f53b662dfbddd0f10`  
		Last Modified: Wed, 18 Jan 2017 05:27:33 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6ea13aad1573ad87eb6d2f38f7c42ea634532edc51d19039f4e57e82d3c549`  
		Last Modified: Wed, 08 Feb 2017 22:22:10 GMT  
		Size: 77.8 MB (77813197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7u121-jre-alpine`

```console
$ docker pull openjdk@sha256:f1a3eea1a70b6d94ee27d8b0aa0cbc0c1ffc80bdd64373cac2f20b3272093872
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u121-jre-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61646722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a6cf9ce55087a801a55b67ba08ae32beb115654c6838e0d7d3f4e9ec7c2338d`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Tue, 27 Dec 2016 18:38:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 27 Dec 2016 18:38:09 GMT
ENV JAVA_VERSION=7u121
# Tue, 27 Dec 2016 18:38:21 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Tue, 27 Dec 2016 18:38:30 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:93e4c3809f11981b6955a411dbf65f6a183c4ec3447d3e4b1e369c7f571aa2d7`  
		Last Modified: Tue, 27 Dec 2016 18:51:03 GMT  
		Size: 59.3 MB (59333401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7-jre-alpine`

```console
$ docker pull openjdk@sha256:f1a3eea1a70b6d94ee27d8b0aa0cbc0c1ffc80bdd64373cac2f20b3272093872
```

-	Platforms:
	-	linux; amd64

### `openjdk:7-jre-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61646722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a6cf9ce55087a801a55b67ba08ae32beb115654c6838e0d7d3f4e9ec7c2338d`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Tue, 27 Dec 2016 18:38:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 27 Dec 2016 18:38:09 GMT
ENV JAVA_VERSION=7u121
# Tue, 27 Dec 2016 18:38:21 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Tue, 27 Dec 2016 18:38:30 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:93e4c3809f11981b6955a411dbf65f6a183c4ec3447d3e4b1e369c7f571aa2d7`  
		Last Modified: Tue, 27 Dec 2016 18:51:03 GMT  
		Size: 59.3 MB (59333401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8u121-jdk`

```console
$ docker pull openjdk@sha256:dd47a2c6022171cff7511ef742df11f7cfbfbaae92930c347738a9e0e72f3768
```

-	Platforms:
	-	linux; amd64

### `openjdk:8u121-jdk` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.6 MB (243597055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dde5631d4aa557f123acbd1370eb9f7e6cfed56e771a1e5459e8b993bc10176`
-	Default Command: `["\/bin\/bash"]`

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

## `openjdk:8u121`

```console
$ docker pull openjdk@sha256:dd47a2c6022171cff7511ef742df11f7cfbfbaae92930c347738a9e0e72f3768
```

-	Platforms:
	-	linux; amd64

### `openjdk:8u121` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.6 MB (243597055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dde5631d4aa557f123acbd1370eb9f7e6cfed56e771a1e5459e8b993bc10176`
-	Default Command: `["\/bin\/bash"]`

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

## `openjdk:8-jdk`

```console
$ docker pull openjdk@sha256:dd47a2c6022171cff7511ef742df11f7cfbfbaae92930c347738a9e0e72f3768
```

-	Platforms:
	-	linux; amd64

### `openjdk:8-jdk` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.6 MB (243597055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dde5631d4aa557f123acbd1370eb9f7e6cfed56e771a1e5459e8b993bc10176`
-	Default Command: `["\/bin\/bash"]`

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

## `openjdk:8`

```console
$ docker pull openjdk@sha256:dd47a2c6022171cff7511ef742df11f7cfbfbaae92930c347738a9e0e72f3768
```

-	Platforms:
	-	linux; amd64

### `openjdk:8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.6 MB (243597055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dde5631d4aa557f123acbd1370eb9f7e6cfed56e771a1e5459e8b993bc10176`
-	Default Command: `["\/bin\/bash"]`

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

## `openjdk:jdk`

```console
$ docker pull openjdk@sha256:dd47a2c6022171cff7511ef742df11f7cfbfbaae92930c347738a9e0e72f3768
```

-	Platforms:
	-	linux; amd64

### `openjdk:jdk` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.6 MB (243597055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dde5631d4aa557f123acbd1370eb9f7e6cfed56e771a1e5459e8b993bc10176`
-	Default Command: `["\/bin\/bash"]`

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

## `openjdk:latest`

```console
$ docker pull openjdk@sha256:dd47a2c6022171cff7511ef742df11f7cfbfbaae92930c347738a9e0e72f3768
```

-	Platforms:
	-	linux; amd64

### `openjdk:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.6 MB (243597055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dde5631d4aa557f123acbd1370eb9f7e6cfed56e771a1e5459e8b993bc10176`
-	Default Command: `["\/bin\/bash"]`

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

## `openjdk:8u111-jdk-alpine`

```console
$ docker pull openjdk@sha256:21204d8264c0670ae35a18439cd0bf1d91055181fff75aeeb1d1840becfb189c
```

-	Platforms:
	-	linux; amd64

### `openjdk:8u111-jdk-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51668964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e40ba8c51bb2b8b1555410848d6e7ec3f35265a3ef174718c72ac014db4c3b87`

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

## `openjdk:8u111-alpine`

```console
$ docker pull openjdk@sha256:21204d8264c0670ae35a18439cd0bf1d91055181fff75aeeb1d1840becfb189c
```

-	Platforms:
	-	linux; amd64

### `openjdk:8u111-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51668964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e40ba8c51bb2b8b1555410848d6e7ec3f35265a3ef174718c72ac014db4c3b87`

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

## `openjdk:8-jdk-alpine`

```console
$ docker pull openjdk@sha256:21204d8264c0670ae35a18439cd0bf1d91055181fff75aeeb1d1840becfb189c
```

-	Platforms:
	-	linux; amd64

### `openjdk:8-jdk-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51668964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e40ba8c51bb2b8b1555410848d6e7ec3f35265a3ef174718c72ac014db4c3b87`

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

## `openjdk:8-alpine`

```console
$ docker pull openjdk@sha256:21204d8264c0670ae35a18439cd0bf1d91055181fff75aeeb1d1840becfb189c
```

-	Platforms:
	-	linux; amd64

### `openjdk:8-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51668964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e40ba8c51bb2b8b1555410848d6e7ec3f35265a3ef174718c72ac014db4c3b87`

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

## `openjdk:jdk-alpine`

```console
$ docker pull openjdk@sha256:21204d8264c0670ae35a18439cd0bf1d91055181fff75aeeb1d1840becfb189c
```

-	Platforms:
	-	linux; amd64

### `openjdk:jdk-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51668964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e40ba8c51bb2b8b1555410848d6e7ec3f35265a3ef174718c72ac014db4c3b87`

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

## `openjdk:alpine`

```console
$ docker pull openjdk@sha256:21204d8264c0670ae35a18439cd0bf1d91055181fff75aeeb1d1840becfb189c
```

-	Platforms:
	-	linux; amd64

### `openjdk:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51668964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e40ba8c51bb2b8b1555410848d6e7ec3f35265a3ef174718c72ac014db4c3b87`

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

## `openjdk:8u121-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:61da13bbeb8175544e7f3ce4cb81826cf39b785117fed0993e679fd9c924a4c8
```

-	Platforms:
	-	windows; amd64

### `openjdk:8u121-jdk-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 GB (5106954016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41dc1de3b4a02d190b87b078cb1f961926b75bdedb74efaa1fb7f7ba3dae4d25`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 10 Feb 2017 00:50:12 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 10 Feb 2017 00:50:32 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 10 Feb 2017 00:50:36 GMT
ENV JAVA_VERSION=8u121
# Fri, 10 Feb 2017 00:50:40 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.121-1
# Fri, 10 Feb 2017 00:50:42 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.121-1.b13.ojdkbuild.windows.x86_64.zip
# Fri, 10 Feb 2017 00:50:45 GMT
ENV JAVA_OJDKBUILD_SHA256=68476588b135a2ad9030567ab90368c36f5eb1f20bedffac9619bbcda5e3575b
# Fri, 10 Feb 2017 00:51:54 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2090e83c9aacacb2da7d0836cf297e9927a3137c208e2f631e39e181e31ceb90`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039b76eabbd98ca5792324012ea58f51ded7af1e15e9956ddc0195ba19a61168`  
		Last Modified: Fri, 10 Feb 2017 00:53:19 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cb46e3a9b9c5cc452115f9affced3b80fbbbacd5098c6e9f965aed62832a59`  
		Last Modified: Fri, 10 Feb 2017 00:53:26 GMT  
		Size: 9.1 MB (9100809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e30e36f02cdb997f11e6b0fb6a3da3f86d3594c65b22c664b7af8ad7d030742`  
		Last Modified: Fri, 10 Feb 2017 00:53:14 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31b746484756a1f15190ebe610e9e23598783893c9067cdef9af9387193c587`  
		Last Modified: Fri, 10 Feb 2017 00:53:13 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1afd383e5aed8e5c5a5ffc7d651604b5e62a535e52c96e0c05176a533cc8f0`  
		Last Modified: Fri, 10 Feb 2017 00:53:13 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db882d8b5c8b0b24f3fd6f7fcb68cc8b27dcc151088fdf8c658a4e9d4afdd90e`  
		Last Modified: Fri, 10 Feb 2017 00:53:13 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a10f5231c049a2f62ef149e7da8438903c7110d05fc1648f406308932c4544`  
		Last Modified: Fri, 10 Feb 2017 00:53:33 GMT  
		Size: 114.7 MB (114714919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8u121-windowsservercore`

```console
$ docker pull openjdk@sha256:61da13bbeb8175544e7f3ce4cb81826cf39b785117fed0993e679fd9c924a4c8
```

-	Platforms:
	-	windows; amd64

### `openjdk:8u121-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 GB (5106954016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41dc1de3b4a02d190b87b078cb1f961926b75bdedb74efaa1fb7f7ba3dae4d25`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 10 Feb 2017 00:50:12 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 10 Feb 2017 00:50:32 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 10 Feb 2017 00:50:36 GMT
ENV JAVA_VERSION=8u121
# Fri, 10 Feb 2017 00:50:40 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.121-1
# Fri, 10 Feb 2017 00:50:42 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.121-1.b13.ojdkbuild.windows.x86_64.zip
# Fri, 10 Feb 2017 00:50:45 GMT
ENV JAVA_OJDKBUILD_SHA256=68476588b135a2ad9030567ab90368c36f5eb1f20bedffac9619bbcda5e3575b
# Fri, 10 Feb 2017 00:51:54 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2090e83c9aacacb2da7d0836cf297e9927a3137c208e2f631e39e181e31ceb90`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039b76eabbd98ca5792324012ea58f51ded7af1e15e9956ddc0195ba19a61168`  
		Last Modified: Fri, 10 Feb 2017 00:53:19 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cb46e3a9b9c5cc452115f9affced3b80fbbbacd5098c6e9f965aed62832a59`  
		Last Modified: Fri, 10 Feb 2017 00:53:26 GMT  
		Size: 9.1 MB (9100809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e30e36f02cdb997f11e6b0fb6a3da3f86d3594c65b22c664b7af8ad7d030742`  
		Last Modified: Fri, 10 Feb 2017 00:53:14 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31b746484756a1f15190ebe610e9e23598783893c9067cdef9af9387193c587`  
		Last Modified: Fri, 10 Feb 2017 00:53:13 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1afd383e5aed8e5c5a5ffc7d651604b5e62a535e52c96e0c05176a533cc8f0`  
		Last Modified: Fri, 10 Feb 2017 00:53:13 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db882d8b5c8b0b24f3fd6f7fcb68cc8b27dcc151088fdf8c658a4e9d4afdd90e`  
		Last Modified: Fri, 10 Feb 2017 00:53:13 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a10f5231c049a2f62ef149e7da8438903c7110d05fc1648f406308932c4544`  
		Last Modified: Fri, 10 Feb 2017 00:53:33 GMT  
		Size: 114.7 MB (114714919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:61da13bbeb8175544e7f3ce4cb81826cf39b785117fed0993e679fd9c924a4c8
```

-	Platforms:
	-	windows; amd64

### `openjdk:8-jdk-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 GB (5106954016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41dc1de3b4a02d190b87b078cb1f961926b75bdedb74efaa1fb7f7ba3dae4d25`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 10 Feb 2017 00:50:12 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 10 Feb 2017 00:50:32 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 10 Feb 2017 00:50:36 GMT
ENV JAVA_VERSION=8u121
# Fri, 10 Feb 2017 00:50:40 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.121-1
# Fri, 10 Feb 2017 00:50:42 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.121-1.b13.ojdkbuild.windows.x86_64.zip
# Fri, 10 Feb 2017 00:50:45 GMT
ENV JAVA_OJDKBUILD_SHA256=68476588b135a2ad9030567ab90368c36f5eb1f20bedffac9619bbcda5e3575b
# Fri, 10 Feb 2017 00:51:54 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2090e83c9aacacb2da7d0836cf297e9927a3137c208e2f631e39e181e31ceb90`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039b76eabbd98ca5792324012ea58f51ded7af1e15e9956ddc0195ba19a61168`  
		Last Modified: Fri, 10 Feb 2017 00:53:19 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cb46e3a9b9c5cc452115f9affced3b80fbbbacd5098c6e9f965aed62832a59`  
		Last Modified: Fri, 10 Feb 2017 00:53:26 GMT  
		Size: 9.1 MB (9100809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e30e36f02cdb997f11e6b0fb6a3da3f86d3594c65b22c664b7af8ad7d030742`  
		Last Modified: Fri, 10 Feb 2017 00:53:14 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31b746484756a1f15190ebe610e9e23598783893c9067cdef9af9387193c587`  
		Last Modified: Fri, 10 Feb 2017 00:53:13 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1afd383e5aed8e5c5a5ffc7d651604b5e62a535e52c96e0c05176a533cc8f0`  
		Last Modified: Fri, 10 Feb 2017 00:53:13 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db882d8b5c8b0b24f3fd6f7fcb68cc8b27dcc151088fdf8c658a4e9d4afdd90e`  
		Last Modified: Fri, 10 Feb 2017 00:53:13 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a10f5231c049a2f62ef149e7da8438903c7110d05fc1648f406308932c4544`  
		Last Modified: Fri, 10 Feb 2017 00:53:33 GMT  
		Size: 114.7 MB (114714919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8-windowsservercore`

```console
$ docker pull openjdk@sha256:61da13bbeb8175544e7f3ce4cb81826cf39b785117fed0993e679fd9c924a4c8
```

-	Platforms:
	-	windows; amd64

### `openjdk:8-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 GB (5106954016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41dc1de3b4a02d190b87b078cb1f961926b75bdedb74efaa1fb7f7ba3dae4d25`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 10 Feb 2017 00:50:12 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 10 Feb 2017 00:50:32 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 10 Feb 2017 00:50:36 GMT
ENV JAVA_VERSION=8u121
# Fri, 10 Feb 2017 00:50:40 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.121-1
# Fri, 10 Feb 2017 00:50:42 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.121-1.b13.ojdkbuild.windows.x86_64.zip
# Fri, 10 Feb 2017 00:50:45 GMT
ENV JAVA_OJDKBUILD_SHA256=68476588b135a2ad9030567ab90368c36f5eb1f20bedffac9619bbcda5e3575b
# Fri, 10 Feb 2017 00:51:54 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2090e83c9aacacb2da7d0836cf297e9927a3137c208e2f631e39e181e31ceb90`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039b76eabbd98ca5792324012ea58f51ded7af1e15e9956ddc0195ba19a61168`  
		Last Modified: Fri, 10 Feb 2017 00:53:19 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cb46e3a9b9c5cc452115f9affced3b80fbbbacd5098c6e9f965aed62832a59`  
		Last Modified: Fri, 10 Feb 2017 00:53:26 GMT  
		Size: 9.1 MB (9100809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e30e36f02cdb997f11e6b0fb6a3da3f86d3594c65b22c664b7af8ad7d030742`  
		Last Modified: Fri, 10 Feb 2017 00:53:14 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31b746484756a1f15190ebe610e9e23598783893c9067cdef9af9387193c587`  
		Last Modified: Fri, 10 Feb 2017 00:53:13 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1afd383e5aed8e5c5a5ffc7d651604b5e62a535e52c96e0c05176a533cc8f0`  
		Last Modified: Fri, 10 Feb 2017 00:53:13 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db882d8b5c8b0b24f3fd6f7fcb68cc8b27dcc151088fdf8c658a4e9d4afdd90e`  
		Last Modified: Fri, 10 Feb 2017 00:53:13 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a10f5231c049a2f62ef149e7da8438903c7110d05fc1648f406308932c4544`  
		Last Modified: Fri, 10 Feb 2017 00:53:33 GMT  
		Size: 114.7 MB (114714919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:61da13bbeb8175544e7f3ce4cb81826cf39b785117fed0993e679fd9c924a4c8
```

-	Platforms:
	-	windows; amd64

### `openjdk:jdk-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 GB (5106954016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41dc1de3b4a02d190b87b078cb1f961926b75bdedb74efaa1fb7f7ba3dae4d25`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 10 Feb 2017 00:50:12 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 10 Feb 2017 00:50:32 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 10 Feb 2017 00:50:36 GMT
ENV JAVA_VERSION=8u121
# Fri, 10 Feb 2017 00:50:40 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.121-1
# Fri, 10 Feb 2017 00:50:42 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.121-1.b13.ojdkbuild.windows.x86_64.zip
# Fri, 10 Feb 2017 00:50:45 GMT
ENV JAVA_OJDKBUILD_SHA256=68476588b135a2ad9030567ab90368c36f5eb1f20bedffac9619bbcda5e3575b
# Fri, 10 Feb 2017 00:51:54 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2090e83c9aacacb2da7d0836cf297e9927a3137c208e2f631e39e181e31ceb90`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039b76eabbd98ca5792324012ea58f51ded7af1e15e9956ddc0195ba19a61168`  
		Last Modified: Fri, 10 Feb 2017 00:53:19 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cb46e3a9b9c5cc452115f9affced3b80fbbbacd5098c6e9f965aed62832a59`  
		Last Modified: Fri, 10 Feb 2017 00:53:26 GMT  
		Size: 9.1 MB (9100809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e30e36f02cdb997f11e6b0fb6a3da3f86d3594c65b22c664b7af8ad7d030742`  
		Last Modified: Fri, 10 Feb 2017 00:53:14 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31b746484756a1f15190ebe610e9e23598783893c9067cdef9af9387193c587`  
		Last Modified: Fri, 10 Feb 2017 00:53:13 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1afd383e5aed8e5c5a5ffc7d651604b5e62a535e52c96e0c05176a533cc8f0`  
		Last Modified: Fri, 10 Feb 2017 00:53:13 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db882d8b5c8b0b24f3fd6f7fcb68cc8b27dcc151088fdf8c658a4e9d4afdd90e`  
		Last Modified: Fri, 10 Feb 2017 00:53:13 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a10f5231c049a2f62ef149e7da8438903c7110d05fc1648f406308932c4544`  
		Last Modified: Fri, 10 Feb 2017 00:53:33 GMT  
		Size: 114.7 MB (114714919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:windowsservercore`

```console
$ docker pull openjdk@sha256:61da13bbeb8175544e7f3ce4cb81826cf39b785117fed0993e679fd9c924a4c8
```

-	Platforms:
	-	windows; amd64

### `openjdk:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 GB (5106954016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41dc1de3b4a02d190b87b078cb1f961926b75bdedb74efaa1fb7f7ba3dae4d25`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Wed, 18 Jan 2017 00:22:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 10 Feb 2017 00:50:12 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 10 Feb 2017 00:50:32 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 10 Feb 2017 00:50:36 GMT
ENV JAVA_VERSION=8u121
# Fri, 10 Feb 2017 00:50:40 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.121-1
# Fri, 10 Feb 2017 00:50:42 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.121-1.b13.ojdkbuild.windows.x86_64.zip
# Fri, 10 Feb 2017 00:50:45 GMT
ENV JAVA_OJDKBUILD_SHA256=68476588b135a2ad9030567ab90368c36f5eb1f20bedffac9619bbcda5e3575b
# Fri, 10 Feb 2017 00:51:54 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3430754e4d171ead00cf6766797a28abf3caf236f6c92c5c346ea2ad3955a129`  
		Size: 913.1 MB (913145061 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2090e83c9aacacb2da7d0836cf297e9927a3137c208e2f631e39e181e31ceb90`  
		Last Modified: Wed, 18 Jan 2017 22:56:55 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039b76eabbd98ca5792324012ea58f51ded7af1e15e9956ddc0195ba19a61168`  
		Last Modified: Fri, 10 Feb 2017 00:53:19 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cb46e3a9b9c5cc452115f9affced3b80fbbbacd5098c6e9f965aed62832a59`  
		Last Modified: Fri, 10 Feb 2017 00:53:26 GMT  
		Size: 9.1 MB (9100809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e30e36f02cdb997f11e6b0fb6a3da3f86d3594c65b22c664b7af8ad7d030742`  
		Last Modified: Fri, 10 Feb 2017 00:53:14 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31b746484756a1f15190ebe610e9e23598783893c9067cdef9af9387193c587`  
		Last Modified: Fri, 10 Feb 2017 00:53:13 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1afd383e5aed8e5c5a5ffc7d651604b5e62a535e52c96e0c05176a533cc8f0`  
		Last Modified: Fri, 10 Feb 2017 00:53:13 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db882d8b5c8b0b24f3fd6f7fcb68cc8b27dcc151088fdf8c658a4e9d4afdd90e`  
		Last Modified: Fri, 10 Feb 2017 00:53:13 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a10f5231c049a2f62ef149e7da8438903c7110d05fc1648f406308932c4544`  
		Last Modified: Fri, 10 Feb 2017 00:53:33 GMT  
		Size: 114.7 MB (114714919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8u121-jdk-nanoserver`

```console
$ docker pull openjdk@sha256:5b72fede97cd27c97b635fa52adebf6ffa7e562a7029945bb2c1c973ba7be8ce
```

-	Platforms:
	-	windows; amd64

### `openjdk:8u121-jdk-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.6 MB (440571270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:702e3e6fbfb87688250c03a7fcc99f2d5c0907ba40e9753c85f8f2ff84858671`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 10 Feb 2017 00:51:56 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 10 Feb 2017 00:52:12 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 10 Feb 2017 00:52:14 GMT
ENV JAVA_VERSION=8u121
# Fri, 10 Feb 2017 00:52:16 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.121-1
# Fri, 10 Feb 2017 00:52:19 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.121-1.b13.ojdkbuild.windows.x86_64.zip
# Fri, 10 Feb 2017 00:52:21 GMT
ENV JAVA_OJDKBUILD_SHA256=68476588b135a2ad9030567ab90368c36f5eb1f20bedffac9619bbcda5e3575b
# Fri, 10 Feb 2017 00:53:02 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3ac17e2e6106d09a44642a437c318092eddd284afea0b4e707e89f6cec7a18ef`  
		Size: 80.6 MB (80617684 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e75762e22d922ed4bb69ae4e673c912389d9d70fd91eaa33cd0732f0a8e28a4e`  
		Last Modified: Fri, 13 Jan 2017 18:00:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9749d6d34fc0bcc120090812d73f4be0f16bff997fe04c1eb03749c8a7f9c8d9`  
		Last Modified: Fri, 10 Feb 2017 00:54:02 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b09df9623d3df1badd9027aa31bf5a28f3af30ed0dfeec8835d76822339dbb`  
		Last Modified: Fri, 10 Feb 2017 00:54:02 GMT  
		Size: 864.5 KB (864550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d5d5bb24c862d736049f3f4bae2ec24ce93db4837008a2961180bc8735e99cf`  
		Last Modified: Fri, 10 Feb 2017 00:53:54 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913b5b742f644458a5f8b518de9ada2396b955bdfceadfe43ab7721744494271`  
		Last Modified: Fri, 10 Feb 2017 00:53:54 GMT  
		Size: 963.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e429b64440a17264af4e2a08e7182478ec9cd9a39ae672029f7895be76e9b5`  
		Last Modified: Fri, 10 Feb 2017 00:53:53 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c9cd2f7eecf462cb1e6e221c91e5b6c7c2e3f08af8af0d67b25d5a126dc2c9`  
		Last Modified: Fri, 10 Feb 2017 00:53:54 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f9c4e29ebfb8b7a82364f7a22a4a9c7bfac7ddb9805369cbdb88685c3a0a15`  
		Last Modified: Fri, 10 Feb 2017 00:54:07 GMT  
		Size: 106.4 MB (106392294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8u121-nanoserver`

```console
$ docker pull openjdk@sha256:5b72fede97cd27c97b635fa52adebf6ffa7e562a7029945bb2c1c973ba7be8ce
```

-	Platforms:
	-	windows; amd64

### `openjdk:8u121-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.6 MB (440571270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:702e3e6fbfb87688250c03a7fcc99f2d5c0907ba40e9753c85f8f2ff84858671`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 10 Feb 2017 00:51:56 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 10 Feb 2017 00:52:12 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 10 Feb 2017 00:52:14 GMT
ENV JAVA_VERSION=8u121
# Fri, 10 Feb 2017 00:52:16 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.121-1
# Fri, 10 Feb 2017 00:52:19 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.121-1.b13.ojdkbuild.windows.x86_64.zip
# Fri, 10 Feb 2017 00:52:21 GMT
ENV JAVA_OJDKBUILD_SHA256=68476588b135a2ad9030567ab90368c36f5eb1f20bedffac9619bbcda5e3575b
# Fri, 10 Feb 2017 00:53:02 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3ac17e2e6106d09a44642a437c318092eddd284afea0b4e707e89f6cec7a18ef`  
		Size: 80.6 MB (80617684 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e75762e22d922ed4bb69ae4e673c912389d9d70fd91eaa33cd0732f0a8e28a4e`  
		Last Modified: Fri, 13 Jan 2017 18:00:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9749d6d34fc0bcc120090812d73f4be0f16bff997fe04c1eb03749c8a7f9c8d9`  
		Last Modified: Fri, 10 Feb 2017 00:54:02 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b09df9623d3df1badd9027aa31bf5a28f3af30ed0dfeec8835d76822339dbb`  
		Last Modified: Fri, 10 Feb 2017 00:54:02 GMT  
		Size: 864.5 KB (864550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d5d5bb24c862d736049f3f4bae2ec24ce93db4837008a2961180bc8735e99cf`  
		Last Modified: Fri, 10 Feb 2017 00:53:54 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913b5b742f644458a5f8b518de9ada2396b955bdfceadfe43ab7721744494271`  
		Last Modified: Fri, 10 Feb 2017 00:53:54 GMT  
		Size: 963.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e429b64440a17264af4e2a08e7182478ec9cd9a39ae672029f7895be76e9b5`  
		Last Modified: Fri, 10 Feb 2017 00:53:53 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c9cd2f7eecf462cb1e6e221c91e5b6c7c2e3f08af8af0d67b25d5a126dc2c9`  
		Last Modified: Fri, 10 Feb 2017 00:53:54 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f9c4e29ebfb8b7a82364f7a22a4a9c7bfac7ddb9805369cbdb88685c3a0a15`  
		Last Modified: Fri, 10 Feb 2017 00:54:07 GMT  
		Size: 106.4 MB (106392294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8-jdk-nanoserver`

```console
$ docker pull openjdk@sha256:5b72fede97cd27c97b635fa52adebf6ffa7e562a7029945bb2c1c973ba7be8ce
```

-	Platforms:
	-	windows; amd64

### `openjdk:8-jdk-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.6 MB (440571270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:702e3e6fbfb87688250c03a7fcc99f2d5c0907ba40e9753c85f8f2ff84858671`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 10 Feb 2017 00:51:56 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 10 Feb 2017 00:52:12 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 10 Feb 2017 00:52:14 GMT
ENV JAVA_VERSION=8u121
# Fri, 10 Feb 2017 00:52:16 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.121-1
# Fri, 10 Feb 2017 00:52:19 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.121-1.b13.ojdkbuild.windows.x86_64.zip
# Fri, 10 Feb 2017 00:52:21 GMT
ENV JAVA_OJDKBUILD_SHA256=68476588b135a2ad9030567ab90368c36f5eb1f20bedffac9619bbcda5e3575b
# Fri, 10 Feb 2017 00:53:02 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3ac17e2e6106d09a44642a437c318092eddd284afea0b4e707e89f6cec7a18ef`  
		Size: 80.6 MB (80617684 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e75762e22d922ed4bb69ae4e673c912389d9d70fd91eaa33cd0732f0a8e28a4e`  
		Last Modified: Fri, 13 Jan 2017 18:00:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9749d6d34fc0bcc120090812d73f4be0f16bff997fe04c1eb03749c8a7f9c8d9`  
		Last Modified: Fri, 10 Feb 2017 00:54:02 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b09df9623d3df1badd9027aa31bf5a28f3af30ed0dfeec8835d76822339dbb`  
		Last Modified: Fri, 10 Feb 2017 00:54:02 GMT  
		Size: 864.5 KB (864550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d5d5bb24c862d736049f3f4bae2ec24ce93db4837008a2961180bc8735e99cf`  
		Last Modified: Fri, 10 Feb 2017 00:53:54 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913b5b742f644458a5f8b518de9ada2396b955bdfceadfe43ab7721744494271`  
		Last Modified: Fri, 10 Feb 2017 00:53:54 GMT  
		Size: 963.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e429b64440a17264af4e2a08e7182478ec9cd9a39ae672029f7895be76e9b5`  
		Last Modified: Fri, 10 Feb 2017 00:53:53 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c9cd2f7eecf462cb1e6e221c91e5b6c7c2e3f08af8af0d67b25d5a126dc2c9`  
		Last Modified: Fri, 10 Feb 2017 00:53:54 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f9c4e29ebfb8b7a82364f7a22a4a9c7bfac7ddb9805369cbdb88685c3a0a15`  
		Last Modified: Fri, 10 Feb 2017 00:54:07 GMT  
		Size: 106.4 MB (106392294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8-nanoserver`

```console
$ docker pull openjdk@sha256:5b72fede97cd27c97b635fa52adebf6ffa7e562a7029945bb2c1c973ba7be8ce
```

-	Platforms:
	-	windows; amd64

### `openjdk:8-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.6 MB (440571270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:702e3e6fbfb87688250c03a7fcc99f2d5c0907ba40e9753c85f8f2ff84858671`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 10 Feb 2017 00:51:56 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 10 Feb 2017 00:52:12 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 10 Feb 2017 00:52:14 GMT
ENV JAVA_VERSION=8u121
# Fri, 10 Feb 2017 00:52:16 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.121-1
# Fri, 10 Feb 2017 00:52:19 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.121-1.b13.ojdkbuild.windows.x86_64.zip
# Fri, 10 Feb 2017 00:52:21 GMT
ENV JAVA_OJDKBUILD_SHA256=68476588b135a2ad9030567ab90368c36f5eb1f20bedffac9619bbcda5e3575b
# Fri, 10 Feb 2017 00:53:02 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3ac17e2e6106d09a44642a437c318092eddd284afea0b4e707e89f6cec7a18ef`  
		Size: 80.6 MB (80617684 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e75762e22d922ed4bb69ae4e673c912389d9d70fd91eaa33cd0732f0a8e28a4e`  
		Last Modified: Fri, 13 Jan 2017 18:00:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9749d6d34fc0bcc120090812d73f4be0f16bff997fe04c1eb03749c8a7f9c8d9`  
		Last Modified: Fri, 10 Feb 2017 00:54:02 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b09df9623d3df1badd9027aa31bf5a28f3af30ed0dfeec8835d76822339dbb`  
		Last Modified: Fri, 10 Feb 2017 00:54:02 GMT  
		Size: 864.5 KB (864550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d5d5bb24c862d736049f3f4bae2ec24ce93db4837008a2961180bc8735e99cf`  
		Last Modified: Fri, 10 Feb 2017 00:53:54 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913b5b742f644458a5f8b518de9ada2396b955bdfceadfe43ab7721744494271`  
		Last Modified: Fri, 10 Feb 2017 00:53:54 GMT  
		Size: 963.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e429b64440a17264af4e2a08e7182478ec9cd9a39ae672029f7895be76e9b5`  
		Last Modified: Fri, 10 Feb 2017 00:53:53 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c9cd2f7eecf462cb1e6e221c91e5b6c7c2e3f08af8af0d67b25d5a126dc2c9`  
		Last Modified: Fri, 10 Feb 2017 00:53:54 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f9c4e29ebfb8b7a82364f7a22a4a9c7bfac7ddb9805369cbdb88685c3a0a15`  
		Last Modified: Fri, 10 Feb 2017 00:54:07 GMT  
		Size: 106.4 MB (106392294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:jdk-nanoserver`

```console
$ docker pull openjdk@sha256:5b72fede97cd27c97b635fa52adebf6ffa7e562a7029945bb2c1c973ba7be8ce
```

-	Platforms:
	-	windows; amd64

### `openjdk:jdk-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.6 MB (440571270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:702e3e6fbfb87688250c03a7fcc99f2d5c0907ba40e9753c85f8f2ff84858671`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 10 Feb 2017 00:51:56 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 10 Feb 2017 00:52:12 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 10 Feb 2017 00:52:14 GMT
ENV JAVA_VERSION=8u121
# Fri, 10 Feb 2017 00:52:16 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.121-1
# Fri, 10 Feb 2017 00:52:19 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.121-1.b13.ojdkbuild.windows.x86_64.zip
# Fri, 10 Feb 2017 00:52:21 GMT
ENV JAVA_OJDKBUILD_SHA256=68476588b135a2ad9030567ab90368c36f5eb1f20bedffac9619bbcda5e3575b
# Fri, 10 Feb 2017 00:53:02 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3ac17e2e6106d09a44642a437c318092eddd284afea0b4e707e89f6cec7a18ef`  
		Size: 80.6 MB (80617684 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e75762e22d922ed4bb69ae4e673c912389d9d70fd91eaa33cd0732f0a8e28a4e`  
		Last Modified: Fri, 13 Jan 2017 18:00:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9749d6d34fc0bcc120090812d73f4be0f16bff997fe04c1eb03749c8a7f9c8d9`  
		Last Modified: Fri, 10 Feb 2017 00:54:02 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b09df9623d3df1badd9027aa31bf5a28f3af30ed0dfeec8835d76822339dbb`  
		Last Modified: Fri, 10 Feb 2017 00:54:02 GMT  
		Size: 864.5 KB (864550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d5d5bb24c862d736049f3f4bae2ec24ce93db4837008a2961180bc8735e99cf`  
		Last Modified: Fri, 10 Feb 2017 00:53:54 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913b5b742f644458a5f8b518de9ada2396b955bdfceadfe43ab7721744494271`  
		Last Modified: Fri, 10 Feb 2017 00:53:54 GMT  
		Size: 963.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e429b64440a17264af4e2a08e7182478ec9cd9a39ae672029f7895be76e9b5`  
		Last Modified: Fri, 10 Feb 2017 00:53:53 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c9cd2f7eecf462cb1e6e221c91e5b6c7c2e3f08af8af0d67b25d5a126dc2c9`  
		Last Modified: Fri, 10 Feb 2017 00:53:54 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f9c4e29ebfb8b7a82364f7a22a4a9c7bfac7ddb9805369cbdb88685c3a0a15`  
		Last Modified: Fri, 10 Feb 2017 00:54:07 GMT  
		Size: 106.4 MB (106392294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:nanoserver`

```console
$ docker pull openjdk@sha256:5b72fede97cd27c97b635fa52adebf6ffa7e562a7029945bb2c1c973ba7be8ce
```

-	Platforms:
	-	windows; amd64

### `openjdk:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.6 MB (440571270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:702e3e6fbfb87688250c03a7fcc99f2d5c0907ba40e9753c85f8f2ff84858671`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 13 Jan 2017 17:53:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 10 Feb 2017 00:51:56 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 10 Feb 2017 00:52:12 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 10 Feb 2017 00:52:14 GMT
ENV JAVA_VERSION=8u121
# Fri, 10 Feb 2017 00:52:16 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.121-1
# Fri, 10 Feb 2017 00:52:19 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.121-1.b13.ojdkbuild.windows.x86_64.zip
# Fri, 10 Feb 2017 00:52:21 GMT
ENV JAVA_OJDKBUILD_SHA256=68476588b135a2ad9030567ab90368c36f5eb1f20bedffac9619bbcda5e3575b
# Fri, 10 Feb 2017 00:53:02 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3ac17e2e6106d09a44642a437c318092eddd284afea0b4e707e89f6cec7a18ef`  
		Size: 80.6 MB (80617684 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e75762e22d922ed4bb69ae4e673c912389d9d70fd91eaa33cd0732f0a8e28a4e`  
		Last Modified: Fri, 13 Jan 2017 18:00:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9749d6d34fc0bcc120090812d73f4be0f16bff997fe04c1eb03749c8a7f9c8d9`  
		Last Modified: Fri, 10 Feb 2017 00:54:02 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b09df9623d3df1badd9027aa31bf5a28f3af30ed0dfeec8835d76822339dbb`  
		Last Modified: Fri, 10 Feb 2017 00:54:02 GMT  
		Size: 864.5 KB (864550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d5d5bb24c862d736049f3f4bae2ec24ce93db4837008a2961180bc8735e99cf`  
		Last Modified: Fri, 10 Feb 2017 00:53:54 GMT  
		Size: 961.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913b5b742f644458a5f8b518de9ada2396b955bdfceadfe43ab7721744494271`  
		Last Modified: Fri, 10 Feb 2017 00:53:54 GMT  
		Size: 963.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e429b64440a17264af4e2a08e7182478ec9cd9a39ae672029f7895be76e9b5`  
		Last Modified: Fri, 10 Feb 2017 00:53:53 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c9cd2f7eecf462cb1e6e221c91e5b6c7c2e3f08af8af0d67b25d5a126dc2c9`  
		Last Modified: Fri, 10 Feb 2017 00:53:54 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f9c4e29ebfb8b7a82364f7a22a4a9c7bfac7ddb9805369cbdb88685c3a0a15`  
		Last Modified: Fri, 10 Feb 2017 00:54:07 GMT  
		Size: 106.4 MB (106392294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8u121-jre`

```console
$ docker pull openjdk@sha256:0970652de8777bca77d860be3008232e038ff855bee19391ea965f95ad01712b
```

-	Platforms:
	-	linux; amd64

### `openjdk:8u121-jre` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.3 MB (124271056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cb93d1ae4939c1f6bddc9c4fc5679397b23d5637c6df0fb1629d2cb3e8c85ea`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 07 Feb 2017 20:04:19 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:04:20 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:04:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
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
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d33418bd6dfef0afdb2cd8bdefaf5454f79d8c30a0500c68851211b5454483`  
		Last Modified: Tue, 07 Feb 2017 20:14:15 GMT  
		Size: 53.5 MB (53518255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e10cce36e52ebab8c1bb53f163e26db55b99273eda92c3f169d1f6cf13d6304`  
		Last Modified: Tue, 07 Feb 2017 20:14:03 GMT  
		Size: 289.0 KB (289036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8-jre`

```console
$ docker pull openjdk@sha256:0970652de8777bca77d860be3008232e038ff855bee19391ea965f95ad01712b
```

-	Platforms:
	-	linux; amd64

### `openjdk:8-jre` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.3 MB (124271056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cb93d1ae4939c1f6bddc9c4fc5679397b23d5637c6df0fb1629d2cb3e8c85ea`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 07 Feb 2017 20:04:19 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:04:20 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:04:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
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
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d33418bd6dfef0afdb2cd8bdefaf5454f79d8c30a0500c68851211b5454483`  
		Last Modified: Tue, 07 Feb 2017 20:14:15 GMT  
		Size: 53.5 MB (53518255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e10cce36e52ebab8c1bb53f163e26db55b99273eda92c3f169d1f6cf13d6304`  
		Last Modified: Tue, 07 Feb 2017 20:14:03 GMT  
		Size: 289.0 KB (289036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:jre`

```console
$ docker pull openjdk@sha256:0970652de8777bca77d860be3008232e038ff855bee19391ea965f95ad01712b
```

-	Platforms:
	-	linux; amd64

### `openjdk:jre` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.3 MB (124271056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cb93d1ae4939c1f6bddc9c4fc5679397b23d5637c6df0fb1629d2cb3e8c85ea`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 07 Feb 2017 20:04:19 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:04:20 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:04:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
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
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d33418bd6dfef0afdb2cd8bdefaf5454f79d8c30a0500c68851211b5454483`  
		Last Modified: Tue, 07 Feb 2017 20:14:15 GMT  
		Size: 53.5 MB (53518255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e10cce36e52ebab8c1bb53f163e26db55b99273eda92c3f169d1f6cf13d6304`  
		Last Modified: Tue, 07 Feb 2017 20:14:03 GMT  
		Size: 289.0 KB (289036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8u111-jre-alpine`

```console
$ docker pull openjdk@sha256:48ac96e309a748f5778db26be7e45ca0e35931ef58e9b271fe36767a55411728
```

-	Platforms:
	-	linux; amd64

### `openjdk:8u111-jre-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 MB (41983524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85b17c6762eb3455c7b7ff1930bdde8c911137fe8c7f3c0b5988c66149dc27b`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8-jre-alpine`

```console
$ docker pull openjdk@sha256:48ac96e309a748f5778db26be7e45ca0e35931ef58e9b271fe36767a55411728
```

-	Platforms:
	-	linux; amd64

### `openjdk:8-jre-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 MB (41983524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85b17c6762eb3455c7b7ff1930bdde8c911137fe8c7f3c0b5988c66149dc27b`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:jre-alpine`

```console
$ docker pull openjdk@sha256:48ac96e309a748f5778db26be7e45ca0e35931ef58e9b271fe36767a55411728
```

-	Platforms:
	-	linux; amd64

### `openjdk:jre-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 MB (41983524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85b17c6762eb3455c7b7ff1930bdde8c911137fe8c7f3c0b5988c66149dc27b`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:9-b158-jdk`

```console
$ docker pull openjdk@sha256:11cb7a6b4ebebb87337fe34e5d5954098aa08a63b4ed98edf019f15131292145
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-b158-jdk` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272055273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c2e9461bcdf4303de51832d1ff140ec64d2f18013f095520e3dab1960331045`
-	Default Command: `["\/bin\/bash"]`

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
# Mon, 27 Feb 2017 17:58:53 GMT
ENV JAVA_VERSION=9~b158
# Mon, 27 Feb 2017 17:58:53 GMT
ENV JAVA_DEBIAN_VERSION=9~b158-1
# Mon, 27 Feb 2017 17:59:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:3b847b14c40c1fbeb7fa6ab99d31f07fb7ddeea433362d4e7466ddc70c1653ff`  
		Last Modified: Mon, 27 Feb 2017 18:10:17 GMT  
		Size: 154.3 MB (154348806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:9-b158`

```console
$ docker pull openjdk@sha256:11cb7a6b4ebebb87337fe34e5d5954098aa08a63b4ed98edf019f15131292145
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-b158` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272055273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c2e9461bcdf4303de51832d1ff140ec64d2f18013f095520e3dab1960331045`
-	Default Command: `["\/bin\/bash"]`

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
# Mon, 27 Feb 2017 17:58:53 GMT
ENV JAVA_VERSION=9~b158
# Mon, 27 Feb 2017 17:58:53 GMT
ENV JAVA_DEBIAN_VERSION=9~b158-1
# Mon, 27 Feb 2017 17:59:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:3b847b14c40c1fbeb7fa6ab99d31f07fb7ddeea433362d4e7466ddc70c1653ff`  
		Last Modified: Mon, 27 Feb 2017 18:10:17 GMT  
		Size: 154.3 MB (154348806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:9-jdk`

```console
$ docker pull openjdk@sha256:11cb7a6b4ebebb87337fe34e5d5954098aa08a63b4ed98edf019f15131292145
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-jdk` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272055273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c2e9461bcdf4303de51832d1ff140ec64d2f18013f095520e3dab1960331045`
-	Default Command: `["\/bin\/bash"]`

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
# Mon, 27 Feb 2017 17:58:53 GMT
ENV JAVA_VERSION=9~b158
# Mon, 27 Feb 2017 17:58:53 GMT
ENV JAVA_DEBIAN_VERSION=9~b158-1
# Mon, 27 Feb 2017 17:59:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:3b847b14c40c1fbeb7fa6ab99d31f07fb7ddeea433362d4e7466ddc70c1653ff`  
		Last Modified: Mon, 27 Feb 2017 18:10:17 GMT  
		Size: 154.3 MB (154348806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:9`

```console
$ docker pull openjdk@sha256:11cb7a6b4ebebb87337fe34e5d5954098aa08a63b4ed98edf019f15131292145
```

-	Platforms:
	-	linux; amd64

### `openjdk:9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272055273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c2e9461bcdf4303de51832d1ff140ec64d2f18013f095520e3dab1960331045`
-	Default Command: `["\/bin\/bash"]`

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
# Mon, 27 Feb 2017 17:58:53 GMT
ENV JAVA_VERSION=9~b158
# Mon, 27 Feb 2017 17:58:53 GMT
ENV JAVA_DEBIAN_VERSION=9~b158-1
# Mon, 27 Feb 2017 17:59:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:3b847b14c40c1fbeb7fa6ab99d31f07fb7ddeea433362d4e7466ddc70c1653ff`  
		Last Modified: Mon, 27 Feb 2017 18:10:17 GMT  
		Size: 154.3 MB (154348806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:9-b158-jre`

```console
$ docker pull openjdk@sha256:2af92946d146971cb68bc4f66abb41e515e79f3a430c595e3063df75f60d374d
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-b158-jre` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.4 MB (222422243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2597e0568124e74b710e44629aa9599988a89343d661c8d8270c4bdde15c4d87`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:37:19 GMT
ADD file:9d5e2a376a3a1005ec449a01b6afb4a2f264284d88861474541467b835a7edfc in / 
# Mon, 16 Jan 2017 20:37:27 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:01:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:51:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:51:49 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 17 Jan 2017 18:51:50 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 18:51:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 18:51:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Mon, 27 Feb 2017 17:59:24 GMT
ENV JAVA_VERSION=9~b158
# Mon, 27 Feb 2017 17:59:25 GMT
ENV JAVA_DEBIAN_VERSION=9~b158-1
# Mon, 27 Feb 2017 17:59:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:39200d8f67516fdcbeec7e6383c4ce3eae294f926dc7c594c52d5ec4ffa4d6a4`  
		Last Modified: Wed, 18 Jan 2017 06:25:29 GMT  
		Size: 618.2 KB (618221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ffd7d6069960efc779ed0c475cf9f5e4785cbc62b465c4e05dae3b77475d89`  
		Last Modified: Wed, 18 Jan 2017 06:25:29 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a501d73e8fd8ef3a19133e3355930596f4dbda50c33419f46f51b091141228db`  
		Last Modified: Wed, 18 Jan 2017 06:25:29 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be5c686fa7163e893a524170ab5b8fdcf2f9ba74d2044b540e85d27809be147`  
		Last Modified: Mon, 27 Feb 2017 18:11:58 GMT  
		Size: 154.8 MB (154769603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:9-jre`

```console
$ docker pull openjdk@sha256:2af92946d146971cb68bc4f66abb41e515e79f3a430c595e3063df75f60d374d
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-jre` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.4 MB (222422243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2597e0568124e74b710e44629aa9599988a89343d661c8d8270c4bdde15c4d87`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Jan 2017 20:37:19 GMT
ADD file:9d5e2a376a3a1005ec449a01b6afb4a2f264284d88861474541467b835a7edfc in / 
# Mon, 16 Jan 2017 20:37:27 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:01:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:51:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:51:49 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 17 Jan 2017 18:51:50 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 18:51:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 18:51:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Mon, 27 Feb 2017 17:59:24 GMT
ENV JAVA_VERSION=9~b158
# Mon, 27 Feb 2017 17:59:25 GMT
ENV JAVA_DEBIAN_VERSION=9~b158-1
# Mon, 27 Feb 2017 17:59:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:39200d8f67516fdcbeec7e6383c4ce3eae294f926dc7c594c52d5ec4ffa4d6a4`  
		Last Modified: Wed, 18 Jan 2017 06:25:29 GMT  
		Size: 618.2 KB (618221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ffd7d6069960efc779ed0c475cf9f5e4785cbc62b465c4e05dae3b77475d89`  
		Last Modified: Wed, 18 Jan 2017 06:25:29 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a501d73e8fd8ef3a19133e3355930596f4dbda50c33419f46f51b091141228db`  
		Last Modified: Wed, 18 Jan 2017 06:25:29 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be5c686fa7163e893a524170ab5b8fdcf2f9ba74d2044b540e85d27809be147`  
		Last Modified: Mon, 27 Feb 2017 18:11:58 GMT  
		Size: 154.8 MB (154769603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
