## `maven:3-jdk-7-slim`

```console
$ docker pull maven@sha256:fdff531d07752a8a677c26f82f74d1bce522e750e461891ef06663240e706256
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

### `maven:3-jdk-7-slim` - linux; amd64

```console
$ docker pull maven@sha256:686aacb572f3107de01eae35fe21c2a05b43bf132b0fd067668725c6a10170ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.4 MB (159416253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c1181f23746ccc866d78849eb420e84dbc749d3bf87de351b9771b05bab0756`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:39:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:39:59 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:40:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:40:01 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:40:01 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 05:40:02 GMT
ENV JAVA_VERSION=7u151
# Mon, 27 Nov 2017 23:45:21 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Mon, 27 Nov 2017 23:46:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 28 Nov 2017 00:36:21 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 28 Nov 2017 00:36:22 GMT
ARG USER_HOME_DIR=/root
# Tue, 28 Nov 2017 00:36:22 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 28 Nov 2017 00:36:22 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 28 Nov 2017 00:36:38 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Tue, 28 Nov 2017 00:36:41 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 28 Nov 2017 00:36:41 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 28 Nov 2017 00:36:41 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Dec 2017 00:40:08 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Dec 2017 00:40:08 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 07 Dec 2017 00:40:08 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Dec 2017 00:40:08 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16005df8652bf68c10edfe6636aec4565f54ff3ac86ea412300364ff09886908`  
		Last Modified: Sat, 04 Nov 2017 05:58:04 GMT  
		Size: 463.7 KB (463706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b445699e285e522ae179d5f28148bd78d818856bb333a50b7cd94c3671fff38`  
		Last Modified: Sat, 04 Nov 2017 05:57:54 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45a8a88bad53c37cbc0339bd9f9455907a7f2a82a8ec9ec9bbe7f59747c3b74`  
		Last Modified: Sat, 04 Nov 2017 05:57:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b12939658fb9465d00f6eb6bdcb7c00c4003892060692c04bfcbf2bb185d181b`  
		Last Modified: Mon, 27 Nov 2017 23:50:55 GMT  
		Size: 118.6 MB (118648814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a6d5aa0c68ddc7134bbf41908080177051dee13c65e0ee026b18625e8530b4`  
		Last Modified: Tue, 28 Nov 2017 00:37:36 GMT  
		Size: 1.3 MB (1305063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a7143b8479055cab62e494f74e56ba11cc8f669931ddfcb7c8c9aacfc68f08`  
		Last Modified: Tue, 28 Nov 2017 00:37:36 GMT  
		Size: 8.9 MB (8883862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd50f91ea01f7bf4748984ef0a67d18eabbe4190957e484df11c1850c19c45e`  
		Last Modified: Thu, 07 Dec 2017 00:42:12 GMT  
		Size: 748.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697ebe5b67447684a07a90c087ceaff055c79b4be1f2f6d327715d4bfb31ba38`  
		Last Modified: Thu, 07 Dec 2017 00:42:12 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-slim` - linux; arm variant v5

```console
$ docker pull maven@sha256:0422c457aaf2377663af6171099e8f2fd066fbb8fe0dabe0795c1230a7b6bbe5
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132175573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84de12ff8634822d8110640b4c5ee5345623240951ea005740f6f5d2fa1a64da`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:24 GMT
ADD file:b3e61e5275e7047cc330ef997896c9e74467b5134f0cada4325564a122204b61 in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:25:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:25:06 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:25:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:25:08 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:25:09 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 22:25:09 GMT
ENV JAVA_VERSION=7u151
# Tue, 28 Nov 2017 10:57:43 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 28 Nov 2017 10:59:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 28 Nov 2017 11:22:56 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 28 Nov 2017 11:22:56 GMT
ARG USER_HOME_DIR=/root
# Tue, 28 Nov 2017 11:22:56 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 28 Nov 2017 11:22:57 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 28 Nov 2017 11:23:30 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Tue, 28 Nov 2017 11:23:35 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 28 Nov 2017 11:23:40 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 28 Nov 2017 11:23:40 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 28 Nov 2017 11:23:40 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 28 Nov 2017 11:23:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 28 Nov 2017 11:23:41 GMT
VOLUME [/root/.m2]
# Tue, 28 Nov 2017 11:23:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 28 Nov 2017 11:23:47 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:355c947ce54f583e3c4723632384e762cf27a159cb11b7ff6af3106dc7bf8e99`  
		Last Modified: Mon, 09 Oct 2017 21:47:41 GMT  
		Size: 28.4 MB (28424201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82b02d7fa857225f8fe9f4bcfcde571076c36be7dfca1e4e88ce780d72e4fad`  
		Last Modified: Mon, 09 Oct 2017 22:33:33 GMT  
		Size: 456.4 KB (456423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c8c85f6ae880c220ff4fa80b9fd4b97ec42f75161b1ce865acd3f831f4b66b3`  
		Last Modified: Mon, 09 Oct 2017 22:33:32 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23c3842706b23b79fdd1182c1ffd24590067bf1e89812f0bdd57ff59be6b842`  
		Last Modified: Mon, 09 Oct 2017 22:33:32 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e2b11a2aebae0cea527a8252195865f896d909047f89aadc8616be6514a9f6`  
		Last Modified: Tue, 28 Nov 2017 11:04:23 GMT  
		Size: 93.2 MB (93168435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d077d687eafe56f092a4d59cc939b6874098c1eed80656c194fa4db5d1f5508f`  
		Last Modified: Tue, 28 Nov 2017 11:24:35 GMT  
		Size: 1.2 MB (1241172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a76a526e39072f3566a8c2261a5126835dd1d90e1275c352dd1bd67823c74e6c`  
		Last Modified: Tue, 28 Nov 2017 11:24:36 GMT  
		Size: 8.9 MB (8883868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c51705604efa30333e508efafa81c6f106d27eef83564ebff1b57f0fa373768e`  
		Last Modified: Tue, 28 Nov 2017 11:24:34 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d61cfa28e69d61b79271069dbd10438cc64f246ea40319eab25157f4af4f58d`  
		Last Modified: Tue, 28 Nov 2017 11:24:34 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-slim` - linux; arm variant v7

```console
$ docker pull maven@sha256:4b684d8443f475e54f1e14f608c41ffe0b4a99e5f60d152e130a5fcca387d305
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.7 MB (137691663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9416bd97b08e756b36a1c1122bbbf3d5462ff3c448a88f6018f62330744aade`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:58:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:58:03 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:58:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:58:06 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:58:07 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 22:58:07 GMT
ENV JAVA_VERSION=7u151
# Tue, 28 Nov 2017 02:25:52 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 28 Nov 2017 02:27:29 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 28 Nov 2017 02:54:33 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 28 Nov 2017 02:54:34 GMT
ARG USER_HOME_DIR=/root
# Tue, 28 Nov 2017 02:54:34 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 28 Nov 2017 02:54:34 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 28 Nov 2017 02:55:09 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Tue, 28 Nov 2017 02:55:15 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 28 Nov 2017 02:55:22 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 28 Nov 2017 02:55:23 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 28 Nov 2017 02:55:31 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 28 Nov 2017 02:55:32 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 28 Nov 2017 02:55:32 GMT
VOLUME [/root/.m2]
# Tue, 28 Nov 2017 02:55:32 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 28 Nov 2017 02:55:33 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56737cf8b0a227d3dcf38f93083649d33067af29ad83acb7cda371feeb5c30c6`  
		Last Modified: Mon, 09 Oct 2017 23:19:29 GMT  
		Size: 432.3 KB (432318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab04a111a353c6324d58a94a808e88676f5b7ee1b89772d7f9e34c7096024fa`  
		Last Modified: Mon, 09 Oct 2017 23:19:29 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0b012822f315e1f4eb8326a27154f0889af8f3fa51b6f05abdf1830383bc0c`  
		Last Modified: Mon, 09 Oct 2017 23:19:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9aff0955f3aa9773d74d78e903fe8097726dd2df087de47f1f0c116ed856e65`  
		Last Modified: Tue, 28 Nov 2017 02:35:41 GMT  
		Size: 100.9 MB (100910259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77be81fbbcd958de85fb392a460791e4357743945993ff676033787e6135619a`  
		Last Modified: Tue, 28 Nov 2017 02:56:50 GMT  
		Size: 1.2 MB (1182747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa2f1880fb4c6d649c3cd053768714a5742dbaafb8fea1330e0e96ddf576920`  
		Last Modified: Tue, 28 Nov 2017 02:56:51 GMT  
		Size: 8.9 MB (8883879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09af4e70a05373e75ffdb1faa2cc6884b1515b20b9dc4dfccf79cf92ab7e3477`  
		Last Modified: Tue, 28 Nov 2017 02:56:50 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c79622468aca319f2360d83fad8c273e10d900db2e2e14da59d432c8da40ea`  
		Last Modified: Tue, 28 Nov 2017 02:56:49 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-slim` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:93dee1f1c99925bc8366a016339ed9957ba02960d891d5f5222f280466d6b333
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.7 MB (130690259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b522e41e79cf903d5e93d6f4b786c875ac6b33187c78409faf8c781bd5e071e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:51 GMT
ADD file:75f5768db078e9eee90676141a2c9faa9ce02768b7c9cd6e588bdd5ffc0f65e3 in / 
# Mon, 09 Oct 2017 21:43:51 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:59:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:59:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:59:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:59:30 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:59:31 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:59:33 GMT
ENV JAVA_VERSION=7u151
# Tue, 10 Oct 2017 00:59:34 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 10 Oct 2017 01:06:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 31 Oct 2017 16:28:52 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 31 Oct 2017 16:28:53 GMT
ARG USER_HOME_DIR=/root
# Tue, 31 Oct 2017 16:28:53 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 31 Oct 2017 16:28:54 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 31 Oct 2017 16:29:24 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Tue, 31 Oct 2017 16:29:30 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 31 Oct 2017 16:29:30 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 31 Oct 2017 16:29:31 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 31 Oct 2017 16:29:31 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 31 Oct 2017 16:29:32 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 31 Oct 2017 16:29:33 GMT
VOLUME [/root/.m2]
# Tue, 31 Oct 2017 16:29:33 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 31 Oct 2017 16:29:34 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f2da27d97c13e9e531eda9577a28eb81b0d9034d7fd7e6575bd92744eed500f6`  
		Last Modified: Mon, 09 Oct 2017 21:53:20 GMT  
		Size: 27.5 MB (27480591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a24f9054de6049ff209097f030f33b2b3a730cdda41aee7369007cadb1e0f80`  
		Last Modified: Tue, 10 Oct 2017 02:05:43 GMT  
		Size: 457.9 KB (457885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd284f43507bcac78e2f93512d0790d24f64720a1f17971e0312bb6475ea27ee`  
		Last Modified: Tue, 10 Oct 2017 02:05:43 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3a082a1003eb057bcb8d89a7c258b0fcd24e24745e03eaf2e8f0023cea29bec`  
		Last Modified: Tue, 10 Oct 2017 02:05:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb29937877c30b6010c20b737c764f913bdc768027f8ea2c69e69cb5b015c71`  
		Last Modified: Tue, 10 Oct 2017 02:06:09 GMT  
		Size: 92.7 MB (92653900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbebe3a665bd98879877ac593941a4d0e9248c89d4a917e599b166937d1f9c9`  
		Last Modified: Tue, 31 Oct 2017 16:34:40 GMT  
		Size: 1.2 MB (1212574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f257f195168ef590b238f4ba357c58079c00bc50f9ee803de21ef2d5f580d4`  
		Last Modified: Tue, 31 Oct 2017 16:34:43 GMT  
		Size: 8.9 MB (8883839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8158fdbc6f1863435acaebfa771416f2d9abfac1b842b72d23498cdcc3b67b3`  
		Last Modified: Tue, 31 Oct 2017 16:34:38 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32635141ca82591a22a68a8e1f8869dcc1bfcef161a59b6423c91fe7fb00d9ca`  
		Last Modified: Tue, 31 Oct 2017 16:34:38 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-slim` - linux; 386

```console
$ docker pull maven@sha256:c291d085bcff852df5e392e0a2733d21903680f92e6d3b2d91a4f4d55f338a43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.6 MB (172556884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:559d65fe12cfbe0877a8217eeae3099e2a1d97ef2eff0d7cdc52d0b0597f105b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:30 GMT
ADD file:169ab3194fd1b25e06359d6eceb655093f44f0255c799ae8a3fc5bf8ba50fd8d in / 
# Mon, 09 Oct 2017 21:42:31 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:57:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:57:59 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:58:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:58:00 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:58:00 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:58:01 GMT
ENV JAVA_VERSION=7u151
# Tue, 28 Nov 2017 11:03:07 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 28 Nov 2017 11:05:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 28 Nov 2017 11:41:16 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 28 Nov 2017 11:41:17 GMT
ARG USER_HOME_DIR=/root
# Tue, 28 Nov 2017 11:41:17 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 28 Nov 2017 11:41:17 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 28 Nov 2017 11:41:42 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Tue, 28 Nov 2017 11:41:43 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 28 Nov 2017 11:41:43 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 28 Nov 2017 11:41:43 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 28 Nov 2017 11:41:44 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 28 Nov 2017 11:41:44 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 28 Nov 2017 11:41:44 GMT
VOLUME [/root/.m2]
# Tue, 28 Nov 2017 11:41:45 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 28 Nov 2017 11:41:45 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d8b3cf5f6e0f087738d5589b812e12f5b8781935412c95d15f2f77d68657b006`  
		Last Modified: Mon, 09 Oct 2017 21:48:54 GMT  
		Size: 30.3 MB (30264454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27674858143a2678878a4a19958badf2b79aa26e1385415b6142991f5c2eed2e`  
		Last Modified: Tue, 10 Oct 2017 01:46:35 GMT  
		Size: 466.3 KB (466265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c66fa7f4a0e4fb087410a408a950eb8bec3cef8d46d0f060daefcea413c26e0`  
		Last Modified: Tue, 10 Oct 2017 01:46:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ac1c9d16194e316f4dbd55d7d89063cc26137e5b8e793905fc01261064edba`  
		Last Modified: Tue, 10 Oct 2017 01:46:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19547545ee6dd9e93223bf9644f82f1d15ef13606bb4c5099128acc51c7bfba7`  
		Last Modified: Tue, 28 Nov 2017 11:19:24 GMT  
		Size: 131.6 MB (131573043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907c4bac672310f916beb44ca6132bca69e67d561233f0de35d66aeac539f466`  
		Last Modified: Tue, 28 Nov 2017 11:44:29 GMT  
		Size: 1.4 MB (1367795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1379d8aa76858dc2021f2606c1f0e570924333cfcacf04671ff32576be515d`  
		Last Modified: Tue, 28 Nov 2017 11:44:29 GMT  
		Size: 8.9 MB (8883854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7843ad935ccdb332e6e47c91909d93662902753b2e073afed72ac2c2efa232`  
		Last Modified: Tue, 28 Nov 2017 11:44:28 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32313ad42305b043b4561092799376c42f9e937e4e5d46cd6e69713f36cd01f6`  
		Last Modified: Tue, 28 Nov 2017 11:44:28 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-slim` - linux; ppc64le

```console
$ docker pull maven@sha256:1c6cbd6af7e03d16d46cf223c8180b68091aa791ec1b4224cfc779fc0432d6d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.6 MB (135611962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:521712711e4e61eb103ce94d3cfe311f82151d337c369c09faf39b84e02b7a0f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:16 GMT
ADD file:2116c25fe6275b240bd8d3a4bfe6f707d53b8f7c679a08dc4e82f9351e32073f in / 
# Mon, 09 Oct 2017 21:43:18 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:09:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:09:53 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 02:10:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 02:10:17 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 02:10:21 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 02:10:33 GMT
ENV JAVA_VERSION=7u151
# Tue, 28 Nov 2017 11:53:46 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 28 Nov 2017 12:00:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 28 Nov 2017 12:31:50 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 28 Nov 2017 12:31:52 GMT
ARG USER_HOME_DIR=/root
# Tue, 28 Nov 2017 12:31:53 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 28 Nov 2017 12:31:54 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 28 Nov 2017 12:32:38 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Tue, 28 Nov 2017 12:32:42 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 28 Nov 2017 12:32:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 28 Nov 2017 12:32:45 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 28 Nov 2017 12:32:46 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 28 Nov 2017 12:32:47 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 28 Nov 2017 12:32:49 GMT
VOLUME [/root/.m2]
# Tue, 28 Nov 2017 12:32:52 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 28 Nov 2017 12:32:54 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3e88472df41b6d64a43bb66e5def74c4e222f868fe8eb13015accec0b9812609`  
		Last Modified: Mon, 09 Oct 2017 21:49:29 GMT  
		Size: 29.3 MB (29306532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e1ed1d900b37736f1a8f470e2333ec5eb513a0bd4b31234801e9c4da19dea0`  
		Last Modified: Tue, 10 Oct 2017 05:09:11 GMT  
		Size: 460.3 KB (460258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1242e525ea86c836dafa19aefa426e8fc3d3bde6dd0f3a3acfb8fbe1fac623cd`  
		Last Modified: Tue, 10 Oct 2017 05:09:11 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47db0afcfbdac0ddb62992cde96279bf3cb3f0f0767b813ee0554237c51b26fa`  
		Last Modified: Tue, 10 Oct 2017 05:09:11 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3d9f234f5f11c8753ad89c89850079aca8a80dbd0fc59da8a1fc7306b07f57`  
		Last Modified: Tue, 28 Nov 2017 12:14:22 GMT  
		Size: 95.7 MB (95684250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2eb945846ab0b784e3e9135ff1ae721aab3574399302eb0e9ef8cf06e8a1db`  
		Last Modified: Tue, 28 Nov 2017 12:34:00 GMT  
		Size: 1.3 MB (1275570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:218153fb457a68c1306fb333879af52e4693eb3d56f45945d482fa061fb440c4`  
		Last Modified: Tue, 28 Nov 2017 12:34:01 GMT  
		Size: 8.9 MB (8883875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949f14fc2b9b7b4a95a6a2be84dc2f9315f961d6f75128bda1a50e5ca343c945`  
		Last Modified: Tue, 28 Nov 2017 12:34:00 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65302a17b6552b117781d26672da369caee4182edb8d7d544b2aa4fa40b56526`  
		Last Modified: Tue, 28 Nov 2017 12:33:59 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-slim` - linux; s390x

```console
$ docker pull maven@sha256:9cd8ddc3f3a75a64de26080d09eec37e4558e2a7743f70d0950c04e85f89c017
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.5 MB (136503896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4e976147ca67b9ccbb8791effca756f2c866f2c155a44c119868332a22cc51e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:6cb76b1e40d19c5c42495dcfac0822e2e2e999e93fbe2274c6b7222bb6659b20 in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:46:47 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:46:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:46:48 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:46:48 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 22:46:48 GMT
ENV JAVA_VERSION=7u151
# Tue, 28 Nov 2017 17:55:43 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 28 Nov 2017 17:56:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 28 Nov 2017 18:18:29 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 28 Nov 2017 18:18:29 GMT
ARG USER_HOME_DIR=/root
# Tue, 28 Nov 2017 18:18:29 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 28 Nov 2017 18:18:30 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 28 Nov 2017 18:18:41 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Tue, 28 Nov 2017 18:18:45 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 28 Nov 2017 18:18:46 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 28 Nov 2017 18:18:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 28 Nov 2017 18:18:46 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 28 Nov 2017 18:18:46 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 28 Nov 2017 18:18:47 GMT
VOLUME [/root/.m2]
# Tue, 28 Nov 2017 18:18:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 28 Nov 2017 18:18:47 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e5707ed2790f9e4144aedd6b69cce68d5bbd2267ce4f8885c072ee882ab1a8ad`  
		Last Modified: Mon, 09 Oct 2017 21:46:52 GMT  
		Size: 30.3 MB (30294195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818ba875618679016cd04120ae46c200efd84d2448e1167f6704ff8073cbba66`  
		Last Modified: Mon, 09 Oct 2017 22:59:59 GMT  
		Size: 473.2 KB (473158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1ef31f07182ced6c6014230f6f96bd6f9035af692baeebeda41f62946764fd`  
		Last Modified: Mon, 09 Oct 2017 22:59:59 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5a8a703ee4e278471fc8b31d7f6746c6e40985735d58742e02536485178b4b`  
		Last Modified: Mon, 09 Oct 2017 22:59:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49084c3173c55dee25291d8bd22e55ce85794132d0fa7026c356dedf764e5dd3`  
		Last Modified: Tue, 28 Nov 2017 18:01:10 GMT  
		Size: 95.5 MB (95531318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e49fd89268f3e548336ea5499ebb7e070c0e8d03248c76871255501f86270c4`  
		Last Modified: Tue, 28 Nov 2017 18:19:44 GMT  
		Size: 1.3 MB (1319893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5262695344705fd271bc86963885913b7d167f4c69b6d670d34d1b25fc67512`  
		Last Modified: Tue, 28 Nov 2017 18:19:44 GMT  
		Size: 8.9 MB (8883856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a0e2d8bcb9cdca530ac14850e80d7064b31a48c7b5f55255cf47b6b522a953`  
		Last Modified: Tue, 28 Nov 2017 18:19:43 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a06884dd222b8a31afb42020c242b41c7a5d44befdb0c02738e5481a6ae6b12`  
		Last Modified: Tue, 28 Nov 2017 18:19:44 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
