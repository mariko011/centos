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
-	[`openjdk:7u111-jdk-alpine`](#openjdk7u111-jdk-alpine)
-	[`openjdk:7u111-alpine`](#openjdk7u111-alpine)
-	[`openjdk:7-jdk-alpine`](#openjdk7-jdk-alpine)
-	[`openjdk:7-alpine`](#openjdk7-alpine)
-	[`openjdk:7u111-jre`](#openjdk7u111-jre)
-	[`openjdk:7-jre`](#openjdk7-jre)
-	[`openjdk:7u111-jre-alpine`](#openjdk7u111-jre-alpine)
-	[`openjdk:7-jre-alpine`](#openjdk7-jre-alpine)
-	[`openjdk:8u102-jdk`](#openjdk8u102-jdk)
-	[`openjdk:8u102`](#openjdk8u102)
-	[`openjdk:8-jdk`](#openjdk8-jdk)
-	[`openjdk:8`](#openjdk8)
-	[`openjdk:jdk`](#openjdkjdk)
-	[`openjdk:latest`](#openjdklatest)
-	[`openjdk:8u92-jdk-alpine`](#openjdk8u92-jdk-alpine)
-	[`openjdk:8u92-alpine`](#openjdk8u92-alpine)
-	[`openjdk:8-jdk-alpine`](#openjdk8-jdk-alpine)
-	[`openjdk:8-alpine`](#openjdk8-alpine)
-	[`openjdk:jdk-alpine`](#openjdkjdk-alpine)
-	[`openjdk:alpine`](#openjdkalpine)
-	[`openjdk:8u102-jre`](#openjdk8u102-jre)
-	[`openjdk:8-jre`](#openjdk8-jre)
-	[`openjdk:jre`](#openjdkjre)
-	[`openjdk:8u92-jre-alpine`](#openjdk8u92-jre-alpine)
-	[`openjdk:8-jre-alpine`](#openjdk8-jre-alpine)
-	[`openjdk:jre-alpine`](#openjdkjre-alpine)
-	[`openjdk:9-b140-jdk`](#openjdk9-b140-jdk)
-	[`openjdk:9-b140`](#openjdk9-b140)
-	[`openjdk:9-jdk`](#openjdk9-jdk)
-	[`openjdk:9`](#openjdk9)
-	[`openjdk:9-b140-jre`](#openjdk9-b140-jre)
-	[`openjdk:9-jre`](#openjdk9-jre)

## `openjdk:6b38-jdk`

```console
$ docker pull openjdk@sha256:472658e24d9a5480199047bcbf854a4eb16aa2d4af80c27fa417255a14e85c74
```

-	Platforms:
	-	linux; amd64

### `openjdk:6b38-jdk` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.1 MB (187064973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3baacbfebf190b37bfb774c2d42ea4701b983b7a337c203e8361d30e3d7140a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:38:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:39:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:03:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:03:03 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:03:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:03:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64
# Fri, 21 Oct 2016 20:03:05 GMT
ENV JAVA_VERSION=6b38
# Fri, 21 Oct 2016 20:03:05 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Fri, 21 Oct 2016 20:04:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5089ed91d3c0db1d6aaf79fbdf9593e28c1ea9bdabfab75dfb1b5fc1fcdf05a`  
		Last Modified: Fri, 21 Oct 2016 16:38:41 GMT  
		Size: 6.7 MB (6748520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893cdd795dcc65ffd51af821a9dc9542376781af0feeb7e66d11fc5aaad7abdd`  
		Last Modified: Fri, 21 Oct 2016 16:39:37 GMT  
		Size: 37.4 MB (37366571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464fee12dc33145112e11c33675111627075b84c8dbb44852f6ee7ac72105ba8`  
		Last Modified: Fri, 21 Oct 2016 20:04:21 GMT  
		Size: 413.0 KB (412996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695ef2897d0bd9ae88bed672e0f82db89b0bcaf19a0e6726f9514f38bc95daeb`  
		Last Modified: Fri, 21 Oct 2016 20:04:20 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a81bddc7d1580ccf60384b87b253e4ed1bb9275818dbd6df80119a694dada1f`  
		Last Modified: Fri, 21 Oct 2016 20:04:37 GMT  
		Size: 105.3 MB (105321505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:6b38`

```console
$ docker pull openjdk@sha256:472658e24d9a5480199047bcbf854a4eb16aa2d4af80c27fa417255a14e85c74
```

-	Platforms:
	-	linux; amd64

### `openjdk:6b38` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.1 MB (187064973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3baacbfebf190b37bfb774c2d42ea4701b983b7a337c203e8361d30e3d7140a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:38:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:39:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:03:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:03:03 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:03:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:03:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64
# Fri, 21 Oct 2016 20:03:05 GMT
ENV JAVA_VERSION=6b38
# Fri, 21 Oct 2016 20:03:05 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Fri, 21 Oct 2016 20:04:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5089ed91d3c0db1d6aaf79fbdf9593e28c1ea9bdabfab75dfb1b5fc1fcdf05a`  
		Last Modified: Fri, 21 Oct 2016 16:38:41 GMT  
		Size: 6.7 MB (6748520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893cdd795dcc65ffd51af821a9dc9542376781af0feeb7e66d11fc5aaad7abdd`  
		Last Modified: Fri, 21 Oct 2016 16:39:37 GMT  
		Size: 37.4 MB (37366571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464fee12dc33145112e11c33675111627075b84c8dbb44852f6ee7ac72105ba8`  
		Last Modified: Fri, 21 Oct 2016 20:04:21 GMT  
		Size: 413.0 KB (412996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695ef2897d0bd9ae88bed672e0f82db89b0bcaf19a0e6726f9514f38bc95daeb`  
		Last Modified: Fri, 21 Oct 2016 20:04:20 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a81bddc7d1580ccf60384b87b253e4ed1bb9275818dbd6df80119a694dada1f`  
		Last Modified: Fri, 21 Oct 2016 20:04:37 GMT  
		Size: 105.3 MB (105321505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:6-jdk`

```console
$ docker pull openjdk@sha256:472658e24d9a5480199047bcbf854a4eb16aa2d4af80c27fa417255a14e85c74
```

-	Platforms:
	-	linux; amd64

### `openjdk:6-jdk` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.1 MB (187064973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3baacbfebf190b37bfb774c2d42ea4701b983b7a337c203e8361d30e3d7140a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:38:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:39:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:03:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:03:03 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:03:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:03:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64
# Fri, 21 Oct 2016 20:03:05 GMT
ENV JAVA_VERSION=6b38
# Fri, 21 Oct 2016 20:03:05 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Fri, 21 Oct 2016 20:04:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5089ed91d3c0db1d6aaf79fbdf9593e28c1ea9bdabfab75dfb1b5fc1fcdf05a`  
		Last Modified: Fri, 21 Oct 2016 16:38:41 GMT  
		Size: 6.7 MB (6748520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893cdd795dcc65ffd51af821a9dc9542376781af0feeb7e66d11fc5aaad7abdd`  
		Last Modified: Fri, 21 Oct 2016 16:39:37 GMT  
		Size: 37.4 MB (37366571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464fee12dc33145112e11c33675111627075b84c8dbb44852f6ee7ac72105ba8`  
		Last Modified: Fri, 21 Oct 2016 20:04:21 GMT  
		Size: 413.0 KB (412996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695ef2897d0bd9ae88bed672e0f82db89b0bcaf19a0e6726f9514f38bc95daeb`  
		Last Modified: Fri, 21 Oct 2016 20:04:20 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a81bddc7d1580ccf60384b87b253e4ed1bb9275818dbd6df80119a694dada1f`  
		Last Modified: Fri, 21 Oct 2016 20:04:37 GMT  
		Size: 105.3 MB (105321505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:6`

```console
$ docker pull openjdk@sha256:472658e24d9a5480199047bcbf854a4eb16aa2d4af80c27fa417255a14e85c74
```

-	Platforms:
	-	linux; amd64

### `openjdk:6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.1 MB (187064973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3baacbfebf190b37bfb774c2d42ea4701b983b7a337c203e8361d30e3d7140a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:38:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:39:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:03:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:03:03 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:03:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:03:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64
# Fri, 21 Oct 2016 20:03:05 GMT
ENV JAVA_VERSION=6b38
# Fri, 21 Oct 2016 20:03:05 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Fri, 21 Oct 2016 20:04:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5089ed91d3c0db1d6aaf79fbdf9593e28c1ea9bdabfab75dfb1b5fc1fcdf05a`  
		Last Modified: Fri, 21 Oct 2016 16:38:41 GMT  
		Size: 6.7 MB (6748520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893cdd795dcc65ffd51af821a9dc9542376781af0feeb7e66d11fc5aaad7abdd`  
		Last Modified: Fri, 21 Oct 2016 16:39:37 GMT  
		Size: 37.4 MB (37366571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464fee12dc33145112e11c33675111627075b84c8dbb44852f6ee7ac72105ba8`  
		Last Modified: Fri, 21 Oct 2016 20:04:21 GMT  
		Size: 413.0 KB (412996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695ef2897d0bd9ae88bed672e0f82db89b0bcaf19a0e6726f9514f38bc95daeb`  
		Last Modified: Fri, 21 Oct 2016 20:04:20 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a81bddc7d1580ccf60384b87b253e4ed1bb9275818dbd6df80119a694dada1f`  
		Last Modified: Fri, 21 Oct 2016 20:04:37 GMT  
		Size: 105.3 MB (105321505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:6b38-jre`

```console
$ docker pull openjdk@sha256:bafb1693d516a42e129188f7ac2a0f75c5fbdf37ab69f2e238ecc9ced8aa3b46
```

-	Platforms:
	-	linux; amd64

### `openjdk:6b38-jre` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96978706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6d35ac0387e351073e8626d9f8c028b7307c7db6081cc8f3c693661b8c2fe70`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:38:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:06:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:06:06 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:06:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:06:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64/jre
# Fri, 21 Oct 2016 20:06:08 GMT
ENV JAVA_VERSION=6b38
# Fri, 21 Oct 2016 20:06:08 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Fri, 21 Oct 2016 20:06:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5089ed91d3c0db1d6aaf79fbdf9593e28c1ea9bdabfab75dfb1b5fc1fcdf05a`  
		Last Modified: Fri, 21 Oct 2016 16:38:41 GMT  
		Size: 6.7 MB (6748520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf465f11c913d374f52e90a7fef85ab85d5ddb29a7e33af4193c0280ea99b0fe`  
		Last Modified: Fri, 21 Oct 2016 20:06:32 GMT  
		Size: 359.5 KB (359534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68cd4b3fb5c208300c01dc693a61fa45a1e312c3b016232ba5b9dc12a7878959`  
		Last Modified: Fri, 21 Oct 2016 20:06:30 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caef9452dd3d7ea1df56837810cca2813d8104da5dab77ed922458dfb0f23dfa`  
		Last Modified: Fri, 21 Oct 2016 20:06:40 GMT  
		Size: 52.7 MB (52655271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:6-jre`

```console
$ docker pull openjdk@sha256:bafb1693d516a42e129188f7ac2a0f75c5fbdf37ab69f2e238ecc9ced8aa3b46
```

-	Platforms:
	-	linux; amd64

### `openjdk:6-jre` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96978706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6d35ac0387e351073e8626d9f8c028b7307c7db6081cc8f3c693661b8c2fe70`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:26:06 GMT
ADD file:93883f863ccd9e401e4f945206887f251075a63d25a8129c9bd73e707397f109 in / 
# Fri, 21 Oct 2016 16:26:06 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:38:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:06:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:06:06 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:06:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:06:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64/jre
# Fri, 21 Oct 2016 20:06:08 GMT
ENV JAVA_VERSION=6b38
# Fri, 21 Oct 2016 20:06:08 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Fri, 21 Oct 2016 20:06:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:d44a3b2e3fc2a79a071282b2ad5f6bcbefc929c0e816750b0b76f6ec5580ae23`  
		Last Modified: Fri, 21 Oct 2016 16:26:27 GMT  
		Size: 37.2 MB (37215139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5089ed91d3c0db1d6aaf79fbdf9593e28c1ea9bdabfab75dfb1b5fc1fcdf05a`  
		Last Modified: Fri, 21 Oct 2016 16:38:41 GMT  
		Size: 6.7 MB (6748520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf465f11c913d374f52e90a7fef85ab85d5ddb29a7e33af4193c0280ea99b0fe`  
		Last Modified: Fri, 21 Oct 2016 20:06:32 GMT  
		Size: 359.5 KB (359534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68cd4b3fb5c208300c01dc693a61fa45a1e312c3b016232ba5b9dc12a7878959`  
		Last Modified: Fri, 21 Oct 2016 20:06:30 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caef9452dd3d7ea1df56837810cca2813d8104da5dab77ed922458dfb0f23dfa`  
		Last Modified: Fri, 21 Oct 2016 20:06:40 GMT  
		Size: 52.7 MB (52655271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7u111-jdk`

```console
$ docker pull openjdk@sha256:5702e7b5ccd07c82d7fc71fd7902e0c6f87d1447e5cfb272769c192d9c5fa67f
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u111-jdk` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 MB (252616771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18e25fe931b561173443f3508a2961cb7ec9e94241827ece7a6f3943439e7bf0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:07:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:07:28 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:07:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:07:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Fri, 21 Oct 2016 20:07:30 GMT
ENV JAVA_VERSION=7u111
# Fri, 21 Oct 2016 20:07:30 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Fri, 21 Oct 2016 20:08:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc4cdbc8d81addf57f4475aafb4d7c14f8b33b1f81338f292d019b52dab828d`  
		Last Modified: Fri, 21 Oct 2016 20:08:28 GMT  
		Size: 593.0 KB (593002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38af4ea2aca2dd9fdaa2d741cf500f2bef515d779d6aa7bf31894774ffda697`  
		Last Modified: Fri, 21 Oct 2016 20:08:26 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31eee7b5a62519285e299108528b0cbf68a03995b9a6da049d7a9283707615e`  
		Last Modified: Fri, 21 Oct 2016 20:08:53 GMT  
		Size: 139.6 MB (139641458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7u111`

```console
$ docker pull openjdk@sha256:5702e7b5ccd07c82d7fc71fd7902e0c6f87d1447e5cfb272769c192d9c5fa67f
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u111` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 MB (252616771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18e25fe931b561173443f3508a2961cb7ec9e94241827ece7a6f3943439e7bf0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:07:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:07:28 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:07:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:07:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Fri, 21 Oct 2016 20:07:30 GMT
ENV JAVA_VERSION=7u111
# Fri, 21 Oct 2016 20:07:30 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Fri, 21 Oct 2016 20:08:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc4cdbc8d81addf57f4475aafb4d7c14f8b33b1f81338f292d019b52dab828d`  
		Last Modified: Fri, 21 Oct 2016 20:08:28 GMT  
		Size: 593.0 KB (593002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38af4ea2aca2dd9fdaa2d741cf500f2bef515d779d6aa7bf31894774ffda697`  
		Last Modified: Fri, 21 Oct 2016 20:08:26 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31eee7b5a62519285e299108528b0cbf68a03995b9a6da049d7a9283707615e`  
		Last Modified: Fri, 21 Oct 2016 20:08:53 GMT  
		Size: 139.6 MB (139641458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7-jdk`

```console
$ docker pull openjdk@sha256:5702e7b5ccd07c82d7fc71fd7902e0c6f87d1447e5cfb272769c192d9c5fa67f
```

-	Platforms:
	-	linux; amd64

### `openjdk:7-jdk` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 MB (252616771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18e25fe931b561173443f3508a2961cb7ec9e94241827ece7a6f3943439e7bf0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:07:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:07:28 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:07:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:07:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Fri, 21 Oct 2016 20:07:30 GMT
ENV JAVA_VERSION=7u111
# Fri, 21 Oct 2016 20:07:30 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Fri, 21 Oct 2016 20:08:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc4cdbc8d81addf57f4475aafb4d7c14f8b33b1f81338f292d019b52dab828d`  
		Last Modified: Fri, 21 Oct 2016 20:08:28 GMT  
		Size: 593.0 KB (593002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38af4ea2aca2dd9fdaa2d741cf500f2bef515d779d6aa7bf31894774ffda697`  
		Last Modified: Fri, 21 Oct 2016 20:08:26 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31eee7b5a62519285e299108528b0cbf68a03995b9a6da049d7a9283707615e`  
		Last Modified: Fri, 21 Oct 2016 20:08:53 GMT  
		Size: 139.6 MB (139641458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7`

```console
$ docker pull openjdk@sha256:5702e7b5ccd07c82d7fc71fd7902e0c6f87d1447e5cfb272769c192d9c5fa67f
```

-	Platforms:
	-	linux; amd64

### `openjdk:7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 MB (252616771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18e25fe931b561173443f3508a2961cb7ec9e94241827ece7a6f3943439e7bf0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:07:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:07:28 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:07:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:07:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Fri, 21 Oct 2016 20:07:30 GMT
ENV JAVA_VERSION=7u111
# Fri, 21 Oct 2016 20:07:30 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Fri, 21 Oct 2016 20:08:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc4cdbc8d81addf57f4475aafb4d7c14f8b33b1f81338f292d019b52dab828d`  
		Last Modified: Fri, 21 Oct 2016 20:08:28 GMT  
		Size: 593.0 KB (593002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38af4ea2aca2dd9fdaa2d741cf500f2bef515d779d6aa7bf31894774ffda697`  
		Last Modified: Fri, 21 Oct 2016 20:08:26 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31eee7b5a62519285e299108528b0cbf68a03995b9a6da049d7a9283707615e`  
		Last Modified: Fri, 21 Oct 2016 20:08:53 GMT  
		Size: 139.6 MB (139641458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7u111-jdk-alpine`

```console
$ docker pull openjdk@sha256:67bebf6b0a1fce67a060f396624cc795b9118c2e464902a7a847d0cb600805a7
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u111-jdk-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77862668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d7cb1353eeefbba248492002354d69dbd68950e40f190d795df952a1c25bf1`

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
# Wed, 19 Oct 2016 22:02:07 GMT
ENV JAVA_VERSION=7u111
# Wed, 19 Oct 2016 22:02:07 GMT
ENV JAVA_ALPINE_VERSION=7.111.2.6.7-r2
# Wed, 19 Oct 2016 22:02:17 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:5e87eeb13ad9ed22981f9c0b7753f79568a84073d032ad7ac2310f0b494bfa1a`  
		Last Modified: Wed, 19 Oct 2016 22:06:24 GMT  
		Size: 75.5 MB (75549480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7u111-alpine`

```console
$ docker pull openjdk@sha256:67bebf6b0a1fce67a060f396624cc795b9118c2e464902a7a847d0cb600805a7
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u111-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77862668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d7cb1353eeefbba248492002354d69dbd68950e40f190d795df952a1c25bf1`

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
# Wed, 19 Oct 2016 22:02:07 GMT
ENV JAVA_VERSION=7u111
# Wed, 19 Oct 2016 22:02:07 GMT
ENV JAVA_ALPINE_VERSION=7.111.2.6.7-r2
# Wed, 19 Oct 2016 22:02:17 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:5e87eeb13ad9ed22981f9c0b7753f79568a84073d032ad7ac2310f0b494bfa1a`  
		Last Modified: Wed, 19 Oct 2016 22:06:24 GMT  
		Size: 75.5 MB (75549480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7-jdk-alpine`

```console
$ docker pull openjdk@sha256:67bebf6b0a1fce67a060f396624cc795b9118c2e464902a7a847d0cb600805a7
```

-	Platforms:
	-	linux; amd64

### `openjdk:7-jdk-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77862668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d7cb1353eeefbba248492002354d69dbd68950e40f190d795df952a1c25bf1`

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
# Wed, 19 Oct 2016 22:02:07 GMT
ENV JAVA_VERSION=7u111
# Wed, 19 Oct 2016 22:02:07 GMT
ENV JAVA_ALPINE_VERSION=7.111.2.6.7-r2
# Wed, 19 Oct 2016 22:02:17 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:5e87eeb13ad9ed22981f9c0b7753f79568a84073d032ad7ac2310f0b494bfa1a`  
		Last Modified: Wed, 19 Oct 2016 22:06:24 GMT  
		Size: 75.5 MB (75549480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7-alpine`

```console
$ docker pull openjdk@sha256:67bebf6b0a1fce67a060f396624cc795b9118c2e464902a7a847d0cb600805a7
```

-	Platforms:
	-	linux; amd64

### `openjdk:7-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77862668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d7cb1353eeefbba248492002354d69dbd68950e40f190d795df952a1c25bf1`

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
# Wed, 19 Oct 2016 22:02:07 GMT
ENV JAVA_VERSION=7u111
# Wed, 19 Oct 2016 22:02:07 GMT
ENV JAVA_ALPINE_VERSION=7.111.2.6.7-r2
# Wed, 19 Oct 2016 22:02:17 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:5e87eeb13ad9ed22981f9c0b7753f79568a84073d032ad7ac2310f0b494bfa1a`  
		Last Modified: Wed, 19 Oct 2016 22:06:24 GMT  
		Size: 75.5 MB (75549480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7u111-jre`

```console
$ docker pull openjdk@sha256:d68bb952732542db5a14e510b7a0d52fa98b79dae21cba1218e5c5bf24fd87ed
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u111-jre` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.2 MB (148188341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:359322a7bea06c91d49f066665098864463f200e07432ab5b8dbf96d01981bcb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:10:25 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:10:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:10:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Fri, 21 Oct 2016 20:10:26 GMT
ENV JAVA_VERSION=7u111
# Fri, 21 Oct 2016 20:10:27 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Fri, 21 Oct 2016 20:11:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7b4d10e1c13c063d94bb83588b327f4c4f5a10fb1a1a89a9c1c73ef15710a7`  
		Last Modified: Fri, 21 Oct 2016 20:11:17 GMT  
		Size: 566.6 KB (566556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35dfd23791b53c2fae237e583621203cd5e4434fcdc0254d94ca83b147286666`  
		Last Modified: Fri, 21 Oct 2016 20:11:16 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0aca12f0dd9d53ec59f50958e2a10bbacbdc29757327b216c13f6ca8214f4c`  
		Last Modified: Fri, 21 Oct 2016 20:11:31 GMT  
		Size: 77.7 MB (77740287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7-jre`

```console
$ docker pull openjdk@sha256:d68bb952732542db5a14e510b7a0d52fa98b79dae21cba1218e5c5bf24fd87ed
```

-	Platforms:
	-	linux; amd64

### `openjdk:7-jre` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.2 MB (148188341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:359322a7bea06c91d49f066665098864463f200e07432ab5b8dbf96d01981bcb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:10:25 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:10:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:10:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Fri, 21 Oct 2016 20:10:26 GMT
ENV JAVA_VERSION=7u111
# Fri, 21 Oct 2016 20:10:27 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Fri, 21 Oct 2016 20:11:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7b4d10e1c13c063d94bb83588b327f4c4f5a10fb1a1a89a9c1c73ef15710a7`  
		Last Modified: Fri, 21 Oct 2016 20:11:17 GMT  
		Size: 566.6 KB (566556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35dfd23791b53c2fae237e583621203cd5e4434fcdc0254d94ca83b147286666`  
		Last Modified: Fri, 21 Oct 2016 20:11:16 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0aca12f0dd9d53ec59f50958e2a10bbacbdc29757327b216c13f6ca8214f4c`  
		Last Modified: Fri, 21 Oct 2016 20:11:31 GMT  
		Size: 77.7 MB (77740287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7u111-jre-alpine`

```console
$ docker pull openjdk@sha256:7ae8759a41777bf9d0791b970f193e0bb971725bb5b81343bad7c72cc13ff602
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u111-jre-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61621507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cf43c4e774e651a47a4d1ce7b421941d7923a76914a0f000d7b346fef117ca8`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Tue, 18 Oct 2016 20:40:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 19 Oct 2016 22:02:18 GMT
ENV JAVA_VERSION=7u111
# Wed, 19 Oct 2016 22:02:18 GMT
ENV JAVA_ALPINE_VERSION=7.111.2.6.7-r2
# Wed, 19 Oct 2016 22:02:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:40b73ce31a9e421fc759c14f9dd45ca630d89d4b1827f27b56a4ff23e6484636`  
		Last Modified: Wed, 19 Oct 2016 22:08:46 GMT  
		Size: 59.3 MB (59308319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7-jre-alpine`

```console
$ docker pull openjdk@sha256:7ae8759a41777bf9d0791b970f193e0bb971725bb5b81343bad7c72cc13ff602
```

-	Platforms:
	-	linux; amd64

### `openjdk:7-jre-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61621507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cf43c4e774e651a47a4d1ce7b421941d7923a76914a0f000d7b346fef117ca8`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Tue, 18 Oct 2016 20:40:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 19 Oct 2016 22:02:18 GMT
ENV JAVA_VERSION=7u111
# Wed, 19 Oct 2016 22:02:18 GMT
ENV JAVA_ALPINE_VERSION=7.111.2.6.7-r2
# Wed, 19 Oct 2016 22:02:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:40b73ce31a9e421fc759c14f9dd45ca630d89d4b1827f27b56a4ff23e6484636`  
		Last Modified: Wed, 19 Oct 2016 22:08:46 GMT  
		Size: 59.3 MB (59308319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8u102-jdk`

```console
$ docker pull openjdk@sha256:dadd28096820d43427462d6bd071586dc4f52db6bf9cf21a2176b2a2c113839f
```

-	Platforms:
	-	linux; amd64

### `openjdk:8u102-jdk` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.4 MB (243363766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34a035df9da951550207df22d389b23c0b4189b1a8d91d5980e4aa305420bfc0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:07:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:12:10 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 21 Oct 2016 20:12:11 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:12:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:12:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 21 Oct 2016 20:12:13 GMT
ENV JAVA_VERSION=8u102
# Fri, 21 Oct 2016 20:12:13 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 21 Oct 2016 20:12:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 21 Oct 2016 20:13:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Oct 2016 20:13:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc4cdbc8d81addf57f4475aafb4d7c14f8b33b1f81338f292d019b52dab828d`  
		Last Modified: Fri, 21 Oct 2016 20:08:28 GMT  
		Size: 593.0 KB (593002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbb0894483a51f34474c923a88ef7038cb509d584f8048fdbaf09518d5b3737`  
		Last Modified: Fri, 21 Oct 2016 20:13:18 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343785c6e48e1e95c98308a513facd5e3ee23ab245f10e67a6271367d6dc67ef`  
		Last Modified: Fri, 21 Oct 2016 20:13:18 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80bc278f201eb43353bc396e8958e529c288a3ff484a328ddf58ede0a5f44fd1`  
		Last Modified: Fri, 21 Oct 2016 20:13:50 GMT  
		Size: 130.1 MB (130104036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc7493162d145324aed82c992e3d730dd85dc4aa9a48fe8a4128f18a03b03a3`  
		Last Modified: Fri, 21 Oct 2016 20:13:18 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8u102`

```console
$ docker pull openjdk@sha256:dadd28096820d43427462d6bd071586dc4f52db6bf9cf21a2176b2a2c113839f
```

-	Platforms:
	-	linux; amd64

### `openjdk:8u102` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.4 MB (243363766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34a035df9da951550207df22d389b23c0b4189b1a8d91d5980e4aa305420bfc0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:07:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:12:10 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 21 Oct 2016 20:12:11 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:12:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:12:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 21 Oct 2016 20:12:13 GMT
ENV JAVA_VERSION=8u102
# Fri, 21 Oct 2016 20:12:13 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 21 Oct 2016 20:12:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 21 Oct 2016 20:13:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Oct 2016 20:13:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc4cdbc8d81addf57f4475aafb4d7c14f8b33b1f81338f292d019b52dab828d`  
		Last Modified: Fri, 21 Oct 2016 20:08:28 GMT  
		Size: 593.0 KB (593002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbb0894483a51f34474c923a88ef7038cb509d584f8048fdbaf09518d5b3737`  
		Last Modified: Fri, 21 Oct 2016 20:13:18 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343785c6e48e1e95c98308a513facd5e3ee23ab245f10e67a6271367d6dc67ef`  
		Last Modified: Fri, 21 Oct 2016 20:13:18 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80bc278f201eb43353bc396e8958e529c288a3ff484a328ddf58ede0a5f44fd1`  
		Last Modified: Fri, 21 Oct 2016 20:13:50 GMT  
		Size: 130.1 MB (130104036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc7493162d145324aed82c992e3d730dd85dc4aa9a48fe8a4128f18a03b03a3`  
		Last Modified: Fri, 21 Oct 2016 20:13:18 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8-jdk`

```console
$ docker pull openjdk@sha256:dadd28096820d43427462d6bd071586dc4f52db6bf9cf21a2176b2a2c113839f
```

-	Platforms:
	-	linux; amd64

### `openjdk:8-jdk` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.4 MB (243363766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34a035df9da951550207df22d389b23c0b4189b1a8d91d5980e4aa305420bfc0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:07:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:12:10 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 21 Oct 2016 20:12:11 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:12:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:12:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 21 Oct 2016 20:12:13 GMT
ENV JAVA_VERSION=8u102
# Fri, 21 Oct 2016 20:12:13 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 21 Oct 2016 20:12:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 21 Oct 2016 20:13:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Oct 2016 20:13:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc4cdbc8d81addf57f4475aafb4d7c14f8b33b1f81338f292d019b52dab828d`  
		Last Modified: Fri, 21 Oct 2016 20:08:28 GMT  
		Size: 593.0 KB (593002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbb0894483a51f34474c923a88ef7038cb509d584f8048fdbaf09518d5b3737`  
		Last Modified: Fri, 21 Oct 2016 20:13:18 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343785c6e48e1e95c98308a513facd5e3ee23ab245f10e67a6271367d6dc67ef`  
		Last Modified: Fri, 21 Oct 2016 20:13:18 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80bc278f201eb43353bc396e8958e529c288a3ff484a328ddf58ede0a5f44fd1`  
		Last Modified: Fri, 21 Oct 2016 20:13:50 GMT  
		Size: 130.1 MB (130104036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc7493162d145324aed82c992e3d730dd85dc4aa9a48fe8a4128f18a03b03a3`  
		Last Modified: Fri, 21 Oct 2016 20:13:18 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8`

```console
$ docker pull openjdk@sha256:dadd28096820d43427462d6bd071586dc4f52db6bf9cf21a2176b2a2c113839f
```

-	Platforms:
	-	linux; amd64

### `openjdk:8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.4 MB (243363766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34a035df9da951550207df22d389b23c0b4189b1a8d91d5980e4aa305420bfc0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:07:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:12:10 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 21 Oct 2016 20:12:11 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:12:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:12:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 21 Oct 2016 20:12:13 GMT
ENV JAVA_VERSION=8u102
# Fri, 21 Oct 2016 20:12:13 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 21 Oct 2016 20:12:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 21 Oct 2016 20:13:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Oct 2016 20:13:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc4cdbc8d81addf57f4475aafb4d7c14f8b33b1f81338f292d019b52dab828d`  
		Last Modified: Fri, 21 Oct 2016 20:08:28 GMT  
		Size: 593.0 KB (593002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbb0894483a51f34474c923a88ef7038cb509d584f8048fdbaf09518d5b3737`  
		Last Modified: Fri, 21 Oct 2016 20:13:18 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343785c6e48e1e95c98308a513facd5e3ee23ab245f10e67a6271367d6dc67ef`  
		Last Modified: Fri, 21 Oct 2016 20:13:18 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80bc278f201eb43353bc396e8958e529c288a3ff484a328ddf58ede0a5f44fd1`  
		Last Modified: Fri, 21 Oct 2016 20:13:50 GMT  
		Size: 130.1 MB (130104036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc7493162d145324aed82c992e3d730dd85dc4aa9a48fe8a4128f18a03b03a3`  
		Last Modified: Fri, 21 Oct 2016 20:13:18 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:jdk`

```console
$ docker pull openjdk@sha256:dadd28096820d43427462d6bd071586dc4f52db6bf9cf21a2176b2a2c113839f
```

-	Platforms:
	-	linux; amd64

### `openjdk:jdk` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.4 MB (243363766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34a035df9da951550207df22d389b23c0b4189b1a8d91d5980e4aa305420bfc0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:07:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:12:10 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 21 Oct 2016 20:12:11 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:12:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:12:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 21 Oct 2016 20:12:13 GMT
ENV JAVA_VERSION=8u102
# Fri, 21 Oct 2016 20:12:13 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 21 Oct 2016 20:12:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 21 Oct 2016 20:13:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Oct 2016 20:13:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc4cdbc8d81addf57f4475aafb4d7c14f8b33b1f81338f292d019b52dab828d`  
		Last Modified: Fri, 21 Oct 2016 20:08:28 GMT  
		Size: 593.0 KB (593002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbb0894483a51f34474c923a88ef7038cb509d584f8048fdbaf09518d5b3737`  
		Last Modified: Fri, 21 Oct 2016 20:13:18 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343785c6e48e1e95c98308a513facd5e3ee23ab245f10e67a6271367d6dc67ef`  
		Last Modified: Fri, 21 Oct 2016 20:13:18 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80bc278f201eb43353bc396e8958e529c288a3ff484a328ddf58ede0a5f44fd1`  
		Last Modified: Fri, 21 Oct 2016 20:13:50 GMT  
		Size: 130.1 MB (130104036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc7493162d145324aed82c992e3d730dd85dc4aa9a48fe8a4128f18a03b03a3`  
		Last Modified: Fri, 21 Oct 2016 20:13:18 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:latest`

```console
$ docker pull openjdk@sha256:dadd28096820d43427462d6bd071586dc4f52db6bf9cf21a2176b2a2c113839f
```

-	Platforms:
	-	linux; amd64

### `openjdk:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.4 MB (243363766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34a035df9da951550207df22d389b23c0b4189b1a8d91d5980e4aa305420bfc0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:07:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:12:10 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 21 Oct 2016 20:12:11 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:12:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:12:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 21 Oct 2016 20:12:13 GMT
ENV JAVA_VERSION=8u102
# Fri, 21 Oct 2016 20:12:13 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 21 Oct 2016 20:12:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 21 Oct 2016 20:13:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Oct 2016 20:13:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc4cdbc8d81addf57f4475aafb4d7c14f8b33b1f81338f292d019b52dab828d`  
		Last Modified: Fri, 21 Oct 2016 20:08:28 GMT  
		Size: 593.0 KB (593002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbb0894483a51f34474c923a88ef7038cb509d584f8048fdbaf09518d5b3737`  
		Last Modified: Fri, 21 Oct 2016 20:13:18 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343785c6e48e1e95c98308a513facd5e3ee23ab245f10e67a6271367d6dc67ef`  
		Last Modified: Fri, 21 Oct 2016 20:13:18 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80bc278f201eb43353bc396e8958e529c288a3ff484a328ddf58ede0a5f44fd1`  
		Last Modified: Fri, 21 Oct 2016 20:13:50 GMT  
		Size: 130.1 MB (130104036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc7493162d145324aed82c992e3d730dd85dc4aa9a48fe8a4128f18a03b03a3`  
		Last Modified: Fri, 21 Oct 2016 20:13:18 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8u92-jdk-alpine`

```console
$ docker pull openjdk@sha256:63eb1c79f609dbaa2c587ba3eb772e8e453229ce91fffc378725ca16435348e9
```

-	Platforms:
	-	linux; amd64

### `openjdk:8u92-jdk-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51640972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f23144173f4f0694b1356ef998c78c74d94d6ee680825a5830e9948a890fc0db`

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

## `openjdk:8u92-alpine`

```console
$ docker pull openjdk@sha256:63eb1c79f609dbaa2c587ba3eb772e8e453229ce91fffc378725ca16435348e9
```

-	Platforms:
	-	linux; amd64

### `openjdk:8u92-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51640972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f23144173f4f0694b1356ef998c78c74d94d6ee680825a5830e9948a890fc0db`

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

## `openjdk:8-jdk-alpine`

```console
$ docker pull openjdk@sha256:63eb1c79f609dbaa2c587ba3eb772e8e453229ce91fffc378725ca16435348e9
```

-	Platforms:
	-	linux; amd64

### `openjdk:8-jdk-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51640972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f23144173f4f0694b1356ef998c78c74d94d6ee680825a5830e9948a890fc0db`

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

## `openjdk:8-alpine`

```console
$ docker pull openjdk@sha256:63eb1c79f609dbaa2c587ba3eb772e8e453229ce91fffc378725ca16435348e9
```

-	Platforms:
	-	linux; amd64

### `openjdk:8-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51640972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f23144173f4f0694b1356ef998c78c74d94d6ee680825a5830e9948a890fc0db`

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

## `openjdk:jdk-alpine`

```console
$ docker pull openjdk@sha256:63eb1c79f609dbaa2c587ba3eb772e8e453229ce91fffc378725ca16435348e9
```

-	Platforms:
	-	linux; amd64

### `openjdk:jdk-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51640972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f23144173f4f0694b1356ef998c78c74d94d6ee680825a5830e9948a890fc0db`

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

## `openjdk:alpine`

```console
$ docker pull openjdk@sha256:63eb1c79f609dbaa2c587ba3eb772e8e453229ce91fffc378725ca16435348e9
```

-	Platforms:
	-	linux; amd64

### `openjdk:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51640972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f23144173f4f0694b1356ef998c78c74d94d6ee680825a5830e9948a890fc0db`

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

## `openjdk:8u102-jre`

```console
$ docker pull openjdk@sha256:ed23e902443eb066504d636bf0101adc8472b3744ae8d99b520ba57eeee58325
```

-	Platforms:
	-	linux; amd64

### `openjdk:8u102-jre` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124172101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dbc02208728267fbc97c07c9afa4b9158b747948453d7ad4ecee55923de2173`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:15:38 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 21 Oct 2016 20:15:38 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:15:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:15:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 21 Oct 2016 20:15:40 GMT
ENV JAVA_VERSION=8u102
# Fri, 21 Oct 2016 20:15:40 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 21 Oct 2016 20:15:41 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 21 Oct 2016 20:15:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Oct 2016 20:15:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7b4d10e1c13c063d94bb83588b327f4c4f5a10fb1a1a89a9c1c73ef15710a7`  
		Last Modified: Fri, 21 Oct 2016 20:11:17 GMT  
		Size: 566.6 KB (566556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7579daddb2fdbdd09c93996fd074457a138526c049279c1959559824aa1d0c`  
		Last Modified: Fri, 21 Oct 2016 20:16:08 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a985511f24689704c7520b5fdad710cee0d1f42bd20a8945589c83daa683c695`  
		Last Modified: Fri, 21 Oct 2016 20:16:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2b485fcc3e915fb4d2cf1739a2fb9b2b0a88d48536f4e632225783279766e4`  
		Last Modified: Fri, 21 Oct 2016 20:16:20 GMT  
		Size: 53.4 MB (53439616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b73c83b440f03854f136863a7f99e307ea721f990cee9bef6287d6385f5ddb`  
		Last Modified: Fri, 21 Oct 2016 20:16:10 GMT  
		Size: 284.2 KB (284214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8-jre`

```console
$ docker pull openjdk@sha256:ed23e902443eb066504d636bf0101adc8472b3744ae8d99b520ba57eeee58325
```

-	Platforms:
	-	linux; amd64

### `openjdk:8-jre` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124172101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dbc02208728267fbc97c07c9afa4b9158b747948453d7ad4ecee55923de2173`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:15:38 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 21 Oct 2016 20:15:38 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:15:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:15:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 21 Oct 2016 20:15:40 GMT
ENV JAVA_VERSION=8u102
# Fri, 21 Oct 2016 20:15:40 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 21 Oct 2016 20:15:41 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 21 Oct 2016 20:15:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Oct 2016 20:15:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7b4d10e1c13c063d94bb83588b327f4c4f5a10fb1a1a89a9c1c73ef15710a7`  
		Last Modified: Fri, 21 Oct 2016 20:11:17 GMT  
		Size: 566.6 KB (566556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7579daddb2fdbdd09c93996fd074457a138526c049279c1959559824aa1d0c`  
		Last Modified: Fri, 21 Oct 2016 20:16:08 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a985511f24689704c7520b5fdad710cee0d1f42bd20a8945589c83daa683c695`  
		Last Modified: Fri, 21 Oct 2016 20:16:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2b485fcc3e915fb4d2cf1739a2fb9b2b0a88d48536f4e632225783279766e4`  
		Last Modified: Fri, 21 Oct 2016 20:16:20 GMT  
		Size: 53.4 MB (53439616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b73c83b440f03854f136863a7f99e307ea721f990cee9bef6287d6385f5ddb`  
		Last Modified: Fri, 21 Oct 2016 20:16:10 GMT  
		Size: 284.2 KB (284214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:jre`

```console
$ docker pull openjdk@sha256:ed23e902443eb066504d636bf0101adc8472b3744ae8d99b520ba57eeee58325
```

-	Platforms:
	-	linux; amd64

### `openjdk:jre` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124172101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dbc02208728267fbc97c07c9afa4b9158b747948453d7ad4ecee55923de2173`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:15:38 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 21 Oct 2016 20:15:38 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:15:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:15:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 21 Oct 2016 20:15:40 GMT
ENV JAVA_VERSION=8u102
# Fri, 21 Oct 2016 20:15:40 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 21 Oct 2016 20:15:41 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 21 Oct 2016 20:15:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Oct 2016 20:15:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7b4d10e1c13c063d94bb83588b327f4c4f5a10fb1a1a89a9c1c73ef15710a7`  
		Last Modified: Fri, 21 Oct 2016 20:11:17 GMT  
		Size: 566.6 KB (566556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7579daddb2fdbdd09c93996fd074457a138526c049279c1959559824aa1d0c`  
		Last Modified: Fri, 21 Oct 2016 20:16:08 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a985511f24689704c7520b5fdad710cee0d1f42bd20a8945589c83daa683c695`  
		Last Modified: Fri, 21 Oct 2016 20:16:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2b485fcc3e915fb4d2cf1739a2fb9b2b0a88d48536f4e632225783279766e4`  
		Last Modified: Fri, 21 Oct 2016 20:16:20 GMT  
		Size: 53.4 MB (53439616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b73c83b440f03854f136863a7f99e307ea721f990cee9bef6287d6385f5ddb`  
		Last Modified: Fri, 21 Oct 2016 20:16:10 GMT  
		Size: 284.2 KB (284214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8u92-jre-alpine`

```console
$ docker pull openjdk@sha256:2444c86e43bf0394f45c89384a7a66370c99de8846ba6f054e0982dd312c7cf9
```

-	Platforms:
	-	linux; amd64

### `openjdk:8u92-jre-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 MB (41962005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd8e525f97700cbe7668d3d784838b33b29d501727fe116435237db213d52856`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_VERSION=8u92
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 18 Oct 2016 20:40:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:b8876cfd96b2fd6c8a3d85d8ed9a02cfce486c97320fd18e3ce681486569ea72`  
		Last Modified: Tue, 18 Oct 2016 20:53:40 GMT  
		Size: 39.6 MB (39648817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8-jre-alpine`

```console
$ docker pull openjdk@sha256:2444c86e43bf0394f45c89384a7a66370c99de8846ba6f054e0982dd312c7cf9
```

-	Platforms:
	-	linux; amd64

### `openjdk:8-jre-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 MB (41962005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd8e525f97700cbe7668d3d784838b33b29d501727fe116435237db213d52856`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_VERSION=8u92
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 18 Oct 2016 20:40:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:b8876cfd96b2fd6c8a3d85d8ed9a02cfce486c97320fd18e3ce681486569ea72`  
		Last Modified: Tue, 18 Oct 2016 20:53:40 GMT  
		Size: 39.6 MB (39648817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:jre-alpine`

```console
$ docker pull openjdk@sha256:2444c86e43bf0394f45c89384a7a66370c99de8846ba6f054e0982dd312c7cf9
```

-	Platforms:
	-	linux; amd64

### `openjdk:jre-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 MB (41962005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd8e525f97700cbe7668d3d784838b33b29d501727fe116435237db213d52856`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_VERSION=8u92
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 18 Oct 2016 20:40:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:b8876cfd96b2fd6c8a3d85d8ed9a02cfce486c97320fd18e3ce681486569ea72`  
		Last Modified: Tue, 18 Oct 2016 20:53:40 GMT  
		Size: 39.6 MB (39648817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:9-b140-jdk`

```console
$ docker pull openjdk@sha256:5765808e80498c529e6bde4b7873b0d0f543460e4c9be2aa1e5cdfcba7fa28e6
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-b140-jdk` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.4 MB (243409563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d6102180e084c0d3ecc8d504d421bdb6fb183086be968d44ed78c11a7c0a994`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Oct 2016 21:26:09 GMT
ADD file:7a91bb1a28e088d8d427022bb612873476ea54ec75cb559e5943b771d7412386 in / 
# Mon, 17 Oct 2016 21:26:10 GMT
CMD ["/bin/bash"]
# Mon, 17 Oct 2016 23:39:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 17 Oct 2016 23:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Oct 2016 20:40:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Oct 2016 20:40:55 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 18 Oct 2016 20:40:55 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:40:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 18 Oct 2016 20:40:57 GMT
ENV JAVA_VERSION=9~b140
# Tue, 18 Oct 2016 20:40:58 GMT
ENV JAVA_DEBIAN_VERSION=9~b140-1
# Tue, 18 Oct 2016 20:41:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:279daf9814f4ba6feba147fd51356389273017b7d4a057e5a7cf724467c2fbcd`  
		Last Modified: Mon, 17 Oct 2016 21:26:30 GMT  
		Size: 43.2 MB (43195045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee53d9e55ce8c4310eed9df888489b1e79dc22764f3c442d8e767d0f4218b57`  
		Last Modified: Mon, 17 Oct 2016 23:40:01 GMT  
		Size: 20.6 MB (20581005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1bde82dbdb2519006f9578e8408db12a546bf1b5ae03940b08f3f20ca8b3dc`  
		Last Modified: Mon, 17 Oct 2016 23:41:03 GMT  
		Size: 48.3 MB (48288494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37af9bebd3ac92605303612e9f49a36146006a2e79a5854e87e6027cc653ba2f`  
		Last Modified: Tue, 18 Oct 2016 20:54:37 GMT  
		Size: 635.2 KB (635211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b889a51ee353190d16aa15308ec9241f3a2680f3f9dc9cd9bb3e24e3ec29050`  
		Last Modified: Tue, 18 Oct 2016 20:54:36 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7adc026d2351a5dd01f4af953f724448819eb1b8c4365ead6c3d6fcc3853485e`  
		Last Modified: Tue, 18 Oct 2016 20:54:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a699791b3056d24d6dea245cf78f739702bdb17da72776ca7098cf7436291f4`  
		Last Modified: Tue, 18 Oct 2016 20:54:57 GMT  
		Size: 130.7 MB (130709349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:9-b140`

```console
$ docker pull openjdk@sha256:5765808e80498c529e6bde4b7873b0d0f543460e4c9be2aa1e5cdfcba7fa28e6
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-b140` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.4 MB (243409563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d6102180e084c0d3ecc8d504d421bdb6fb183086be968d44ed78c11a7c0a994`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Oct 2016 21:26:09 GMT
ADD file:7a91bb1a28e088d8d427022bb612873476ea54ec75cb559e5943b771d7412386 in / 
# Mon, 17 Oct 2016 21:26:10 GMT
CMD ["/bin/bash"]
# Mon, 17 Oct 2016 23:39:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 17 Oct 2016 23:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Oct 2016 20:40:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Oct 2016 20:40:55 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 18 Oct 2016 20:40:55 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:40:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 18 Oct 2016 20:40:57 GMT
ENV JAVA_VERSION=9~b140
# Tue, 18 Oct 2016 20:40:58 GMT
ENV JAVA_DEBIAN_VERSION=9~b140-1
# Tue, 18 Oct 2016 20:41:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:279daf9814f4ba6feba147fd51356389273017b7d4a057e5a7cf724467c2fbcd`  
		Last Modified: Mon, 17 Oct 2016 21:26:30 GMT  
		Size: 43.2 MB (43195045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee53d9e55ce8c4310eed9df888489b1e79dc22764f3c442d8e767d0f4218b57`  
		Last Modified: Mon, 17 Oct 2016 23:40:01 GMT  
		Size: 20.6 MB (20581005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1bde82dbdb2519006f9578e8408db12a546bf1b5ae03940b08f3f20ca8b3dc`  
		Last Modified: Mon, 17 Oct 2016 23:41:03 GMT  
		Size: 48.3 MB (48288494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37af9bebd3ac92605303612e9f49a36146006a2e79a5854e87e6027cc653ba2f`  
		Last Modified: Tue, 18 Oct 2016 20:54:37 GMT  
		Size: 635.2 KB (635211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b889a51ee353190d16aa15308ec9241f3a2680f3f9dc9cd9bb3e24e3ec29050`  
		Last Modified: Tue, 18 Oct 2016 20:54:36 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7adc026d2351a5dd01f4af953f724448819eb1b8c4365ead6c3d6fcc3853485e`  
		Last Modified: Tue, 18 Oct 2016 20:54:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a699791b3056d24d6dea245cf78f739702bdb17da72776ca7098cf7436291f4`  
		Last Modified: Tue, 18 Oct 2016 20:54:57 GMT  
		Size: 130.7 MB (130709349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:9-jdk`

```console
$ docker pull openjdk@sha256:5765808e80498c529e6bde4b7873b0d0f543460e4c9be2aa1e5cdfcba7fa28e6
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-jdk` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.4 MB (243409563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d6102180e084c0d3ecc8d504d421bdb6fb183086be968d44ed78c11a7c0a994`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Oct 2016 21:26:09 GMT
ADD file:7a91bb1a28e088d8d427022bb612873476ea54ec75cb559e5943b771d7412386 in / 
# Mon, 17 Oct 2016 21:26:10 GMT
CMD ["/bin/bash"]
# Mon, 17 Oct 2016 23:39:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 17 Oct 2016 23:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Oct 2016 20:40:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Oct 2016 20:40:55 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 18 Oct 2016 20:40:55 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:40:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 18 Oct 2016 20:40:57 GMT
ENV JAVA_VERSION=9~b140
# Tue, 18 Oct 2016 20:40:58 GMT
ENV JAVA_DEBIAN_VERSION=9~b140-1
# Tue, 18 Oct 2016 20:41:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:279daf9814f4ba6feba147fd51356389273017b7d4a057e5a7cf724467c2fbcd`  
		Last Modified: Mon, 17 Oct 2016 21:26:30 GMT  
		Size: 43.2 MB (43195045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee53d9e55ce8c4310eed9df888489b1e79dc22764f3c442d8e767d0f4218b57`  
		Last Modified: Mon, 17 Oct 2016 23:40:01 GMT  
		Size: 20.6 MB (20581005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1bde82dbdb2519006f9578e8408db12a546bf1b5ae03940b08f3f20ca8b3dc`  
		Last Modified: Mon, 17 Oct 2016 23:41:03 GMT  
		Size: 48.3 MB (48288494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37af9bebd3ac92605303612e9f49a36146006a2e79a5854e87e6027cc653ba2f`  
		Last Modified: Tue, 18 Oct 2016 20:54:37 GMT  
		Size: 635.2 KB (635211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b889a51ee353190d16aa15308ec9241f3a2680f3f9dc9cd9bb3e24e3ec29050`  
		Last Modified: Tue, 18 Oct 2016 20:54:36 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7adc026d2351a5dd01f4af953f724448819eb1b8c4365ead6c3d6fcc3853485e`  
		Last Modified: Tue, 18 Oct 2016 20:54:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a699791b3056d24d6dea245cf78f739702bdb17da72776ca7098cf7436291f4`  
		Last Modified: Tue, 18 Oct 2016 20:54:57 GMT  
		Size: 130.7 MB (130709349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:9`

```console
$ docker pull openjdk@sha256:5765808e80498c529e6bde4b7873b0d0f543460e4c9be2aa1e5cdfcba7fa28e6
```

-	Platforms:
	-	linux; amd64

### `openjdk:9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.4 MB (243409563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d6102180e084c0d3ecc8d504d421bdb6fb183086be968d44ed78c11a7c0a994`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Oct 2016 21:26:09 GMT
ADD file:7a91bb1a28e088d8d427022bb612873476ea54ec75cb559e5943b771d7412386 in / 
# Mon, 17 Oct 2016 21:26:10 GMT
CMD ["/bin/bash"]
# Mon, 17 Oct 2016 23:39:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 17 Oct 2016 23:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Oct 2016 20:40:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Oct 2016 20:40:55 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 18 Oct 2016 20:40:55 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:40:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 18 Oct 2016 20:40:57 GMT
ENV JAVA_VERSION=9~b140
# Tue, 18 Oct 2016 20:40:58 GMT
ENV JAVA_DEBIAN_VERSION=9~b140-1
# Tue, 18 Oct 2016 20:41:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:279daf9814f4ba6feba147fd51356389273017b7d4a057e5a7cf724467c2fbcd`  
		Last Modified: Mon, 17 Oct 2016 21:26:30 GMT  
		Size: 43.2 MB (43195045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee53d9e55ce8c4310eed9df888489b1e79dc22764f3c442d8e767d0f4218b57`  
		Last Modified: Mon, 17 Oct 2016 23:40:01 GMT  
		Size: 20.6 MB (20581005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1bde82dbdb2519006f9578e8408db12a546bf1b5ae03940b08f3f20ca8b3dc`  
		Last Modified: Mon, 17 Oct 2016 23:41:03 GMT  
		Size: 48.3 MB (48288494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37af9bebd3ac92605303612e9f49a36146006a2e79a5854e87e6027cc653ba2f`  
		Last Modified: Tue, 18 Oct 2016 20:54:37 GMT  
		Size: 635.2 KB (635211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b889a51ee353190d16aa15308ec9241f3a2680f3f9dc9cd9bb3e24e3ec29050`  
		Last Modified: Tue, 18 Oct 2016 20:54:36 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7adc026d2351a5dd01f4af953f724448819eb1b8c4365ead6c3d6fcc3853485e`  
		Last Modified: Tue, 18 Oct 2016 20:54:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a699791b3056d24d6dea245cf78f739702bdb17da72776ca7098cf7436291f4`  
		Last Modified: Tue, 18 Oct 2016 20:54:57 GMT  
		Size: 130.7 MB (130709349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:9-b140-jre`

```console
$ docker pull openjdk@sha256:47b76a2e0b7a84a57bff253e2b7aa25d7b6f7be4b012937c4c83f17327273c64
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-b140-jre` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.5 MB (195492834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b76efc7cb30171cbe01a13901b083b9f76a774822b4b4f1381cd30b305427d6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Oct 2016 21:26:09 GMT
ADD file:7a91bb1a28e088d8d427022bb612873476ea54ec75cb559e5943b771d7412386 in / 
# Mon, 17 Oct 2016 21:26:10 GMT
CMD ["/bin/bash"]
# Mon, 17 Oct 2016 23:39:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Oct 2016 20:41:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Oct 2016 20:41:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 18 Oct 2016 20:41:33 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:41:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:41:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 18 Oct 2016 20:41:35 GMT
ENV JAVA_VERSION=9~b140
# Tue, 18 Oct 2016 20:41:35 GMT
ENV JAVA_DEBIAN_VERSION=9~b140-1
# Tue, 18 Oct 2016 20:41:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:279daf9814f4ba6feba147fd51356389273017b7d4a057e5a7cf724467c2fbcd`  
		Last Modified: Mon, 17 Oct 2016 21:26:30 GMT  
		Size: 43.2 MB (43195045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee53d9e55ce8c4310eed9df888489b1e79dc22764f3c442d8e767d0f4218b57`  
		Last Modified: Mon, 17 Oct 2016 23:40:01 GMT  
		Size: 20.6 MB (20581005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0bb9b47ad60678a0250ff57c57bd70f3ca0f4d34a361905b0d5a502816051c4`  
		Last Modified: Tue, 18 Oct 2016 20:56:30 GMT  
		Size: 604.0 KB (603972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00667e41a675e055ce48c612623ffabc8aef6caf7f1eefff8b90966eac31791`  
		Last Modified: Tue, 18 Oct 2016 20:56:29 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6164f281e39e5202711be4657847d5a71eec419b1dac7ed86177da9633d7eb4`  
		Last Modified: Tue, 18 Oct 2016 20:56:29 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb6e6a4a3ce4c73b21f3663fda7b5755dcf19b2fe1b977614b020239616d42e`  
		Last Modified: Tue, 18 Oct 2016 20:56:49 GMT  
		Size: 131.1 MB (131112353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:9-jre`

```console
$ docker pull openjdk@sha256:47b76a2e0b7a84a57bff253e2b7aa25d7b6f7be4b012937c4c83f17327273c64
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-jre` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.5 MB (195492834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b76efc7cb30171cbe01a13901b083b9f76a774822b4b4f1381cd30b305427d6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 17 Oct 2016 21:26:09 GMT
ADD file:7a91bb1a28e088d8d427022bb612873476ea54ec75cb559e5943b771d7412386 in / 
# Mon, 17 Oct 2016 21:26:10 GMT
CMD ["/bin/bash"]
# Mon, 17 Oct 2016 23:39:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Oct 2016 20:41:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Oct 2016 20:41:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 18 Oct 2016 20:41:33 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:41:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:41:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 18 Oct 2016 20:41:35 GMT
ENV JAVA_VERSION=9~b140
# Tue, 18 Oct 2016 20:41:35 GMT
ENV JAVA_DEBIAN_VERSION=9~b140-1
# Tue, 18 Oct 2016 20:41:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:279daf9814f4ba6feba147fd51356389273017b7d4a057e5a7cf724467c2fbcd`  
		Last Modified: Mon, 17 Oct 2016 21:26:30 GMT  
		Size: 43.2 MB (43195045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee53d9e55ce8c4310eed9df888489b1e79dc22764f3c442d8e767d0f4218b57`  
		Last Modified: Mon, 17 Oct 2016 23:40:01 GMT  
		Size: 20.6 MB (20581005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0bb9b47ad60678a0250ff57c57bd70f3ca0f4d34a361905b0d5a502816051c4`  
		Last Modified: Tue, 18 Oct 2016 20:56:30 GMT  
		Size: 604.0 KB (603972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00667e41a675e055ce48c612623ffabc8aef6caf7f1eefff8b90966eac31791`  
		Last Modified: Tue, 18 Oct 2016 20:56:29 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6164f281e39e5202711be4657847d5a71eec419b1dac7ed86177da9633d7eb4`  
		Last Modified: Tue, 18 Oct 2016 20:56:29 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb6e6a4a3ce4c73b21f3663fda7b5755dcf19b2fe1b977614b020239616d42e`  
		Last Modified: Tue, 18 Oct 2016 20:56:49 GMT  
		Size: 131.1 MB (131112353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
