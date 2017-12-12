## `maven:3-jdk-9-slim`

```console
$ docker pull maven@sha256:447e4d0112a36c24c7271549946cb35734e8d866c055d6bcb4806634c3bf524c
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

### `maven:3-jdk-9-slim` - linux; amd64

```console
$ docker pull maven@sha256:2fd9d703cc6702f9e3cd7daac05ca8a3b7503e57f02e8f78d89c921c8b2f82c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.7 MB (194702186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bcde87f4e1d4ec643f8ce53616a184d44e54e84328faf410dcd046890d3bfc2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 12 Dec 2017 01:43:25 GMT
ADD file:f105fa3aa445df54e1e78b4ba607c2724f1dc586b1e060c482c798966d97c635 in / 
# Tue, 12 Dec 2017 01:43:25 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 05:39:21 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 05:39:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 05:39:23 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 05:39:23 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 05:39:23 GMT
ENV JAVA_VERSION=9.0.1+11
# Tue, 12 Dec 2017 05:39:24 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Tue, 12 Dec 2017 05:40:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Dec 2017 05:40:10 GMT
CMD ["jshell"]
# Tue, 12 Dec 2017 08:04:58 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 12 Dec 2017 08:04:58 GMT
ARG USER_HOME_DIR=/root
# Tue, 12 Dec 2017 08:04:58 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 12 Dec 2017 08:04:59 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 12 Dec 2017 08:05:07 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:05:08 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Tue, 12 Dec 2017 08:05:10 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 12 Dec 2017 08:05:10 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 12 Dec 2017 08:05:10 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 12 Dec 2017 08:05:48 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 12 Dec 2017 08:05:49 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 12 Dec 2017 08:05:49 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 12 Dec 2017 08:05:49 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7dadf3208611439968d74844a1c976f4664c77dbe43c9e5b63a825002a5cd02f`  
		Last Modified: Tue, 12 Dec 2017 01:51:57 GMT  
		Size: 25.2 MB (25200134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349fcab9b82f6a693cf54bf9000507a4d7f9156532a75463f72361a998cf0067`  
		Last Modified: Tue, 12 Dec 2017 05:56:46 GMT  
		Size: 461.4 KB (461353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4cfeb98889dc8545e46793cf726769e7e76fbc4a3b799356ce858fd304f57e0`  
		Last Modified: Tue, 12 Dec 2017 05:56:45 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc023e51619bb1a2cb5a9da4e75b69475730a29ad5471a1b5ebcd24cd5dd111`  
		Last Modified: Tue, 12 Dec 2017 05:56:45 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeecb255ae1ab180d9433655df55acd93efd5ab05c5bde928fee7a344e110923`  
		Last Modified: Tue, 12 Dec 2017 05:57:06 GMT  
		Size: 157.1 MB (157130623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317c1185a2ac2f7fbb08b5eb12e829dcacf5bdc7a5b17d2c1792b2ff275d9c4e`  
		Last Modified: Tue, 12 Dec 2017 08:07:02 GMT  
		Size: 3.0 MB (3024533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad47a047d1f619fc28c739474db0eee79e72fa60040a659dcaacf5af69746507`  
		Last Modified: Tue, 12 Dec 2017 08:06:59 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d8eba85dead90cb85aa13b87f5c045491a1ff1957592002d99892c1cde1fd34`  
		Last Modified: Tue, 12 Dec 2017 08:07:01 GMT  
		Size: 8.9 MB (8883828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40678549b9da68e405e275d6aa9bfc805f328dd216a81832a03b253b41156ac7`  
		Last Modified: Tue, 12 Dec 2017 08:08:22 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4d63b03ba77d00be0df09869fe7e3dcb9ad2630dad93a652e136d95bb2891b`  
		Last Modified: Tue, 12 Dec 2017 08:08:22 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9-slim` - linux; arm variant v5

```console
$ docker pull maven@sha256:02109774d9cd1799d3bef7c76e16c35583fc8ef415cbcddcea80b83c1544d9a1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166669226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:174718f56bae83d511bc5f7b248929237c70e74c667652e31ae14c8c490bfa92`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:49 GMT
ADD file:53515d12c277346acef474e8405d99646f72a11380a3b75d1dad8756510e6870 in / 
# Mon, 09 Oct 2017 21:43:49 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:30:35 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:30:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:30:37 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:30:38 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 10:03:28 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 10:03:28 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 10:04:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 10:04:21 GMT
CMD ["jshell"]
# Sat, 04 Nov 2017 10:53:07 GMT
ARG MAVEN_VERSION=3.5.2
# Sat, 04 Nov 2017 10:53:07 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Nov 2017 10:53:07 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Sat, 04 Nov 2017 10:53:07 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Sat, 04 Nov 2017 10:53:19 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:53:19 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Sat, 04 Nov 2017 10:53:22 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Nov 2017 10:53:22 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Nov 2017 10:53:22 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Dec 2017 15:07:17 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Dec 2017 15:07:18 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 07 Dec 2017 15:07:18 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Dec 2017 15:07:18 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ea37965471e13f9e6050ef152f0f00007063aed293f9ab9254f7ae0062caffe9`  
		Last Modified: Mon, 09 Oct 2017 21:49:34 GMT  
		Size: 23.3 MB (23348454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec082c0f8a485cb2fc949ff337b67626da849d056263c1e0248f98c847b5c21`  
		Last Modified: Mon, 09 Oct 2017 22:35:30 GMT  
		Size: 453.8 KB (453840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f6cc6201a4bb264d660ccd911867d17fbe817ca21b715fc9434b49ebed1a78`  
		Last Modified: Mon, 09 Oct 2017 22:35:30 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a147ee1897b6272956335a08816ffbef1187d77ddafd822f9312e36e7034eb1d`  
		Last Modified: Mon, 09 Oct 2017 22:35:30 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f29dab03626fc0d33c937c1de2fa3d8c443ac4b00ece6284473d8c5511184b4d`  
		Last Modified: Sat, 04 Nov 2017 10:13:27 GMT  
		Size: 131.5 MB (131454817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce044dc10da127b2f62d22e8248440e6b6a2e15c0ac66b4f467ed9795fe778d`  
		Last Modified: Sat, 04 Nov 2017 10:56:02 GMT  
		Size: 2.5 MB (2526542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9dce71471a6df221b14b0c2b434ff51e2f7d6bf5874b1efd7953eef7d4825b`  
		Last Modified: Sat, 04 Nov 2017 10:56:00 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6dd9eb2367cbaa6b4a39522bfcfe87c5bba36a78b136f2d356eaa268ae2c7b`  
		Last Modified: Sat, 04 Nov 2017 10:56:01 GMT  
		Size: 8.9 MB (8883853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e110a8b1c8a20ad142ea3a5e814bb681c42f7afe391a74f585f43676797ee61b`  
		Last Modified: Thu, 07 Dec 2017 15:09:45 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5c512b30095bfc1b04b02c53a072eb1378e3353164dbfb68dd1c285b190238a`  
		Last Modified: Thu, 07 Dec 2017 15:09:45 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9-slim` - linux; arm variant v7

```console
$ docker pull maven@sha256:1d642c0e2aed3bdfb74db28e4368d59142d59ff12ab9b868451eeef8453d0cfb
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.1 MB (170149529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b331674f31353f16c6ac9ee98ba14ad0d94d790245a1def1331b963e8bfb4041`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:28 GMT
ADD file:5d5c4a7233c6c9a2682e39e732a1f23db741e074dbc5b6f16309bb53d0bdaf18 in / 
# Mon, 09 Oct 2017 21:44:29 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:10:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:10:27 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 23:10:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 23:10:30 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 23:10:30 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 01:31:01 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 01:31:01 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 01:31:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 01:31:40 GMT
CMD ["jshell"]
# Sat, 04 Nov 2017 02:00:32 GMT
ARG MAVEN_VERSION=3.5.2
# Sat, 04 Nov 2017 02:00:33 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Nov 2017 02:00:33 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Sat, 04 Nov 2017 02:00:33 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Sat, 04 Nov 2017 02:00:42 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 02:00:49 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Sat, 04 Nov 2017 02:00:58 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Nov 2017 02:01:10 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Nov 2017 02:01:10 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Dec 2017 06:13:43 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Dec 2017 06:13:44 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 07 Dec 2017 06:13:44 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Dec 2017 06:13:44 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d96a59f9a30fc164a930c5f4118584e683bec40d1797f9d9bca30f65f3a647af`  
		Last Modified: Mon, 09 Oct 2017 21:51:14 GMT  
		Size: 21.6 MB (21639073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c164bdc72bb7e7c356d01b6f09f139b666b9b352a4ddc54537fdaa48e8a0ad6`  
		Last Modified: Mon, 09 Oct 2017 23:27:15 GMT  
		Size: 436.4 KB (436444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40759634bf5c1bbde4c10d3cb802e1d71d31216cf2c389d566820272f1239ca`  
		Last Modified: Mon, 09 Oct 2017 23:27:15 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaabb110ae529eef899672bd02ae789a08f5b8093187fded0073a6352a26493d`  
		Last Modified: Mon, 09 Oct 2017 23:27:15 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78602e9bfe5a6941bbd046ffc9d8ad27e67187f2eafe085b107df5349896e28c`  
		Last Modified: Sat, 04 Nov 2017 01:38:48 GMT  
		Size: 136.8 MB (136802715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb63e89dfac7de1d43231365cf249f44e3d5fd29a08e851b38a9620d5cb979df`  
		Last Modified: Sat, 04 Nov 2017 02:05:06 GMT  
		Size: 2.4 MB (2385728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ca9ccbaa7c473b8bf2f22e9f83bdaff9280763c8ed24c51e3d5ff755bb8192`  
		Last Modified: Sat, 04 Nov 2017 02:05:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de223ea4ba9a59ee9d6858aba493e01c5c3d002bc6e26a17c1cf80358050522`  
		Last Modified: Sat, 04 Nov 2017 02:05:07 GMT  
		Size: 8.9 MB (8883851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9904d99b061e5842f823ca2e8037c12d952197b8b2b043348b7f6e765f703b89`  
		Last Modified: Thu, 07 Dec 2017 06:16:40 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9839d12adcda4c2af48831f31a9c55caaa9154f47d1bed55eec888299a589f65`  
		Last Modified: Thu, 07 Dec 2017 06:16:40 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9-slim` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:90e803be99cb7dbee21b6619678e0f89f6ed3c04991ff9c2a60c7780420c8230
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173665947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d92d488e712fee74898c1cb3bdc2fb7761e935246a8b4152de98768019700f8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:50 GMT
ADD file:7734ca257bd7327a8da07cdcc881d2054c6cf50201f5bb0aeda8637c7e40cc06 in / 
# Mon, 09 Oct 2017 21:45:51 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:49:51 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 01:49:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 01:49:55 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 01:49:55 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 12:49:20 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 12:49:21 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 12:51:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 12:51:04 GMT
CMD ["jshell"]
# Sat, 04 Nov 2017 18:33:47 GMT
ARG MAVEN_VERSION=3.5.2
# Sat, 04 Nov 2017 18:33:48 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Nov 2017 18:34:01 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Sat, 04 Nov 2017 18:34:02 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Sat, 04 Nov 2017 18:34:36 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:34:50 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Sat, 04 Nov 2017 18:34:57 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Nov 2017 18:34:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Nov 2017 18:34:59 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Dec 2017 17:31:43 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Dec 2017 17:31:43 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 07 Dec 2017 17:31:44 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Dec 2017 17:31:44 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:9dc315cd342ed5fdb1c77afafbe657c1c29de0747c81d85f1f9ae06ad1d01fa4`  
		Last Modified: Mon, 09 Oct 2017 21:59:06 GMT  
		Size: 22.7 MB (22709128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f96b1ccf72714886ea440013736b3705900f6f9751ec2664a26a9cb3042e3f0`  
		Last Modified: Tue, 10 Oct 2017 02:22:06 GMT  
		Size: 445.3 KB (445252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d7984bd0489b39fe260c46dcb9772e8656599426233067ad9af68b557e2d73`  
		Last Modified: Tue, 10 Oct 2017 02:22:06 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3682b3ee64dc20e447d8a52e66fd89da4f08cb2341fc1836b460609fc12eb0d`  
		Last Modified: Tue, 10 Oct 2017 02:22:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7652d1166158dd84f003cd12bfaf268458a9e4fb522f4999db3a30446c342af8`  
		Last Modified: Sat, 04 Nov 2017 13:20:13 GMT  
		Size: 139.1 MB (139083090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d02be0a5e33f97bd3a6f2de8a3439edb02156abe3310fad05a35f16ac0b14b19`  
		Last Modified: Sat, 04 Nov 2017 18:40:27 GMT  
		Size: 2.5 MB (2542926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adabdfbedffdf7f3b950b170331a56918aed9a8f231ec4f4945e0a0962b5892e`  
		Last Modified: Sat, 04 Nov 2017 18:40:25 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91c900cb9eeb1a706b7d6cc90896e6e97051dc35cf737d863603dc09134d24b`  
		Last Modified: Sat, 04 Nov 2017 18:40:27 GMT  
		Size: 8.9 MB (8883837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb08ff91e17ee835ff236e30c11f4024ff513042c5079097f62402025ad534f`  
		Last Modified: Thu, 07 Dec 2017 17:38:28 GMT  
		Size: 747.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc915f78e94adbfc59975c556b280f29dce7a17676dae93c0661fe9cff6eb78c`  
		Last Modified: Thu, 07 Dec 2017 17:38:28 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9-slim` - linux; 386

```console
$ docker pull maven@sha256:8ebbcd3fe5c5246abf02fd4e96501832cd04b5b292a93167cbb6dc73792bbaac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.5 MB (197517888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f3fbb90aaf82d2c306ffb593bad38ec2a52bd25cb65e3c1efa46327bb0416f6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:42 GMT
ADD file:19c55eeae4bfb6e75c713222705ba8d4849604df30a58a50860ac7bd205dfda4 in / 
# Mon, 09 Oct 2017 21:44:42 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:28:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:28:08 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 01:28:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 01:28:10 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 01:28:10 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 10:19:28 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 10:19:28 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 10:20:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 10:20:13 GMT
CMD ["jshell"]
# Sat, 04 Nov 2017 11:21:51 GMT
ARG MAVEN_VERSION=3.5.2
# Sat, 04 Nov 2017 11:21:51 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Nov 2017 11:21:51 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Sat, 04 Nov 2017 11:21:51 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Sat, 04 Nov 2017 11:22:06 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 11:22:07 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Sat, 04 Nov 2017 11:22:09 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Nov 2017 11:22:09 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Nov 2017 11:22:09 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Dec 2017 02:47:29 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Dec 2017 02:47:30 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 07 Dec 2017 02:47:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Dec 2017 02:47:30 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8dbd94837ca8315beb351e1b4a4633d7694cecb75bd76e51339f9fc3d1362ea4`  
		Last Modified: Mon, 09 Oct 2017 21:51:23 GMT  
		Size: 25.7 MB (25658987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4541ed9bcc08c4b1df4164753e37f6503b3dc167e45d1ee73bae5df2235d4bd5`  
		Last Modified: Tue, 10 Oct 2017 02:03:41 GMT  
		Size: 469.1 KB (469054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7dc19ed4e40f01efc0a9b7e8728b3a714e8988d9988c655294a7cd0557e4fd4`  
		Last Modified: Tue, 10 Oct 2017 02:03:40 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6adbd212b15cf15807ba58d5148c502ce8708f3fb6e4b929f35ab3e2806ba9c`  
		Last Modified: Tue, 10 Oct 2017 02:03:40 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64dfac1058e02c50bdf9a0fb7cacf820cdab30325c5b7254064be1e46677690`  
		Last Modified: Sat, 04 Nov 2017 10:52:22 GMT  
		Size: 159.6 MB (159579143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01afb5289f8ff31e6808fd45ff8815221ba2af6d057f9f341ec636b21fd972dd`  
		Last Modified: Sat, 04 Nov 2017 11:27:15 GMT  
		Size: 2.9 MB (2925149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79b5ca69343d2955fe9db5fe276a076ca042e2f870bb6f027cbba7051b9fe75`  
		Last Modified: Sat, 04 Nov 2017 11:27:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6765bcd6094bd4343610ee6a356aa9496d1f54061d0c920aa8c3b14a6f12472e`  
		Last Modified: Sat, 04 Nov 2017 11:27:16 GMT  
		Size: 8.9 MB (8883839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aac7649d1dc6909e494178527375482446dc549c6499c80232c1278911b6ac9`  
		Last Modified: Thu, 07 Dec 2017 02:52:04 GMT  
		Size: 747.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58766464c5dbf495a30065ddbe859368e11811b25aa964343802c9cdac185fc5`  
		Last Modified: Thu, 07 Dec 2017 02:52:03 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9-slim` - linux; ppc64le

```console
$ docker pull maven@sha256:11150a5f237cdb9ae9c1d3441b2ae78b4a57883417f827d1af8e0ef6425d5758
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.4 MB (179371708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a5e82316e30fbc596492e8ce7e8365248761571b1b01322a276859b70585884`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 12 Dec 2017 01:34:28 GMT
ADD file:4189fa121fbbf89150ccba6e8e9ccea8dd3a28956bf0fb4eedba7d0782093698 in / 
# Tue, 12 Dec 2017 01:34:31 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 04:12:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 04:12:08 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 04:12:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 04:12:17 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 04:12:18 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 04:12:20 GMT
ENV JAVA_VERSION=9.0.1+11
# Tue, 12 Dec 2017 04:12:22 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Tue, 12 Dec 2017 04:15:04 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Dec 2017 04:15:06 GMT
CMD ["jshell"]
# Tue, 12 Dec 2017 11:53:41 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 12 Dec 2017 11:53:42 GMT
ARG USER_HOME_DIR=/root
# Tue, 12 Dec 2017 11:53:44 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 12 Dec 2017 11:53:47 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 12 Dec 2017 11:54:32 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:54:36 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Tue, 12 Dec 2017 11:54:41 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 12 Dec 2017 11:54:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 12 Dec 2017 11:54:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 12 Dec 2017 11:56:04 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 12 Dec 2017 11:56:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 12 Dec 2017 11:56:10 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 12 Dec 2017 11:56:12 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:79df2038e61de125ab6fdf8c9740f0bebfe5e218d0f5e30fed081e642f3bbec3`  
		Last Modified: Tue, 12 Dec 2017 01:40:53 GMT  
		Size: 26.3 MB (26299327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a56ab726ba5ad6e60fd2c02b48caee36c366aef3954faa232f8184da5ba30c3`  
		Last Modified: Tue, 12 Dec 2017 04:23:31 GMT  
		Size: 456.1 KB (456093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b667478d7e08c70a2df46fd62a0090973c581b974c5423d4dfe4e741742e6af`  
		Last Modified: Tue, 12 Dec 2017 04:23:30 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1717ebdf3a7027503eefde0fbc15c087ce76400c17653494033edb24aef6f044`  
		Last Modified: Tue, 12 Dec 2017 04:23:30 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbb16a4fb2fcbb807941c0d4a72c81a18d3ae5edb6b040df4238fc4b693564e`  
		Last Modified: Tue, 12 Dec 2017 04:23:53 GMT  
		Size: 140.9 MB (140916457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32cdee5413ed6e0b0745401ade6e6d56060fd644824fa85113e503d4c261feeb`  
		Last Modified: Tue, 12 Dec 2017 11:57:37 GMT  
		Size: 2.8 MB (2814250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13eeea724b38981479c8af0ec3f52570aa47cfbe128ad795e488e7013a1f45c1`  
		Last Modified: Tue, 12 Dec 2017 11:57:36 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ca425c13dd0916583c2ab232b43d5f76363feaf12efe6e74d67771579dcc5c`  
		Last Modified: Tue, 12 Dec 2017 11:57:37 GMT  
		Size: 8.9 MB (8883869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514d2c05256ccc6bc47daca9d2f42136a05b75feddfa1e330927397ab5757c92`  
		Last Modified: Tue, 12 Dec 2017 11:59:22 GMT  
		Size: 749.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cccb00ce9a8d8ede750f178415d6185ec28573f24b53e330a6c383d56ce663`  
		Last Modified: Tue, 12 Dec 2017 11:59:22 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9-slim` - linux; s390x

```console
$ docker pull maven@sha256:319914a9b56cd3d0a137aea039652fc94ad804ea66f7304071f164801da9a19f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.5 MB (177535058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b45365fdba625d0c58a05821da8fb241378f95b7b10af0208aa05d8c993954eb`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:37 GMT
ADD file:b4deb6fb528f8c816ba7db3484f7590bf072a683b2d2bf4b616ac44850e10494 in / 
# Mon, 09 Oct 2017 21:43:38 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:56:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:56:38 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:56:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:56:41 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:56:44 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 17:00:03 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 17:00:03 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 17:00:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 17:00:46 GMT
CMD ["jshell"]
# Sat, 04 Nov 2017 17:29:36 GMT
ARG MAVEN_VERSION=3.5.2
# Sat, 04 Nov 2017 17:29:36 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Nov 2017 17:29:36 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Sat, 04 Nov 2017 17:29:36 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Sat, 04 Nov 2017 17:29:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 17:29:47 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Sat, 04 Nov 2017 17:29:52 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Nov 2017 17:29:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Nov 2017 17:29:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Dec 2017 04:09:02 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Dec 2017 04:09:03 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 07 Dec 2017 04:09:03 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Dec 2017 04:09:03 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:044c9ae4e8107afdcd4e6b93a76f7d598ae117778f3cf7dacd9d6087e3ac4f3b`  
		Last Modified: Mon, 09 Oct 2017 21:47:55 GMT  
		Size: 24.6 MB (24643207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9070e5b963f9d96e62e6d5bd2a1e800f7745293b6bf97e423d883ad4cb6a280d`  
		Last Modified: Mon, 09 Oct 2017 23:04:14 GMT  
		Size: 471.4 KB (471352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2624213d4686ead64a27d4dac297ad322ddab0cf41272465a4cd53620bcbd47b`  
		Last Modified: Mon, 09 Oct 2017 23:04:14 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c076a1ba6889dcaf5124d6f37956b4265b3b023a96bbdd23780ad89cb3cf18`  
		Last Modified: Mon, 09 Oct 2017 23:04:15 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baafe382c5aac70dc0e87d231167dbbd6971b26b1ac5361ddeeb3d18af6f276c`  
		Last Modified: Sat, 04 Nov 2017 17:06:27 GMT  
		Size: 140.8 MB (140752346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1cd5d0f5df463a212069a9cdfc07dc7431bd12291662007e9b522371b16df7`  
		Last Modified: Sat, 04 Nov 2017 17:31:38 GMT  
		Size: 2.8 MB (2782604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f3a3c1706b1bb097190af7dc7deea175438328035bc1fd8e1ea47a6ac16842d`  
		Last Modified: Sat, 04 Nov 2017 17:31:37 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b7eb293d2763a28ddfbc4a3339d2d586cb6940231da478123d2cbe63e236ec`  
		Last Modified: Sat, 04 Nov 2017 17:31:42 GMT  
		Size: 8.9 MB (8883837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0a07d5280685edf3420bd0ee5740cb668d04a5077867f99c0d76c5136f1bb0`  
		Last Modified: Thu, 07 Dec 2017 04:11:31 GMT  
		Size: 748.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b051a036a3b82868f18171f9e17b12e439d14773a73a2cd4c3d74a764d84a5`  
		Last Modified: Thu, 07 Dec 2017 04:11:31 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
