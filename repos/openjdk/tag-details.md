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
-	[`openjdk:8u121-jdk-alpine`](#openjdk8u121-jdk-alpine)
-	[`openjdk:8u121-alpine`](#openjdk8u121-alpine)
-	[`openjdk:8-jdk-alpine`](#openjdk8-jdk-alpine)
-	[`openjdk:8-alpine`](#openjdk8-alpine)
-	[`openjdk:jdk-alpine`](#openjdkjdk-alpine)
-	[`openjdk:alpine`](#openjdkalpine)
-	[`openjdk:8u131-jdk-windowsservercore`](#openjdk8u131-jdk-windowsservercore)
-	[`openjdk:8u131-windowsservercore`](#openjdk8u131-windowsservercore)
-	[`openjdk:8-jdk-windowsservercore`](#openjdk8-jdk-windowsservercore)
-	[`openjdk:8-windowsservercore`](#openjdk8-windowsservercore)
-	[`openjdk:jdk-windowsservercore`](#openjdkjdk-windowsservercore)
-	[`openjdk:windowsservercore`](#openjdkwindowsservercore)
-	[`openjdk:8u131-jdk-nanoserver`](#openjdk8u131-jdk-nanoserver)
-	[`openjdk:8u131-nanoserver`](#openjdk8u131-nanoserver)
-	[`openjdk:8-jdk-nanoserver`](#openjdk8-jdk-nanoserver)
-	[`openjdk:8-nanoserver`](#openjdk8-nanoserver)
-	[`openjdk:jdk-nanoserver`](#openjdkjdk-nanoserver)
-	[`openjdk:nanoserver`](#openjdknanoserver)
-	[`openjdk:8u121-jre`](#openjdk8u121-jre)
-	[`openjdk:8-jre`](#openjdk8-jre)
-	[`openjdk:jre`](#openjdkjre)
-	[`openjdk:8u121-jre-alpine`](#openjdk8u121-jre-alpine)
-	[`openjdk:8-jre-alpine`](#openjdk8-jre-alpine)
-	[`openjdk:jre-alpine`](#openjdkjre-alpine)
-	[`openjdk:9-b169-jdk`](#openjdk9-b169-jdk)
-	[`openjdk:9-b169`](#openjdk9-b169)
-	[`openjdk:9-jdk`](#openjdk9-jdk)
-	[`openjdk:9`](#openjdk9)
-	[`openjdk:9-b169-jre`](#openjdk9-b169-jre)
-	[`openjdk:9-jre`](#openjdk9-jre)

## `openjdk:6b38-jdk`

```console
$ docker pull openjdk@sha256:72ad2c15b573438e29a6bbf0496c3d78ed6aa5138592b590b85a476b77e92467
```

-	Platforms:
	-	linux; amd64

### `openjdk:6b38-jdk` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189548013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1858c256d709559eb883451c03940397090dcb2146bf0d592773f7d1c1857f9d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:41:02 GMT
ADD file:5f4eeb9d08ac23595a4130e8b7689bd25379e92fecf5f62e18ea0f1c95d73c33 in / 
# Mon, 08 May 2017 23:41:17 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 00:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 00:08:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:19:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:19:22 GMT
ENV LANG=C.UTF-8
# Tue, 09 May 2017 17:19:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:54:38 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:54:39 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:54:40 GMT
ENV JAVA_VERSION=6b38
# Wed, 10 May 2017 13:54:41 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Wed, 10 May 2017 13:55:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:af65d799fdb4729bcd56cfa8da95fe4f787ead4b4f434e878c60b3dfa0cebba1`  
		Last Modified: Mon, 08 May 2017 23:58:57 GMT  
		Size: 38.1 MB (38116549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fcd4fbbe5807e6012f6fb4cf6bdcae934c77e41d49b46d4ecd9964d7f71619d`  
		Last Modified: Tue, 09 May 2017 16:03:50 GMT  
		Size: 7.0 MB (6953572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb94c92135ba3007986f5325b82b345302f445179b62da69cd717e5cc92b34b2`  
		Last Modified: Tue, 09 May 2017 16:04:25 GMT  
		Size: 37.9 MB (37942414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770582d3b9f383069446919a82c7a0f7646782eefe5b31222b82a80ae3844d46`  
		Last Modified: Sat, 13 May 2017 09:06:39 GMT  
		Size: 419.1 KB (419081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a61c8eb012e52f95ac41be157212e3da1718d9787cca145f995e49abc4a089`  
		Last Modified: Sat, 13 May 2017 09:06:39 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6003cdddf648d272350ae4732d29db1eb7b70c05e56d87b15a9f50124e68ba5`  
		Last Modified: Sat, 13 May 2017 09:06:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4400c05c75d71aa500e4bdc2c072c41df8a58e28a62ef6dff584770f1949192f`  
		Last Modified: Sat, 13 May 2017 09:06:56 GMT  
		Size: 106.1 MB (106116026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:6b38`

```console
$ docker pull openjdk@sha256:72ad2c15b573438e29a6bbf0496c3d78ed6aa5138592b590b85a476b77e92467
```

-	Platforms:
	-	linux; amd64

### `openjdk:6b38` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189548013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1858c256d709559eb883451c03940397090dcb2146bf0d592773f7d1c1857f9d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:41:02 GMT
ADD file:5f4eeb9d08ac23595a4130e8b7689bd25379e92fecf5f62e18ea0f1c95d73c33 in / 
# Mon, 08 May 2017 23:41:17 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 00:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 00:08:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:19:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:19:22 GMT
ENV LANG=C.UTF-8
# Tue, 09 May 2017 17:19:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:54:38 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:54:39 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:54:40 GMT
ENV JAVA_VERSION=6b38
# Wed, 10 May 2017 13:54:41 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Wed, 10 May 2017 13:55:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:af65d799fdb4729bcd56cfa8da95fe4f787ead4b4f434e878c60b3dfa0cebba1`  
		Last Modified: Mon, 08 May 2017 23:58:57 GMT  
		Size: 38.1 MB (38116549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fcd4fbbe5807e6012f6fb4cf6bdcae934c77e41d49b46d4ecd9964d7f71619d`  
		Last Modified: Tue, 09 May 2017 16:03:50 GMT  
		Size: 7.0 MB (6953572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb94c92135ba3007986f5325b82b345302f445179b62da69cd717e5cc92b34b2`  
		Last Modified: Tue, 09 May 2017 16:04:25 GMT  
		Size: 37.9 MB (37942414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770582d3b9f383069446919a82c7a0f7646782eefe5b31222b82a80ae3844d46`  
		Last Modified: Sat, 13 May 2017 09:06:39 GMT  
		Size: 419.1 KB (419081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a61c8eb012e52f95ac41be157212e3da1718d9787cca145f995e49abc4a089`  
		Last Modified: Sat, 13 May 2017 09:06:39 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6003cdddf648d272350ae4732d29db1eb7b70c05e56d87b15a9f50124e68ba5`  
		Last Modified: Sat, 13 May 2017 09:06:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4400c05c75d71aa500e4bdc2c072c41df8a58e28a62ef6dff584770f1949192f`  
		Last Modified: Sat, 13 May 2017 09:06:56 GMT  
		Size: 106.1 MB (106116026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:6-jdk`

```console
$ docker pull openjdk@sha256:72ad2c15b573438e29a6bbf0496c3d78ed6aa5138592b590b85a476b77e92467
```

-	Platforms:
	-	linux; amd64

### `openjdk:6-jdk` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189548013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1858c256d709559eb883451c03940397090dcb2146bf0d592773f7d1c1857f9d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:41:02 GMT
ADD file:5f4eeb9d08ac23595a4130e8b7689bd25379e92fecf5f62e18ea0f1c95d73c33 in / 
# Mon, 08 May 2017 23:41:17 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 00:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 00:08:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:19:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:19:22 GMT
ENV LANG=C.UTF-8
# Tue, 09 May 2017 17:19:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:54:38 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:54:39 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:54:40 GMT
ENV JAVA_VERSION=6b38
# Wed, 10 May 2017 13:54:41 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Wed, 10 May 2017 13:55:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:af65d799fdb4729bcd56cfa8da95fe4f787ead4b4f434e878c60b3dfa0cebba1`  
		Last Modified: Mon, 08 May 2017 23:58:57 GMT  
		Size: 38.1 MB (38116549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fcd4fbbe5807e6012f6fb4cf6bdcae934c77e41d49b46d4ecd9964d7f71619d`  
		Last Modified: Tue, 09 May 2017 16:03:50 GMT  
		Size: 7.0 MB (6953572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb94c92135ba3007986f5325b82b345302f445179b62da69cd717e5cc92b34b2`  
		Last Modified: Tue, 09 May 2017 16:04:25 GMT  
		Size: 37.9 MB (37942414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770582d3b9f383069446919a82c7a0f7646782eefe5b31222b82a80ae3844d46`  
		Last Modified: Sat, 13 May 2017 09:06:39 GMT  
		Size: 419.1 KB (419081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a61c8eb012e52f95ac41be157212e3da1718d9787cca145f995e49abc4a089`  
		Last Modified: Sat, 13 May 2017 09:06:39 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6003cdddf648d272350ae4732d29db1eb7b70c05e56d87b15a9f50124e68ba5`  
		Last Modified: Sat, 13 May 2017 09:06:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4400c05c75d71aa500e4bdc2c072c41df8a58e28a62ef6dff584770f1949192f`  
		Last Modified: Sat, 13 May 2017 09:06:56 GMT  
		Size: 106.1 MB (106116026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:6`

```console
$ docker pull openjdk@sha256:72ad2c15b573438e29a6bbf0496c3d78ed6aa5138592b590b85a476b77e92467
```

-	Platforms:
	-	linux; amd64

### `openjdk:6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189548013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1858c256d709559eb883451c03940397090dcb2146bf0d592773f7d1c1857f9d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:41:02 GMT
ADD file:5f4eeb9d08ac23595a4130e8b7689bd25379e92fecf5f62e18ea0f1c95d73c33 in / 
# Mon, 08 May 2017 23:41:17 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 00:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 00:08:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:19:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:19:22 GMT
ENV LANG=C.UTF-8
# Tue, 09 May 2017 17:19:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:54:38 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:54:39 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:54:40 GMT
ENV JAVA_VERSION=6b38
# Wed, 10 May 2017 13:54:41 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Wed, 10 May 2017 13:55:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:af65d799fdb4729bcd56cfa8da95fe4f787ead4b4f434e878c60b3dfa0cebba1`  
		Last Modified: Mon, 08 May 2017 23:58:57 GMT  
		Size: 38.1 MB (38116549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fcd4fbbe5807e6012f6fb4cf6bdcae934c77e41d49b46d4ecd9964d7f71619d`  
		Last Modified: Tue, 09 May 2017 16:03:50 GMT  
		Size: 7.0 MB (6953572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb94c92135ba3007986f5325b82b345302f445179b62da69cd717e5cc92b34b2`  
		Last Modified: Tue, 09 May 2017 16:04:25 GMT  
		Size: 37.9 MB (37942414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770582d3b9f383069446919a82c7a0f7646782eefe5b31222b82a80ae3844d46`  
		Last Modified: Sat, 13 May 2017 09:06:39 GMT  
		Size: 419.1 KB (419081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a61c8eb012e52f95ac41be157212e3da1718d9787cca145f995e49abc4a089`  
		Last Modified: Sat, 13 May 2017 09:06:39 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6003cdddf648d272350ae4732d29db1eb7b70c05e56d87b15a9f50124e68ba5`  
		Last Modified: Sat, 13 May 2017 09:06:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4400c05c75d71aa500e4bdc2c072c41df8a58e28a62ef6dff584770f1949192f`  
		Last Modified: Sat, 13 May 2017 09:06:56 GMT  
		Size: 106.1 MB (106116026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:6b38-jre`

```console
$ docker pull openjdk@sha256:73b9f9c5b586feeef34f52422b182006de5f50c57dc1d1898aa2c195c20475b9
```

-	Platforms:
	-	linux; amd64

### `openjdk:6b38-jre` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.6 MB (98576396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebdb5d3cbf3e46985bbe2ea12fa863627c38241c5072685d024548ebaba3ced6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:41:02 GMT
ADD file:5f4eeb9d08ac23595a4130e8b7689bd25379e92fecf5f62e18ea0f1c95d73c33 in / 
# Mon, 08 May 2017 23:41:17 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 00:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:20:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:20:35 GMT
ENV LANG=C.UTF-8
# Tue, 09 May 2017 17:20:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:55:42 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:55:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 13:55:43 GMT
ENV JAVA_VERSION=6b38
# Wed, 10 May 2017 13:55:44 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Wed, 10 May 2017 13:55:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:af65d799fdb4729bcd56cfa8da95fe4f787ead4b4f434e878c60b3dfa0cebba1`  
		Last Modified: Mon, 08 May 2017 23:58:57 GMT  
		Size: 38.1 MB (38116549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fcd4fbbe5807e6012f6fb4cf6bdcae934c77e41d49b46d4ecd9964d7f71619d`  
		Last Modified: Tue, 09 May 2017 16:03:50 GMT  
		Size: 7.0 MB (6953572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2cd12066b2685d5fbe8f2efe453694a78ed79c300fbd15faffacef18ef00bc3`  
		Last Modified: Sat, 13 May 2017 09:08:33 GMT  
		Size: 365.6 KB (365619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b264c718eca2d5c3a7bfa76cda1fe3fb4f7a3a13304a3bab776d722ef17048`  
		Last Modified: Sat, 13 May 2017 09:08:32 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1d550b45afc7478bfe29f44fc57a2ca42a5d4ecd548fca1d1866736c1dd43f`  
		Last Modified: Sat, 13 May 2017 09:08:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dcfc0acf7df4380733700545e65dc7719b646a01f41cfdfa8bc7fead8a75295`  
		Last Modified: Sat, 13 May 2017 09:08:42 GMT  
		Size: 53.1 MB (53140284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:6-jre`

```console
$ docker pull openjdk@sha256:73b9f9c5b586feeef34f52422b182006de5f50c57dc1d1898aa2c195c20475b9
```

-	Platforms:
	-	linux; amd64

### `openjdk:6-jre` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.6 MB (98576396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebdb5d3cbf3e46985bbe2ea12fa863627c38241c5072685d024548ebaba3ced6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:41:02 GMT
ADD file:5f4eeb9d08ac23595a4130e8b7689bd25379e92fecf5f62e18ea0f1c95d73c33 in / 
# Mon, 08 May 2017 23:41:17 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 00:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:20:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:20:35 GMT
ENV LANG=C.UTF-8
# Tue, 09 May 2017 17:20:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:55:42 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:55:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 13:55:43 GMT
ENV JAVA_VERSION=6b38
# Wed, 10 May 2017 13:55:44 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Wed, 10 May 2017 13:55:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:af65d799fdb4729bcd56cfa8da95fe4f787ead4b4f434e878c60b3dfa0cebba1`  
		Last Modified: Mon, 08 May 2017 23:58:57 GMT  
		Size: 38.1 MB (38116549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fcd4fbbe5807e6012f6fb4cf6bdcae934c77e41d49b46d4ecd9964d7f71619d`  
		Last Modified: Tue, 09 May 2017 16:03:50 GMT  
		Size: 7.0 MB (6953572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2cd12066b2685d5fbe8f2efe453694a78ed79c300fbd15faffacef18ef00bc3`  
		Last Modified: Sat, 13 May 2017 09:08:33 GMT  
		Size: 365.6 KB (365619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b264c718eca2d5c3a7bfa76cda1fe3fb4f7a3a13304a3bab776d722ef17048`  
		Last Modified: Sat, 13 May 2017 09:08:32 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1d550b45afc7478bfe29f44fc57a2ca42a5d4ecd548fca1d1866736c1dd43f`  
		Last Modified: Sat, 13 May 2017 09:08:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dcfc0acf7df4380733700545e65dc7719b646a01f41cfdfa8bc7fead8a75295`  
		Last Modified: Sat, 13 May 2017 09:08:42 GMT  
		Size: 53.1 MB (53140284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7u121-jdk`

```console
$ docker pull openjdk@sha256:2c29d7755a18c868fa8023c3d8f81bc8a1b446606f990332fc14afe005cb3e83
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u121-jdk` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256615208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45207c0100965b4c29b5372a8812dd9e95bbd50b44eaa19df11484bbb5bcb7b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:26 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:56:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:56:29 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:56:29 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:56:30 GMT
ENV JAVA_VERSION=7u121
# Wed, 10 May 2017 13:56:31 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 10 May 2017 13:57:36 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76c91400b73290264b745c82f1be6e6f172b58f7d316219d3e2799377e5c9c0`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4457313886a547bbd4b4724c03f7b72e4221ddc4b397bda49f28cd5ca8793d`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012cb57f0bf53bcab2335cbcbef8bdd51d4233735a1eee1c73b5627a78f12679`  
		Last Modified: Fri, 12 May 2017 15:07:01 GMT  
		Size: 140.9 MB (140933078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7u121`

```console
$ docker pull openjdk@sha256:2c29d7755a18c868fa8023c3d8f81bc8a1b446606f990332fc14afe005cb3e83
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u121` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256615208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45207c0100965b4c29b5372a8812dd9e95bbd50b44eaa19df11484bbb5bcb7b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:26 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:56:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:56:29 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:56:29 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:56:30 GMT
ENV JAVA_VERSION=7u121
# Wed, 10 May 2017 13:56:31 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 10 May 2017 13:57:36 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76c91400b73290264b745c82f1be6e6f172b58f7d316219d3e2799377e5c9c0`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4457313886a547bbd4b4724c03f7b72e4221ddc4b397bda49f28cd5ca8793d`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012cb57f0bf53bcab2335cbcbef8bdd51d4233735a1eee1c73b5627a78f12679`  
		Last Modified: Fri, 12 May 2017 15:07:01 GMT  
		Size: 140.9 MB (140933078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7-jdk`

```console
$ docker pull openjdk@sha256:2c29d7755a18c868fa8023c3d8f81bc8a1b446606f990332fc14afe005cb3e83
```

-	Platforms:
	-	linux; amd64

### `openjdk:7-jdk` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256615208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45207c0100965b4c29b5372a8812dd9e95bbd50b44eaa19df11484bbb5bcb7b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:26 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:56:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:56:29 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:56:29 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:56:30 GMT
ENV JAVA_VERSION=7u121
# Wed, 10 May 2017 13:56:31 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 10 May 2017 13:57:36 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76c91400b73290264b745c82f1be6e6f172b58f7d316219d3e2799377e5c9c0`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4457313886a547bbd4b4724c03f7b72e4221ddc4b397bda49f28cd5ca8793d`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012cb57f0bf53bcab2335cbcbef8bdd51d4233735a1eee1c73b5627a78f12679`  
		Last Modified: Fri, 12 May 2017 15:07:01 GMT  
		Size: 140.9 MB (140933078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7`

```console
$ docker pull openjdk@sha256:2c29d7755a18c868fa8023c3d8f81bc8a1b446606f990332fc14afe005cb3e83
```

-	Platforms:
	-	linux; amd64

### `openjdk:7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256615208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45207c0100965b4c29b5372a8812dd9e95bbd50b44eaa19df11484bbb5bcb7b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:26 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:56:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:56:29 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:56:29 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:56:30 GMT
ENV JAVA_VERSION=7u121
# Wed, 10 May 2017 13:56:31 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 10 May 2017 13:57:36 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76c91400b73290264b745c82f1be6e6f172b58f7d316219d3e2799377e5c9c0`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4457313886a547bbd4b4724c03f7b72e4221ddc4b397bda49f28cd5ca8793d`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012cb57f0bf53bcab2335cbcbef8bdd51d4233735a1eee1c73b5627a78f12679`  
		Last Modified: Fri, 12 May 2017 15:07:01 GMT  
		Size: 140.9 MB (140933078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7u121-jdk-alpine`

```console
$ docker pull openjdk@sha256:bfa3cb33f1e7ef72d4568d3e9e5d303e536dcbeef1f668dc9229f3a9710daeda
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u121-jdk-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.6 MB (78623107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40d8f6a69c0a903beb9ea26375b1ab021558019029bb6aeb227cbfdc6d9dd2ae`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:45:43 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 21:45:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 21:45:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 10 May 2017 21:45:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 10 May 2017 21:45:47 GMT
ENV JAVA_VERSION=7u121
# Wed, 10 May 2017 21:45:48 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Wed, 10 May 2017 21:45:55 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef60c9fac754d4f3ad417367907ef7e198902936bad7e24749f08d31ad051ea`  
		Last Modified: Fri, 12 May 2017 15:10:27 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d10ab02e0419619a869a1f649d3eb6efbc4fb91b214709cb2e27af96a50f589a`  
		Last Modified: Fri, 12 May 2017 15:10:38 GMT  
		Size: 76.2 MB (76239840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7u121-alpine`

```console
$ docker pull openjdk@sha256:bfa3cb33f1e7ef72d4568d3e9e5d303e536dcbeef1f668dc9229f3a9710daeda
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u121-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.6 MB (78623107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40d8f6a69c0a903beb9ea26375b1ab021558019029bb6aeb227cbfdc6d9dd2ae`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:45:43 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 21:45:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 21:45:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 10 May 2017 21:45:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 10 May 2017 21:45:47 GMT
ENV JAVA_VERSION=7u121
# Wed, 10 May 2017 21:45:48 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Wed, 10 May 2017 21:45:55 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef60c9fac754d4f3ad417367907ef7e198902936bad7e24749f08d31ad051ea`  
		Last Modified: Fri, 12 May 2017 15:10:27 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d10ab02e0419619a869a1f649d3eb6efbc4fb91b214709cb2e27af96a50f589a`  
		Last Modified: Fri, 12 May 2017 15:10:38 GMT  
		Size: 76.2 MB (76239840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7-jdk-alpine`

```console
$ docker pull openjdk@sha256:bfa3cb33f1e7ef72d4568d3e9e5d303e536dcbeef1f668dc9229f3a9710daeda
```

-	Platforms:
	-	linux; amd64

### `openjdk:7-jdk-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.6 MB (78623107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40d8f6a69c0a903beb9ea26375b1ab021558019029bb6aeb227cbfdc6d9dd2ae`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:45:43 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 21:45:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 21:45:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 10 May 2017 21:45:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 10 May 2017 21:45:47 GMT
ENV JAVA_VERSION=7u121
# Wed, 10 May 2017 21:45:48 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Wed, 10 May 2017 21:45:55 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef60c9fac754d4f3ad417367907ef7e198902936bad7e24749f08d31ad051ea`  
		Last Modified: Fri, 12 May 2017 15:10:27 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d10ab02e0419619a869a1f649d3eb6efbc4fb91b214709cb2e27af96a50f589a`  
		Last Modified: Fri, 12 May 2017 15:10:38 GMT  
		Size: 76.2 MB (76239840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7-alpine`

```console
$ docker pull openjdk@sha256:bfa3cb33f1e7ef72d4568d3e9e5d303e536dcbeef1f668dc9229f3a9710daeda
```

-	Platforms:
	-	linux; amd64

### `openjdk:7-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.6 MB (78623107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40d8f6a69c0a903beb9ea26375b1ab021558019029bb6aeb227cbfdc6d9dd2ae`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:45:43 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 21:45:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 21:45:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 10 May 2017 21:45:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 10 May 2017 21:45:47 GMT
ENV JAVA_VERSION=7u121
# Wed, 10 May 2017 21:45:48 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Wed, 10 May 2017 21:45:55 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef60c9fac754d4f3ad417367907ef7e198902936bad7e24749f08d31ad051ea`  
		Last Modified: Fri, 12 May 2017 15:10:27 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d10ab02e0419619a869a1f649d3eb6efbc4fb91b214709cb2e27af96a50f589a`  
		Last Modified: Fri, 12 May 2017 15:10:38 GMT  
		Size: 76.2 MB (76239840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7u121-jre`

```console
$ docker pull openjdk@sha256:8d64f0911e46b404f3a425db73960e56a29c8fdd2308cd0e2c6029fc0f9b5931
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u121-jre` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.8 MB (150835571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15a144ecef4e854bb90916910aeae01c189b42961e7d396b8aa42a2f8a021ede`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:06 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:58:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:58:09 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:58:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 13:58:10 GMT
ENV JAVA_VERSION=7u121
# Wed, 10 May 2017 13:58:11 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 10 May 2017 13:58:38 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755d65755eb4e174346d20a6f47ebdeca647a7c00bcc1416529d2fd6b9415863`  
		Last Modified: Fri, 12 May 2017 15:08:12 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d833cb3025bee5bbd799bfd98cf006d30f9cdb962733daf16ab7b8e7eb1a3d60`  
		Last Modified: Fri, 12 May 2017 15:08:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68279c23e465034b3ebddff46656bb614d897f2c7e06878aace9aedc3cbac9b8`  
		Last Modified: Fri, 12 May 2017 15:09:13 GMT  
		Size: 78.4 MB (78410252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7-jre`

```console
$ docker pull openjdk@sha256:8d64f0911e46b404f3a425db73960e56a29c8fdd2308cd0e2c6029fc0f9b5931
```

-	Platforms:
	-	linux; amd64

### `openjdk:7-jre` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.8 MB (150835571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15a144ecef4e854bb90916910aeae01c189b42961e7d396b8aa42a2f8a021ede`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:06 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:58:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:58:09 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:58:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 13:58:10 GMT
ENV JAVA_VERSION=7u121
# Wed, 10 May 2017 13:58:11 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 10 May 2017 13:58:38 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755d65755eb4e174346d20a6f47ebdeca647a7c00bcc1416529d2fd6b9415863`  
		Last Modified: Fri, 12 May 2017 15:08:12 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d833cb3025bee5bbd799bfd98cf006d30f9cdb962733daf16ab7b8e7eb1a3d60`  
		Last Modified: Fri, 12 May 2017 15:08:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68279c23e465034b3ebddff46656bb614d897f2c7e06878aace9aedc3cbac9b8`  
		Last Modified: Fri, 12 May 2017 15:09:13 GMT  
		Size: 78.4 MB (78410252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7u121-jre-alpine`

```console
$ docker pull openjdk@sha256:51cdac3487dd59da0949fbece28672b0977aedf489df35590cac127ad469f53b
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u121-jre-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.4 MB (62362446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:947a07f4e05cfad083bf06331939b9c1d5aae3fe07c5fde53b19a6e3376b16c6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:45:43 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 21:45:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 21:46:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Wed, 10 May 2017 21:46:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 10 May 2017 21:46:17 GMT
ENV JAVA_VERSION=7u121
# Wed, 10 May 2017 21:46:18 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Wed, 10 May 2017 21:46:25 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef60c9fac754d4f3ad417367907ef7e198902936bad7e24749f08d31ad051ea`  
		Last Modified: Fri, 12 May 2017 15:10:27 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:615b0764d7c272b82846ff149be57d6e35ab9d1f3d990e919111c8749d8ab474`  
		Last Modified: Fri, 12 May 2017 15:11:58 GMT  
		Size: 60.0 MB (59979179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7-jre-alpine`

```console
$ docker pull openjdk@sha256:51cdac3487dd59da0949fbece28672b0977aedf489df35590cac127ad469f53b
```

-	Platforms:
	-	linux; amd64

### `openjdk:7-jre-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.4 MB (62362446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:947a07f4e05cfad083bf06331939b9c1d5aae3fe07c5fde53b19a6e3376b16c6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:45:43 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 21:45:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 21:46:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Wed, 10 May 2017 21:46:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 10 May 2017 21:46:17 GMT
ENV JAVA_VERSION=7u121
# Wed, 10 May 2017 21:46:18 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Wed, 10 May 2017 21:46:25 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef60c9fac754d4f3ad417367907ef7e198902936bad7e24749f08d31ad051ea`  
		Last Modified: Fri, 12 May 2017 15:10:27 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:615b0764d7c272b82846ff149be57d6e35ab9d1f3d990e919111c8749d8ab474`  
		Last Modified: Fri, 12 May 2017 15:11:58 GMT  
		Size: 60.0 MB (59979179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8u121-jdk`

```console
$ docker pull openjdk@sha256:1a7d24acca2020fe81f5864ee8e078ee3d3e738c04b717c99890888923d83e9e
```

-	Platforms:
	-	linux; amd64

### `openjdk:8u121-jdk` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.9 MB (247858993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9766c638ae8ed974b52a95e73b0fb777d41e8dbdcd13661351b36e5f4c5e7189`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 13:59:04 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 13:59:05 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:00:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:00:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e103826bb9283f07bab12bf50e481eb402879019c1f0174152dec7af9c4cd4`  
		Last Modified: Fri, 12 May 2017 15:13:34 GMT  
		Size: 131.9 MB (131886999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f86e3b23d2747541173fddbcbcb1046ef432b31bcd32a238f6ccf9bf13fee5`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 289.6 KB (289649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8u121`

```console
$ docker pull openjdk@sha256:1a7d24acca2020fe81f5864ee8e078ee3d3e738c04b717c99890888923d83e9e
```

-	Platforms:
	-	linux; amd64

### `openjdk:8u121` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.9 MB (247858993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9766c638ae8ed974b52a95e73b0fb777d41e8dbdcd13661351b36e5f4c5e7189`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 13:59:04 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 13:59:05 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:00:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:00:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e103826bb9283f07bab12bf50e481eb402879019c1f0174152dec7af9c4cd4`  
		Last Modified: Fri, 12 May 2017 15:13:34 GMT  
		Size: 131.9 MB (131886999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f86e3b23d2747541173fddbcbcb1046ef432b31bcd32a238f6ccf9bf13fee5`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 289.6 KB (289649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8-jdk`

```console
$ docker pull openjdk@sha256:1a7d24acca2020fe81f5864ee8e078ee3d3e738c04b717c99890888923d83e9e
```

-	Platforms:
	-	linux; amd64

### `openjdk:8-jdk` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.9 MB (247858993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9766c638ae8ed974b52a95e73b0fb777d41e8dbdcd13661351b36e5f4c5e7189`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 13:59:04 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 13:59:05 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:00:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:00:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e103826bb9283f07bab12bf50e481eb402879019c1f0174152dec7af9c4cd4`  
		Last Modified: Fri, 12 May 2017 15:13:34 GMT  
		Size: 131.9 MB (131886999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f86e3b23d2747541173fddbcbcb1046ef432b31bcd32a238f6ccf9bf13fee5`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 289.6 KB (289649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8`

```console
$ docker pull openjdk@sha256:1a7d24acca2020fe81f5864ee8e078ee3d3e738c04b717c99890888923d83e9e
```

-	Platforms:
	-	linux; amd64

### `openjdk:8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.9 MB (247858993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9766c638ae8ed974b52a95e73b0fb777d41e8dbdcd13661351b36e5f4c5e7189`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 13:59:04 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 13:59:05 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:00:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:00:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e103826bb9283f07bab12bf50e481eb402879019c1f0174152dec7af9c4cd4`  
		Last Modified: Fri, 12 May 2017 15:13:34 GMT  
		Size: 131.9 MB (131886999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f86e3b23d2747541173fddbcbcb1046ef432b31bcd32a238f6ccf9bf13fee5`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 289.6 KB (289649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:jdk`

```console
$ docker pull openjdk@sha256:1a7d24acca2020fe81f5864ee8e078ee3d3e738c04b717c99890888923d83e9e
```

-	Platforms:
	-	linux; amd64

### `openjdk:jdk` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.9 MB (247858993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9766c638ae8ed974b52a95e73b0fb777d41e8dbdcd13661351b36e5f4c5e7189`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 13:59:04 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 13:59:05 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:00:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:00:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e103826bb9283f07bab12bf50e481eb402879019c1f0174152dec7af9c4cd4`  
		Last Modified: Fri, 12 May 2017 15:13:34 GMT  
		Size: 131.9 MB (131886999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f86e3b23d2747541173fddbcbcb1046ef432b31bcd32a238f6ccf9bf13fee5`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 289.6 KB (289649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:latest`

```console
$ docker pull openjdk@sha256:1a7d24acca2020fe81f5864ee8e078ee3d3e738c04b717c99890888923d83e9e
```

-	Platforms:
	-	linux; amd64

### `openjdk:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.9 MB (247858993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9766c638ae8ed974b52a95e73b0fb777d41e8dbdcd13661351b36e5f4c5e7189`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 13:59:04 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 13:59:05 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:00:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:00:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e103826bb9283f07bab12bf50e481eb402879019c1f0174152dec7af9c4cd4`  
		Last Modified: Fri, 12 May 2017 15:13:34 GMT  
		Size: 131.9 MB (131886999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f86e3b23d2747541173fddbcbcb1046ef432b31bcd32a238f6ccf9bf13fee5`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 289.6 KB (289649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8u121-jdk-alpine`

```console
$ docker pull openjdk@sha256:020e0b5248b1e4963ea1ce9b1248f153d671c8c95b6ff3c3857d0c409c5b5c65
```

-	Platforms:
	-	linux; amd64

### `openjdk:8u121-jdk-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.0 MB (71972285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630b87931295fca3222e62f9dd292527d5266de0489dc22f28a16ff77d3a9850`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8u121-alpine`

```console
$ docker pull openjdk@sha256:020e0b5248b1e4963ea1ce9b1248f153d671c8c95b6ff3c3857d0c409c5b5c65
```

-	Platforms:
	-	linux; amd64

### `openjdk:8u121-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.0 MB (71972285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630b87931295fca3222e62f9dd292527d5266de0489dc22f28a16ff77d3a9850`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8-jdk-alpine`

```console
$ docker pull openjdk@sha256:020e0b5248b1e4963ea1ce9b1248f153d671c8c95b6ff3c3857d0c409c5b5c65
```

-	Platforms:
	-	linux; amd64

### `openjdk:8-jdk-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.0 MB (71972285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630b87931295fca3222e62f9dd292527d5266de0489dc22f28a16ff77d3a9850`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8-alpine`

```console
$ docker pull openjdk@sha256:020e0b5248b1e4963ea1ce9b1248f153d671c8c95b6ff3c3857d0c409c5b5c65
```

-	Platforms:
	-	linux; amd64

### `openjdk:8-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.0 MB (71972285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630b87931295fca3222e62f9dd292527d5266de0489dc22f28a16ff77d3a9850`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:jdk-alpine`

```console
$ docker pull openjdk@sha256:020e0b5248b1e4963ea1ce9b1248f153d671c8c95b6ff3c3857d0c409c5b5c65
```

-	Platforms:
	-	linux; amd64

### `openjdk:jdk-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.0 MB (71972285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630b87931295fca3222e62f9dd292527d5266de0489dc22f28a16ff77d3a9850`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:alpine`

```console
$ docker pull openjdk@sha256:020e0b5248b1e4963ea1ce9b1248f153d671c8c95b6ff3c3857d0c409c5b5c65
```

-	Platforms:
	-	linux; amd64

### `openjdk:alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.0 MB (71972285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630b87931295fca3222e62f9dd292527d5266de0489dc22f28a16ff77d3a9850`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8u131-jdk-windowsservercore`

**does not exist** (yet?)

## `openjdk:8u131-windowsservercore`

**does not exist** (yet?)

## `openjdk:8-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:a8dc28cfa77bdca59fc2792f07094dd5c341061a46bbe2d55c9f666fb18cd37d
```

-	Platforms:
	-	windows; amd64

### `openjdk:8-jdk-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5332544987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42dfd45600f1e5de502ef439e7d37551b67ae7284d4399ab6fa9acb93a88e878`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 31 Mar 2017 17:08:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 31 Mar 2017 17:08:57 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 31 Mar 2017 17:09:20 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 31 Mar 2017 17:09:25 GMT
ENV JAVA_VERSION=8u121
# Fri, 31 Mar 2017 17:09:28 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.121-2
# Fri, 31 Mar 2017 17:09:33 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.121-2.b13.ojdkbuild.windows.x86_64.zip
# Fri, 31 Mar 2017 17:09:37 GMT
ENV JAVA_OJDKBUILD_SHA256=99a842b88b42c049ba4ffc3b13a9b98fbdad818703750e319ae59aa717e95ad3
# Fri, 31 Mar 2017 17:10:43 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:284a70814970c5bbcfe1726dc8a95a35ec2036f57bc7acaa040ee01b19fd4844`  
		Last Modified: Fri, 31 Mar 2017 17:12:34 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d699e72d5ad1b00a1e6775521562de4723f9fc69b219e7d25974d1f0a4497d0`  
		Last Modified: Fri, 31 Mar 2017 17:12:33 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:953a5f4f078369083922ea5689720df2f0cfcd9451d0d650aa2598dbc23094c8`  
		Last Modified: Fri, 31 Mar 2017 17:12:36 GMT  
		Size: 4.9 MB (4897710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f15c87ba88a9e0748b59edea17174143298a158fc8f18c379a85d5d577b76d`  
		Last Modified: Fri, 31 Mar 2017 17:12:25 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fe9ad067d1dc8e1c68718bfb7b5f8cd6257a558facf975e70fb4e3d65a66fb`  
		Last Modified: Fri, 31 Mar 2017 17:12:24 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa064bcc1e15e004d59d49c2043f95c68036cf7deeb70c1132f9d577ca61a093`  
		Last Modified: Fri, 31 Mar 2017 17:12:25 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e4233a0b9cf64302140b15ef1eddaafbd77c22f83388cf78bf075b096eb228`  
		Last Modified: Fri, 31 Mar 2017 17:12:24 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8e9269ff0326c89c2b252c286d92b7081281a396a4d3958e11ddb20a14f504`  
		Last Modified: Fri, 31 Mar 2017 17:12:39 GMT  
		Size: 110.4 MB (110386242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8-windowsservercore`

```console
$ docker pull openjdk@sha256:a8dc28cfa77bdca59fc2792f07094dd5c341061a46bbe2d55c9f666fb18cd37d
```

-	Platforms:
	-	windows; amd64

### `openjdk:8-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5332544987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42dfd45600f1e5de502ef439e7d37551b67ae7284d4399ab6fa9acb93a88e878`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 31 Mar 2017 17:08:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 31 Mar 2017 17:08:57 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 31 Mar 2017 17:09:20 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 31 Mar 2017 17:09:25 GMT
ENV JAVA_VERSION=8u121
# Fri, 31 Mar 2017 17:09:28 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.121-2
# Fri, 31 Mar 2017 17:09:33 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.121-2.b13.ojdkbuild.windows.x86_64.zip
# Fri, 31 Mar 2017 17:09:37 GMT
ENV JAVA_OJDKBUILD_SHA256=99a842b88b42c049ba4ffc3b13a9b98fbdad818703750e319ae59aa717e95ad3
# Fri, 31 Mar 2017 17:10:43 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:284a70814970c5bbcfe1726dc8a95a35ec2036f57bc7acaa040ee01b19fd4844`  
		Last Modified: Fri, 31 Mar 2017 17:12:34 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d699e72d5ad1b00a1e6775521562de4723f9fc69b219e7d25974d1f0a4497d0`  
		Last Modified: Fri, 31 Mar 2017 17:12:33 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:953a5f4f078369083922ea5689720df2f0cfcd9451d0d650aa2598dbc23094c8`  
		Last Modified: Fri, 31 Mar 2017 17:12:36 GMT  
		Size: 4.9 MB (4897710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f15c87ba88a9e0748b59edea17174143298a158fc8f18c379a85d5d577b76d`  
		Last Modified: Fri, 31 Mar 2017 17:12:25 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fe9ad067d1dc8e1c68718bfb7b5f8cd6257a558facf975e70fb4e3d65a66fb`  
		Last Modified: Fri, 31 Mar 2017 17:12:24 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa064bcc1e15e004d59d49c2043f95c68036cf7deeb70c1132f9d577ca61a093`  
		Last Modified: Fri, 31 Mar 2017 17:12:25 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e4233a0b9cf64302140b15ef1eddaafbd77c22f83388cf78bf075b096eb228`  
		Last Modified: Fri, 31 Mar 2017 17:12:24 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8e9269ff0326c89c2b252c286d92b7081281a396a4d3958e11ddb20a14f504`  
		Last Modified: Fri, 31 Mar 2017 17:12:39 GMT  
		Size: 110.4 MB (110386242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:a8dc28cfa77bdca59fc2792f07094dd5c341061a46bbe2d55c9f666fb18cd37d
```

-	Platforms:
	-	windows; amd64

### `openjdk:jdk-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5332544987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42dfd45600f1e5de502ef439e7d37551b67ae7284d4399ab6fa9acb93a88e878`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 31 Mar 2017 17:08:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 31 Mar 2017 17:08:57 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 31 Mar 2017 17:09:20 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 31 Mar 2017 17:09:25 GMT
ENV JAVA_VERSION=8u121
# Fri, 31 Mar 2017 17:09:28 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.121-2
# Fri, 31 Mar 2017 17:09:33 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.121-2.b13.ojdkbuild.windows.x86_64.zip
# Fri, 31 Mar 2017 17:09:37 GMT
ENV JAVA_OJDKBUILD_SHA256=99a842b88b42c049ba4ffc3b13a9b98fbdad818703750e319ae59aa717e95ad3
# Fri, 31 Mar 2017 17:10:43 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:284a70814970c5bbcfe1726dc8a95a35ec2036f57bc7acaa040ee01b19fd4844`  
		Last Modified: Fri, 31 Mar 2017 17:12:34 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d699e72d5ad1b00a1e6775521562de4723f9fc69b219e7d25974d1f0a4497d0`  
		Last Modified: Fri, 31 Mar 2017 17:12:33 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:953a5f4f078369083922ea5689720df2f0cfcd9451d0d650aa2598dbc23094c8`  
		Last Modified: Fri, 31 Mar 2017 17:12:36 GMT  
		Size: 4.9 MB (4897710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f15c87ba88a9e0748b59edea17174143298a158fc8f18c379a85d5d577b76d`  
		Last Modified: Fri, 31 Mar 2017 17:12:25 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fe9ad067d1dc8e1c68718bfb7b5f8cd6257a558facf975e70fb4e3d65a66fb`  
		Last Modified: Fri, 31 Mar 2017 17:12:24 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa064bcc1e15e004d59d49c2043f95c68036cf7deeb70c1132f9d577ca61a093`  
		Last Modified: Fri, 31 Mar 2017 17:12:25 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e4233a0b9cf64302140b15ef1eddaafbd77c22f83388cf78bf075b096eb228`  
		Last Modified: Fri, 31 Mar 2017 17:12:24 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8e9269ff0326c89c2b252c286d92b7081281a396a4d3958e11ddb20a14f504`  
		Last Modified: Fri, 31 Mar 2017 17:12:39 GMT  
		Size: 110.4 MB (110386242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:windowsservercore`

```console
$ docker pull openjdk@sha256:a8dc28cfa77bdca59fc2792f07094dd5c341061a46bbe2d55c9f666fb18cd37d
```

-	Platforms:
	-	windows; amd64

### `openjdk:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5332544987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42dfd45600f1e5de502ef439e7d37551b67ae7284d4399ab6fa9acb93a88e878`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 31 Mar 2017 17:08:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 31 Mar 2017 17:08:57 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 31 Mar 2017 17:09:20 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 31 Mar 2017 17:09:25 GMT
ENV JAVA_VERSION=8u121
# Fri, 31 Mar 2017 17:09:28 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.121-2
# Fri, 31 Mar 2017 17:09:33 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.121-2.b13.ojdkbuild.windows.x86_64.zip
# Fri, 31 Mar 2017 17:09:37 GMT
ENV JAVA_OJDKBUILD_SHA256=99a842b88b42c049ba4ffc3b13a9b98fbdad818703750e319ae59aa717e95ad3
# Fri, 31 Mar 2017 17:10:43 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:503d87f3196a164f17f7b7c68b76271330e21a7e4fbefd1a578b327ed102258e`  
		Size: 1.1 GB (1147267820 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:284a70814970c5bbcfe1726dc8a95a35ec2036f57bc7acaa040ee01b19fd4844`  
		Last Modified: Fri, 31 Mar 2017 17:12:34 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d699e72d5ad1b00a1e6775521562de4723f9fc69b219e7d25974d1f0a4497d0`  
		Last Modified: Fri, 31 Mar 2017 17:12:33 GMT  
		Size: 1.2 KB (1228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:953a5f4f078369083922ea5689720df2f0cfcd9451d0d650aa2598dbc23094c8`  
		Last Modified: Fri, 31 Mar 2017 17:12:36 GMT  
		Size: 4.9 MB (4897710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f15c87ba88a9e0748b59edea17174143298a158fc8f18c379a85d5d577b76d`  
		Last Modified: Fri, 31 Mar 2017 17:12:25 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fe9ad067d1dc8e1c68718bfb7b5f8cd6257a558facf975e70fb4e3d65a66fb`  
		Last Modified: Fri, 31 Mar 2017 17:12:24 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa064bcc1e15e004d59d49c2043f95c68036cf7deeb70c1132f9d577ca61a093`  
		Last Modified: Fri, 31 Mar 2017 17:12:25 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e4233a0b9cf64302140b15ef1eddaafbd77c22f83388cf78bf075b096eb228`  
		Last Modified: Fri, 31 Mar 2017 17:12:24 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8e9269ff0326c89c2b252c286d92b7081281a396a4d3958e11ddb20a14f504`  
		Last Modified: Fri, 31 Mar 2017 17:12:39 GMT  
		Size: 110.4 MB (110386242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8u131-jdk-nanoserver`

**does not exist** (yet?)

## `openjdk:8u131-nanoserver`

**does not exist** (yet?)

## `openjdk:8-jdk-nanoserver`

```console
$ docker pull openjdk@sha256:07c1c750230f29c945707303f7663e1ff575e14b64d341f493b778b9941be66c
```

-	Platforms:
	-	windows; amd64

### `openjdk:8-jdk-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **475.1 MB (475061595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51814fb6066ab3c6462a59b939d9589a3db8aef889dbbedfe34acd94640fe038`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 31 Mar 2017 17:10:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 31 Mar 2017 17:10:50 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 31 Mar 2017 17:11:14 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 31 Mar 2017 17:11:16 GMT
ENV JAVA_VERSION=8u121
# Fri, 31 Mar 2017 17:11:18 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.121-2
# Fri, 31 Mar 2017 17:11:21 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.121-2.b13.ojdkbuild.windows.x86_64.zip
# Fri, 31 Mar 2017 17:11:23 GMT
ENV JAVA_OJDKBUILD_SHA256=99a842b88b42c049ba4ffc3b13a9b98fbdad818703750e319ae59aa717e95ad3
# Fri, 31 Mar 2017 17:12:13 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58f68fa0ceda734a980c12dedf782342f892e218bba3c74ded58bfabed652ba1`  
		Size: 114.9 MB (114925341 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a24c81b5c40ada3f1e74f84115ccd76e9f1c926ee72071990f5ad42eb50516ce`  
		Last Modified: Fri, 31 Mar 2017 17:13:10 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7a53fe35df4ff6ae268c7d17ea9ca3b62e39c705481947dec4f0377073ed0c`  
		Last Modified: Fri, 31 Mar 2017 17:13:09 GMT  
		Size: 962.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b563cbb4998bd6adfac6e1b3e8c11e8e53ea22dcc1a2ad78fb5620fdf2a5b66`  
		Last Modified: Fri, 31 Mar 2017 17:13:11 GMT  
		Size: 870.5 KB (870478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e99e243ecf4c5a80cb3d0dac221d67021ac2147c42ef9e39debcf22a4bdfddc`  
		Last Modified: Fri, 31 Mar 2017 17:13:01 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f8334c75bd29235ba7387369e62c45f8443d4291e68e44e72eebd03de1fe20`  
		Last Modified: Fri, 31 Mar 2017 17:13:01 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0a2749998f9a7e697e0fcfe86147270e8730ab5417159c84c474c4ba1c2e13`  
		Last Modified: Fri, 31 Mar 2017 17:13:01 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211c8aaf2d95bcd00af2c47c3d44a2e9f3a5f6b0c2aa95dc1844693e88268e98`  
		Last Modified: Fri, 31 Mar 2017 17:13:01 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e392b46f814e7024484e961d9c1dbd20bb49b604f215c916b068f83fd9e5b0`  
		Last Modified: Fri, 31 Mar 2017 17:13:21 GMT  
		Size: 106.6 MB (106569032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8-nanoserver`

```console
$ docker pull openjdk@sha256:07c1c750230f29c945707303f7663e1ff575e14b64d341f493b778b9941be66c
```

-	Platforms:
	-	windows; amd64

### `openjdk:8-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **475.1 MB (475061595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51814fb6066ab3c6462a59b939d9589a3db8aef889dbbedfe34acd94640fe038`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 31 Mar 2017 17:10:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 31 Mar 2017 17:10:50 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 31 Mar 2017 17:11:14 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 31 Mar 2017 17:11:16 GMT
ENV JAVA_VERSION=8u121
# Fri, 31 Mar 2017 17:11:18 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.121-2
# Fri, 31 Mar 2017 17:11:21 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.121-2.b13.ojdkbuild.windows.x86_64.zip
# Fri, 31 Mar 2017 17:11:23 GMT
ENV JAVA_OJDKBUILD_SHA256=99a842b88b42c049ba4ffc3b13a9b98fbdad818703750e319ae59aa717e95ad3
# Fri, 31 Mar 2017 17:12:13 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58f68fa0ceda734a980c12dedf782342f892e218bba3c74ded58bfabed652ba1`  
		Size: 114.9 MB (114925341 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a24c81b5c40ada3f1e74f84115ccd76e9f1c926ee72071990f5ad42eb50516ce`  
		Last Modified: Fri, 31 Mar 2017 17:13:10 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7a53fe35df4ff6ae268c7d17ea9ca3b62e39c705481947dec4f0377073ed0c`  
		Last Modified: Fri, 31 Mar 2017 17:13:09 GMT  
		Size: 962.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b563cbb4998bd6adfac6e1b3e8c11e8e53ea22dcc1a2ad78fb5620fdf2a5b66`  
		Last Modified: Fri, 31 Mar 2017 17:13:11 GMT  
		Size: 870.5 KB (870478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e99e243ecf4c5a80cb3d0dac221d67021ac2147c42ef9e39debcf22a4bdfddc`  
		Last Modified: Fri, 31 Mar 2017 17:13:01 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f8334c75bd29235ba7387369e62c45f8443d4291e68e44e72eebd03de1fe20`  
		Last Modified: Fri, 31 Mar 2017 17:13:01 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0a2749998f9a7e697e0fcfe86147270e8730ab5417159c84c474c4ba1c2e13`  
		Last Modified: Fri, 31 Mar 2017 17:13:01 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211c8aaf2d95bcd00af2c47c3d44a2e9f3a5f6b0c2aa95dc1844693e88268e98`  
		Last Modified: Fri, 31 Mar 2017 17:13:01 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e392b46f814e7024484e961d9c1dbd20bb49b604f215c916b068f83fd9e5b0`  
		Last Modified: Fri, 31 Mar 2017 17:13:21 GMT  
		Size: 106.6 MB (106569032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:jdk-nanoserver`

```console
$ docker pull openjdk@sha256:07c1c750230f29c945707303f7663e1ff575e14b64d341f493b778b9941be66c
```

-	Platforms:
	-	windows; amd64

### `openjdk:jdk-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **475.1 MB (475061595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51814fb6066ab3c6462a59b939d9589a3db8aef889dbbedfe34acd94640fe038`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 31 Mar 2017 17:10:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 31 Mar 2017 17:10:50 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 31 Mar 2017 17:11:14 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 31 Mar 2017 17:11:16 GMT
ENV JAVA_VERSION=8u121
# Fri, 31 Mar 2017 17:11:18 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.121-2
# Fri, 31 Mar 2017 17:11:21 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.121-2.b13.ojdkbuild.windows.x86_64.zip
# Fri, 31 Mar 2017 17:11:23 GMT
ENV JAVA_OJDKBUILD_SHA256=99a842b88b42c049ba4ffc3b13a9b98fbdad818703750e319ae59aa717e95ad3
# Fri, 31 Mar 2017 17:12:13 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58f68fa0ceda734a980c12dedf782342f892e218bba3c74ded58bfabed652ba1`  
		Size: 114.9 MB (114925341 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a24c81b5c40ada3f1e74f84115ccd76e9f1c926ee72071990f5ad42eb50516ce`  
		Last Modified: Fri, 31 Mar 2017 17:13:10 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7a53fe35df4ff6ae268c7d17ea9ca3b62e39c705481947dec4f0377073ed0c`  
		Last Modified: Fri, 31 Mar 2017 17:13:09 GMT  
		Size: 962.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b563cbb4998bd6adfac6e1b3e8c11e8e53ea22dcc1a2ad78fb5620fdf2a5b66`  
		Last Modified: Fri, 31 Mar 2017 17:13:11 GMT  
		Size: 870.5 KB (870478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e99e243ecf4c5a80cb3d0dac221d67021ac2147c42ef9e39debcf22a4bdfddc`  
		Last Modified: Fri, 31 Mar 2017 17:13:01 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f8334c75bd29235ba7387369e62c45f8443d4291e68e44e72eebd03de1fe20`  
		Last Modified: Fri, 31 Mar 2017 17:13:01 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0a2749998f9a7e697e0fcfe86147270e8730ab5417159c84c474c4ba1c2e13`  
		Last Modified: Fri, 31 Mar 2017 17:13:01 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211c8aaf2d95bcd00af2c47c3d44a2e9f3a5f6b0c2aa95dc1844693e88268e98`  
		Last Modified: Fri, 31 Mar 2017 17:13:01 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e392b46f814e7024484e961d9c1dbd20bb49b604f215c916b068f83fd9e5b0`  
		Last Modified: Fri, 31 Mar 2017 17:13:21 GMT  
		Size: 106.6 MB (106569032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:nanoserver`

```console
$ docker pull openjdk@sha256:07c1c750230f29c945707303f7663e1ff575e14b64d341f493b778b9941be66c
```

-	Platforms:
	-	windows; amd64

### `openjdk:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **475.1 MB (475061595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51814fb6066ab3c6462a59b939d9589a3db8aef889dbbedfe34acd94640fe038`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 31 Mar 2017 17:10:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 31 Mar 2017 17:10:50 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 31 Mar 2017 17:11:14 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 31 Mar 2017 17:11:16 GMT
ENV JAVA_VERSION=8u121
# Fri, 31 Mar 2017 17:11:18 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.121-2
# Fri, 31 Mar 2017 17:11:21 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.121-2.b13.ojdkbuild.windows.x86_64.zip
# Fri, 31 Mar 2017 17:11:23 GMT
ENV JAVA_OJDKBUILD_SHA256=99a842b88b42c049ba4ffc3b13a9b98fbdad818703750e319ae59aa717e95ad3
# Fri, 31 Mar 2017 17:12:13 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58f68fa0ceda734a980c12dedf782342f892e218bba3c74ded58bfabed652ba1`  
		Size: 114.9 MB (114925341 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a24c81b5c40ada3f1e74f84115ccd76e9f1c926ee72071990f5ad42eb50516ce`  
		Last Modified: Fri, 31 Mar 2017 17:13:10 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7a53fe35df4ff6ae268c7d17ea9ca3b62e39c705481947dec4f0377073ed0c`  
		Last Modified: Fri, 31 Mar 2017 17:13:09 GMT  
		Size: 962.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b563cbb4998bd6adfac6e1b3e8c11e8e53ea22dcc1a2ad78fb5620fdf2a5b66`  
		Last Modified: Fri, 31 Mar 2017 17:13:11 GMT  
		Size: 870.5 KB (870478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e99e243ecf4c5a80cb3d0dac221d67021ac2147c42ef9e39debcf22a4bdfddc`  
		Last Modified: Fri, 31 Mar 2017 17:13:01 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f8334c75bd29235ba7387369e62c45f8443d4291e68e44e72eebd03de1fe20`  
		Last Modified: Fri, 31 Mar 2017 17:13:01 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0a2749998f9a7e697e0fcfe86147270e8730ab5417159c84c474c4ba1c2e13`  
		Last Modified: Fri, 31 Mar 2017 17:13:01 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211c8aaf2d95bcd00af2c47c3d44a2e9f3a5f6b0c2aa95dc1844693e88268e98`  
		Last Modified: Fri, 31 Mar 2017 17:13:01 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e392b46f814e7024484e961d9c1dbd20bb49b604f215c916b068f83fd9e5b0`  
		Last Modified: Fri, 31 Mar 2017 17:13:21 GMT  
		Size: 106.6 MB (106569032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8u121-jre`

```console
$ docker pull openjdk@sha256:3373c879fee3674b33222a9054db4920f65049e9b84b5503c546f7851cce3c1e
```

-	Platforms:
	-	linux; amd64

### `openjdk:8u121-jre` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.8 MB (126773879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1091bf81d7205895da78b64dd412ca3a3265c69af3c2dc7e10a4a08f3838354d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8-jre`

```console
$ docker pull openjdk@sha256:3373c879fee3674b33222a9054db4920f65049e9b84b5503c546f7851cce3c1e
```

-	Platforms:
	-	linux; amd64

### `openjdk:8-jre` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.8 MB (126773879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1091bf81d7205895da78b64dd412ca3a3265c69af3c2dc7e10a4a08f3838354d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:jre`

```console
$ docker pull openjdk@sha256:3373c879fee3674b33222a9054db4920f65049e9b84b5503c546f7851cce3c1e
```

-	Platforms:
	-	linux; amd64

### `openjdk:jre` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.8 MB (126773879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1091bf81d7205895da78b64dd412ca3a3265c69af3c2dc7e10a4a08f3838354d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8u121-jre-alpine`

```console
$ docker pull openjdk@sha256:378c85d41e24db446cb140b07807f136c9e56e0d1f24210b9615d241fdee819c
```

-	Platforms:
	-	linux; amd64

### `openjdk:8u121-jre-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56209149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:319698b3b71a29b8c0458846e2c4f2b0a24ada659d8e48b691d3f6056e6e4ce4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8-jre-alpine`

```console
$ docker pull openjdk@sha256:378c85d41e24db446cb140b07807f136c9e56e0d1f24210b9615d241fdee819c
```

-	Platforms:
	-	linux; amd64

### `openjdk:8-jre-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56209149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:319698b3b71a29b8c0458846e2c4f2b0a24ada659d8e48b691d3f6056e6e4ce4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:jre-alpine`

```console
$ docker pull openjdk@sha256:378c85d41e24db446cb140b07807f136c9e56e0d1f24210b9615d241fdee819c
```

-	Platforms:
	-	linux; amd64

### `openjdk:jre-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56209149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:319698b3b71a29b8c0458846e2c4f2b0a24ada659d8e48b691d3f6056e6e4ce4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:9-b169-jdk`

**does not exist** (yet?)

## `openjdk:9-b169`

**does not exist** (yet?)

## `openjdk:9-jdk`

```console
$ docker pull openjdk@sha256:9676eb70a6e2db9e60ce7ad07ccd3b8e9593fd0e79bebfcf7a1f811ea7e5635d
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-jdk` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.3 MB (263327691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c2f266fee4f663d1638028d3ae802fd5a95c6e264968dc660bfc1ef5cde19a5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:32:23 GMT
ADD file:485c5e010aec72afb62c7fe5bc651d739dad42e9baf81e811e6b3f369c72a917 in / 
# Mon, 08 May 2017 23:32:23 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:57:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:58:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:01:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:01:36 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 10 May 2017 14:01:37 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:01:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:01:40 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:01:41 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 14:01:42 GMT
ENV JAVA_VERSION=9~b168
# Wed, 10 May 2017 14:01:42 GMT
ENV JAVA_DEBIAN_VERSION=9~b168-1
# Wed, 10 May 2017 14:02:09 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:705d0395ca7a3af6e4662abc693a18e13ffd882aaf93db55fc1a1b313b69cad8`  
		Last Modified: Mon, 08 May 2017 23:48:38 GMT  
		Size: 45.3 MB (45254594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95bfff6e637f7f460b136c6303bc8a9e3341d1821affa81f98ce0d8e2895d0a`  
		Last Modified: Tue, 09 May 2017 15:58:23 GMT  
		Size: 11.3 MB (11265380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:403c3d1db0ff620b98f8da5320fbc4e7557b3539d0c89fe984f5f234de90fd16`  
		Last Modified: Tue, 09 May 2017 15:59:04 GMT  
		Size: 50.9 MB (50947148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:576e6eaba21c7578ad992b4ff9f6eff4fd1ca8329b9a6c1e9720e2a524b248a0`  
		Last Modified: Fri, 12 May 2017 15:25:09 GMT  
		Size: 659.6 KB (659573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246f443a7ab8ddd8d3567f262c1c4803c4cf5ff9783b17741610868c8d8a0074`  
		Last Modified: Fri, 12 May 2017 15:25:07 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2c23f42b858c7463b45cdfa706ba72abae930789ebbe7a1b922a1a4edd6b4b`  
		Last Modified: Fri, 12 May 2017 15:25:06 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2182f7c7320ae2a988e779fffa1264e78dcf1449007063abdd14f92a64aecc`  
		Last Modified: Fri, 12 May 2017 15:25:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2810daa5c467de4c0920d8c8093f85c22928420748b0dc627dd1e5ed370c6474`  
		Last Modified: Fri, 12 May 2017 15:25:29 GMT  
		Size: 155.2 MB (155200413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:9`

```console
$ docker pull openjdk@sha256:9676eb70a6e2db9e60ce7ad07ccd3b8e9593fd0e79bebfcf7a1f811ea7e5635d
```

-	Platforms:
	-	linux; amd64

### `openjdk:9` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.3 MB (263327691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c2f266fee4f663d1638028d3ae802fd5a95c6e264968dc660bfc1ef5cde19a5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:32:23 GMT
ADD file:485c5e010aec72afb62c7fe5bc651d739dad42e9baf81e811e6b3f369c72a917 in / 
# Mon, 08 May 2017 23:32:23 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:57:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:58:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:01:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:01:36 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 10 May 2017 14:01:37 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:01:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:01:40 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:01:41 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 14:01:42 GMT
ENV JAVA_VERSION=9~b168
# Wed, 10 May 2017 14:01:42 GMT
ENV JAVA_DEBIAN_VERSION=9~b168-1
# Wed, 10 May 2017 14:02:09 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:705d0395ca7a3af6e4662abc693a18e13ffd882aaf93db55fc1a1b313b69cad8`  
		Last Modified: Mon, 08 May 2017 23:48:38 GMT  
		Size: 45.3 MB (45254594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95bfff6e637f7f460b136c6303bc8a9e3341d1821affa81f98ce0d8e2895d0a`  
		Last Modified: Tue, 09 May 2017 15:58:23 GMT  
		Size: 11.3 MB (11265380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:403c3d1db0ff620b98f8da5320fbc4e7557b3539d0c89fe984f5f234de90fd16`  
		Last Modified: Tue, 09 May 2017 15:59:04 GMT  
		Size: 50.9 MB (50947148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:576e6eaba21c7578ad992b4ff9f6eff4fd1ca8329b9a6c1e9720e2a524b248a0`  
		Last Modified: Fri, 12 May 2017 15:25:09 GMT  
		Size: 659.6 KB (659573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246f443a7ab8ddd8d3567f262c1c4803c4cf5ff9783b17741610868c8d8a0074`  
		Last Modified: Fri, 12 May 2017 15:25:07 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2c23f42b858c7463b45cdfa706ba72abae930789ebbe7a1b922a1a4edd6b4b`  
		Last Modified: Fri, 12 May 2017 15:25:06 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2182f7c7320ae2a988e779fffa1264e78dcf1449007063abdd14f92a64aecc`  
		Last Modified: Fri, 12 May 2017 15:25:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2810daa5c467de4c0920d8c8093f85c22928420748b0dc627dd1e5ed370c6474`  
		Last Modified: Fri, 12 May 2017 15:25:29 GMT  
		Size: 155.2 MB (155200413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:9-b169-jre`

**does not exist** (yet?)

## `openjdk:9-jre`

```console
$ docker pull openjdk@sha256:0d59dce3c530b6f7e53c283cfd920b8692cef2b2881a71badd6a1f7e93f73a5f
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-jre` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.9 MB (212882257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3ae415edef7e31103f2adaa80a3c197e3d6e81b78807deed87b9fc6d7dabc13`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:32:23 GMT
ADD file:485c5e010aec72afb62c7fe5bc651d739dad42e9baf81e811e6b3f369c72a917 in / 
# Mon, 08 May 2017 23:32:23 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:57:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:02:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:02:34 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 10 May 2017 14:02:35 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:02:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:02:38 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:02:39 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 14:02:39 GMT
ENV JAVA_VERSION=9~b168
# Wed, 10 May 2017 14:02:40 GMT
ENV JAVA_DEBIAN_VERSION=9~b168-1
# Wed, 10 May 2017 14:03:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:705d0395ca7a3af6e4662abc693a18e13ffd882aaf93db55fc1a1b313b69cad8`  
		Last Modified: Mon, 08 May 2017 23:48:38 GMT  
		Size: 45.3 MB (45254594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95bfff6e637f7f460b136c6303bc8a9e3341d1821affa81f98ce0d8e2895d0a`  
		Last Modified: Tue, 09 May 2017 15:58:23 GMT  
		Size: 11.3 MB (11265380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe13d87883c9e70d0b7bdf485b6dd6ce43dd5fce01ac4f9841b36057ebba18ce`  
		Last Modified: Fri, 12 May 2017 15:26:45 GMT  
		Size: 627.7 KB (627748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b61bf4f9b91abade4a3639c940c71e977a56c1790eb3f8f0d6e2ee9f8361468`  
		Last Modified: Fri, 12 May 2017 15:26:42 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301dec7b829e2fd43b5a9f0e79b21ddd0213ea5e1a45d66ac49230d2a893dc8b`  
		Last Modified: Fri, 12 May 2017 15:26:42 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0451b2a7a53ce5b3a7db6d36ce6f5653e383286c5eb44bd7a2721c1891b9675`  
		Last Modified: Fri, 12 May 2017 15:26:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a567a6ec003e38f49bf513e62f83cb0ec767b0000a2c68a67bff5f34a5743ae`  
		Last Modified: Fri, 12 May 2017 15:27:00 GMT  
		Size: 155.7 MB (155733950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
