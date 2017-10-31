## `maven:3-jdk-9`

```console
$ docker pull maven@sha256:277e16582570b571848fa67bb6b900215dd64c8fd98c1181ce37c68852f6ea02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `maven:3-jdk-9` - linux; amd64

```console
$ docker pull maven@sha256:6d63f42e57740bf32f536b936b374718d1af0a7f03990eb6f7f16e58699d8dc4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.5 MB (402527783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:731c8db30141170448e947b4ed11d00872b4c80b25c424a612579b0a5237a701`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:32:24 GMT
ADD file:d558b03d3d859cf66504349fc540b4c9ea26365896e7cc64fa87a79ca21bcf78 in / 
# Mon, 09 Oct 2017 21:32:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:33:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:33:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:33:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:51:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:52:00 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:52:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:52:01 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:52:02 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:52:02 GMT
ENV JAVA_VERSION=9-b181
# Tue, 10 Oct 2017 00:52:02 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 10 Oct 2017 00:52:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:52:53 GMT
CMD ["jshell"]
# Mon, 30 Oct 2017 20:06:27 GMT
ARG MAVEN_VERSION=3.5.2
# Mon, 30 Oct 2017 20:06:27 GMT
ARG USER_HOME_DIR=/root
# Mon, 30 Oct 2017 20:06:27 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Mon, 30 Oct 2017 20:06:27 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Mon, 30 Oct 2017 20:06:29 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Mon, 30 Oct 2017 20:06:32 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 30 Oct 2017 20:06:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 30 Oct 2017 20:06:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 30 Oct 2017 20:06:33 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 30 Oct 2017 20:06:33 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 30 Oct 2017 20:06:33 GMT
VOLUME [/root/.m2]
# Mon, 30 Oct 2017 20:06:34 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 30 Oct 2017 20:06:34 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3a8649ffa174245c68120e05b22db9c8a8f781cc4d9c24816fb562ecf8ab9652`  
		Last Modified: Mon, 09 Oct 2017 21:39:55 GMT  
		Size: 47.6 MB (47561948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b58c0540eee85afd65d984ed9680210a9e8740b186454a9c5411b9b3862140e`  
		Last Modified: Mon, 09 Oct 2017 22:59:35 GMT  
		Size: 8.6 MB (8552413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c55f19db116c2c49c508d0625d83267697fdac44eba96a9510109088f88fc40`  
		Last Modified: Mon, 09 Oct 2017 22:59:34 GMT  
		Size: 9.3 MB (9274450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf7e2e8b82f67b215add075a7fcc9ca4d027d7f375ddcb3a5d09f0eb6c3afca`  
		Last Modified: Mon, 09 Oct 2017 23:00:03 GMT  
		Size: 48.2 MB (48207160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32822f5e747ae22da3c35acc657e511a8168f628458e42877ed0ec9cd42dcdbf`  
		Last Modified: Tue, 10 Oct 2017 01:27:15 GMT  
		Size: 893.8 KB (893756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68eab7eb0322f04354ca240de0d8e9eace1d6dcc89d779fbbcd264ef137025ea`  
		Last Modified: Tue, 10 Oct 2017 01:27:15 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e345a4b7188b7ca6b86546091bc61ecca78d94ecee591b281a1a73687b155c3d`  
		Last Modified: Tue, 10 Oct 2017 01:27:15 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f46af528a88a933a783d0a32ab91877c8fa43e708efc3527cc5f78c6251f1497`  
		Last Modified: Tue, 10 Oct 2017 01:27:58 GMT  
		Size: 279.2 MB (279152519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fee7ad535b0ad7df69118722360f525cdb205e7e3e2a90e90af404dc2735a8d`  
		Last Modified: Mon, 30 Oct 2017 20:12:20 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db1928d0cf378b17066de060fe7e321d606532ffa1bbea43b9928693a5f9996`  
		Last Modified: Mon, 30 Oct 2017 20:12:21 GMT  
		Size: 8.9 MB (8883836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80da804f0e7a72fdb728b32f76bbd258a9678817fe4e9e281df87d5673488181`  
		Last Modified: Mon, 30 Oct 2017 20:12:20 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8541fde1ad649b9e7f13167db8bd6e6ab9e5b6bb6a1690593aab7bf0e567d0d3`  
		Last Modified: Mon, 30 Oct 2017 20:12:20 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; 386

```console
$ docker pull maven@sha256:462322aa95be44410fe38166e1fdcbcd02d4f8e67cef20a992b18c48bff0b59c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.1 MB (412110425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e214111ace688ecc031b3daef3eec2a9df315bbe5cc9a09b0f78a743deda55e2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:31 GMT
ADD file:7151fc1811302d898848668f8be530bdc1d6b0832da7b159b54c108f9b9f39ef in / 
# Mon, 09 Oct 2017 21:44:32 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:07:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:08:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:09:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:21:52 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 01:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 01:21:54 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 01:21:54 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 01:21:54 GMT
ENV JAVA_VERSION=9-b181
# Tue, 10 Oct 2017 01:21:54 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 10 Oct 2017 01:24:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 01:24:08 GMT
CMD ["jshell"]
# Tue, 31 Oct 2017 01:50:39 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 31 Oct 2017 01:50:39 GMT
ARG USER_HOME_DIR=/root
# Tue, 31 Oct 2017 01:50:39 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 31 Oct 2017 01:50:39 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 31 Oct 2017 01:50:41 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Tue, 31 Oct 2017 01:50:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 31 Oct 2017 01:50:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 31 Oct 2017 01:50:45 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 31 Oct 2017 01:50:45 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 31 Oct 2017 01:50:45 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 31 Oct 2017 01:50:45 GMT
VOLUME [/root/.m2]
# Tue, 31 Oct 2017 01:50:45 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 31 Oct 2017 01:50:46 GMT
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
	-	`sha256:58c3b53a9e9d87dd74dc2a2c6f2f180cfbde0232334af5b23318831fd50a3151`  
		Last Modified: Mon, 09 Oct 2017 23:38:45 GMT  
		Size: 9.6 MB (9553600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c102c9ae193e33b4346131b861118d5a23297296fef56cebaa78bce5588f98`  
		Last Modified: Mon, 09 Oct 2017 23:42:06 GMT  
		Size: 49.9 MB (49890655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ff48fd28f8169a20a19c259094968c0d2d97d7fbe1f3dc463f331f19183fe3`  
		Last Modified: Tue, 10 Oct 2017 02:01:34 GMT  
		Size: 902.0 KB (902039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70433e2ad84b4f304f932b0174b50e3c0c34e2dff7879748ccac25c1979cdc26`  
		Last Modified: Tue, 10 Oct 2017 02:01:33 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69d8f06cfd72e3eef3b4d95d78213bda6b983e8f939b4054b1fd7a9065781a1`  
		Last Modified: Tue, 10 Oct 2017 02:01:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00c21c87afd0defd9e69ff4c862a479e7c475fbc7439b1925868314879bf9c4`  
		Last Modified: Tue, 10 Oct 2017 02:02:17 GMT  
		Size: 286.0 MB (285958883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17daac407aa3c0aea5e847f363043a967a5f07cf98de0070f90a0777b4f0e9df`  
		Last Modified: Tue, 31 Oct 2017 01:55:53 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4064631548e35e6bb6362c9b9f4c2718b9a2d6f7b09e48b3ef81f28b69936b95`  
		Last Modified: Tue, 31 Oct 2017 01:55:58 GMT  
		Size: 8.9 MB (8883835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f9e74868ab2d8a2e7f96639d904098ef09733444be63c7cd7342aae0365f66`  
		Last Modified: Tue, 31 Oct 2017 01:55:53 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8bafbe8e7ded6da502a7743f88e9a892bf083156ea23524ca44516f16200803`  
		Last Modified: Tue, 31 Oct 2017 01:55:53 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; s390x

```console
$ docker pull maven@sha256:f33bf1c0cbf5501f1620162802c273b4d538ed6fbc286c2be142e8971d0da1c5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.1 MB (363067346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aca12d5005b89b0a2ea249065caee3aa3daf5d54ab113d302eca530181d988bb`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:27 GMT
ADD file:51898e1a12f3bbc77c696e9156d7bb51579dc530148ca78c00142c511a349de6 in / 
# Mon, 09 Oct 2017 21:43:27 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:13:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:13:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:13:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:55:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:55:02 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:55:03 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:55:03 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 22:55:03 GMT
ENV JAVA_VERSION=9-b181
# Mon, 09 Oct 2017 22:55:04 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Mon, 09 Oct 2017 22:56:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 09 Oct 2017 22:56:13 GMT
CMD ["jshell"]
# Tue, 31 Oct 2017 03:08:51 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 31 Oct 2017 03:08:52 GMT
ARG USER_HOME_DIR=/root
# Tue, 31 Oct 2017 03:08:52 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 31 Oct 2017 03:08:52 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 31 Oct 2017 03:08:53 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Tue, 31 Oct 2017 03:08:58 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 31 Oct 2017 03:08:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 31 Oct 2017 03:08:58 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 31 Oct 2017 03:08:58 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 31 Oct 2017 03:08:59 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 31 Oct 2017 03:08:59 GMT
VOLUME [/root/.m2]
# Tue, 31 Oct 2017 03:08:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 31 Oct 2017 03:08:59 GMT
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
	-	`sha256:74288a4e0c7163fd8f413c3f39aea05d13784a92020bf38c86348ef9d2b76b67`  
		Last Modified: Mon, 09 Oct 2017 22:20:45 GMT  
		Size: 9.2 MB (9248587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8663142e0ef89070f5a65c954b4a8f8d3462eeceba26a23eb2af4ccfe2735a7a`  
		Last Modified: Mon, 09 Oct 2017 22:21:02 GMT  
		Size: 48.2 MB (48188280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b102511bc4f0a6054edb198e6dccbe8c304119c8161c4c225652cd44312da1`  
		Last Modified: Mon, 09 Oct 2017 23:03:28 GMT  
		Size: 904.6 KB (904609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be250bf56150c108ab32141cbdd9a4f29079f342275c6497c3769e053c6bba4`  
		Last Modified: Mon, 09 Oct 2017 23:03:28 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4238d1304f3c5c7f35999267c1c9357d3d6d55a0cd239e4f8e07962cd225e6`  
		Last Modified: Mon, 09 Oct 2017 23:03:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8754d66190ec9a25c7e95f12aa7dd45b6978bffcefa8b71064dbcc9f0d1d578c`  
		Last Modified: Mon, 09 Oct 2017 23:03:57 GMT  
		Size: 240.5 MB (240454052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83dc25e0c3ad2bf46397249a6a631b10ec3f8e5ca8d2ac0ab65766d7f71d5e6f`  
		Last Modified: Tue, 31 Oct 2017 03:12:19 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1325ef0d23c78db9fba3aae44c39298f66057076bc1d604327584f58a3ed7cd`  
		Last Modified: Tue, 31 Oct 2017 03:12:20 GMT  
		Size: 8.9 MB (8883826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c57a62ab6c0825ee03bc9351d26bc544f84984b719daed3d277a2c04da9d28d5`  
		Last Modified: Tue, 31 Oct 2017 03:12:22 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28aa19ff0480e75e80fed5f454a4b5cd0efdb26c4bd00ca69a6faaa301600825`  
		Last Modified: Tue, 31 Oct 2017 03:12:19 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
