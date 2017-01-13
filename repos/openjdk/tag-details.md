<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `openjdk`

-	[`openjdk:6b38-jdk`](#openjdk6b38-jdk)
-	[`openjdk:6b38`](#openjdk6b38)
-	[`openjdk:6-jdk`](#openjdk6-jdk)
-	[`openjdk:6`](#openjdk6)
-	[`openjdk:6b38-jre`](#openjdk6b38-jre)
-	[`openjdk:6-jre`](#openjdk6-jre)
-	[`openjdk:7u111-jdk`](#openjdk7u111-jdk)
-	[`openjdk:7u111`](#openjdk7u111)
-	[`openjdk:7-jdk`](#openjdk7-jdk)
-	[`openjdk:7`](#openjdk7)
-	[`openjdk:7u121-jdk-alpine`](#openjdk7u121-jdk-alpine)
-	[`openjdk:7u121-alpine`](#openjdk7u121-alpine)
-	[`openjdk:7-jdk-alpine`](#openjdk7-jdk-alpine)
-	[`openjdk:7-alpine`](#openjdk7-alpine)
-	[`openjdk:7u111-jre`](#openjdk7u111-jre)
-	[`openjdk:7-jre`](#openjdk7-jre)
-	[`openjdk:7u121-jre-alpine`](#openjdk7u121-jre-alpine)
-	[`openjdk:7-jre-alpine`](#openjdk7-jre-alpine)
-	[`openjdk:8u111-jdk`](#openjdk8u111-jdk)
-	[`openjdk:8u111`](#openjdk8u111)
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
-	[`openjdk:8u111-jre`](#openjdk8u111-jre)
-	[`openjdk:8-jre`](#openjdk8-jre)
-	[`openjdk:jre`](#openjdkjre)
-	[`openjdk:8u111-jre-alpine`](#openjdk8u111-jre-alpine)
-	[`openjdk:8-jre-alpine`](#openjdk8-jre-alpine)
-	[`openjdk:jre-alpine`](#openjdkjre-alpine)
-	[`openjdk:9-b151-jdk`](#openjdk9-b151-jdk)
-	[`openjdk:9-b151`](#openjdk9-b151)
-	[`openjdk:9-jdk`](#openjdk9-jdk)
-	[`openjdk:9`](#openjdk9)
-	[`openjdk:9-b151-jre`](#openjdk9-b151-jre)
-	[`openjdk:9-jre`](#openjdk9-jre)

## `openjdk:6b38-jdk`

```console
$ docker pull openjdk@sha256:56b88ff75f37a60d2a3aabfc2b647b654e2f026ec7e5132e79069024f0d4d3e8
```

-	Platforms:
	-	linux; amd64

### `openjdk:6b38-jdk` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.3 MB (187302770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d954144b7b01b9c26492ceeea61b61073777edbf51212fd0baab7b9322b62b0b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:01:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:02:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:51:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:51:28 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:51:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:51:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64
# Tue, 13 Dec 2016 23:51:30 GMT
ENV JAVA_VERSION=6b38
# Tue, 13 Dec 2016 23:51:30 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 13 Dec 2016 23:52:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955df57e3a2cd5b72c67014cfd876fd1d7e79c99543be94feb1ae730fb346722`  
		Last Modified: Wed, 14 Dec 2016 03:00:31 GMT  
		Size: 6.8 MB (6823208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12bf7f3cec6bd4c967cf5c23c85bd72c1200ab75cb929fde88ea18c387567e7e`  
		Last Modified: Wed, 14 Dec 2016 03:00:42 GMT  
		Size: 37.4 MB (37441906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6905e99379f27bf43285d691575b0a2ee4ff51d6a672da8fa43f4ed3761f677a`  
		Last Modified: Wed, 14 Dec 2016 03:00:24 GMT  
		Size: 413.5 KB (413522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0bafef37530c54bfc436cf6d9c639c47ae51d09bb55fa9fc767fc83e125bb1`  
		Last Modified: Wed, 14 Dec 2016 03:00:23 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8b6415432bd913f6f930550256160ce21b9a8a76ee54212df5f663c0aadf00`  
		Last Modified: Wed, 14 Dec 2016 03:00:55 GMT  
		Size: 105.3 MB (105339745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:6b38`

```console
$ docker pull openjdk@sha256:56b88ff75f37a60d2a3aabfc2b647b654e2f026ec7e5132e79069024f0d4d3e8
```

-	Platforms:
	-	linux; amd64

### `openjdk:6b38` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.3 MB (187302770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d954144b7b01b9c26492ceeea61b61073777edbf51212fd0baab7b9322b62b0b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:01:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:02:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:51:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:51:28 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:51:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:51:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64
# Tue, 13 Dec 2016 23:51:30 GMT
ENV JAVA_VERSION=6b38
# Tue, 13 Dec 2016 23:51:30 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 13 Dec 2016 23:52:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955df57e3a2cd5b72c67014cfd876fd1d7e79c99543be94feb1ae730fb346722`  
		Last Modified: Wed, 14 Dec 2016 03:00:31 GMT  
		Size: 6.8 MB (6823208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12bf7f3cec6bd4c967cf5c23c85bd72c1200ab75cb929fde88ea18c387567e7e`  
		Last Modified: Wed, 14 Dec 2016 03:00:42 GMT  
		Size: 37.4 MB (37441906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6905e99379f27bf43285d691575b0a2ee4ff51d6a672da8fa43f4ed3761f677a`  
		Last Modified: Wed, 14 Dec 2016 03:00:24 GMT  
		Size: 413.5 KB (413522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0bafef37530c54bfc436cf6d9c639c47ae51d09bb55fa9fc767fc83e125bb1`  
		Last Modified: Wed, 14 Dec 2016 03:00:23 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8b6415432bd913f6f930550256160ce21b9a8a76ee54212df5f663c0aadf00`  
		Last Modified: Wed, 14 Dec 2016 03:00:55 GMT  
		Size: 105.3 MB (105339745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:6-jdk`

```console
$ docker pull openjdk@sha256:56b88ff75f37a60d2a3aabfc2b647b654e2f026ec7e5132e79069024f0d4d3e8
```

-	Platforms:
	-	linux; amd64

### `openjdk:6-jdk` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.3 MB (187302770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d954144b7b01b9c26492ceeea61b61073777edbf51212fd0baab7b9322b62b0b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:01:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:02:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:51:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:51:28 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:51:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:51:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64
# Tue, 13 Dec 2016 23:51:30 GMT
ENV JAVA_VERSION=6b38
# Tue, 13 Dec 2016 23:51:30 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 13 Dec 2016 23:52:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955df57e3a2cd5b72c67014cfd876fd1d7e79c99543be94feb1ae730fb346722`  
		Last Modified: Wed, 14 Dec 2016 03:00:31 GMT  
		Size: 6.8 MB (6823208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12bf7f3cec6bd4c967cf5c23c85bd72c1200ab75cb929fde88ea18c387567e7e`  
		Last Modified: Wed, 14 Dec 2016 03:00:42 GMT  
		Size: 37.4 MB (37441906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6905e99379f27bf43285d691575b0a2ee4ff51d6a672da8fa43f4ed3761f677a`  
		Last Modified: Wed, 14 Dec 2016 03:00:24 GMT  
		Size: 413.5 KB (413522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0bafef37530c54bfc436cf6d9c639c47ae51d09bb55fa9fc767fc83e125bb1`  
		Last Modified: Wed, 14 Dec 2016 03:00:23 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8b6415432bd913f6f930550256160ce21b9a8a76ee54212df5f663c0aadf00`  
		Last Modified: Wed, 14 Dec 2016 03:00:55 GMT  
		Size: 105.3 MB (105339745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:6`

```console
$ docker pull openjdk@sha256:56b88ff75f37a60d2a3aabfc2b647b654e2f026ec7e5132e79069024f0d4d3e8
```

-	Platforms:
	-	linux; amd64

### `openjdk:6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.3 MB (187302770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d954144b7b01b9c26492ceeea61b61073777edbf51212fd0baab7b9322b62b0b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:01:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:02:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:51:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:51:28 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:51:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:51:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64
# Tue, 13 Dec 2016 23:51:30 GMT
ENV JAVA_VERSION=6b38
# Tue, 13 Dec 2016 23:51:30 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 13 Dec 2016 23:52:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955df57e3a2cd5b72c67014cfd876fd1d7e79c99543be94feb1ae730fb346722`  
		Last Modified: Wed, 14 Dec 2016 03:00:31 GMT  
		Size: 6.8 MB (6823208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12bf7f3cec6bd4c967cf5c23c85bd72c1200ab75cb929fde88ea18c387567e7e`  
		Last Modified: Wed, 14 Dec 2016 03:00:42 GMT  
		Size: 37.4 MB (37441906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6905e99379f27bf43285d691575b0a2ee4ff51d6a672da8fa43f4ed3761f677a`  
		Last Modified: Wed, 14 Dec 2016 03:00:24 GMT  
		Size: 413.5 KB (413522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0bafef37530c54bfc436cf6d9c639c47ae51d09bb55fa9fc767fc83e125bb1`  
		Last Modified: Wed, 14 Dec 2016 03:00:23 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8b6415432bd913f6f930550256160ce21b9a8a76ee54212df5f663c0aadf00`  
		Last Modified: Wed, 14 Dec 2016 03:00:55 GMT  
		Size: 105.3 MB (105339745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:6b38-jre`

```console
$ docker pull openjdk@sha256:fc6d08653d7f1062118cac17dbedc9b6055f5be4c88d7915bcf686135188becf
```

-	Platforms:
	-	linux; amd64

### `openjdk:6b38-jre` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.3 MB (97283872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:395e0312f5e55f5df05290f2b4232c88262ea86d1ce4cb0f15800b84b773e463`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:01:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:10 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:52:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:52:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:52:12 GMT
ENV JAVA_VERSION=6b38
# Tue, 13 Dec 2016 23:52:12 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 13 Dec 2016 23:52:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955df57e3a2cd5b72c67014cfd876fd1d7e79c99543be94feb1ae730fb346722`  
		Last Modified: Wed, 14 Dec 2016 03:00:31 GMT  
		Size: 6.8 MB (6823208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e59ae05cd6e039a8ef6cd5a536b416c0b7f9107e5ba08b877b93a2ef53f4d8`  
		Last Modified: Wed, 14 Dec 2016 03:03:04 GMT  
		Size: 360.2 KB (360177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f51925f915a0f73d9889420c126924eecafbdff43972efdad641e016870de9f`  
		Last Modified: Wed, 14 Dec 2016 03:03:03 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190d8b78badd121fd666067ebba42ed1dfe1f0393df4e39f3d71c0796069b7b5`  
		Last Modified: Wed, 14 Dec 2016 03:03:19 GMT  
		Size: 52.8 MB (52816098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:6-jre`

```console
$ docker pull openjdk@sha256:fc6d08653d7f1062118cac17dbedc9b6055f5be4c88d7915bcf686135188becf
```

-	Platforms:
	-	linux; amd64

### `openjdk:6-jre` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.3 MB (97283872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:395e0312f5e55f5df05290f2b4232c88262ea86d1ce4cb0f15800b84b773e463`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:01:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:10 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:52:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:52:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:52:12 GMT
ENV JAVA_VERSION=6b38
# Tue, 13 Dec 2016 23:52:12 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 13 Dec 2016 23:52:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955df57e3a2cd5b72c67014cfd876fd1d7e79c99543be94feb1ae730fb346722`  
		Last Modified: Wed, 14 Dec 2016 03:00:31 GMT  
		Size: 6.8 MB (6823208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e59ae05cd6e039a8ef6cd5a536b416c0b7f9107e5ba08b877b93a2ef53f4d8`  
		Last Modified: Wed, 14 Dec 2016 03:03:04 GMT  
		Size: 360.2 KB (360177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f51925f915a0f73d9889420c126924eecafbdff43972efdad641e016870de9f`  
		Last Modified: Wed, 14 Dec 2016 03:03:03 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190d8b78badd121fd666067ebba42ed1dfe1f0393df4e39f3d71c0796069b7b5`  
		Last Modified: Wed, 14 Dec 2016 03:03:19 GMT  
		Size: 52.8 MB (52816098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7u111-jdk`

```console
$ docker pull openjdk@sha256:5cf1f639d3aa407756c5488a82617b799c20e0d54c140d01070935e102733527
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u111-jdk` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.4 MB (252398092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3776fe72f6cd012ec0be363123b9f2272f91b9aebfddd89bb1c64c90c11575c`
-	Default Command: `["\/bin\/bash"]`

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

## `openjdk:7u111`

```console
$ docker pull openjdk@sha256:5cf1f639d3aa407756c5488a82617b799c20e0d54c140d01070935e102733527
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u111` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.4 MB (252398092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3776fe72f6cd012ec0be363123b9f2272f91b9aebfddd89bb1c64c90c11575c`
-	Default Command: `["\/bin\/bash"]`

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

## `openjdk:7-jdk`

```console
$ docker pull openjdk@sha256:5cf1f639d3aa407756c5488a82617b799c20e0d54c140d01070935e102733527
```

-	Platforms:
	-	linux; amd64

### `openjdk:7-jdk` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.4 MB (252398092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3776fe72f6cd012ec0be363123b9f2272f91b9aebfddd89bb1c64c90c11575c`
-	Default Command: `["\/bin\/bash"]`

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

## `openjdk:7`

```console
$ docker pull openjdk@sha256:5cf1f639d3aa407756c5488a82617b799c20e0d54c140d01070935e102733527
```

-	Platforms:
	-	linux; amd64

### `openjdk:7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.4 MB (252398092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3776fe72f6cd012ec0be363123b9f2272f91b9aebfddd89bb1c64c90c11575c`
-	Default Command: `["\/bin\/bash"]`

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

## `openjdk:7u111-jre`

```console
$ docker pull openjdk@sha256:a14c0c976e3c7e507e76783f0f31202e657e54c439137333ac1401fa79c564b6
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u111-jre` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.2 MB (148221322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66125a354c32e5ddd2071aa02484e493886656ac5669e44626e4b3c47f1001e3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:33 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:53:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:53:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:53:34 GMT
ENV JAVA_VERSION=7u111
# Tue, 13 Dec 2016 23:53:34 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-2~deb8u1
# Tue, 13 Dec 2016 23:54:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08fa5cecedd85684f8657b51c8913a90807544607c279583d437ee21f694309d`  
		Last Modified: Wed, 14 Dec 2016 03:09:14 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e150de9a63750af26b5fcac4da8ec7489695bb73c0377f02cf94ffc4957708`  
		Last Modified: Wed, 14 Dec 2016 03:09:31 GMT  
		Size: 77.8 MB (77761012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7-jre`

```console
$ docker pull openjdk@sha256:a14c0c976e3c7e507e76783f0f31202e657e54c439137333ac1401fa79c564b6
```

-	Platforms:
	-	linux; amd64

### `openjdk:7-jre` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.2 MB (148221322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66125a354c32e5ddd2071aa02484e493886656ac5669e44626e4b3c47f1001e3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:33 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:53:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:53:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:53:34 GMT
ENV JAVA_VERSION=7u111
# Tue, 13 Dec 2016 23:53:34 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-2~deb8u1
# Tue, 13 Dec 2016 23:54:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08fa5cecedd85684f8657b51c8913a90807544607c279583d437ee21f694309d`  
		Last Modified: Wed, 14 Dec 2016 03:09:14 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e150de9a63750af26b5fcac4da8ec7489695bb73c0377f02cf94ffc4957708`  
		Last Modified: Wed, 14 Dec 2016 03:09:31 GMT  
		Size: 77.8 MB (77761012 bytes)  
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

## `openjdk:8u111-jdk`

```console
$ docker pull openjdk@sha256:6bfae6cf8902a28d3f0209f5cdbb269032762a94835d331811df33498970aa7e
```

-	Platforms:
	-	linux; amd64

### `openjdk:8u111-jdk` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.4 MB (243381845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a001fc27db5aae61800c78fa1c794177f07e5422525ded583ff2ccde6f6107bc`
-	Default Command: `["\/bin\/bash"]`

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

## `openjdk:8u111`

```console
$ docker pull openjdk@sha256:6bfae6cf8902a28d3f0209f5cdbb269032762a94835d331811df33498970aa7e
```

-	Platforms:
	-	linux; amd64

### `openjdk:8u111` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.4 MB (243381845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a001fc27db5aae61800c78fa1c794177f07e5422525ded583ff2ccde6f6107bc`
-	Default Command: `["\/bin\/bash"]`

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

## `openjdk:8-jdk`

```console
$ docker pull openjdk@sha256:6bfae6cf8902a28d3f0209f5cdbb269032762a94835d331811df33498970aa7e
```

-	Platforms:
	-	linux; amd64

### `openjdk:8-jdk` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.4 MB (243381845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a001fc27db5aae61800c78fa1c794177f07e5422525ded583ff2ccde6f6107bc`
-	Default Command: `["\/bin\/bash"]`

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

## `openjdk:8`

```console
$ docker pull openjdk@sha256:6bfae6cf8902a28d3f0209f5cdbb269032762a94835d331811df33498970aa7e
```

-	Platforms:
	-	linux; amd64

### `openjdk:8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.4 MB (243381845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a001fc27db5aae61800c78fa1c794177f07e5422525ded583ff2ccde6f6107bc`
-	Default Command: `["\/bin\/bash"]`

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

## `openjdk:jdk`

```console
$ docker pull openjdk@sha256:6bfae6cf8902a28d3f0209f5cdbb269032762a94835d331811df33498970aa7e
```

-	Platforms:
	-	linux; amd64

### `openjdk:jdk` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.4 MB (243381845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a001fc27db5aae61800c78fa1c794177f07e5422525ded583ff2ccde6f6107bc`
-	Default Command: `["\/bin\/bash"]`

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

## `openjdk:latest`

```console
$ docker pull openjdk@sha256:6bfae6cf8902a28d3f0209f5cdbb269032762a94835d331811df33498970aa7e
```

-	Platforms:
	-	linux; amd64

### `openjdk:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.4 MB (243381845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a001fc27db5aae61800c78fa1c794177f07e5422525ded583ff2ccde6f6107bc`
-	Default Command: `["\/bin\/bash"]`

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

## `openjdk:8u111-jre`

```console
$ docker pull openjdk@sha256:0ff9ea8724296829d18eb264d8a13be0cec903a75db80116068607b8ff54e68c
```

-	Platforms:
	-	linux; amd64

### `openjdk:8u111-jre` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124195560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07e7184b1bb17af087b9eae686028a47e5ac0fc8a5916352d30bac29634d97cd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
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
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8-jre`

```console
$ docker pull openjdk@sha256:0ff9ea8724296829d18eb264d8a13be0cec903a75db80116068607b8ff54e68c
```

-	Platforms:
	-	linux; amd64

### `openjdk:8-jre` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124195560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07e7184b1bb17af087b9eae686028a47e5ac0fc8a5916352d30bac29634d97cd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
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
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:jre`

```console
$ docker pull openjdk@sha256:0ff9ea8724296829d18eb264d8a13be0cec903a75db80116068607b8ff54e68c
```

-	Platforms:
	-	linux; amd64

### `openjdk:jre` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124195560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07e7184b1bb17af087b9eae686028a47e5ac0fc8a5916352d30bac29634d97cd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
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
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
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

## `openjdk:9-b151-jdk`

```console
$ docker pull openjdk@sha256:c0600bd19f971250933b2d741ccf1ad4264715527ecd9c3d6b8ed6d2718ba84b
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-b151-jdk` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.7 MB (261747816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:622f2fbf4073723bb81285feb1b613f8fce13b74115a88df79506393c019ae36`
-	Default Command: `["\/bin\/bash"]`

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
# Fri, 13 Jan 2017 18:17:52 GMT
ENV JAVA_VERSION=9~b151
# Fri, 13 Jan 2017 18:17:52 GMT
ENV JAVA_DEBIAN_VERSION=9~b151-2
# Fri, 13 Jan 2017 18:18:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:d13b3017ba3a43b7a6d846a5eb3de5e996696f86fd3be442adea1bccbc92e282`  
		Last Modified: Fri, 13 Jan 2017 18:33:48 GMT  
		Size: 145.1 MB (145067350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:9-b151`

```console
$ docker pull openjdk@sha256:c0600bd19f971250933b2d741ccf1ad4264715527ecd9c3d6b8ed6d2718ba84b
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-b151` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.7 MB (261747816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:622f2fbf4073723bb81285feb1b613f8fce13b74115a88df79506393c019ae36`
-	Default Command: `["\/bin\/bash"]`

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
# Fri, 13 Jan 2017 18:17:52 GMT
ENV JAVA_VERSION=9~b151
# Fri, 13 Jan 2017 18:17:52 GMT
ENV JAVA_DEBIAN_VERSION=9~b151-2
# Fri, 13 Jan 2017 18:18:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:d13b3017ba3a43b7a6d846a5eb3de5e996696f86fd3be442adea1bccbc92e282`  
		Last Modified: Fri, 13 Jan 2017 18:33:48 GMT  
		Size: 145.1 MB (145067350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:9-jdk`

```console
$ docker pull openjdk@sha256:c0600bd19f971250933b2d741ccf1ad4264715527ecd9c3d6b8ed6d2718ba84b
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-jdk` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.7 MB (261747816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:622f2fbf4073723bb81285feb1b613f8fce13b74115a88df79506393c019ae36`
-	Default Command: `["\/bin\/bash"]`

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
# Fri, 13 Jan 2017 18:17:52 GMT
ENV JAVA_VERSION=9~b151
# Fri, 13 Jan 2017 18:17:52 GMT
ENV JAVA_DEBIAN_VERSION=9~b151-2
# Fri, 13 Jan 2017 18:18:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:d13b3017ba3a43b7a6d846a5eb3de5e996696f86fd3be442adea1bccbc92e282`  
		Last Modified: Fri, 13 Jan 2017 18:33:48 GMT  
		Size: 145.1 MB (145067350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:9`

```console
$ docker pull openjdk@sha256:c0600bd19f971250933b2d741ccf1ad4264715527ecd9c3d6b8ed6d2718ba84b
```

-	Platforms:
	-	linux; amd64

### `openjdk:9` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.7 MB (261747816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:622f2fbf4073723bb81285feb1b613f8fce13b74115a88df79506393c019ae36`
-	Default Command: `["\/bin\/bash"]`

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
# Fri, 13 Jan 2017 18:17:52 GMT
ENV JAVA_VERSION=9~b151
# Fri, 13 Jan 2017 18:17:52 GMT
ENV JAVA_DEBIAN_VERSION=9~b151-2
# Fri, 13 Jan 2017 18:18:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:d13b3017ba3a43b7a6d846a5eb3de5e996696f86fd3be442adea1bccbc92e282`  
		Last Modified: Fri, 13 Jan 2017 18:33:48 GMT  
		Size: 145.1 MB (145067350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:9-b151-jre`

```console
$ docker pull openjdk@sha256:9392c30212c18f37be799c340cbc83ed93f7ec6aa112a6b8f92df4d5c2175148
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-b151-jre` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.9 MB (210913572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d42f13c0832a863bc0ceb27bdbbe7d86c9485a003d544cf3904c5598a99adafc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:12:19 GMT
ADD file:1ec9813ae98ad32fbb472ab2d0a10bfffc02970b272ce3595007bf94381ea99d in / 
# Tue, 13 Dec 2016 22:12:20 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 02:59:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 02:59:38 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Dec 2016 02:59:38 GMT
ENV LANG=C.UTF-8
# Wed, 14 Dec 2016 02:59:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Dec 2016 02:59:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Fri, 13 Jan 2017 18:18:46 GMT
ENV JAVA_VERSION=9~b151
# Fri, 13 Jan 2017 18:18:46 GMT
ENV JAVA_DEBIAN_VERSION=9~b151-2
# Fri, 13 Jan 2017 18:19:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:801b9fb4552a9cf708a2ced6096640ea30d0750fb00c703b2054ce608edcd65c`  
		Last Modified: Wed, 14 Dec 2016 03:22:57 GMT  
		Size: 616.8 KB (616780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b17e15d30934d4f6fe4b4fa5ac87544d3992615b38bb1d93608aa7afeaf002`  
		Last Modified: Wed, 14 Dec 2016 03:22:56 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:788f5e49c1a09a98ee588cea80cbc04ec77049e417ef71cbb908b922963c9887`  
		Last Modified: Wed, 14 Dec 2016 03:22:55 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe678f1649d004c81203281cacc170cb17824e58633201433e83ce413ad3f1a`  
		Last Modified: Fri, 13 Jan 2017 18:35:51 GMT  
		Size: 145.5 MB (145483977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:9-jre`

```console
$ docker pull openjdk@sha256:9392c30212c18f37be799c340cbc83ed93f7ec6aa112a6b8f92df4d5c2175148
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-jre` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.9 MB (210913572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d42f13c0832a863bc0ceb27bdbbe7d86c9485a003d544cf3904c5598a99adafc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:12:19 GMT
ADD file:1ec9813ae98ad32fbb472ab2d0a10bfffc02970b272ce3595007bf94381ea99d in / 
# Tue, 13 Dec 2016 22:12:20 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 02:59:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 02:59:38 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Dec 2016 02:59:38 GMT
ENV LANG=C.UTF-8
# Wed, 14 Dec 2016 02:59:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Dec 2016 02:59:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Fri, 13 Jan 2017 18:18:46 GMT
ENV JAVA_VERSION=9~b151
# Fri, 13 Jan 2017 18:18:46 GMT
ENV JAVA_DEBIAN_VERSION=9~b151-2
# Fri, 13 Jan 2017 18:19:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:801b9fb4552a9cf708a2ced6096640ea30d0750fb00c703b2054ce608edcd65c`  
		Last Modified: Wed, 14 Dec 2016 03:22:57 GMT  
		Size: 616.8 KB (616780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b17e15d30934d4f6fe4b4fa5ac87544d3992615b38bb1d93608aa7afeaf002`  
		Last Modified: Wed, 14 Dec 2016 03:22:56 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:788f5e49c1a09a98ee588cea80cbc04ec77049e417ef71cbb908b922963c9887`  
		Last Modified: Wed, 14 Dec 2016 03:22:55 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe678f1649d004c81203281cacc170cb17824e58633201433e83ce413ad3f1a`  
		Last Modified: Fri, 13 Jan 2017 18:35:51 GMT  
		Size: 145.5 MB (145483977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
