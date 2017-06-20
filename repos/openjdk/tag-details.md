<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `openjdk`

-	[`openjdk:6b38-jdk`](#openjdk6b38-jdk)
-	[`openjdk:6b38`](#openjdk6b38)
-	[`openjdk:6-jdk`](#openjdk6-jdk)
-	[`openjdk:6`](#openjdk6)
-	[`openjdk:6b38-jre`](#openjdk6b38-jre)
-	[`openjdk:6-jre`](#openjdk6-jre)
-	[`openjdk:7u131-jdk`](#openjdk7u131-jdk)
-	[`openjdk:7u131`](#openjdk7u131)
-	[`openjdk:7-jdk`](#openjdk7-jdk)
-	[`openjdk:7`](#openjdk7)
-	[`openjdk:7u131-jdk-alpine`](#openjdk7u131-jdk-alpine)
-	[`openjdk:7u131-alpine`](#openjdk7u131-alpine)
-	[`openjdk:7-jdk-alpine`](#openjdk7-jdk-alpine)
-	[`openjdk:7-alpine`](#openjdk7-alpine)
-	[`openjdk:7u131-jre`](#openjdk7u131-jre)
-	[`openjdk:7-jre`](#openjdk7-jre)
-	[`openjdk:7u131-jre-alpine`](#openjdk7u131-jre-alpine)
-	[`openjdk:7-jre-alpine`](#openjdk7-jre-alpine)
-	[`openjdk:8u131-jdk`](#openjdk8u131-jdk)
-	[`openjdk:8u131`](#openjdk8u131)
-	[`openjdk:8-jdk`](#openjdk8-jdk)
-	[`openjdk:8`](#openjdk8)
-	[`openjdk:jdk`](#openjdkjdk)
-	[`openjdk:latest`](#openjdklatest)
-	[`openjdk:8u131-jdk-alpine`](#openjdk8u131-jdk-alpine)
-	[`openjdk:8u131-alpine`](#openjdk8u131-alpine)
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
-	[`openjdk:8u131-jre`](#openjdk8u131-jre)
-	[`openjdk:8-jre`](#openjdk8-jre)
-	[`openjdk:jre`](#openjdkjre)
-	[`openjdk:8u131-jre-alpine`](#openjdk8u131-jre-alpine)
-	[`openjdk:8-jre-alpine`](#openjdk8-jre-alpine)
-	[`openjdk:jre-alpine`](#openjdkjre-alpine)
-	[`openjdk:9-b170-jdk`](#openjdk9-b170-jdk)
-	[`openjdk:9-b170`](#openjdk9-b170)
-	[`openjdk:9-jdk`](#openjdk9-jdk)
-	[`openjdk:9`](#openjdk9)
-	[`openjdk:9-b170-jre`](#openjdk9-b170-jre)
-	[`openjdk:9-jre`](#openjdk9-jre)

## `openjdk:6b38-jdk`

```console
$ docker pull openjdk@sha256:2b5e5bea0a74c7203987170bc7ecacf0fd4d2de935ad6638539d4fc03a523022
```

-	Platforms:
	-	linux; amd64

### `openjdk:6b38-jdk` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189516136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66e43f7e54b052bacb30247041a6bdc75d1d0893b42d0d89ed23d43554f5a94a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:55:03 GMT
ADD file:a5a45130c6822d80986466e602b511ac799abed828e4374257fce47b771c0ce6 in / 
# Wed, 07 Jun 2017 17:55:04 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 20:03:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 20:03:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:50:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:50:40 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 16:50:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 16:50:43 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 16:50:44 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 16:50:44 GMT
ENV JAVA_VERSION=6b38
# Mon, 12 Jun 2017 16:50:45 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Mon, 12 Jun 2017 16:51:25 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:1498fd2556ea270ebbd3f95f3f48f6679ed3414bcd74e52ff946c64682378074`  
		Last Modified: Wed, 07 Jun 2017 18:16:00 GMT  
		Size: 38.1 MB (38105086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dd5db52f078fabd5bfc38197a904c009cd5fde1b237d5d3c8868eb30e34fb1`  
		Last Modified: Wed, 07 Jun 2017 20:15:36 GMT  
		Size: 6.9 MB (6948482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02720d78d8cf03e04692a6628b08128ec3123a78f31a369c2c1fdcb2fd32d11c`  
		Last Modified: Wed, 07 Jun 2017 20:16:16 GMT  
		Size: 37.9 MB (37937378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbbcedf48c0271c15f19b1bc3c410839d05e5ca1ffe1781d720a1d0d5a96c818`  
		Last Modified: Wed, 14 Jun 2017 17:44:13 GMT  
		Size: 414.4 KB (414421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43230cd6c80ad4fdb0d1937e8ed8d61738b54c13e75124c7233be5359cc81647`  
		Last Modified: Wed, 14 Jun 2017 17:44:13 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a256618ffaff1da825e3d09c2e4b939012466174be2c29854ebd4e7e51e7506`  
		Last Modified: Wed, 14 Jun 2017 17:44:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65ba17584a2dced9994eebe6115eb75a670e25e6f705645a37edb55b58b4def`  
		Last Modified: Wed, 14 Jun 2017 17:44:29 GMT  
		Size: 106.1 MB (106110398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:6b38`

```console
$ docker pull openjdk@sha256:2b5e5bea0a74c7203987170bc7ecacf0fd4d2de935ad6638539d4fc03a523022
```

-	Platforms:
	-	linux; amd64

### `openjdk:6b38` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189516136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66e43f7e54b052bacb30247041a6bdc75d1d0893b42d0d89ed23d43554f5a94a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:55:03 GMT
ADD file:a5a45130c6822d80986466e602b511ac799abed828e4374257fce47b771c0ce6 in / 
# Wed, 07 Jun 2017 17:55:04 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 20:03:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 20:03:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:50:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:50:40 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 16:50:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 16:50:43 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 16:50:44 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 16:50:44 GMT
ENV JAVA_VERSION=6b38
# Mon, 12 Jun 2017 16:50:45 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Mon, 12 Jun 2017 16:51:25 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:1498fd2556ea270ebbd3f95f3f48f6679ed3414bcd74e52ff946c64682378074`  
		Last Modified: Wed, 07 Jun 2017 18:16:00 GMT  
		Size: 38.1 MB (38105086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dd5db52f078fabd5bfc38197a904c009cd5fde1b237d5d3c8868eb30e34fb1`  
		Last Modified: Wed, 07 Jun 2017 20:15:36 GMT  
		Size: 6.9 MB (6948482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02720d78d8cf03e04692a6628b08128ec3123a78f31a369c2c1fdcb2fd32d11c`  
		Last Modified: Wed, 07 Jun 2017 20:16:16 GMT  
		Size: 37.9 MB (37937378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbbcedf48c0271c15f19b1bc3c410839d05e5ca1ffe1781d720a1d0d5a96c818`  
		Last Modified: Wed, 14 Jun 2017 17:44:13 GMT  
		Size: 414.4 KB (414421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43230cd6c80ad4fdb0d1937e8ed8d61738b54c13e75124c7233be5359cc81647`  
		Last Modified: Wed, 14 Jun 2017 17:44:13 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a256618ffaff1da825e3d09c2e4b939012466174be2c29854ebd4e7e51e7506`  
		Last Modified: Wed, 14 Jun 2017 17:44:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65ba17584a2dced9994eebe6115eb75a670e25e6f705645a37edb55b58b4def`  
		Last Modified: Wed, 14 Jun 2017 17:44:29 GMT  
		Size: 106.1 MB (106110398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:6-jdk`

```console
$ docker pull openjdk@sha256:2b5e5bea0a74c7203987170bc7ecacf0fd4d2de935ad6638539d4fc03a523022
```

-	Platforms:
	-	linux; amd64

### `openjdk:6-jdk` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189516136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66e43f7e54b052bacb30247041a6bdc75d1d0893b42d0d89ed23d43554f5a94a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:55:03 GMT
ADD file:a5a45130c6822d80986466e602b511ac799abed828e4374257fce47b771c0ce6 in / 
# Wed, 07 Jun 2017 17:55:04 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 20:03:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 20:03:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:50:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:50:40 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 16:50:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 16:50:43 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 16:50:44 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 16:50:44 GMT
ENV JAVA_VERSION=6b38
# Mon, 12 Jun 2017 16:50:45 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Mon, 12 Jun 2017 16:51:25 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:1498fd2556ea270ebbd3f95f3f48f6679ed3414bcd74e52ff946c64682378074`  
		Last Modified: Wed, 07 Jun 2017 18:16:00 GMT  
		Size: 38.1 MB (38105086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dd5db52f078fabd5bfc38197a904c009cd5fde1b237d5d3c8868eb30e34fb1`  
		Last Modified: Wed, 07 Jun 2017 20:15:36 GMT  
		Size: 6.9 MB (6948482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02720d78d8cf03e04692a6628b08128ec3123a78f31a369c2c1fdcb2fd32d11c`  
		Last Modified: Wed, 07 Jun 2017 20:16:16 GMT  
		Size: 37.9 MB (37937378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbbcedf48c0271c15f19b1bc3c410839d05e5ca1ffe1781d720a1d0d5a96c818`  
		Last Modified: Wed, 14 Jun 2017 17:44:13 GMT  
		Size: 414.4 KB (414421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43230cd6c80ad4fdb0d1937e8ed8d61738b54c13e75124c7233be5359cc81647`  
		Last Modified: Wed, 14 Jun 2017 17:44:13 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a256618ffaff1da825e3d09c2e4b939012466174be2c29854ebd4e7e51e7506`  
		Last Modified: Wed, 14 Jun 2017 17:44:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65ba17584a2dced9994eebe6115eb75a670e25e6f705645a37edb55b58b4def`  
		Last Modified: Wed, 14 Jun 2017 17:44:29 GMT  
		Size: 106.1 MB (106110398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:6`

```console
$ docker pull openjdk@sha256:2b5e5bea0a74c7203987170bc7ecacf0fd4d2de935ad6638539d4fc03a523022
```

-	Platforms:
	-	linux; amd64

### `openjdk:6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189516136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66e43f7e54b052bacb30247041a6bdc75d1d0893b42d0d89ed23d43554f5a94a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:55:03 GMT
ADD file:a5a45130c6822d80986466e602b511ac799abed828e4374257fce47b771c0ce6 in / 
# Wed, 07 Jun 2017 17:55:04 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 20:03:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 20:03:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:50:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:50:40 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 16:50:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 16:50:43 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 16:50:44 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 16:50:44 GMT
ENV JAVA_VERSION=6b38
# Mon, 12 Jun 2017 16:50:45 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Mon, 12 Jun 2017 16:51:25 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:1498fd2556ea270ebbd3f95f3f48f6679ed3414bcd74e52ff946c64682378074`  
		Last Modified: Wed, 07 Jun 2017 18:16:00 GMT  
		Size: 38.1 MB (38105086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dd5db52f078fabd5bfc38197a904c009cd5fde1b237d5d3c8868eb30e34fb1`  
		Last Modified: Wed, 07 Jun 2017 20:15:36 GMT  
		Size: 6.9 MB (6948482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02720d78d8cf03e04692a6628b08128ec3123a78f31a369c2c1fdcb2fd32d11c`  
		Last Modified: Wed, 07 Jun 2017 20:16:16 GMT  
		Size: 37.9 MB (37937378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbbcedf48c0271c15f19b1bc3c410839d05e5ca1ffe1781d720a1d0d5a96c818`  
		Last Modified: Wed, 14 Jun 2017 17:44:13 GMT  
		Size: 414.4 KB (414421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43230cd6c80ad4fdb0d1937e8ed8d61738b54c13e75124c7233be5359cc81647`  
		Last Modified: Wed, 14 Jun 2017 17:44:13 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a256618ffaff1da825e3d09c2e4b939012466174be2c29854ebd4e7e51e7506`  
		Last Modified: Wed, 14 Jun 2017 17:44:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65ba17584a2dced9994eebe6115eb75a670e25e6f705645a37edb55b58b4def`  
		Last Modified: Wed, 14 Jun 2017 17:44:29 GMT  
		Size: 106.1 MB (106110398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:6b38-jre`

```console
$ docker pull openjdk@sha256:b864d2f95720ebf6de94643cf93347e9032ab731266f556ebceb763be5d1a157
```

-	Platforms:
	-	linux; amd64

### `openjdk:6b38-jre` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.6 MB (98550733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96e1a91d3ddb924153ba025687166c096abc8b6969dc2f9880a5bbc8ab150ffe`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:55:03 GMT
ADD file:a5a45130c6822d80986466e602b511ac799abed828e4374257fce47b771c0ce6 in / 
# Wed, 07 Jun 2017 17:55:04 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 20:03:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:51:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:51:52 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 16:51:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 16:51:55 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 16:51:56 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 12 Jun 2017 16:51:57 GMT
ENV JAVA_VERSION=6b38
# Mon, 12 Jun 2017 16:51:57 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Mon, 12 Jun 2017 16:52:07 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:1498fd2556ea270ebbd3f95f3f48f6679ed3414bcd74e52ff946c64682378074`  
		Last Modified: Wed, 07 Jun 2017 18:16:00 GMT  
		Size: 38.1 MB (38105086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dd5db52f078fabd5bfc38197a904c009cd5fde1b237d5d3c8868eb30e34fb1`  
		Last Modified: Wed, 07 Jun 2017 20:15:36 GMT  
		Size: 6.9 MB (6948482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24913414cfd2db2274458103a6cc08764137de6032792cc8c1983b718b462cb`  
		Last Modified: Wed, 14 Jun 2017 17:46:39 GMT  
		Size: 360.7 KB (360689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7f0a1f6bcf79c353f9435a9f9308d4a53f1c6bf4a7c1df1a8d96f64daaa503`  
		Last Modified: Wed, 14 Jun 2017 17:46:40 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5231e6b679683d3e6f9effe05132681cd208861aece8debabc7a3e41269d6d7`  
		Last Modified: Wed, 14 Jun 2017 17:46:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c90fec99a0a8036ed0980cd768acf972cb9cf53a436af8ad9408c2d4049a58c`  
		Last Modified: Wed, 14 Jun 2017 17:46:48 GMT  
		Size: 53.1 MB (53136104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:6-jre`

```console
$ docker pull openjdk@sha256:b864d2f95720ebf6de94643cf93347e9032ab731266f556ebceb763be5d1a157
```

-	Platforms:
	-	linux; amd64

### `openjdk:6-jre` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.6 MB (98550733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96e1a91d3ddb924153ba025687166c096abc8b6969dc2f9880a5bbc8ab150ffe`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:55:03 GMT
ADD file:a5a45130c6822d80986466e602b511ac799abed828e4374257fce47b771c0ce6 in / 
# Wed, 07 Jun 2017 17:55:04 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 20:03:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:51:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:51:52 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 16:51:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 16:51:55 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 16:51:56 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 12 Jun 2017 16:51:57 GMT
ENV JAVA_VERSION=6b38
# Mon, 12 Jun 2017 16:51:57 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Mon, 12 Jun 2017 16:52:07 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:1498fd2556ea270ebbd3f95f3f48f6679ed3414bcd74e52ff946c64682378074`  
		Last Modified: Wed, 07 Jun 2017 18:16:00 GMT  
		Size: 38.1 MB (38105086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dd5db52f078fabd5bfc38197a904c009cd5fde1b237d5d3c8868eb30e34fb1`  
		Last Modified: Wed, 07 Jun 2017 20:15:36 GMT  
		Size: 6.9 MB (6948482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24913414cfd2db2274458103a6cc08764137de6032792cc8c1983b718b462cb`  
		Last Modified: Wed, 14 Jun 2017 17:46:39 GMT  
		Size: 360.7 KB (360689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7f0a1f6bcf79c353f9435a9f9308d4a53f1c6bf4a7c1df1a8d96f64daaa503`  
		Last Modified: Wed, 14 Jun 2017 17:46:40 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5231e6b679683d3e6f9effe05132681cd208861aece8debabc7a3e41269d6d7`  
		Last Modified: Wed, 14 Jun 2017 17:46:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c90fec99a0a8036ed0980cd768acf972cb9cf53a436af8ad9408c2d4049a58c`  
		Last Modified: Wed, 14 Jun 2017 17:46:48 GMT  
		Size: 53.1 MB (53136104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7u131-jdk`

```console
$ docker pull openjdk@sha256:d017c761fe83dfd3894d098ca7730e825e9433114dd2275f8c5633394bcdb1e8
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u131-jdk` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.6 MB (302580845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc41bbde1ce93f7b714376f9914679059f3e6b79bf95700174f4cbfc5dbfd724`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:52:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:52:39 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 16:52:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 16:52:42 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 16:52:43 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 16:52:44 GMT
ENV JAVA_VERSION=7u131
# Mon, 12 Jun 2017 16:52:44 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Mon, 12 Jun 2017 16:55:27 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38f9d5c3c0e3e4eabe6d4dac4bcc729caf847c172d0af75caf581b6c23120c`  
		Last Modified: Wed, 07 Jun 2017 20:07:12 GMT  
		Size: 43.2 MB (43225567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbb987bd399bf408a9d6454c5dfaed03e218ef890851ed956202c762e627212`  
		Last Modified: Tue, 13 Jun 2017 21:27:35 GMT  
		Size: 594.3 KB (594334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b583cbdc29006b13ef40e4052dba9a9e42ae156b77e77b1439d189448f04bf20`  
		Last Modified: Wed, 14 Jun 2017 11:25:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e9b5c3e4225ab47b81ced706c8b6bf429d1a09a1bbe2c03c73f7b8b02c65e9`  
		Last Modified: Wed, 14 Jun 2017 11:25:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f676d1fe1c43cd808f45fe5517d8100ca3766ed54a371350fb0c6053db59a57c`  
		Last Modified: Wed, 14 Jun 2017 11:26:34 GMT  
		Size: 186.9 MB (186929381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7u131`

```console
$ docker pull openjdk@sha256:d017c761fe83dfd3894d098ca7730e825e9433114dd2275f8c5633394bcdb1e8
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u131` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.6 MB (302580845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc41bbde1ce93f7b714376f9914679059f3e6b79bf95700174f4cbfc5dbfd724`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:52:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:52:39 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 16:52:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 16:52:42 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 16:52:43 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 16:52:44 GMT
ENV JAVA_VERSION=7u131
# Mon, 12 Jun 2017 16:52:44 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Mon, 12 Jun 2017 16:55:27 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38f9d5c3c0e3e4eabe6d4dac4bcc729caf847c172d0af75caf581b6c23120c`  
		Last Modified: Wed, 07 Jun 2017 20:07:12 GMT  
		Size: 43.2 MB (43225567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbb987bd399bf408a9d6454c5dfaed03e218ef890851ed956202c762e627212`  
		Last Modified: Tue, 13 Jun 2017 21:27:35 GMT  
		Size: 594.3 KB (594334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b583cbdc29006b13ef40e4052dba9a9e42ae156b77e77b1439d189448f04bf20`  
		Last Modified: Wed, 14 Jun 2017 11:25:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e9b5c3e4225ab47b81ced706c8b6bf429d1a09a1bbe2c03c73f7b8b02c65e9`  
		Last Modified: Wed, 14 Jun 2017 11:25:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f676d1fe1c43cd808f45fe5517d8100ca3766ed54a371350fb0c6053db59a57c`  
		Last Modified: Wed, 14 Jun 2017 11:26:34 GMT  
		Size: 186.9 MB (186929381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7-jdk`

```console
$ docker pull openjdk@sha256:d017c761fe83dfd3894d098ca7730e825e9433114dd2275f8c5633394bcdb1e8
```

-	Platforms:
	-	linux; amd64

### `openjdk:7-jdk` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.6 MB (302580845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc41bbde1ce93f7b714376f9914679059f3e6b79bf95700174f4cbfc5dbfd724`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:52:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:52:39 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 16:52:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 16:52:42 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 16:52:43 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 16:52:44 GMT
ENV JAVA_VERSION=7u131
# Mon, 12 Jun 2017 16:52:44 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Mon, 12 Jun 2017 16:55:27 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38f9d5c3c0e3e4eabe6d4dac4bcc729caf847c172d0af75caf581b6c23120c`  
		Last Modified: Wed, 07 Jun 2017 20:07:12 GMT  
		Size: 43.2 MB (43225567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbb987bd399bf408a9d6454c5dfaed03e218ef890851ed956202c762e627212`  
		Last Modified: Tue, 13 Jun 2017 21:27:35 GMT  
		Size: 594.3 KB (594334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b583cbdc29006b13ef40e4052dba9a9e42ae156b77e77b1439d189448f04bf20`  
		Last Modified: Wed, 14 Jun 2017 11:25:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e9b5c3e4225ab47b81ced706c8b6bf429d1a09a1bbe2c03c73f7b8b02c65e9`  
		Last Modified: Wed, 14 Jun 2017 11:25:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f676d1fe1c43cd808f45fe5517d8100ca3766ed54a371350fb0c6053db59a57c`  
		Last Modified: Wed, 14 Jun 2017 11:26:34 GMT  
		Size: 186.9 MB (186929381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7`

```console
$ docker pull openjdk@sha256:d017c761fe83dfd3894d098ca7730e825e9433114dd2275f8c5633394bcdb1e8
```

-	Platforms:
	-	linux; amd64

### `openjdk:7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.6 MB (302580845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc41bbde1ce93f7b714376f9914679059f3e6b79bf95700174f4cbfc5dbfd724`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:52:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:52:39 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 16:52:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 16:52:42 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 16:52:43 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 16:52:44 GMT
ENV JAVA_VERSION=7u131
# Mon, 12 Jun 2017 16:52:44 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Mon, 12 Jun 2017 16:55:27 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38f9d5c3c0e3e4eabe6d4dac4bcc729caf847c172d0af75caf581b6c23120c`  
		Last Modified: Wed, 07 Jun 2017 20:07:12 GMT  
		Size: 43.2 MB (43225567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbb987bd399bf408a9d6454c5dfaed03e218ef890851ed956202c762e627212`  
		Last Modified: Tue, 13 Jun 2017 21:27:35 GMT  
		Size: 594.3 KB (594334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b583cbdc29006b13ef40e4052dba9a9e42ae156b77e77b1439d189448f04bf20`  
		Last Modified: Wed, 14 Jun 2017 11:25:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e9b5c3e4225ab47b81ced706c8b6bf429d1a09a1bbe2c03c73f7b8b02c65e9`  
		Last Modified: Wed, 14 Jun 2017 11:25:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f676d1fe1c43cd808f45fe5517d8100ca3766ed54a371350fb0c6053db59a57c`  
		Last Modified: Wed, 14 Jun 2017 11:26:34 GMT  
		Size: 186.9 MB (186929381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7u131-jdk-alpine`

```console
$ docker pull openjdk@sha256:440843f5b1ff865b8875e01084ab6c4f3973735ca1e7a3fa839711d45bbf481e
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u131-jdk-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79421234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf5fbd0c025c296d7495bdfb1d326e52c2814d107d6c4c5f43375196c5bcb3cd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:32:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Mon, 19 Jun 2017 22:32:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Mon, 19 Jun 2017 22:32:34 GMT
ENV JAVA_VERSION=7u131
# Mon, 19 Jun 2017 22:32:34 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Mon, 19 Jun 2017 22:32:52 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3fd7966a2f90d20fb0b963450265699c50612f3d1c9fbdca5a12936d1b3cc8`  
		Last Modified: Tue, 20 Jun 2017 20:52:42 GMT  
		Size: 77.4 MB (77430840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7u131-alpine`

```console
$ docker pull openjdk@sha256:440843f5b1ff865b8875e01084ab6c4f3973735ca1e7a3fa839711d45bbf481e
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u131-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79421234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf5fbd0c025c296d7495bdfb1d326e52c2814d107d6c4c5f43375196c5bcb3cd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:32:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Mon, 19 Jun 2017 22:32:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Mon, 19 Jun 2017 22:32:34 GMT
ENV JAVA_VERSION=7u131
# Mon, 19 Jun 2017 22:32:34 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Mon, 19 Jun 2017 22:32:52 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3fd7966a2f90d20fb0b963450265699c50612f3d1c9fbdca5a12936d1b3cc8`  
		Last Modified: Tue, 20 Jun 2017 20:52:42 GMT  
		Size: 77.4 MB (77430840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7-jdk-alpine`

```console
$ docker pull openjdk@sha256:440843f5b1ff865b8875e01084ab6c4f3973735ca1e7a3fa839711d45bbf481e
```

-	Platforms:
	-	linux; amd64

### `openjdk:7-jdk-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79421234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf5fbd0c025c296d7495bdfb1d326e52c2814d107d6c4c5f43375196c5bcb3cd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:32:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Mon, 19 Jun 2017 22:32:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Mon, 19 Jun 2017 22:32:34 GMT
ENV JAVA_VERSION=7u131
# Mon, 19 Jun 2017 22:32:34 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Mon, 19 Jun 2017 22:32:52 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3fd7966a2f90d20fb0b963450265699c50612f3d1c9fbdca5a12936d1b3cc8`  
		Last Modified: Tue, 20 Jun 2017 20:52:42 GMT  
		Size: 77.4 MB (77430840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7-alpine`

```console
$ docker pull openjdk@sha256:440843f5b1ff865b8875e01084ab6c4f3973735ca1e7a3fa839711d45bbf481e
```

-	Platforms:
	-	linux; amd64

### `openjdk:7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79421234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf5fbd0c025c296d7495bdfb1d326e52c2814d107d6c4c5f43375196c5bcb3cd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:32:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Mon, 19 Jun 2017 22:32:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Mon, 19 Jun 2017 22:32:34 GMT
ENV JAVA_VERSION=7u131
# Mon, 19 Jun 2017 22:32:34 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Mon, 19 Jun 2017 22:32:52 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3fd7966a2f90d20fb0b963450265699c50612f3d1c9fbdca5a12936d1b3cc8`  
		Last Modified: Tue, 20 Jun 2017 20:52:42 GMT  
		Size: 77.4 MB (77430840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7u131-jre`

```console
$ docker pull openjdk@sha256:a39e83964003d8ac96d4ad7740c0ce0a9ca84fc1d18157c7b288a745f9de0d9d
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u131-jre` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151092295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40f1dfbb2a1452f5538e2daa6ef9c6b7edc849d020196212ca99cf1d71a991ca`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:23:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:23:38 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:23:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:23:40 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:23:41 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 12 Jun 2017 17:23:41 GMT
ENV JAVA_VERSION=7u131
# Mon, 12 Jun 2017 17:23:42 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Mon, 12 Jun 2017 17:24:42 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d274e5d309ddee8129c12282e4e8f5ed08e36c51570f7babc49c7279cfceebc`  
		Last Modified: Tue, 13 Jun 2017 21:47:38 GMT  
		Size: 568.5 KB (568467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cd9c588128772812f193d95bcf367d7b243e1cab14310eae2b228671b4ff0cd`  
		Last Modified: Wed, 14 Jun 2017 11:02:59 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662f30f77b2d27a75b290e26c22d1328b194841516eeb2ad3ec3d8e9e34a41f3`  
		Last Modified: Wed, 14 Jun 2017 11:02:57 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf3e07a1b0ebab94df5f0e84bffed0cc1ce3136512a25dd04d99f12ecc6c937`  
		Last Modified: Wed, 14 Jun 2017 11:03:13 GMT  
		Size: 78.7 MB (78692266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7-jre`

```console
$ docker pull openjdk@sha256:a39e83964003d8ac96d4ad7740c0ce0a9ca84fc1d18157c7b288a745f9de0d9d
```

-	Platforms:
	-	linux; amd64

### `openjdk:7-jre` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151092295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40f1dfbb2a1452f5538e2daa6ef9c6b7edc849d020196212ca99cf1d71a991ca`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:23:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:23:38 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:23:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:23:40 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:23:41 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 12 Jun 2017 17:23:41 GMT
ENV JAVA_VERSION=7u131
# Mon, 12 Jun 2017 17:23:42 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Mon, 12 Jun 2017 17:24:42 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d274e5d309ddee8129c12282e4e8f5ed08e36c51570f7babc49c7279cfceebc`  
		Last Modified: Tue, 13 Jun 2017 21:47:38 GMT  
		Size: 568.5 KB (568467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cd9c588128772812f193d95bcf367d7b243e1cab14310eae2b228671b4ff0cd`  
		Last Modified: Wed, 14 Jun 2017 11:02:59 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662f30f77b2d27a75b290e26c22d1328b194841516eeb2ad3ec3d8e9e34a41f3`  
		Last Modified: Wed, 14 Jun 2017 11:02:57 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf3e07a1b0ebab94df5f0e84bffed0cc1ce3136512a25dd04d99f12ecc6c937`  
		Last Modified: Wed, 14 Jun 2017 11:03:13 GMT  
		Size: 78.7 MB (78692266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7u131-jre-alpine`

```console
$ docker pull openjdk@sha256:e8ee14ad6aa0a7d7ce594f401b5493e3942ee5561f33220eba5574e06f248cd8
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u131-jre-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.1 MB (63120706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79cfd82ad162179eb59094f9d19d978b30fcb451e6ce494d6feb3540bc95cd09`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:33:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Mon, 19 Jun 2017 22:33:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Mon, 19 Jun 2017 22:33:49 GMT
ENV JAVA_VERSION=7u131
# Mon, 19 Jun 2017 22:33:50 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Mon, 19 Jun 2017 22:34:23 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f47a67697276d89884397784cfb1845ff4bd1bb20a75f965110a46fb14ddaa`  
		Last Modified: Tue, 20 Jun 2017 20:57:53 GMT  
		Size: 61.1 MB (61130312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7-jre-alpine`

```console
$ docker pull openjdk@sha256:e8ee14ad6aa0a7d7ce594f401b5493e3942ee5561f33220eba5574e06f248cd8
```

-	Platforms:
	-	linux; amd64

### `openjdk:7-jre-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.1 MB (63120706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79cfd82ad162179eb59094f9d19d978b30fcb451e6ce494d6feb3540bc95cd09`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:33:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Mon, 19 Jun 2017 22:33:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Mon, 19 Jun 2017 22:33:49 GMT
ENV JAVA_VERSION=7u131
# Mon, 19 Jun 2017 22:33:50 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Mon, 19 Jun 2017 22:34:23 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f47a67697276d89884397784cfb1845ff4bd1bb20a75f965110a46fb14ddaa`  
		Last Modified: Tue, 20 Jun 2017 20:57:53 GMT  
		Size: 61.1 MB (61130312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8u131-jdk`

```console
$ docker pull openjdk@sha256:0eca986ed1177c8ec71d41248a10a21f23a4650a9e7237699da0fa75d67e126c
```

-	Platforms:
	-	linux; amd64

### `openjdk:8u131-jdk` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.3 MB (235291992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df8b534906e0c1f68a58087e152660642c80625b2f9b0f5f942a4f53d0063ee`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:52:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:25:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 12 Jun 2017 17:25:07 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:25:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:25:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:25:11 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 17:25:11 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 17:25:12 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Mon, 12 Jun 2017 17:25:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 12 Jun 2017 17:25:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 12 Jun 2017 17:25:55 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38f9d5c3c0e3e4eabe6d4dac4bcc729caf847c172d0af75caf581b6c23120c`  
		Last Modified: Wed, 07 Jun 2017 20:07:12 GMT  
		Size: 43.2 MB (43225567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbb987bd399bf408a9d6454c5dfaed03e218ef890851ed956202c762e627212`  
		Last Modified: Tue, 13 Jun 2017 21:27:35 GMT  
		Size: 594.3 KB (594334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d084a7098441d179acda1ede474028edd334db0c07de42f9c15f0a837b4240`  
		Last Modified: Tue, 13 Jun 2017 21:27:34 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09373cf6f1c7695d0e811c571320127e3abc393dca77f81b87e4d94ddfe8ca6f`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d486a02fa0f9d8708c9fa043ea1e9e7d54a48ac13790f3f65583c92072601f`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e979ba42b15895685f5307fb1d4aff7f8f260ae7f6ed5efb086a45963baf6eb`  
		Last Modified: Tue, 13 Jun 2017 21:27:57 GMT  
		Size: 119.4 MB (119350683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594e48fef5be5b8804b6402f7261a3a51f6cff42410a340984bc4c86b6fef7a6`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 289.6 KB (289630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8u131`

```console
$ docker pull openjdk@sha256:0eca986ed1177c8ec71d41248a10a21f23a4650a9e7237699da0fa75d67e126c
```

-	Platforms:
	-	linux; amd64

### `openjdk:8u131` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.3 MB (235291992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df8b534906e0c1f68a58087e152660642c80625b2f9b0f5f942a4f53d0063ee`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:52:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:25:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 12 Jun 2017 17:25:07 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:25:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:25:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:25:11 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 17:25:11 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 17:25:12 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Mon, 12 Jun 2017 17:25:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 12 Jun 2017 17:25:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 12 Jun 2017 17:25:55 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38f9d5c3c0e3e4eabe6d4dac4bcc729caf847c172d0af75caf581b6c23120c`  
		Last Modified: Wed, 07 Jun 2017 20:07:12 GMT  
		Size: 43.2 MB (43225567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbb987bd399bf408a9d6454c5dfaed03e218ef890851ed956202c762e627212`  
		Last Modified: Tue, 13 Jun 2017 21:27:35 GMT  
		Size: 594.3 KB (594334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d084a7098441d179acda1ede474028edd334db0c07de42f9c15f0a837b4240`  
		Last Modified: Tue, 13 Jun 2017 21:27:34 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09373cf6f1c7695d0e811c571320127e3abc393dca77f81b87e4d94ddfe8ca6f`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d486a02fa0f9d8708c9fa043ea1e9e7d54a48ac13790f3f65583c92072601f`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e979ba42b15895685f5307fb1d4aff7f8f260ae7f6ed5efb086a45963baf6eb`  
		Last Modified: Tue, 13 Jun 2017 21:27:57 GMT  
		Size: 119.4 MB (119350683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594e48fef5be5b8804b6402f7261a3a51f6cff42410a340984bc4c86b6fef7a6`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 289.6 KB (289630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8-jdk`

```console
$ docker pull openjdk@sha256:0eca986ed1177c8ec71d41248a10a21f23a4650a9e7237699da0fa75d67e126c
```

-	Platforms:
	-	linux; amd64

### `openjdk:8-jdk` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.3 MB (235291992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df8b534906e0c1f68a58087e152660642c80625b2f9b0f5f942a4f53d0063ee`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:52:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:25:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 12 Jun 2017 17:25:07 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:25:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:25:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:25:11 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 17:25:11 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 17:25:12 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Mon, 12 Jun 2017 17:25:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 12 Jun 2017 17:25:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 12 Jun 2017 17:25:55 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38f9d5c3c0e3e4eabe6d4dac4bcc729caf847c172d0af75caf581b6c23120c`  
		Last Modified: Wed, 07 Jun 2017 20:07:12 GMT  
		Size: 43.2 MB (43225567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbb987bd399bf408a9d6454c5dfaed03e218ef890851ed956202c762e627212`  
		Last Modified: Tue, 13 Jun 2017 21:27:35 GMT  
		Size: 594.3 KB (594334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d084a7098441d179acda1ede474028edd334db0c07de42f9c15f0a837b4240`  
		Last Modified: Tue, 13 Jun 2017 21:27:34 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09373cf6f1c7695d0e811c571320127e3abc393dca77f81b87e4d94ddfe8ca6f`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d486a02fa0f9d8708c9fa043ea1e9e7d54a48ac13790f3f65583c92072601f`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e979ba42b15895685f5307fb1d4aff7f8f260ae7f6ed5efb086a45963baf6eb`  
		Last Modified: Tue, 13 Jun 2017 21:27:57 GMT  
		Size: 119.4 MB (119350683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594e48fef5be5b8804b6402f7261a3a51f6cff42410a340984bc4c86b6fef7a6`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 289.6 KB (289630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8`

```console
$ docker pull openjdk@sha256:0eca986ed1177c8ec71d41248a10a21f23a4650a9e7237699da0fa75d67e126c
```

-	Platforms:
	-	linux; amd64

### `openjdk:8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.3 MB (235291992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df8b534906e0c1f68a58087e152660642c80625b2f9b0f5f942a4f53d0063ee`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:52:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:25:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 12 Jun 2017 17:25:07 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:25:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:25:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:25:11 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 17:25:11 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 17:25:12 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Mon, 12 Jun 2017 17:25:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 12 Jun 2017 17:25:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 12 Jun 2017 17:25:55 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38f9d5c3c0e3e4eabe6d4dac4bcc729caf847c172d0af75caf581b6c23120c`  
		Last Modified: Wed, 07 Jun 2017 20:07:12 GMT  
		Size: 43.2 MB (43225567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbb987bd399bf408a9d6454c5dfaed03e218ef890851ed956202c762e627212`  
		Last Modified: Tue, 13 Jun 2017 21:27:35 GMT  
		Size: 594.3 KB (594334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d084a7098441d179acda1ede474028edd334db0c07de42f9c15f0a837b4240`  
		Last Modified: Tue, 13 Jun 2017 21:27:34 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09373cf6f1c7695d0e811c571320127e3abc393dca77f81b87e4d94ddfe8ca6f`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d486a02fa0f9d8708c9fa043ea1e9e7d54a48ac13790f3f65583c92072601f`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e979ba42b15895685f5307fb1d4aff7f8f260ae7f6ed5efb086a45963baf6eb`  
		Last Modified: Tue, 13 Jun 2017 21:27:57 GMT  
		Size: 119.4 MB (119350683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594e48fef5be5b8804b6402f7261a3a51f6cff42410a340984bc4c86b6fef7a6`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 289.6 KB (289630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:jdk`

```console
$ docker pull openjdk@sha256:0eca986ed1177c8ec71d41248a10a21f23a4650a9e7237699da0fa75d67e126c
```

-	Platforms:
	-	linux; amd64

### `openjdk:jdk` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.3 MB (235291992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df8b534906e0c1f68a58087e152660642c80625b2f9b0f5f942a4f53d0063ee`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:52:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:25:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 12 Jun 2017 17:25:07 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:25:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:25:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:25:11 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 17:25:11 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 17:25:12 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Mon, 12 Jun 2017 17:25:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 12 Jun 2017 17:25:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 12 Jun 2017 17:25:55 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38f9d5c3c0e3e4eabe6d4dac4bcc729caf847c172d0af75caf581b6c23120c`  
		Last Modified: Wed, 07 Jun 2017 20:07:12 GMT  
		Size: 43.2 MB (43225567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbb987bd399bf408a9d6454c5dfaed03e218ef890851ed956202c762e627212`  
		Last Modified: Tue, 13 Jun 2017 21:27:35 GMT  
		Size: 594.3 KB (594334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d084a7098441d179acda1ede474028edd334db0c07de42f9c15f0a837b4240`  
		Last Modified: Tue, 13 Jun 2017 21:27:34 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09373cf6f1c7695d0e811c571320127e3abc393dca77f81b87e4d94ddfe8ca6f`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d486a02fa0f9d8708c9fa043ea1e9e7d54a48ac13790f3f65583c92072601f`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e979ba42b15895685f5307fb1d4aff7f8f260ae7f6ed5efb086a45963baf6eb`  
		Last Modified: Tue, 13 Jun 2017 21:27:57 GMT  
		Size: 119.4 MB (119350683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594e48fef5be5b8804b6402f7261a3a51f6cff42410a340984bc4c86b6fef7a6`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 289.6 KB (289630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:latest`

```console
$ docker pull openjdk@sha256:0eca986ed1177c8ec71d41248a10a21f23a4650a9e7237699da0fa75d67e126c
```

-	Platforms:
	-	linux; amd64

### `openjdk:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.3 MB (235291992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df8b534906e0c1f68a58087e152660642c80625b2f9b0f5f942a4f53d0063ee`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:52:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:25:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 12 Jun 2017 17:25:07 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:25:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:25:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:25:11 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 17:25:11 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 17:25:12 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Mon, 12 Jun 2017 17:25:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 12 Jun 2017 17:25:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 12 Jun 2017 17:25:55 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38f9d5c3c0e3e4eabe6d4dac4bcc729caf847c172d0af75caf581b6c23120c`  
		Last Modified: Wed, 07 Jun 2017 20:07:12 GMT  
		Size: 43.2 MB (43225567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbb987bd399bf408a9d6454c5dfaed03e218ef890851ed956202c762e627212`  
		Last Modified: Tue, 13 Jun 2017 21:27:35 GMT  
		Size: 594.3 KB (594334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d084a7098441d179acda1ede474028edd334db0c07de42f9c15f0a837b4240`  
		Last Modified: Tue, 13 Jun 2017 21:27:34 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09373cf6f1c7695d0e811c571320127e3abc393dca77f81b87e4d94ddfe8ca6f`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d486a02fa0f9d8708c9fa043ea1e9e7d54a48ac13790f3f65583c92072601f`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e979ba42b15895685f5307fb1d4aff7f8f260ae7f6ed5efb086a45963baf6eb`  
		Last Modified: Tue, 13 Jun 2017 21:27:57 GMT  
		Size: 119.4 MB (119350683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594e48fef5be5b8804b6402f7261a3a51f6cff42410a340984bc4c86b6fef7a6`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 289.6 KB (289630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8u131-jdk-alpine`

```console
$ docker pull openjdk@sha256:96d8e4f8b93cbdeca2ffa147b72505f11c6272cda9627e7f544c38d77a1bfd4e
```

-	Platforms:
	-	linux; amd64

### `openjdk:8u131-jdk-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.0 MB (72040628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7d97a0b8e2cb30b6f94ddc301d62c335840e0c171f4d0c910370c3d0e137557`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:35:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Mon, 19 Jun 2017 22:35:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:36:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d6fbc2ab6eafc4e238b99bdbd470d39d99dffe9d70123777c74469211364bb`  
		Last Modified: Tue, 20 Jun 2017 21:04:41 GMT  
		Size: 70.1 MB (70050234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8u131-alpine`

```console
$ docker pull openjdk@sha256:96d8e4f8b93cbdeca2ffa147b72505f11c6272cda9627e7f544c38d77a1bfd4e
```

-	Platforms:
	-	linux; amd64

### `openjdk:8u131-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.0 MB (72040628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7d97a0b8e2cb30b6f94ddc301d62c335840e0c171f4d0c910370c3d0e137557`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:35:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Mon, 19 Jun 2017 22:35:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:36:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d6fbc2ab6eafc4e238b99bdbd470d39d99dffe9d70123777c74469211364bb`  
		Last Modified: Tue, 20 Jun 2017 21:04:41 GMT  
		Size: 70.1 MB (70050234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8-jdk-alpine`

```console
$ docker pull openjdk@sha256:96d8e4f8b93cbdeca2ffa147b72505f11c6272cda9627e7f544c38d77a1bfd4e
```

-	Platforms:
	-	linux; amd64

### `openjdk:8-jdk-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.0 MB (72040628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7d97a0b8e2cb30b6f94ddc301d62c335840e0c171f4d0c910370c3d0e137557`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:35:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Mon, 19 Jun 2017 22:35:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:36:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d6fbc2ab6eafc4e238b99bdbd470d39d99dffe9d70123777c74469211364bb`  
		Last Modified: Tue, 20 Jun 2017 21:04:41 GMT  
		Size: 70.1 MB (70050234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8-alpine`

```console
$ docker pull openjdk@sha256:96d8e4f8b93cbdeca2ffa147b72505f11c6272cda9627e7f544c38d77a1bfd4e
```

-	Platforms:
	-	linux; amd64

### `openjdk:8-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.0 MB (72040628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7d97a0b8e2cb30b6f94ddc301d62c335840e0c171f4d0c910370c3d0e137557`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:35:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Mon, 19 Jun 2017 22:35:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:36:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d6fbc2ab6eafc4e238b99bdbd470d39d99dffe9d70123777c74469211364bb`  
		Last Modified: Tue, 20 Jun 2017 21:04:41 GMT  
		Size: 70.1 MB (70050234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:jdk-alpine`

```console
$ docker pull openjdk@sha256:96d8e4f8b93cbdeca2ffa147b72505f11c6272cda9627e7f544c38d77a1bfd4e
```

-	Platforms:
	-	linux; amd64

### `openjdk:jdk-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.0 MB (72040628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7d97a0b8e2cb30b6f94ddc301d62c335840e0c171f4d0c910370c3d0e137557`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:35:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Mon, 19 Jun 2017 22:35:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:36:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d6fbc2ab6eafc4e238b99bdbd470d39d99dffe9d70123777c74469211364bb`  
		Last Modified: Tue, 20 Jun 2017 21:04:41 GMT  
		Size: 70.1 MB (70050234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:alpine`

```console
$ docker pull openjdk@sha256:96d8e4f8b93cbdeca2ffa147b72505f11c6272cda9627e7f544c38d77a1bfd4e
```

-	Platforms:
	-	linux; amd64

### `openjdk:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.0 MB (72040628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7d97a0b8e2cb30b6f94ddc301d62c335840e0c171f4d0c910370c3d0e137557`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:35:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Mon, 19 Jun 2017 22:35:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:36:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d6fbc2ab6eafc4e238b99bdbd470d39d99dffe9d70123777c74469211364bb`  
		Last Modified: Tue, 20 Jun 2017 21:04:41 GMT  
		Size: 70.1 MB (70050234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8u131-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:53d0591fc41558b85c899d78e7d7eec495a0338989a957726e9dd2c7577ee061
```

-	Platforms:
	-	windows; amd64

### `openjdk:8u131-jdk-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5347310639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55338e17920b8326a3efbc7dab8c6ab61aed17513caa76a6a968ff4f9436f953`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:30:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 12 Jun 2017 23:01:45 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Mon, 12 Jun 2017 23:03:00 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Mon, 12 Jun 2017 23:03:03 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 23:03:05 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.131-1
# Mon, 12 Jun 2017 23:03:07 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.131-1.b11.ojdkbuild.windows.x86_64.zip
# Mon, 12 Jun 2017 23:03:09 GMT
ENV JAVA_OJDKBUILD_SHA256=7e7384636054001499ba96d55c90fc39cbb0441281254a1e9ac8510b527a7a46
# Mon, 12 Jun 2017 23:04:05 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1363e862fdfb51b375f642fff311ab5f16a4e990d8d8c0ef1a0c9b563692b9ff`  
		Last Modified: Wed, 26 Apr 2017 19:51:11 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19cdc71225c532b824eef3561443b9f467cb4a7145c1d6836f791d1022163d86`  
		Last Modified: Mon, 12 Jun 2017 23:05:29 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0cb072dba6fa4b283bcc6b25e88da27280f70d687403140a7965b13c5c2bbc2`  
		Last Modified: Mon, 12 Jun 2017 23:05:32 GMT  
		Size: 5.0 MB (4972873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cca9a09017998fa8aac9b8a70367bdf3bb132a491d3030f566d6d01c3132b15c`  
		Last Modified: Mon, 12 Jun 2017 23:05:22 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b43fe9584901ab21e4a64c8f9feb53b90c627fb36074068950cf243078fdeb`  
		Last Modified: Mon, 12 Jun 2017 23:05:21 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98db6d7c75b5ef1fc8c6ef8685ec151829cb45d062a40c5f4e2e850689ff74d3`  
		Last Modified: Mon, 12 Jun 2017 23:05:22 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88db8652350234c22f7bd512731e0c7b18e8ecc6a4d13e38bff5ef40d0b2d64`  
		Last Modified: Mon, 12 Jun 2017 23:05:21 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f2abb12bae150ffc98f867e324ac78c965201355abd807fe8e2f066eb6fff9`  
		Last Modified: Mon, 12 Jun 2017 23:06:04 GMT  
		Size: 110.4 MB (110442512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8u131-windowsservercore`

```console
$ docker pull openjdk@sha256:53d0591fc41558b85c899d78e7d7eec495a0338989a957726e9dd2c7577ee061
```

-	Platforms:
	-	windows; amd64

### `openjdk:8u131-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5347310639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55338e17920b8326a3efbc7dab8c6ab61aed17513caa76a6a968ff4f9436f953`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:30:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 12 Jun 2017 23:01:45 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Mon, 12 Jun 2017 23:03:00 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Mon, 12 Jun 2017 23:03:03 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 23:03:05 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.131-1
# Mon, 12 Jun 2017 23:03:07 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.131-1.b11.ojdkbuild.windows.x86_64.zip
# Mon, 12 Jun 2017 23:03:09 GMT
ENV JAVA_OJDKBUILD_SHA256=7e7384636054001499ba96d55c90fc39cbb0441281254a1e9ac8510b527a7a46
# Mon, 12 Jun 2017 23:04:05 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1363e862fdfb51b375f642fff311ab5f16a4e990d8d8c0ef1a0c9b563692b9ff`  
		Last Modified: Wed, 26 Apr 2017 19:51:11 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19cdc71225c532b824eef3561443b9f467cb4a7145c1d6836f791d1022163d86`  
		Last Modified: Mon, 12 Jun 2017 23:05:29 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0cb072dba6fa4b283bcc6b25e88da27280f70d687403140a7965b13c5c2bbc2`  
		Last Modified: Mon, 12 Jun 2017 23:05:32 GMT  
		Size: 5.0 MB (4972873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cca9a09017998fa8aac9b8a70367bdf3bb132a491d3030f566d6d01c3132b15c`  
		Last Modified: Mon, 12 Jun 2017 23:05:22 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b43fe9584901ab21e4a64c8f9feb53b90c627fb36074068950cf243078fdeb`  
		Last Modified: Mon, 12 Jun 2017 23:05:21 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98db6d7c75b5ef1fc8c6ef8685ec151829cb45d062a40c5f4e2e850689ff74d3`  
		Last Modified: Mon, 12 Jun 2017 23:05:22 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88db8652350234c22f7bd512731e0c7b18e8ecc6a4d13e38bff5ef40d0b2d64`  
		Last Modified: Mon, 12 Jun 2017 23:05:21 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f2abb12bae150ffc98f867e324ac78c965201355abd807fe8e2f066eb6fff9`  
		Last Modified: Mon, 12 Jun 2017 23:06:04 GMT  
		Size: 110.4 MB (110442512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:53d0591fc41558b85c899d78e7d7eec495a0338989a957726e9dd2c7577ee061
```

-	Platforms:
	-	windows; amd64

### `openjdk:8-jdk-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5347310639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55338e17920b8326a3efbc7dab8c6ab61aed17513caa76a6a968ff4f9436f953`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:30:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 12 Jun 2017 23:01:45 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Mon, 12 Jun 2017 23:03:00 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Mon, 12 Jun 2017 23:03:03 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 23:03:05 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.131-1
# Mon, 12 Jun 2017 23:03:07 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.131-1.b11.ojdkbuild.windows.x86_64.zip
# Mon, 12 Jun 2017 23:03:09 GMT
ENV JAVA_OJDKBUILD_SHA256=7e7384636054001499ba96d55c90fc39cbb0441281254a1e9ac8510b527a7a46
# Mon, 12 Jun 2017 23:04:05 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1363e862fdfb51b375f642fff311ab5f16a4e990d8d8c0ef1a0c9b563692b9ff`  
		Last Modified: Wed, 26 Apr 2017 19:51:11 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19cdc71225c532b824eef3561443b9f467cb4a7145c1d6836f791d1022163d86`  
		Last Modified: Mon, 12 Jun 2017 23:05:29 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0cb072dba6fa4b283bcc6b25e88da27280f70d687403140a7965b13c5c2bbc2`  
		Last Modified: Mon, 12 Jun 2017 23:05:32 GMT  
		Size: 5.0 MB (4972873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cca9a09017998fa8aac9b8a70367bdf3bb132a491d3030f566d6d01c3132b15c`  
		Last Modified: Mon, 12 Jun 2017 23:05:22 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b43fe9584901ab21e4a64c8f9feb53b90c627fb36074068950cf243078fdeb`  
		Last Modified: Mon, 12 Jun 2017 23:05:21 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98db6d7c75b5ef1fc8c6ef8685ec151829cb45d062a40c5f4e2e850689ff74d3`  
		Last Modified: Mon, 12 Jun 2017 23:05:22 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88db8652350234c22f7bd512731e0c7b18e8ecc6a4d13e38bff5ef40d0b2d64`  
		Last Modified: Mon, 12 Jun 2017 23:05:21 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f2abb12bae150ffc98f867e324ac78c965201355abd807fe8e2f066eb6fff9`  
		Last Modified: Mon, 12 Jun 2017 23:06:04 GMT  
		Size: 110.4 MB (110442512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8-windowsservercore`

```console
$ docker pull openjdk@sha256:53d0591fc41558b85c899d78e7d7eec495a0338989a957726e9dd2c7577ee061
```

-	Platforms:
	-	windows; amd64

### `openjdk:8-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5347310639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55338e17920b8326a3efbc7dab8c6ab61aed17513caa76a6a968ff4f9436f953`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:30:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 12 Jun 2017 23:01:45 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Mon, 12 Jun 2017 23:03:00 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Mon, 12 Jun 2017 23:03:03 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 23:03:05 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.131-1
# Mon, 12 Jun 2017 23:03:07 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.131-1.b11.ojdkbuild.windows.x86_64.zip
# Mon, 12 Jun 2017 23:03:09 GMT
ENV JAVA_OJDKBUILD_SHA256=7e7384636054001499ba96d55c90fc39cbb0441281254a1e9ac8510b527a7a46
# Mon, 12 Jun 2017 23:04:05 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1363e862fdfb51b375f642fff311ab5f16a4e990d8d8c0ef1a0c9b563692b9ff`  
		Last Modified: Wed, 26 Apr 2017 19:51:11 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19cdc71225c532b824eef3561443b9f467cb4a7145c1d6836f791d1022163d86`  
		Last Modified: Mon, 12 Jun 2017 23:05:29 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0cb072dba6fa4b283bcc6b25e88da27280f70d687403140a7965b13c5c2bbc2`  
		Last Modified: Mon, 12 Jun 2017 23:05:32 GMT  
		Size: 5.0 MB (4972873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cca9a09017998fa8aac9b8a70367bdf3bb132a491d3030f566d6d01c3132b15c`  
		Last Modified: Mon, 12 Jun 2017 23:05:22 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b43fe9584901ab21e4a64c8f9feb53b90c627fb36074068950cf243078fdeb`  
		Last Modified: Mon, 12 Jun 2017 23:05:21 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98db6d7c75b5ef1fc8c6ef8685ec151829cb45d062a40c5f4e2e850689ff74d3`  
		Last Modified: Mon, 12 Jun 2017 23:05:22 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88db8652350234c22f7bd512731e0c7b18e8ecc6a4d13e38bff5ef40d0b2d64`  
		Last Modified: Mon, 12 Jun 2017 23:05:21 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f2abb12bae150ffc98f867e324ac78c965201355abd807fe8e2f066eb6fff9`  
		Last Modified: Mon, 12 Jun 2017 23:06:04 GMT  
		Size: 110.4 MB (110442512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:53d0591fc41558b85c899d78e7d7eec495a0338989a957726e9dd2c7577ee061
```

-	Platforms:
	-	windows; amd64

### `openjdk:jdk-windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5347310639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55338e17920b8326a3efbc7dab8c6ab61aed17513caa76a6a968ff4f9436f953`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:30:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 12 Jun 2017 23:01:45 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Mon, 12 Jun 2017 23:03:00 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Mon, 12 Jun 2017 23:03:03 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 23:03:05 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.131-1
# Mon, 12 Jun 2017 23:03:07 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.131-1.b11.ojdkbuild.windows.x86_64.zip
# Mon, 12 Jun 2017 23:03:09 GMT
ENV JAVA_OJDKBUILD_SHA256=7e7384636054001499ba96d55c90fc39cbb0441281254a1e9ac8510b527a7a46
# Mon, 12 Jun 2017 23:04:05 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1363e862fdfb51b375f642fff311ab5f16a4e990d8d8c0ef1a0c9b563692b9ff`  
		Last Modified: Wed, 26 Apr 2017 19:51:11 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19cdc71225c532b824eef3561443b9f467cb4a7145c1d6836f791d1022163d86`  
		Last Modified: Mon, 12 Jun 2017 23:05:29 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0cb072dba6fa4b283bcc6b25e88da27280f70d687403140a7965b13c5c2bbc2`  
		Last Modified: Mon, 12 Jun 2017 23:05:32 GMT  
		Size: 5.0 MB (4972873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cca9a09017998fa8aac9b8a70367bdf3bb132a491d3030f566d6d01c3132b15c`  
		Last Modified: Mon, 12 Jun 2017 23:05:22 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b43fe9584901ab21e4a64c8f9feb53b90c627fb36074068950cf243078fdeb`  
		Last Modified: Mon, 12 Jun 2017 23:05:21 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98db6d7c75b5ef1fc8c6ef8685ec151829cb45d062a40c5f4e2e850689ff74d3`  
		Last Modified: Mon, 12 Jun 2017 23:05:22 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88db8652350234c22f7bd512731e0c7b18e8ecc6a4d13e38bff5ef40d0b2d64`  
		Last Modified: Mon, 12 Jun 2017 23:05:21 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f2abb12bae150ffc98f867e324ac78c965201355abd807fe8e2f066eb6fff9`  
		Last Modified: Mon, 12 Jun 2017 23:06:04 GMT  
		Size: 110.4 MB (110442512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:windowsservercore`

```console
$ docker pull openjdk@sha256:53d0591fc41558b85c899d78e7d7eec495a0338989a957726e9dd2c7577ee061
```

-	Platforms:
	-	windows; amd64

### `openjdk:windowsservercore` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 GB (5347310639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55338e17920b8326a3efbc7dab8c6ab61aed17513caa76a6a968ff4f9436f953`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:24 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Apr 2017 22:00:56 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:30:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 12 Jun 2017 23:01:45 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Mon, 12 Jun 2017 23:03:00 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Mon, 12 Jun 2017 23:03:03 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 23:03:05 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.131-1
# Mon, 12 Jun 2017 23:03:07 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.131-1.b11.ojdkbuild.windows.x86_64.zip
# Mon, 12 Jun 2017 23:03:09 GMT
ENV JAVA_OJDKBUILD_SHA256=7e7384636054001499ba96d55c90fc39cbb0441281254a1e9ac8510b527a7a46
# Mon, 12 Jun 2017 23:04:05 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6d4d50238ed13902c153bc3efc3a22f8a96bca4168ea03624d01da1063728dc2`  
		Size: 1.2 GB (1161902022 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1363e862fdfb51b375f642fff311ab5f16a4e990d8d8c0ef1a0c9b563692b9ff`  
		Last Modified: Wed, 26 Apr 2017 19:51:11 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19cdc71225c532b824eef3561443b9f467cb4a7145c1d6836f791d1022163d86`  
		Last Modified: Mon, 12 Jun 2017 23:05:29 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0cb072dba6fa4b283bcc6b25e88da27280f70d687403140a7965b13c5c2bbc2`  
		Last Modified: Mon, 12 Jun 2017 23:05:32 GMT  
		Size: 5.0 MB (4972873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cca9a09017998fa8aac9b8a70367bdf3bb132a491d3030f566d6d01c3132b15c`  
		Last Modified: Mon, 12 Jun 2017 23:05:22 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b43fe9584901ab21e4a64c8f9feb53b90c627fb36074068950cf243078fdeb`  
		Last Modified: Mon, 12 Jun 2017 23:05:21 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98db6d7c75b5ef1fc8c6ef8685ec151829cb45d062a40c5f4e2e850689ff74d3`  
		Last Modified: Mon, 12 Jun 2017 23:05:22 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88db8652350234c22f7bd512731e0c7b18e8ecc6a4d13e38bff5ef40d0b2d64`  
		Last Modified: Mon, 12 Jun 2017 23:05:21 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f2abb12bae150ffc98f867e324ac78c965201355abd807fe8e2f066eb6fff9`  
		Last Modified: Mon, 12 Jun 2017 23:06:04 GMT  
		Size: 110.4 MB (110442512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8u131-jdk-nanoserver`

```console
$ docker pull openjdk@sha256:7606050daa6e08d984eead27c421b04cd0f8ee807f54885221514f0fc7902a64
```

-	Platforms:
	-	windows; amd64

### `openjdk:8u131-jdk-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **476.2 MB (476188760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13c91f2ca779072ed9a82792fabb91708192d2d13b0185afdf9736293b712eb7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 20 Nov 2016 11:39:18 GMT
RUN Apply image 10.0.14393.0
# Fri, 07 Apr 2017 09:40:17 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:37:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 12 Jun 2017 23:04:10 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Mon, 12 Jun 2017 23:04:28 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Mon, 12 Jun 2017 23:04:30 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 23:04:32 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.131-1
# Mon, 12 Jun 2017 23:04:33 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.131-1.b11.ojdkbuild.windows.x86_64.zip
# Mon, 12 Jun 2017 23:04:35 GMT
ENV JAVA_OJDKBUILD_SHA256=7e7384636054001499ba96d55c90fc39cbb0441281254a1e9ac8510b527a7a46
# Mon, 12 Jun 2017 23:05:11 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a43ac69611f40511708beba10dfe6fbe3e266ca933b6fd49c87a9f31f46f46c`  
		Size: 116.0 MB (116037241 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:acc75acac61e9635ae7c57f4d74b6ac6a2efef41d7b17052ff6f5bc0fb92e960`  
		Last Modified: Wed, 26 Apr 2017 19:51:40 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39aac3aa579c2595a79ccf9025bef2fde6d5213b295838ee5f7943f41aecd3e7`  
		Last Modified: Mon, 12 Jun 2017 23:06:33 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1193a9ba6999c3705a3195fd6bab0516b439a97609fbe1777a45dc205cb6cb6e`  
		Last Modified: Mon, 12 Jun 2017 23:06:35 GMT  
		Size: 877.2 KB (877153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311cac5d71cd32acb350e3be5d4a1bfdb3de20ac1820292b827f2d6326a92b80`  
		Last Modified: Mon, 12 Jun 2017 23:06:26 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672329fb15d9058e3ceac6c30244b2d6b527fdc0263b3fe5ad21b35a7e486dda`  
		Last Modified: Mon, 12 Jun 2017 23:06:26 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d2354d03a192bdd790861c32b8847d55a479e264d27c53e730b8a6c58b247`  
		Last Modified: Mon, 12 Jun 2017 23:06:26 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3033d7ad16dfc6d999a124199e98deb2c758746410cb640697199aa5d6b17b5e`  
		Last Modified: Mon, 12 Jun 2017 23:06:27 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e25037ce95415eb26305125ece84f53d663d58cc76d6d2ccd3406054a17869`  
		Last Modified: Mon, 12 Jun 2017 23:06:39 GMT  
		Size: 106.6 MB (106577612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8u131-nanoserver`

```console
$ docker pull openjdk@sha256:7606050daa6e08d984eead27c421b04cd0f8ee807f54885221514f0fc7902a64
```

-	Platforms:
	-	windows; amd64

### `openjdk:8u131-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **476.2 MB (476188760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13c91f2ca779072ed9a82792fabb91708192d2d13b0185afdf9736293b712eb7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 20 Nov 2016 11:39:18 GMT
RUN Apply image 10.0.14393.0
# Fri, 07 Apr 2017 09:40:17 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:37:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 12 Jun 2017 23:04:10 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Mon, 12 Jun 2017 23:04:28 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Mon, 12 Jun 2017 23:04:30 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 23:04:32 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.131-1
# Mon, 12 Jun 2017 23:04:33 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.131-1.b11.ojdkbuild.windows.x86_64.zip
# Mon, 12 Jun 2017 23:04:35 GMT
ENV JAVA_OJDKBUILD_SHA256=7e7384636054001499ba96d55c90fc39cbb0441281254a1e9ac8510b527a7a46
# Mon, 12 Jun 2017 23:05:11 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a43ac69611f40511708beba10dfe6fbe3e266ca933b6fd49c87a9f31f46f46c`  
		Size: 116.0 MB (116037241 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:acc75acac61e9635ae7c57f4d74b6ac6a2efef41d7b17052ff6f5bc0fb92e960`  
		Last Modified: Wed, 26 Apr 2017 19:51:40 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39aac3aa579c2595a79ccf9025bef2fde6d5213b295838ee5f7943f41aecd3e7`  
		Last Modified: Mon, 12 Jun 2017 23:06:33 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1193a9ba6999c3705a3195fd6bab0516b439a97609fbe1777a45dc205cb6cb6e`  
		Last Modified: Mon, 12 Jun 2017 23:06:35 GMT  
		Size: 877.2 KB (877153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311cac5d71cd32acb350e3be5d4a1bfdb3de20ac1820292b827f2d6326a92b80`  
		Last Modified: Mon, 12 Jun 2017 23:06:26 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672329fb15d9058e3ceac6c30244b2d6b527fdc0263b3fe5ad21b35a7e486dda`  
		Last Modified: Mon, 12 Jun 2017 23:06:26 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d2354d03a192bdd790861c32b8847d55a479e264d27c53e730b8a6c58b247`  
		Last Modified: Mon, 12 Jun 2017 23:06:26 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3033d7ad16dfc6d999a124199e98deb2c758746410cb640697199aa5d6b17b5e`  
		Last Modified: Mon, 12 Jun 2017 23:06:27 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e25037ce95415eb26305125ece84f53d663d58cc76d6d2ccd3406054a17869`  
		Last Modified: Mon, 12 Jun 2017 23:06:39 GMT  
		Size: 106.6 MB (106577612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8-jdk-nanoserver`

```console
$ docker pull openjdk@sha256:7606050daa6e08d984eead27c421b04cd0f8ee807f54885221514f0fc7902a64
```

-	Platforms:
	-	windows; amd64

### `openjdk:8-jdk-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **476.2 MB (476188760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13c91f2ca779072ed9a82792fabb91708192d2d13b0185afdf9736293b712eb7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 20 Nov 2016 11:39:18 GMT
RUN Apply image 10.0.14393.0
# Fri, 07 Apr 2017 09:40:17 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:37:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 12 Jun 2017 23:04:10 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Mon, 12 Jun 2017 23:04:28 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Mon, 12 Jun 2017 23:04:30 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 23:04:32 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.131-1
# Mon, 12 Jun 2017 23:04:33 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.131-1.b11.ojdkbuild.windows.x86_64.zip
# Mon, 12 Jun 2017 23:04:35 GMT
ENV JAVA_OJDKBUILD_SHA256=7e7384636054001499ba96d55c90fc39cbb0441281254a1e9ac8510b527a7a46
# Mon, 12 Jun 2017 23:05:11 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a43ac69611f40511708beba10dfe6fbe3e266ca933b6fd49c87a9f31f46f46c`  
		Size: 116.0 MB (116037241 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:acc75acac61e9635ae7c57f4d74b6ac6a2efef41d7b17052ff6f5bc0fb92e960`  
		Last Modified: Wed, 26 Apr 2017 19:51:40 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39aac3aa579c2595a79ccf9025bef2fde6d5213b295838ee5f7943f41aecd3e7`  
		Last Modified: Mon, 12 Jun 2017 23:06:33 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1193a9ba6999c3705a3195fd6bab0516b439a97609fbe1777a45dc205cb6cb6e`  
		Last Modified: Mon, 12 Jun 2017 23:06:35 GMT  
		Size: 877.2 KB (877153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311cac5d71cd32acb350e3be5d4a1bfdb3de20ac1820292b827f2d6326a92b80`  
		Last Modified: Mon, 12 Jun 2017 23:06:26 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672329fb15d9058e3ceac6c30244b2d6b527fdc0263b3fe5ad21b35a7e486dda`  
		Last Modified: Mon, 12 Jun 2017 23:06:26 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d2354d03a192bdd790861c32b8847d55a479e264d27c53e730b8a6c58b247`  
		Last Modified: Mon, 12 Jun 2017 23:06:26 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3033d7ad16dfc6d999a124199e98deb2c758746410cb640697199aa5d6b17b5e`  
		Last Modified: Mon, 12 Jun 2017 23:06:27 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e25037ce95415eb26305125ece84f53d663d58cc76d6d2ccd3406054a17869`  
		Last Modified: Mon, 12 Jun 2017 23:06:39 GMT  
		Size: 106.6 MB (106577612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8-nanoserver`

```console
$ docker pull openjdk@sha256:7606050daa6e08d984eead27c421b04cd0f8ee807f54885221514f0fc7902a64
```

-	Platforms:
	-	windows; amd64

### `openjdk:8-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **476.2 MB (476188760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13c91f2ca779072ed9a82792fabb91708192d2d13b0185afdf9736293b712eb7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 20 Nov 2016 11:39:18 GMT
RUN Apply image 10.0.14393.0
# Fri, 07 Apr 2017 09:40:17 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:37:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 12 Jun 2017 23:04:10 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Mon, 12 Jun 2017 23:04:28 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Mon, 12 Jun 2017 23:04:30 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 23:04:32 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.131-1
# Mon, 12 Jun 2017 23:04:33 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.131-1.b11.ojdkbuild.windows.x86_64.zip
# Mon, 12 Jun 2017 23:04:35 GMT
ENV JAVA_OJDKBUILD_SHA256=7e7384636054001499ba96d55c90fc39cbb0441281254a1e9ac8510b527a7a46
# Mon, 12 Jun 2017 23:05:11 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a43ac69611f40511708beba10dfe6fbe3e266ca933b6fd49c87a9f31f46f46c`  
		Size: 116.0 MB (116037241 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:acc75acac61e9635ae7c57f4d74b6ac6a2efef41d7b17052ff6f5bc0fb92e960`  
		Last Modified: Wed, 26 Apr 2017 19:51:40 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39aac3aa579c2595a79ccf9025bef2fde6d5213b295838ee5f7943f41aecd3e7`  
		Last Modified: Mon, 12 Jun 2017 23:06:33 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1193a9ba6999c3705a3195fd6bab0516b439a97609fbe1777a45dc205cb6cb6e`  
		Last Modified: Mon, 12 Jun 2017 23:06:35 GMT  
		Size: 877.2 KB (877153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311cac5d71cd32acb350e3be5d4a1bfdb3de20ac1820292b827f2d6326a92b80`  
		Last Modified: Mon, 12 Jun 2017 23:06:26 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672329fb15d9058e3ceac6c30244b2d6b527fdc0263b3fe5ad21b35a7e486dda`  
		Last Modified: Mon, 12 Jun 2017 23:06:26 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d2354d03a192bdd790861c32b8847d55a479e264d27c53e730b8a6c58b247`  
		Last Modified: Mon, 12 Jun 2017 23:06:26 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3033d7ad16dfc6d999a124199e98deb2c758746410cb640697199aa5d6b17b5e`  
		Last Modified: Mon, 12 Jun 2017 23:06:27 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e25037ce95415eb26305125ece84f53d663d58cc76d6d2ccd3406054a17869`  
		Last Modified: Mon, 12 Jun 2017 23:06:39 GMT  
		Size: 106.6 MB (106577612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:jdk-nanoserver`

```console
$ docker pull openjdk@sha256:7606050daa6e08d984eead27c421b04cd0f8ee807f54885221514f0fc7902a64
```

-	Platforms:
	-	windows; amd64

### `openjdk:jdk-nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **476.2 MB (476188760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13c91f2ca779072ed9a82792fabb91708192d2d13b0185afdf9736293b712eb7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 20 Nov 2016 11:39:18 GMT
RUN Apply image 10.0.14393.0
# Fri, 07 Apr 2017 09:40:17 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:37:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 12 Jun 2017 23:04:10 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Mon, 12 Jun 2017 23:04:28 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Mon, 12 Jun 2017 23:04:30 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 23:04:32 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.131-1
# Mon, 12 Jun 2017 23:04:33 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.131-1.b11.ojdkbuild.windows.x86_64.zip
# Mon, 12 Jun 2017 23:04:35 GMT
ENV JAVA_OJDKBUILD_SHA256=7e7384636054001499ba96d55c90fc39cbb0441281254a1e9ac8510b527a7a46
# Mon, 12 Jun 2017 23:05:11 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a43ac69611f40511708beba10dfe6fbe3e266ca933b6fd49c87a9f31f46f46c`  
		Size: 116.0 MB (116037241 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:acc75acac61e9635ae7c57f4d74b6ac6a2efef41d7b17052ff6f5bc0fb92e960`  
		Last Modified: Wed, 26 Apr 2017 19:51:40 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39aac3aa579c2595a79ccf9025bef2fde6d5213b295838ee5f7943f41aecd3e7`  
		Last Modified: Mon, 12 Jun 2017 23:06:33 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1193a9ba6999c3705a3195fd6bab0516b439a97609fbe1777a45dc205cb6cb6e`  
		Last Modified: Mon, 12 Jun 2017 23:06:35 GMT  
		Size: 877.2 KB (877153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311cac5d71cd32acb350e3be5d4a1bfdb3de20ac1820292b827f2d6326a92b80`  
		Last Modified: Mon, 12 Jun 2017 23:06:26 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672329fb15d9058e3ceac6c30244b2d6b527fdc0263b3fe5ad21b35a7e486dda`  
		Last Modified: Mon, 12 Jun 2017 23:06:26 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d2354d03a192bdd790861c32b8847d55a479e264d27c53e730b8a6c58b247`  
		Last Modified: Mon, 12 Jun 2017 23:06:26 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3033d7ad16dfc6d999a124199e98deb2c758746410cb640697199aa5d6b17b5e`  
		Last Modified: Mon, 12 Jun 2017 23:06:27 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e25037ce95415eb26305125ece84f53d663d58cc76d6d2ccd3406054a17869`  
		Last Modified: Mon, 12 Jun 2017 23:06:39 GMT  
		Size: 106.6 MB (106577612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:nanoserver`

```console
$ docker pull openjdk@sha256:7606050daa6e08d984eead27c421b04cd0f8ee807f54885221514f0fc7902a64
```

-	Platforms:
	-	windows; amd64

### `openjdk:nanoserver` - windows; amd64

-	Docker Version: 1.12.2-cs2-ws-beta
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **476.2 MB (476188760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13c91f2ca779072ed9a82792fabb91708192d2d13b0185afdf9736293b712eb7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 20 Nov 2016 11:39:18 GMT
RUN Apply image 10.0.14393.0
# Fri, 07 Apr 2017 09:40:17 GMT
RUN Install update 10.0.14393.1066
# Wed, 26 Apr 2017 19:37:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 12 Jun 2017 23:04:10 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Mon, 12 Jun 2017 23:04:28 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Mon, 12 Jun 2017 23:04:30 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 23:04:32 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.131-1
# Mon, 12 Jun 2017 23:04:33 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.131-1.b11.ojdkbuild.windows.x86_64.zip
# Mon, 12 Jun 2017 23:04:35 GMT
ENV JAVA_OJDKBUILD_SHA256=7e7384636054001499ba96d55c90fc39cbb0441281254a1e9ac8510b527a7a46
# Mon, 12 Jun 2017 23:05:11 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a43ac69611f40511708beba10dfe6fbe3e266ca933b6fd49c87a9f31f46f46c`  
		Size: 116.0 MB (116037241 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:acc75acac61e9635ae7c57f4d74b6ac6a2efef41d7b17052ff6f5bc0fb92e960`  
		Last Modified: Wed, 26 Apr 2017 19:51:40 GMT  
		Size: 968.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39aac3aa579c2595a79ccf9025bef2fde6d5213b295838ee5f7943f41aecd3e7`  
		Last Modified: Mon, 12 Jun 2017 23:06:33 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1193a9ba6999c3705a3195fd6bab0516b439a97609fbe1777a45dc205cb6cb6e`  
		Last Modified: Mon, 12 Jun 2017 23:06:35 GMT  
		Size: 877.2 KB (877153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311cac5d71cd32acb350e3be5d4a1bfdb3de20ac1820292b827f2d6326a92b80`  
		Last Modified: Mon, 12 Jun 2017 23:06:26 GMT  
		Size: 960.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672329fb15d9058e3ceac6c30244b2d6b527fdc0263b3fe5ad21b35a7e486dda`  
		Last Modified: Mon, 12 Jun 2017 23:06:26 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d2354d03a192bdd790861c32b8847d55a479e264d27c53e730b8a6c58b247`  
		Last Modified: Mon, 12 Jun 2017 23:06:26 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3033d7ad16dfc6d999a124199e98deb2c758746410cb640697199aa5d6b17b5e`  
		Last Modified: Mon, 12 Jun 2017 23:06:27 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e25037ce95415eb26305125ece84f53d663d58cc76d6d2ccd3406054a17869`  
		Last Modified: Mon, 12 Jun 2017 23:06:39 GMT  
		Size: 106.6 MB (106577612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8u131-jre`

```console
$ docker pull openjdk@sha256:4e87e90c8074df3e653388c34c1da21d2988a21daf6f3f0e3669aba12876f342
```

-	Platforms:
	-	linux; amd64

### `openjdk:8u131-jre` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.8 MB (126763656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:407a6774b2b5b9de9d010e8dbc651de445fcbf28a2d69e7cd0168b20a9865177`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:23:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:26:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 12 Jun 2017 17:26:20 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:26:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:26:23 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 17:26:25 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Mon, 12 Jun 2017 17:26:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 12 Jun 2017 17:26:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 12 Jun 2017 17:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d274e5d309ddee8129c12282e4e8f5ed08e36c51570f7babc49c7279cfceebc`  
		Last Modified: Tue, 13 Jun 2017 21:47:38 GMT  
		Size: 568.5 KB (568467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d93e028e8faa1ac685a0db314d2ea6bfc3c3f7fdab69b8fee07b73679e1ea81`  
		Last Modified: Tue, 13 Jun 2017 21:47:37 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75daf25114d3ab76f8e77f1b39284a7e21ec7ba1c29be46dafa0956d29618580`  
		Last Modified: Tue, 13 Jun 2017 21:47:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab6fa88c00d0466305ec00cdad040a554e36e5d482a86b4a9cf811f08cfd9b8`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3ffd274c10fce67199ed47d29ba01875da3b9a33189bfb33e76fc3e6939b79`  
		Last Modified: Tue, 13 Jun 2017 21:47:47 GMT  
		Size: 54.1 MB (54073769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629463368949121d11835996200fea40eada7e5e2842e937308b31ed541ecf76`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 289.6 KB (289643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8-jre`

```console
$ docker pull openjdk@sha256:4e87e90c8074df3e653388c34c1da21d2988a21daf6f3f0e3669aba12876f342
```

-	Platforms:
	-	linux; amd64

### `openjdk:8-jre` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.8 MB (126763656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:407a6774b2b5b9de9d010e8dbc651de445fcbf28a2d69e7cd0168b20a9865177`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:23:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:26:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 12 Jun 2017 17:26:20 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:26:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:26:23 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 17:26:25 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Mon, 12 Jun 2017 17:26:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 12 Jun 2017 17:26:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 12 Jun 2017 17:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d274e5d309ddee8129c12282e4e8f5ed08e36c51570f7babc49c7279cfceebc`  
		Last Modified: Tue, 13 Jun 2017 21:47:38 GMT  
		Size: 568.5 KB (568467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d93e028e8faa1ac685a0db314d2ea6bfc3c3f7fdab69b8fee07b73679e1ea81`  
		Last Modified: Tue, 13 Jun 2017 21:47:37 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75daf25114d3ab76f8e77f1b39284a7e21ec7ba1c29be46dafa0956d29618580`  
		Last Modified: Tue, 13 Jun 2017 21:47:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab6fa88c00d0466305ec00cdad040a554e36e5d482a86b4a9cf811f08cfd9b8`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3ffd274c10fce67199ed47d29ba01875da3b9a33189bfb33e76fc3e6939b79`  
		Last Modified: Tue, 13 Jun 2017 21:47:47 GMT  
		Size: 54.1 MB (54073769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629463368949121d11835996200fea40eada7e5e2842e937308b31ed541ecf76`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 289.6 KB (289643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:jre`

```console
$ docker pull openjdk@sha256:4e87e90c8074df3e653388c34c1da21d2988a21daf6f3f0e3669aba12876f342
```

-	Platforms:
	-	linux; amd64

### `openjdk:jre` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.8 MB (126763656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:407a6774b2b5b9de9d010e8dbc651de445fcbf28a2d69e7cd0168b20a9865177`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:23:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:26:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 12 Jun 2017 17:26:20 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:26:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:26:23 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 17:26:25 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Mon, 12 Jun 2017 17:26:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 12 Jun 2017 17:26:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 12 Jun 2017 17:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d274e5d309ddee8129c12282e4e8f5ed08e36c51570f7babc49c7279cfceebc`  
		Last Modified: Tue, 13 Jun 2017 21:47:38 GMT  
		Size: 568.5 KB (568467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d93e028e8faa1ac685a0db314d2ea6bfc3c3f7fdab69b8fee07b73679e1ea81`  
		Last Modified: Tue, 13 Jun 2017 21:47:37 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75daf25114d3ab76f8e77f1b39284a7e21ec7ba1c29be46dafa0956d29618580`  
		Last Modified: Tue, 13 Jun 2017 21:47:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab6fa88c00d0466305ec00cdad040a554e36e5d482a86b4a9cf811f08cfd9b8`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3ffd274c10fce67199ed47d29ba01875da3b9a33189bfb33e76fc3e6939b79`  
		Last Modified: Tue, 13 Jun 2017 21:47:47 GMT  
		Size: 54.1 MB (54073769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629463368949121d11835996200fea40eada7e5e2842e937308b31ed541ecf76`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 289.6 KB (289643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8u131-jre-alpine`

```console
$ docker pull openjdk@sha256:63c176fdfc83479c84a563c872dde49805215d94e6ad153cad74e3ef37ce2703
```

-	Platforms:
	-	linux; amd64

### `openjdk:8u131-jre-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56271819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:038cdcbf73ff79e1510ac0d789e7666aecff32fa42c835fa95e16673ffefffa3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:37:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Mon, 19 Jun 2017 22:37:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:37:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5715c1254671847d6c3f8b1b58fb26a9a84de5e4fa4e57b7a41b9cd6e0325f`  
		Last Modified: Tue, 20 Jun 2017 21:13:01 GMT  
		Size: 54.3 MB (54281425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:8-jre-alpine`

```console
$ docker pull openjdk@sha256:63c176fdfc83479c84a563c872dde49805215d94e6ad153cad74e3ef37ce2703
```

-	Platforms:
	-	linux; amd64

### `openjdk:8-jre-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56271819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:038cdcbf73ff79e1510ac0d789e7666aecff32fa42c835fa95e16673ffefffa3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:37:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Mon, 19 Jun 2017 22:37:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:37:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5715c1254671847d6c3f8b1b58fb26a9a84de5e4fa4e57b7a41b9cd6e0325f`  
		Last Modified: Tue, 20 Jun 2017 21:13:01 GMT  
		Size: 54.3 MB (54281425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:jre-alpine`

```console
$ docker pull openjdk@sha256:63c176fdfc83479c84a563c872dde49805215d94e6ad153cad74e3ef37ce2703
```

-	Platforms:
	-	linux; amd64

### `openjdk:jre-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56271819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:038cdcbf73ff79e1510ac0d789e7666aecff32fa42c835fa95e16673ffefffa3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:37:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Mon, 19 Jun 2017 22:37:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:37:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5715c1254671847d6c3f8b1b58fb26a9a84de5e4fa4e57b7a41b9cd6e0325f`  
		Last Modified: Tue, 20 Jun 2017 21:13:01 GMT  
		Size: 54.3 MB (54281425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:9-b170-jdk`

```console
$ docker pull openjdk@sha256:d2b8732363b91e2179e214f29ad85b37669d2ae41a2451e8726aaba8637adb3b
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-b170-jdk` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.4 MB (263398123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ca90c741e6b13ef56e442913d277bde2cdc0123d6259c498783c792ec39875`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:45:47 GMT
ADD file:a66dc0ceece0e281da4052a3eae5b966d83cc9d3f269ffd3ea29f2b59e4f1463 in / 
# Wed, 07 Jun 2017 17:45:48 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:28:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:27:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:27:17 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Mon, 12 Jun 2017 17:27:18 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:27:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:27:21 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:27:21 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 17:27:22 GMT
ENV JAVA_VERSION=9~b170
# Mon, 12 Jun 2017 17:27:23 GMT
ENV JAVA_DEBIAN_VERSION=9~b170-2
# Mon, 12 Jun 2017 17:28:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:acc9a3eece3b042d397feae332fe06f3a630b42b002f384d91ad214e5b0c30a9`  
		Last Modified: Wed, 07 Jun 2017 18:04:09 GMT  
		Size: 45.3 MB (45313821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbda5906e878d15a3548f75de4cb0c85ce97fff4c1ee1eb6e6f928122f9756dd`  
		Last Modified: Wed, 07 Jun 2017 20:09:28 GMT  
		Size: 11.2 MB (11232366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac85a12d174b5650f919587cbf7c8cc617a8db5e87676dd26c41461d31b5ec38`  
		Last Modified: Wed, 07 Jun 2017 20:10:10 GMT  
		Size: 50.9 MB (50942792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c6846b1510be4fb3371c169cb47b6a2f2c09ca94132ee9bcdc9b7bb4a8bf6d`  
		Last Modified: Wed, 14 Jun 2017 11:40:13 GMT  
		Size: 655.2 KB (655240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6602782d2109de55c98dc5cd3242af71364e0f3547eadae5b284d224eea09c44`  
		Last Modified: Wed, 14 Jun 2017 11:40:10 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2942f405c19f02a0262a2eee68f11efc170e03f5c5208faeab228541b66e779a`  
		Last Modified: Wed, 14 Jun 2017 11:40:10 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65eb1cb2e6bb66f4e0b7ccd4babef73bd6292720f61a67529c16b44107eea8a3`  
		Last Modified: Wed, 14 Jun 2017 11:40:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f113d2e0518884014aa1ee0089b009ecbb2031486bed34cd5e6b2846f932336`  
		Last Modified: Wed, 14 Jun 2017 11:41:02 GMT  
		Size: 155.3 MB (155253319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:9-b170`

```console
$ docker pull openjdk@sha256:d2b8732363b91e2179e214f29ad85b37669d2ae41a2451e8726aaba8637adb3b
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-b170` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.4 MB (263398123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ca90c741e6b13ef56e442913d277bde2cdc0123d6259c498783c792ec39875`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:45:47 GMT
ADD file:a66dc0ceece0e281da4052a3eae5b966d83cc9d3f269ffd3ea29f2b59e4f1463 in / 
# Wed, 07 Jun 2017 17:45:48 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:28:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:27:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:27:17 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Mon, 12 Jun 2017 17:27:18 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:27:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:27:21 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:27:21 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 17:27:22 GMT
ENV JAVA_VERSION=9~b170
# Mon, 12 Jun 2017 17:27:23 GMT
ENV JAVA_DEBIAN_VERSION=9~b170-2
# Mon, 12 Jun 2017 17:28:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:acc9a3eece3b042d397feae332fe06f3a630b42b002f384d91ad214e5b0c30a9`  
		Last Modified: Wed, 07 Jun 2017 18:04:09 GMT  
		Size: 45.3 MB (45313821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbda5906e878d15a3548f75de4cb0c85ce97fff4c1ee1eb6e6f928122f9756dd`  
		Last Modified: Wed, 07 Jun 2017 20:09:28 GMT  
		Size: 11.2 MB (11232366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac85a12d174b5650f919587cbf7c8cc617a8db5e87676dd26c41461d31b5ec38`  
		Last Modified: Wed, 07 Jun 2017 20:10:10 GMT  
		Size: 50.9 MB (50942792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c6846b1510be4fb3371c169cb47b6a2f2c09ca94132ee9bcdc9b7bb4a8bf6d`  
		Last Modified: Wed, 14 Jun 2017 11:40:13 GMT  
		Size: 655.2 KB (655240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6602782d2109de55c98dc5cd3242af71364e0f3547eadae5b284d224eea09c44`  
		Last Modified: Wed, 14 Jun 2017 11:40:10 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2942f405c19f02a0262a2eee68f11efc170e03f5c5208faeab228541b66e779a`  
		Last Modified: Wed, 14 Jun 2017 11:40:10 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65eb1cb2e6bb66f4e0b7ccd4babef73bd6292720f61a67529c16b44107eea8a3`  
		Last Modified: Wed, 14 Jun 2017 11:40:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f113d2e0518884014aa1ee0089b009ecbb2031486bed34cd5e6b2846f932336`  
		Last Modified: Wed, 14 Jun 2017 11:41:02 GMT  
		Size: 155.3 MB (155253319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:9-jdk`

```console
$ docker pull openjdk@sha256:d2b8732363b91e2179e214f29ad85b37669d2ae41a2451e8726aaba8637adb3b
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-jdk` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.4 MB (263398123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ca90c741e6b13ef56e442913d277bde2cdc0123d6259c498783c792ec39875`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:45:47 GMT
ADD file:a66dc0ceece0e281da4052a3eae5b966d83cc9d3f269ffd3ea29f2b59e4f1463 in / 
# Wed, 07 Jun 2017 17:45:48 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:28:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:27:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:27:17 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Mon, 12 Jun 2017 17:27:18 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:27:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:27:21 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:27:21 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 17:27:22 GMT
ENV JAVA_VERSION=9~b170
# Mon, 12 Jun 2017 17:27:23 GMT
ENV JAVA_DEBIAN_VERSION=9~b170-2
# Mon, 12 Jun 2017 17:28:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:acc9a3eece3b042d397feae332fe06f3a630b42b002f384d91ad214e5b0c30a9`  
		Last Modified: Wed, 07 Jun 2017 18:04:09 GMT  
		Size: 45.3 MB (45313821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbda5906e878d15a3548f75de4cb0c85ce97fff4c1ee1eb6e6f928122f9756dd`  
		Last Modified: Wed, 07 Jun 2017 20:09:28 GMT  
		Size: 11.2 MB (11232366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac85a12d174b5650f919587cbf7c8cc617a8db5e87676dd26c41461d31b5ec38`  
		Last Modified: Wed, 07 Jun 2017 20:10:10 GMT  
		Size: 50.9 MB (50942792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c6846b1510be4fb3371c169cb47b6a2f2c09ca94132ee9bcdc9b7bb4a8bf6d`  
		Last Modified: Wed, 14 Jun 2017 11:40:13 GMT  
		Size: 655.2 KB (655240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6602782d2109de55c98dc5cd3242af71364e0f3547eadae5b284d224eea09c44`  
		Last Modified: Wed, 14 Jun 2017 11:40:10 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2942f405c19f02a0262a2eee68f11efc170e03f5c5208faeab228541b66e779a`  
		Last Modified: Wed, 14 Jun 2017 11:40:10 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65eb1cb2e6bb66f4e0b7ccd4babef73bd6292720f61a67529c16b44107eea8a3`  
		Last Modified: Wed, 14 Jun 2017 11:40:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f113d2e0518884014aa1ee0089b009ecbb2031486bed34cd5e6b2846f932336`  
		Last Modified: Wed, 14 Jun 2017 11:41:02 GMT  
		Size: 155.3 MB (155253319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:9`

```console
$ docker pull openjdk@sha256:d2b8732363b91e2179e214f29ad85b37669d2ae41a2451e8726aaba8637adb3b
```

-	Platforms:
	-	linux; amd64

### `openjdk:9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.4 MB (263398123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ca90c741e6b13ef56e442913d277bde2cdc0123d6259c498783c792ec39875`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:45:47 GMT
ADD file:a66dc0ceece0e281da4052a3eae5b966d83cc9d3f269ffd3ea29f2b59e4f1463 in / 
# Wed, 07 Jun 2017 17:45:48 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:28:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:27:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:27:17 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Mon, 12 Jun 2017 17:27:18 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:27:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:27:21 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:27:21 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 17:27:22 GMT
ENV JAVA_VERSION=9~b170
# Mon, 12 Jun 2017 17:27:23 GMT
ENV JAVA_DEBIAN_VERSION=9~b170-2
# Mon, 12 Jun 2017 17:28:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:acc9a3eece3b042d397feae332fe06f3a630b42b002f384d91ad214e5b0c30a9`  
		Last Modified: Wed, 07 Jun 2017 18:04:09 GMT  
		Size: 45.3 MB (45313821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbda5906e878d15a3548f75de4cb0c85ce97fff4c1ee1eb6e6f928122f9756dd`  
		Last Modified: Wed, 07 Jun 2017 20:09:28 GMT  
		Size: 11.2 MB (11232366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac85a12d174b5650f919587cbf7c8cc617a8db5e87676dd26c41461d31b5ec38`  
		Last Modified: Wed, 07 Jun 2017 20:10:10 GMT  
		Size: 50.9 MB (50942792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c6846b1510be4fb3371c169cb47b6a2f2c09ca94132ee9bcdc9b7bb4a8bf6d`  
		Last Modified: Wed, 14 Jun 2017 11:40:13 GMT  
		Size: 655.2 KB (655240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6602782d2109de55c98dc5cd3242af71364e0f3547eadae5b284d224eea09c44`  
		Last Modified: Wed, 14 Jun 2017 11:40:10 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2942f405c19f02a0262a2eee68f11efc170e03f5c5208faeab228541b66e779a`  
		Last Modified: Wed, 14 Jun 2017 11:40:10 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65eb1cb2e6bb66f4e0b7ccd4babef73bd6292720f61a67529c16b44107eea8a3`  
		Last Modified: Wed, 14 Jun 2017 11:40:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f113d2e0518884014aa1ee0089b009ecbb2031486bed34cd5e6b2846f932336`  
		Last Modified: Wed, 14 Jun 2017 11:41:02 GMT  
		Size: 155.3 MB (155253319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:9-b170-jre`

```console
$ docker pull openjdk@sha256:748d449d751ed7b7ab57039415f81985ce66b62c3868e8ba1a5c96f8b8a37fc9
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-b170-jre` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.0 MB (212953689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21bbde932fbd06f85d645d4417a720d1800dac1ffdcd54c17f6745082a168050`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:45:47 GMT
ADD file:a66dc0ceece0e281da4052a3eae5b966d83cc9d3f269ffd3ea29f2b59e4f1463 in / 
# Wed, 07 Jun 2017 17:45:48 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:28:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:28:36 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Mon, 12 Jun 2017 17:28:37 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:28:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:28:39 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:28:40 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 17:28:41 GMT
ENV JAVA_VERSION=9~b170
# Mon, 12 Jun 2017 17:28:41 GMT
ENV JAVA_DEBIAN_VERSION=9~b170-2
# Mon, 12 Jun 2017 17:29:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:acc9a3eece3b042d397feae332fe06f3a630b42b002f384d91ad214e5b0c30a9`  
		Last Modified: Wed, 07 Jun 2017 18:04:09 GMT  
		Size: 45.3 MB (45313821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbda5906e878d15a3548f75de4cb0c85ce97fff4c1ee1eb6e6f928122f9756dd`  
		Last Modified: Wed, 07 Jun 2017 20:09:28 GMT  
		Size: 11.2 MB (11232366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1389576b7193915c15c29271f9e614a8da310670b515796a56b4dc5f73a57f`  
		Last Modified: Wed, 14 Jun 2017 11:42:02 GMT  
		Size: 623.5 KB (623548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9c827a79040e1264c21d4f01788313bc596b05f40466f50754ed64a74a3373`  
		Last Modified: Wed, 14 Jun 2017 11:41:59 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6039bebe6401b48d530b498bf1d9e24485236ec158062c3f1c5ddb911e00825`  
		Last Modified: Wed, 14 Jun 2017 11:41:59 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d54515e9bf8bcf2a1f5a6b07a9cc3cc87465fd0abbfb6980654e4e0c362aa9`  
		Last Modified: Wed, 14 Jun 2017 11:41:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2555bf9eff93f9c80bd6bc7c571ada990a825c7dd82598a6452c31b9b002ba`  
		Last Modified: Wed, 14 Jun 2017 11:42:18 GMT  
		Size: 155.8 MB (155783370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:9-jre`

```console
$ docker pull openjdk@sha256:748d449d751ed7b7ab57039415f81985ce66b62c3868e8ba1a5c96f8b8a37fc9
```

-	Platforms:
	-	linux; amd64

### `openjdk:9-jre` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.0 MB (212953689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21bbde932fbd06f85d645d4417a720d1800dac1ffdcd54c17f6745082a168050`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:45:47 GMT
ADD file:a66dc0ceece0e281da4052a3eae5b966d83cc9d3f269ffd3ea29f2b59e4f1463 in / 
# Wed, 07 Jun 2017 17:45:48 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:28:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:28:36 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Mon, 12 Jun 2017 17:28:37 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:28:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:28:39 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:28:40 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 17:28:41 GMT
ENV JAVA_VERSION=9~b170
# Mon, 12 Jun 2017 17:28:41 GMT
ENV JAVA_DEBIAN_VERSION=9~b170-2
# Mon, 12 Jun 2017 17:29:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:acc9a3eece3b042d397feae332fe06f3a630b42b002f384d91ad214e5b0c30a9`  
		Last Modified: Wed, 07 Jun 2017 18:04:09 GMT  
		Size: 45.3 MB (45313821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbda5906e878d15a3548f75de4cb0c85ce97fff4c1ee1eb6e6f928122f9756dd`  
		Last Modified: Wed, 07 Jun 2017 20:09:28 GMT  
		Size: 11.2 MB (11232366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1389576b7193915c15c29271f9e614a8da310670b515796a56b4dc5f73a57f`  
		Last Modified: Wed, 14 Jun 2017 11:42:02 GMT  
		Size: 623.5 KB (623548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9c827a79040e1264c21d4f01788313bc596b05f40466f50754ed64a74a3373`  
		Last Modified: Wed, 14 Jun 2017 11:41:59 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6039bebe6401b48d530b498bf1d9e24485236ec158062c3f1c5ddb911e00825`  
		Last Modified: Wed, 14 Jun 2017 11:41:59 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d54515e9bf8bcf2a1f5a6b07a9cc3cc87465fd0abbfb6980654e4e0c362aa9`  
		Last Modified: Wed, 14 Jun 2017 11:41:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2555bf9eff93f9c80bd6bc7c571ada990a825c7dd82598a6452c31b9b002ba`  
		Last Modified: Wed, 14 Jun 2017 11:42:18 GMT  
		Size: 155.8 MB (155783370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
