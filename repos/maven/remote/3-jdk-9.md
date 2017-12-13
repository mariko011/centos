## `maven:3-jdk-9`

```console
$ docker pull maven@sha256:2fc1a479040bc6b5609a7565d12dc06cba6cd4fd012ba9cecb1dc57608ef2f9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `maven:3-jdk-9` - linux; amd64

```console
$ docker pull maven@sha256:2c40777e4daa65667abfe0a8c191f1798867dc78749084757d2980cb3b580707
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.5 MB (409501301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:809114416854705e17024554bf0f6765676cd6d6f45263766f2fe5a2b0b83e37`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 12 Dec 2017 01:43:09 GMT
ADD file:f4f0ede88e0b0edf8235b2a5ff46ab7d8de71d56720cb7dc3032bca0e1872695 in / 
# Tue, 12 Dec 2017 01:43:10 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:51:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:51:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 07:51:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:25:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:25:35 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 15:25:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 15:25:37 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 15:25:37 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 15:25:38 GMT
ENV JAVA_VERSION=9.0.1+11
# Tue, 12 Dec 2017 15:25:38 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Tue, 12 Dec 2017 15:27:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Dec 2017 15:27:38 GMT
CMD ["jshell"]
# Tue, 12 Dec 2017 19:19:11 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 12 Dec 2017 19:19:11 GMT
ARG USER_HOME_DIR=/root
# Tue, 12 Dec 2017 19:19:11 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 12 Dec 2017 19:19:12 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 12 Dec 2017 19:19:13 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Tue, 12 Dec 2017 19:19:15 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 12 Dec 2017 19:19:21 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 12 Dec 2017 19:19:22 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 12 Dec 2017 19:20:03 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 12 Dec 2017 19:20:03 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 12 Dec 2017 19:20:03 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 12 Dec 2017 19:20:04 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a8797cd0c76e8b1532d95708a0a38554c89e6fa0cdd856dbede8555225cdea00`  
		Last Modified: Tue, 12 Dec 2017 01:51:30 GMT  
		Size: 48.4 MB (48429060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdce62b256df9c745afac618b5a44d73531cede1a187586e73ed27bd7e1c508`  
		Last Modified: Tue, 12 Dec 2017 08:01:58 GMT  
		Size: 8.6 MB (8636787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c93763e33f35c3974631198e261ac389cb564d90b37f0443650ce34fee2dba2`  
		Last Modified: Tue, 12 Dec 2017 08:01:57 GMT  
		Size: 9.0 MB (8973876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdbb22c778e9128dce650ba952241183b7375138fa397187b7967efef8221039`  
		Last Modified: Tue, 12 Dec 2017 08:02:29 GMT  
		Size: 48.6 MB (48567783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b7d6f2e29096cc93e652b48e0f9cbe3c28587efeb67afb05a4a3c95bfd53cbd`  
		Last Modified: Tue, 12 Dec 2017 16:21:06 GMT  
		Size: 894.4 KB (894420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834793cb302ca7c856b57ded5f91611a4c74209cd8dd50fad662bf5479f954e0`  
		Last Modified: Tue, 12 Dec 2017 16:21:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35762e32445880df44cfe0452638ad5d1af2ca1b35e54ff612bc8de21a204f4`  
		Last Modified: Tue, 12 Dec 2017 16:21:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767ae54d85a98ebc04ac36a2f00fb89d040bb316d7e72258cb5ba95184a42bd8`  
		Last Modified: Tue, 12 Dec 2017 16:22:08 GMT  
		Size: 285.1 MB (285113816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e238308c6de4d74e116e96e048ec6bb6ba8ef6d2e24f3bdd887d8789dd6b79b1`  
		Last Modified: Tue, 12 Dec 2017 19:21:12 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c386b67bfd0dd2a295fa362d27812d1a68f81bcc2a944f1bd99b57b2ae7fabb0`  
		Last Modified: Tue, 12 Dec 2017 19:21:13 GMT  
		Size: 8.9 MB (8883843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e687b0095a8d1cc310ed37e30881261e25f9c6f928b41709254cb12f5c86181b`  
		Last Modified: Tue, 12 Dec 2017 19:22:57 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4719e791393a309dcb9ca547817ef91844fc8c063711b89124505e916dfd7bca`  
		Last Modified: Tue, 12 Dec 2017 19:22:57 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; arm variant v5

```console
$ docker pull maven@sha256:be840e736e2645eb21ea96a1c1aea3906953ab08b7cde79b6625900caba3c659
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.5 MB (375539005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d2d888cd8b6036f033e40f8bbbe6921f7a30b78cdd0df8de83479aebcc8ac6f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 12 Dec 2017 20:59:59 GMT
ADD file:af4cd7d5c7a1769f049a442dfd7a1b0fa6359ce5306569a5130c55609ec5175e in / 
# Tue, 12 Dec 2017 20:59:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:56:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:56:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 22:57:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:39:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:39:09 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 23:39:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 23:39:11 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 23:39:11 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 23:39:11 GMT
ENV JAVA_VERSION=9.0.1+11
# Tue, 12 Dec 2017 23:39:12 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Tue, 12 Dec 2017 23:41:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Dec 2017 23:41:51 GMT
CMD ["jshell"]
# Wed, 13 Dec 2017 02:13:33 GMT
ARG MAVEN_VERSION=3.5.2
# Wed, 13 Dec 2017 02:13:34 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Dec 2017 02:13:34 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Wed, 13 Dec 2017 02:13:35 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Wed, 13 Dec 2017 02:13:37 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Wed, 13 Dec 2017 02:13:40 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Dec 2017 02:13:41 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Dec 2017 02:13:41 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Dec 2017 02:14:57 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Dec 2017 02:14:58 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Dec 2017 02:14:58 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Dec 2017 02:14:59 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:acff8687551d235a654afe80e0891cce1bd27c306fff4e41bb6b44b226a473e4`  
		Last Modified: Tue, 12 Dec 2017 21:10:06 GMT  
		Size: 46.9 MB (46876188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12a8cc19c8faf784e145d3a3c486d1b5a0892e4af7a81189d15f0eb18053a58`  
		Last Modified: Tue, 12 Dec 2017 23:08:24 GMT  
		Size: 7.8 MB (7808219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93c884700496b57c386401815cba851f8f8f992a0295e68194990608ff2dea2`  
		Last Modified: Tue, 12 Dec 2017 23:08:23 GMT  
		Size: 8.7 MB (8718966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ee1043aa0902f88a632c6b234c1bb077d60f488629571507684973eb93faa6`  
		Last Modified: Tue, 12 Dec 2017 23:08:50 GMT  
		Size: 46.4 MB (46397899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2099c7b7dd2213f466f51f6b0bfa54387da43193cf9ce36ee3cbdd2109e550`  
		Last Modified: Tue, 12 Dec 2017 23:57:33 GMT  
		Size: 887.6 KB (887635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f617a7acf88155aa54c4680de33c2c8bebf3d8f0c74d454fb551a387fce856d`  
		Last Modified: Tue, 12 Dec 2017 23:57:33 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5b69c29b35770fd4cf754353c079ca508f0985cacb91608e06978340869b4c`  
		Last Modified: Tue, 12 Dec 2017 23:57:33 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab4b92fa27c1e851d400e002fa6f39816f1f964ef6f91cc5dc4f91faad66612`  
		Last Modified: Tue, 12 Dec 2017 23:58:27 GMT  
		Size: 256.0 MB (255964511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215745c08c4d19133d0b31f4638d7c8f59ce1e470fb9ed60f58c027822cdc9a5`  
		Last Modified: Wed, 13 Dec 2017 02:16:35 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64cac283a53765bc4ce07cc333be4077c126ca507fb61a5c219345d56096fc7`  
		Last Modified: Wed, 13 Dec 2017 02:16:37 GMT  
		Size: 8.9 MB (8883875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6df5d2c7b6890806f4521b0035304bd35b348fe0c278b053f8f6a7a6b49c117`  
		Last Modified: Wed, 13 Dec 2017 02:19:21 GMT  
		Size: 747.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b28e90511c509043220fa66255b189a846fff9654ba38c96adb379f5b0fa2193`  
		Last Modified: Wed, 13 Dec 2017 02:19:21 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; arm variant v7

```console
$ docker pull maven@sha256:0b5eac4df0afbcd3697ac0e76060af89835456996e8dddd6be9ff47e9349a973
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **372.6 MB (372555814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2635a8044c950cddb6a4d68a97f1b43de509dc813fcab7e2b324171bde433317`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 12 Dec 2017 13:30:47 GMT
ADD file:b788e24f4cada715c58008741a4bc6b55912bf54f897e9febf55038c7259474a in / 
# Tue, 12 Dec 2017 13:30:48 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:18:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:18:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 14:18:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:20:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:20:45 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 15:20:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 15:20:48 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 15:20:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 15:20:49 GMT
ENV JAVA_VERSION=9.0.1+11
# Tue, 12 Dec 2017 15:20:49 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Tue, 12 Dec 2017 15:22:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Dec 2017 15:22:29 GMT
CMD ["jshell"]
# Tue, 12 Dec 2017 18:33:32 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 12 Dec 2017 18:33:32 GMT
ARG USER_HOME_DIR=/root
# Tue, 12 Dec 2017 18:33:32 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 12 Dec 2017 18:33:33 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 12 Dec 2017 18:33:34 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Tue, 12 Dec 2017 18:33:37 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 12 Dec 2017 18:33:37 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 12 Dec 2017 18:33:38 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 12 Dec 2017 18:35:04 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 12 Dec 2017 18:35:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 12 Dec 2017 18:35:05 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 12 Dec 2017 18:35:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ee9da7ca0ecfb9e496d4e6a11a2de17d38b2676f64081ca6643b85f1026bd24a`  
		Last Modified: Tue, 12 Dec 2017 13:42:33 GMT  
		Size: 44.8 MB (44836300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9035433aec00afaaa737a1213c4367cab1ef3d7a572aa2cb952e73854b963d0`  
		Last Modified: Tue, 12 Dec 2017 14:32:26 GMT  
		Size: 7.5 MB (7534247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d036c584b8f46f4616710df516ffdb5657ef66387fcf24bd3752cdeaf9091427`  
		Last Modified: Tue, 12 Dec 2017 14:32:26 GMT  
		Size: 8.4 MB (8438419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b479b9228413b4b2b667f467e0854f29fee2f1d886dafe3d80c8ff1f88f6cb`  
		Last Modified: Tue, 12 Dec 2017 14:33:01 GMT  
		Size: 44.5 MB (44458911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08dadcdc8043e8fffd22e2d161e44baa8c3d5ed465d22bc1f5cb8d3931247c41`  
		Last Modified: Tue, 12 Dec 2017 15:36:36 GMT  
		Size: 870.1 KB (870124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4734d69edf519efe4fbedf536d25fa88468f9b50ffdfac218ac60ada6894f4a9`  
		Last Modified: Tue, 12 Dec 2017 15:36:36 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f645962f883a82f79eec1768f3b5ffff9ae768be34e53cf4bcde87794f169db3`  
		Last Modified: Tue, 12 Dec 2017 15:36:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e50d73e0e0281ee08c8a052af07664a4efb14940603581ee862bcd1af7fcd4`  
		Last Modified: Tue, 12 Dec 2017 15:37:27 GMT  
		Size: 257.5 MB (257532250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d396909f1cf0b2ca38623ecb5a385ea53369e8bac474454b31bc5079996ad851`  
		Last Modified: Tue, 12 Dec 2017 18:36:41 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54cc2701350ca5fcfe7b1651795da8eeea5914203e01f9a1068b8ea2cab1e11e`  
		Last Modified: Tue, 12 Dec 2017 18:36:43 GMT  
		Size: 8.9 MB (8883861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcee69fbabde82e04cad191c7e7fb8f02ad3db0ca5f1ecb632cd7f15671545cc`  
		Last Modified: Tue, 12 Dec 2017 18:39:23 GMT  
		Size: 746.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b332ae5606c1aa30b39161adcc5ae45ce1ec84d91b4c2ce5d683570be3a4807`  
		Last Modified: Tue, 12 Dec 2017 18:39:24 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:9cfb5d1c8e366f2ffb7fb3cbb45eba0aac5aa9a562d2e85acf6b12a252866936
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.5 MB (382486509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c6106e3905c76b5a1517a4be14c8815be089312d5eb826573ca7a3b1806e1ca`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:25 GMT
ADD file:2dbe9971a07bebac37e2e609659f04c039921d9ece341799444660b1c747e595 in / 
# Mon, 09 Oct 2017 21:45:26 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:52:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:00:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 10:02:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:48:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 11:48:49 GMT
ENV LANG=C.UTF-8
# Fri, 03 Nov 2017 11:48:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Nov 2017 11:48:52 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 03 Nov 2017 11:48:53 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 12:41:41 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 12:41:42 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 12:48:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 12:48:51 GMT
CMD ["jshell"]
# Sat, 04 Nov 2017 18:35:35 GMT
ARG MAVEN_VERSION=3.5.2
# Sat, 04 Nov 2017 18:35:36 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Nov 2017 18:35:37 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Sat, 04 Nov 2017 18:35:37 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Sat, 04 Nov 2017 18:35:40 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Sat, 04 Nov 2017 18:35:46 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Nov 2017 18:35:47 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Nov 2017 18:35:48 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Dec 2017 17:32:03 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Dec 2017 17:32:04 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 07 Dec 2017 17:32:05 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Dec 2017 17:32:05 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e81325a6af85f75a75f466627b0f3e722d22ef0a99868726a293425fa3678d30`  
		Last Modified: Mon, 09 Oct 2017 21:57:27 GMT  
		Size: 45.3 MB (45334165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6b15acc099095e5b3dae6d84d900fe23c7d7fdf62fa46ad2bf73cd1939322b`  
		Last Modified: Mon, 09 Oct 2017 23:29:57 GMT  
		Size: 7.7 MB (7719898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4498a4fb63cad7de63f11fac1e366250a2d44ef615c578b8613a2e156d949f5c`  
		Last Modified: Fri, 03 Nov 2017 10:49:53 GMT  
		Size: 9.2 MB (9222133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30af5551f0a38f4b7d27e5b13a9a9370036a8d848317e6e9947a57b3fd054165`  
		Last Modified: Fri, 03 Nov 2017 10:50:45 GMT  
		Size: 48.5 MB (48487553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e058bc56d11d31e5cc10425ad41a116cbbab4b9176df876951f58f535e5065d5`  
		Last Modified: Sat, 04 Nov 2017 13:13:51 GMT  
		Size: 879.2 KB (879161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b81fa6dad29a02e0b8773e5f19aebee91e15a3c34657adbefb49bed2a85b68`  
		Last Modified: Sat, 04 Nov 2017 13:13:50 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:427d93aecb547284c5cdf6376aad30f00583f7ca02678ed6e1fd956fce662a9a`  
		Last Modified: Sat, 04 Nov 2017 13:13:50 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc1920bbf304b7810506a12bb5b48ac525b1cfbe3cff326fb42a9cbf18c617d2`  
		Last Modified: Sat, 04 Nov 2017 13:16:14 GMT  
		Size: 262.0 MB (261958047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862caf86087638875929dcb4ae870df8a92578e0122fe811e8fbaa1d22da4f4e`  
		Last Modified: Sat, 04 Nov 2017 18:41:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b01f08e196bb51a548b909d3f482b6da752a54949d4c3b20748b3437fd468f7`  
		Last Modified: Sat, 04 Nov 2017 18:41:25 GMT  
		Size: 8.9 MB (8883829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e3a9795a2558ec41b30061deeca646c011c619e6252779f595bec1303c5ca89`  
		Last Modified: Thu, 07 Dec 2017 17:39:06 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72baf4ba1e31391a8236ce1689dc4d5cf0dd80a30812ed0a8d905633bd80d2e7`  
		Last Modified: Thu, 07 Dec 2017 17:39:06 GMT  
		Size: 367.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; 386

```console
$ docker pull maven@sha256:6da0a8a45d43cbc43ffdfd04311c981522682d7e7271994b9fd56329a9b747ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.9 MB (420893751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df90e537b45fd1e5c930319b7efeb8f272a8e6a8ec56696235dd37473e1f229`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:31 GMT
ADD file:7151fc1811302d898848668f8be530bdc1d6b0832da7b159b54c108f9b9f39ef in / 
# Mon, 09 Oct 2017 21:44:32 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:07:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:26:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:27:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:19:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:19:29 GMT
ENV LANG=C.UTF-8
# Fri, 03 Nov 2017 01:19:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Nov 2017 01:19:31 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 03 Nov 2017 01:19:31 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 10:12:16 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 10:12:16 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 10:14:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 10:14:21 GMT
CMD ["jshell"]
# Sat, 04 Nov 2017 11:24:37 GMT
ARG MAVEN_VERSION=3.5.2
# Sat, 04 Nov 2017 11:24:38 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Nov 2017 11:24:38 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Sat, 04 Nov 2017 11:24:38 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Sat, 04 Nov 2017 11:24:39 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Sat, 04 Nov 2017 11:24:45 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Nov 2017 11:24:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Nov 2017 11:24:45 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Dec 2017 02:47:39 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Dec 2017 02:47:39 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 07 Dec 2017 02:47:40 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Dec 2017 02:47:40 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c4f0ba6c109e4a20a92a03d7e3ed54b584598a77c79e7891221658b1b505c8d3`  
		Last Modified: Mon, 09 Oct 2017 21:50:58 GMT  
		Size: 48.4 MB (48397299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b72b294cfff7eb8dcc3dafb8c0e7697c3a7d4be20ea1cffb502417ad7ef4a81c`  
		Last Modified: Mon, 09 Oct 2017 23:38:45 GMT  
		Size: 8.5 MB (8522414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa574558b4cb00ba838337e7a215b8c5b8278384e951eba7da0e1f7003f859d`  
		Last Modified: Fri, 03 Nov 2017 00:12:49 GMT  
		Size: 9.8 MB (9805839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0058d6363566b60235f127c91f5be0067506016293df32efe5c99e4dc83f6b31`  
		Last Modified: Fri, 03 Nov 2017 00:13:16 GMT  
		Size: 52.2 MB (52154229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae7c834ae8e2c7c0e6c7b7bfef85b7b4a942dd65b3297a87f980688094cb6f8`  
		Last Modified: Sat, 04 Nov 2017 10:44:50 GMT  
		Size: 902.1 KB (902070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f05eaed05ee487cf825cf523df52ed10fd27acdb3fc697306ce9587afca2a607`  
		Last Modified: Sat, 04 Nov 2017 10:44:49 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93c2530c0dc7a7f1fab2f394858066fbce5a373785dac85a273760dd422f2df`  
		Last Modified: Sat, 04 Nov 2017 10:44:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6f44c1eee8919d862052c9718f8c45761a199102356b5c62b072a9759b89de`  
		Last Modified: Sat, 04 Nov 2017 10:45:36 GMT  
		Size: 292.2 MB (292226356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeacae8315b7065b2966e0a2e8de456e4aafd8cb387e7df5ea9973453cafd54b`  
		Last Modified: Sat, 04 Nov 2017 11:27:49 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6bbd281206855fe8d65a8e868ee5f1bbca8d704731bb78763e145d5f6cb409f`  
		Last Modified: Sat, 04 Nov 2017 11:27:50 GMT  
		Size: 8.9 MB (8883830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17b6b9e33386d0e739881844f8a994027e13d8975dfe1e77333832710cc1744`  
		Last Modified: Thu, 07 Dec 2017 02:52:28 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:503a93be6970623dae3a24ae8309aa2265e041c6a127e1b3d0b066d516ab3c7c`  
		Last Modified: Thu, 07 Dec 2017 02:52:28 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; ppc64le

```console
$ docker pull maven@sha256:6695972eee191cd2f8f1f9a81385dd91e8c3f8c59365097ec3257c52862939a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.7 MB (397721552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf17250f3f96ae58dfc0312d4ed56756c5af8c2e64c0011d8252c811654badd9`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:18 GMT
ADD file:c095ec4581fd0b74d04b5c60602abfc26045b0c8018b11e233ff33678663b4bc in / 
# Mon, 09 Oct 2017 21:44:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:32:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:35:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:38:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 21:36:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 21:36:43 GMT
ENV LANG=C.UTF-8
# Thu, 02 Nov 2017 21:36:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 02 Nov 2017 21:36:56 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 02 Nov 2017 21:37:02 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 11:04:37 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 11:04:38 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 11:11:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 11:11:17 GMT
CMD ["jshell"]
# Sat, 04 Nov 2017 12:01:39 GMT
ARG MAVEN_VERSION=3.5.2
# Sat, 04 Nov 2017 12:01:40 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Nov 2017 12:01:42 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Sat, 04 Nov 2017 12:01:43 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Sat, 04 Nov 2017 12:01:50 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Sat, 04 Nov 2017 12:01:57 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Nov 2017 12:02:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Nov 2017 12:02:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Dec 2017 11:02:00 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Dec 2017 11:02:03 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 07 Dec 2017 11:02:05 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Dec 2017 11:02:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:11a0304e8c893e4d955264c2d8a8a0c4dd84908eba9876476623a4a364a7c48e`  
		Last Modified: Mon, 09 Oct 2017 21:50:45 GMT  
		Size: 48.7 MB (48723592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ee00dbe27034f9638c9023274ecf0166a5b554572eb473a7ffc2b3c764737c`  
		Last Modified: Tue, 10 Oct 2017 00:56:04 GMT  
		Size: 8.0 MB (7978865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c04e765611a9cec3c8d273fb944b688101979527677b6d1673ff23fb276b98`  
		Last Modified: Thu, 02 Nov 2017 17:49:42 GMT  
		Size: 9.7 MB (9742580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe1500256ae537b470925ccd468679c4dd7a02f82d153c9280a8e4dcde7f1ff`  
		Last Modified: Thu, 02 Nov 2017 17:50:16 GMT  
		Size: 53.0 MB (52953586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda8bf6ba8389fe6580ff75d4b8db8285f405afa750ee8abd4a7ce643a99cf4b`  
		Last Modified: Sat, 04 Nov 2017 11:25:37 GMT  
		Size: 889.2 KB (889178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1701a6cad86b9e439f0ad9f6956810ba93cab96b6bbf160062cf7970b1d7be3c`  
		Last Modified: Sat, 04 Nov 2017 11:25:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5e4c02f821a9c08b1a7a6ff0b9e9af8c8f2e7683a9d82c9cdef95ef63c96dd`  
		Last Modified: Sat, 04 Nov 2017 11:25:38 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ba075c508b4f0e82645a8050213db289fa6b63082a52950390a2d5befb9987`  
		Last Modified: Sat, 04 Nov 2017 11:26:23 GMT  
		Size: 268.5 MB (268548158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b641a2cccdf5383f1f0770f719cea461ee203024efa76258535748cba3b03a9`  
		Last Modified: Sat, 04 Nov 2017 12:05:15 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c210bfcddd277637855fded7b70daa80b9c87e6dd895fd9b132369d8f8531376`  
		Last Modified: Sat, 04 Nov 2017 12:05:15 GMT  
		Size: 8.9 MB (8883869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd640c1153daa0263ccf6c12971f694d8ed530374c952a37864c5607eea7abdc`  
		Last Modified: Thu, 07 Dec 2017 11:05:34 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1077309ba210c0a04fa24907fdca5b18f7f0240aebd4ed1dc0ed6e7d04033e0c`  
		Last Modified: Thu, 07 Dec 2017 11:05:34 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; s390x

```console
$ docker pull maven@sha256:a321b691921ce7a453f0d4316ecd596bfad9af6db6670d13384ec78e37317f20
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.1 MB (371108986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce19719576594795247f6753b10a1b8ad9f9b04e7dd58c06c1b78a3f122027e1`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:27 GMT
ADD file:51898e1a12f3bbc77c696e9156d7bb51579dc530148ca78c00142c511a349de6 in / 
# Mon, 09 Oct 2017 21:43:27 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:13:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:42:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:43:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 22:47:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 22:47:56 GMT
ENV LANG=C.UTF-8
# Thu, 02 Nov 2017 22:47:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 02 Nov 2017 22:47:57 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 02 Nov 2017 22:47:57 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 16:58:27 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 16:58:27 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 16:59:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 16:59:47 GMT
CMD ["jshell"]
# Sat, 04 Nov 2017 17:30:03 GMT
ARG MAVEN_VERSION=3.5.2
# Sat, 04 Nov 2017 17:30:03 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Nov 2017 17:30:03 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Sat, 04 Nov 2017 17:30:03 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Sat, 04 Nov 2017 17:30:04 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Sat, 04 Nov 2017 17:30:07 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Nov 2017 17:30:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Nov 2017 17:30:08 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Dec 2017 04:09:10 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Dec 2017 04:09:10 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 07 Dec 2017 04:09:11 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Dec 2017 04:09:11 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:387500139c6151d781fe62dbc679af96a9ac79dc2049d4b57d00beb6515f3617`  
		Last Modified: Mon, 09 Oct 2017 21:47:41 GMT  
		Size: 47.3 MB (47292875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2bf7517ce1b767b32d484c45cdbde2774795f97aa23cbd2ca4f9aa57e0907e`  
		Last Modified: Mon, 09 Oct 2017 22:20:45 GMT  
		Size: 8.1 MB (8093416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf6e9bec5e8ebc238611abf06601adf9ff50529f0f19c63cbfaa10a33c32121`  
		Last Modified: Thu, 02 Nov 2017 16:55:12 GMT  
		Size: 9.5 MB (9478048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc27c91df378d34d3fe35fa5f2a0c2b27d326e071ec06354215b99bd258e2e4`  
		Last Modified: Thu, 02 Nov 2017 16:55:31 GMT  
		Size: 50.3 MB (50321473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad1d85bd50f537c631a09410463102dbf36792961b6ec7e3e59ad565eeba3c2`  
		Last Modified: Sat, 04 Nov 2017 17:05:07 GMT  
		Size: 904.6 KB (904634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe1ce9d339a420ab9d9ede1d8f2b127672ff8bfdc8a6ad88cdd7742619b4338`  
		Last Modified: Sat, 04 Nov 2017 17:05:08 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c98cb25aeb88a941e25c4ceb73fd096e142236cb799773aef05ade533e09ec9`  
		Last Modified: Sat, 04 Nov 2017 17:05:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2071655c756fa4fec702e922a6b93ede29a33ce3a2067f54ee2c635639b319`  
		Last Modified: Sat, 04 Nov 2017 17:05:35 GMT  
		Size: 246.1 MB (246132996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb21701084750e2c7bb4a500aaae11f450556f70946f2c9e5e6be26d15476cb`  
		Last Modified: Sat, 04 Nov 2017 17:31:56 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a34a6e5536895a426fcb667760b9214bca4df6d05a96e958d127080d820dee`  
		Last Modified: Sat, 04 Nov 2017 17:31:58 GMT  
		Size: 8.9 MB (8883832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22af13cf83b83081e3a80e3540de6f5d091712bf476a8214ceefdff429c33aee`  
		Last Modified: Thu, 07 Dec 2017 04:11:43 GMT  
		Size: 747.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c671f8fd26c1047e48049af54566d1e284b99d85ceac4aaad25c0a2dd18559`  
		Last Modified: Thu, 07 Dec 2017 04:11:43 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
