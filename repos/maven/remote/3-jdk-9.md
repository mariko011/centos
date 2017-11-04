## `maven:3-jdk-9`

```console
$ docker pull maven@sha256:d25becdf8f8647dd4fce6c20652a55ead6f4019c850151d671ac4785a58bca46
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
$ docker pull maven@sha256:4e75e45d7f0b970d3a2d75089f26523ecff276dfe45b0f536031e9af6fc17be8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.5 MB (402527768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:863583b1a28f010d816cbbe4603cd54866dfebbcc2f2c80cdfdc1ac23a00613d`
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
# Sat, 04 Nov 2017 04:31:51 GMT
ARG MAVEN_VERSION=3.5.2
# Sat, 04 Nov 2017 04:31:52 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Nov 2017 04:31:52 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Sat, 04 Nov 2017 04:31:52 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Sat, 04 Nov 2017 04:31:54 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Sat, 04 Nov 2017 04:31:56 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Nov 2017 04:31:56 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Nov 2017 04:31:57 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 04 Nov 2017 04:31:57 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 04 Nov 2017 04:31:58 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 04 Nov 2017 04:31:58 GMT
VOLUME [/root/.m2]
# Sat, 04 Nov 2017 04:31:58 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 04 Nov 2017 04:31:58 GMT
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
	-	`sha256:04d20b48807fb2416f3ea114b5e0e6a201d1c9b901407ffa6b0850f772cfaa3f`  
		Last Modified: Sat, 04 Nov 2017 04:35:56 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a97a24842c97fa223fd2741ffccc804d419de4ad278fdeab821882805928175`  
		Last Modified: Sat, 04 Nov 2017 04:35:57 GMT  
		Size: 8.9 MB (8883825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f7235e064118f09503395eb4d836fd4c718f1d83ce023d4828d2811d737712`  
		Last Modified: Sat, 04 Nov 2017 04:35:56 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb60188225ed028241580b892a516c62fb23fb61bfa737424204888f8dba8ed`  
		Last Modified: Sat, 04 Nov 2017 04:35:56 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; arm variant v5

```console
$ docker pull maven@sha256:211680942cbf6e8f708ee181394ca53b36d1ca8169a9cc3eaed1e5d5fa282ac9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.7 MB (377705130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c84a3352bbe3cb6ee393a7bdbf5bdeec7619b6cda7df2a3a38a75ecb55526958`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:38 GMT
ADD file:ed4faefd58667ec248b15ae9b227fc04967695ab4002e9f3a65e8e53b3f73cc6 in / 
# Mon, 09 Oct 2017 21:43:39 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:16:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:51:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 07:51:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 08:30:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 08:30:28 GMT
ENV LANG=C.UTF-8
# Fri, 03 Nov 2017 08:30:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Nov 2017 08:30:30 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 03 Nov 2017 08:30:30 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 10:00:34 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 10:00:35 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 10:03:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 10:03:16 GMT
CMD ["jshell"]
# Sat, 04 Nov 2017 10:53:40 GMT
ARG MAVEN_VERSION=3.5.2
# Sat, 04 Nov 2017 10:53:41 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Nov 2017 10:53:41 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Sat, 04 Nov 2017 10:53:41 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Sat, 04 Nov 2017 10:53:42 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Sat, 04 Nov 2017 10:53:49 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Nov 2017 10:53:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Nov 2017 10:53:50 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 04 Nov 2017 10:53:50 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 04 Nov 2017 10:53:51 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 04 Nov 2017 10:53:51 GMT
VOLUME [/root/.m2]
# Sat, 04 Nov 2017 10:53:51 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 04 Nov 2017 10:53:51 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:45a6221cafba09e06352fbe396f5863616e79d7ab2b9481c3016ee02a2fc322d`  
		Last Modified: Mon, 09 Oct 2017 21:49:19 GMT  
		Size: 46.0 MB (46010091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a71f239a0573ab2b5a38f8e4787b24e0ed366e436a7165e9ff81a4ea2645db`  
		Last Modified: Mon, 09 Oct 2017 22:25:10 GMT  
		Size: 7.7 MB (7735486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0081db03c6e7f4630bd9fd81942272f85f8d8ee868106b37440abf9da70f035f`  
		Last Modified: Fri, 03 Nov 2017 08:01:12 GMT  
		Size: 9.2 MB (9232575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3eb060acda12d4bda94a545cab7ff7db8335a18eeafa98f3a107fa37a3f63c8`  
		Last Modified: Fri, 03 Nov 2017 08:01:35 GMT  
		Size: 48.2 MB (48181760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795aaa310344ba50543aba4f4fd8616f57c7aa05face97736b64a0c5ffc0b40e`  
		Last Modified: Sat, 04 Nov 2017 10:11:04 GMT  
		Size: 887.0 KB (887039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c2518d482c18b3aa774762e5b13bf0100546bf425e5e709004f873798a6285`  
		Last Modified: Sat, 04 Nov 2017 10:11:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e98c8482b14f1c03a042def2f27a7306d1affff83b2eefd81f4934053685e65`  
		Last Modified: Sat, 04 Nov 2017 10:11:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:939e41f54ff1f124b71634d304ab2415cc18e95132921d5b4c21ffeb8b377ae0`  
		Last Modified: Sat, 04 Nov 2017 10:11:58 GMT  
		Size: 256.8 MB (256772610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9247533a989127ec58faaf93cb34237b10098fbe3e07c00f54476b347840d5c0`  
		Last Modified: Sat, 04 Nov 2017 10:56:30 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1854a76cda3b58d8478f3d84eb68d87f150d92e40c0e8c815907705ae70afdb`  
		Last Modified: Sat, 04 Nov 2017 10:56:32 GMT  
		Size: 8.9 MB (8883869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11197c9f889995b767afed678fecf11a6f0ec2794a2d1a33357f3d36b49177af`  
		Last Modified: Sat, 04 Nov 2017 10:56:27 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a69bdc0064f72ed0143414ae742ff13c00b9d47b4aa8ca55ed11f0954d69de10`  
		Last Modified: Sat, 04 Nov 2017 10:56:27 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; arm variant v7

```console
$ docker pull maven@sha256:b756bad7d8a81669669e0e42fa50767383d3a67de62ef1171ccbd8d680cc38ad
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.6 MB (374626196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6cd0eafceb01ef93a095899d7ce4f87ebbd9b7f8cdaa74d85bd3894c6d6576e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:14 GMT
ADD file:8310e9969f49ad8da22c8531636a505f796ae2e5ab255104280bbe27bd312eb2 in / 
# Mon, 09 Oct 2017 21:44:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:21:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:13:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:14:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:52:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 01:52:58 GMT
ENV LANG=C.UTF-8
# Fri, 03 Nov 2017 01:52:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Nov 2017 01:53:06 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 03 Nov 2017 01:53:13 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 01:29:22 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 01:29:22 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 01:30:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 01:30:48 GMT
CMD ["jshell"]
# Sat, 04 Nov 2017 02:01:54 GMT
ARG MAVEN_VERSION=3.5.2
# Sat, 04 Nov 2017 02:01:55 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Nov 2017 02:01:55 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Sat, 04 Nov 2017 02:02:02 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Sat, 04 Nov 2017 02:02:10 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Sat, 04 Nov 2017 02:02:19 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Nov 2017 02:02:24 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Nov 2017 02:02:31 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 04 Nov 2017 02:02:38 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 04 Nov 2017 02:02:39 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 04 Nov 2017 02:02:39 GMT
VOLUME [/root/.m2]
# Sat, 04 Nov 2017 02:02:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 04 Nov 2017 02:02:54 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c73d8f8e11b2d23be25158f1c637fa52a156601fa88a99dae20e4e90c9f8094e`  
		Last Modified: Mon, 09 Oct 2017 21:50:57 GMT  
		Size: 44.2 MB (44221149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f095d6eb4fb7112eed5df1d4ec6df80dba73c8cf89cb23d2b882b20b26a990db`  
		Last Modified: Mon, 09 Oct 2017 22:32:26 GMT  
		Size: 7.6 MB (7565479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3968719ebcab7e8ff1fdf9a4c6674d9d6297c6e6aa3f2943d967a6197574aad3`  
		Last Modified: Fri, 03 Nov 2017 00:29:20 GMT  
		Size: 8.9 MB (8934960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee3aaebcb207894178d9de2f611b7cd94dc0b046bd590a39228ded1239ccf17`  
		Last Modified: Fri, 03 Nov 2017 00:29:44 GMT  
		Size: 46.3 MB (46271269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3f0b464d76ca387af4d3e69fff826720153a34d3c8f2d9c2e0651912e80b29`  
		Last Modified: Sat, 04 Nov 2017 01:36:24 GMT  
		Size: 869.6 KB (869631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a663868cf688b47511c75887c0d63c4a07431960b0b8e55aba94434fce2ddb6`  
		Last Modified: Sat, 04 Nov 2017 01:36:24 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64a8469fcb4b48a7edfbbd5fdcddd06416127fb084dbb3f65a8daf46e7942c0`  
		Last Modified: Sat, 04 Nov 2017 01:36:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd0b79d9bda12e35cdeef540c822f2473133b3d5d54a3dc81e3d298b819c07c`  
		Last Modified: Sat, 04 Nov 2017 01:37:14 GMT  
		Size: 257.9 MB (257878133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da9e0b23afc7204d4b40ad2f5bc3cf7f32538eaa27fcbd39c37eb7436f38013`  
		Last Modified: Sat, 04 Nov 2017 02:05:54 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7080a653dab8307c560f5729bd03cdb0338881ce3d7a05555ccb5f61d69ad6ec`  
		Last Modified: Sat, 04 Nov 2017 02:05:56 GMT  
		Size: 8.9 MB (8883874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4733dcaf007d2907c885adcc163dfffddd88a2c42a269236aef23afd5f692ea2`  
		Last Modified: Sat, 04 Nov 2017 02:05:55 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4745e47b72a9acb7d9a5ce405caa181f2d966a350ce71baa140f822860c0f71`  
		Last Modified: Sat, 04 Nov 2017 02:05:54 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:a753ee3ea7eb6774b7b2942a4f16fee03f5baf3c83d51538ce9c23bbc3a4cd13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.6 MB (374620707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce226aeee0c48ac2fe19cfcae13866d649cc99fb8a762b84862d40e1c80a22a0`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:25 GMT
ADD file:2dbe9971a07bebac37e2e609659f04c039921d9ece341799444660b1c747e595 in / 
# Mon, 09 Oct 2017 21:45:26 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:52:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:52:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:54:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:42:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:42:24 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 01:42:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 01:42:32 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 01:42:34 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 01:42:36 GMT
ENV JAVA_VERSION=9-b181
# Tue, 10 Oct 2017 01:42:37 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 10 Oct 2017 01:49:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 01:49:11 GMT
CMD ["jshell"]
# Tue, 31 Oct 2017 16:33:11 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 31 Oct 2017 16:33:12 GMT
ARG USER_HOME_DIR=/root
# Tue, 31 Oct 2017 16:33:13 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 31 Oct 2017 16:33:13 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 31 Oct 2017 16:33:16 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Tue, 31 Oct 2017 16:33:21 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 31 Oct 2017 16:33:22 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 31 Oct 2017 16:33:23 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 31 Oct 2017 16:33:23 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 31 Oct 2017 16:33:24 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 31 Oct 2017 16:33:25 GMT
VOLUME [/root/.m2]
# Tue, 31 Oct 2017 16:33:25 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 31 Oct 2017 16:33:26 GMT
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
	-	`sha256:a749e8c0209ca35b7d2c6836c10ca36a971cf8c58f53b1654c5c8e675f11470d`  
		Last Modified: Mon, 09 Oct 2017 23:29:57 GMT  
		Size: 9.0 MB (9013384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a038f58d009edec80b572395a34209db3528fe80b0337d2a716996c8d254ae`  
		Last Modified: Mon, 09 Oct 2017 23:30:34 GMT  
		Size: 46.5 MB (46478228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:964efe15c9762ade4c6feeef196b162abf196e366ce63bf6203e4e7de92bc63c`  
		Last Modified: Tue, 10 Oct 2017 02:20:08 GMT  
		Size: 879.2 KB (879218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27dc5841f48175b29549ac878547a420b4ae5e0b082b913b09c919d74cf6dbd0`  
		Last Modified: Tue, 10 Oct 2017 02:20:07 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e767e337810b6211d5af86492ccbfd36716d0e3f6ef51f2f9b5415d44be32893`  
		Last Modified: Tue, 10 Oct 2017 02:20:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b0d651c6fa7e7287fdbd63308fab4c8cadd8e637635bd34892cb1c5aba5751`  
		Last Modified: Tue, 10 Oct 2017 02:21:17 GMT  
		Size: 256.3 MB (256310278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3f37c0668d5bb7e3f8cfb83b005bd04434526e41dd6c4e692f9eeff56cd5914`  
		Last Modified: Tue, 31 Oct 2017 16:41:56 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8beb9daaf340d1d8abb5cbca17a5acfdb4dde1e0e8db9650d6683847b2095b9`  
		Last Modified: Tue, 31 Oct 2017 16:41:57 GMT  
		Size: 8.9 MB (8883834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d83f58522942b8daf356934e2e307fc9de31058a14ee33db175631d7d9a906`  
		Last Modified: Tue, 31 Oct 2017 16:41:56 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7823fa014c9b2854e7f772fd9e1bb8ea1338747264f5ecebf74cad0636070e9`  
		Last Modified: Tue, 31 Oct 2017 16:41:56 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; 386

```console
$ docker pull maven@sha256:7bc17f9eb48a64e9bbde8f28b23bead1de4a46f9974a7068c38ac1e5f0195044
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.9 MB (420893730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4722172ce53f929b34c4689cb7e1316e4da4bb66d53632e2064248f85fc3fc43`
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
# Sat, 04 Nov 2017 11:24:45 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 04 Nov 2017 11:24:46 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 04 Nov 2017 11:24:46 GMT
VOLUME [/root/.m2]
# Sat, 04 Nov 2017 11:24:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 04 Nov 2017 11:24:46 GMT
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
	-	`sha256:23e963c729d6972ebb6202d6193d2cb9718bdfeeb22f755df9ebd44cb767521c`  
		Last Modified: Sat, 04 Nov 2017 11:27:49 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7376e93955cc04c9d55b6d4697028150c85dd726a8aef685fb9edfe902aeb0b7`  
		Last Modified: Sat, 04 Nov 2017 11:27:49 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; ppc64le

```console
$ docker pull maven@sha256:d6d9f983f2c54546be1a957519338c3a9a8200f543c0b361ee4d54646c760c9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.5 MB (388458866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:739591dfc7beaf9c2afaa6525c0e210d68a490bbda30214157374780d79c6571`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:18 GMT
ADD file:c095ec4581fd0b74d04b5c60602abfc26045b0c8018b11e233ff33678663b4bc in / 
# Mon, 09 Oct 2017 21:44:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:32:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:34:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:15:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:15:08 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 04:15:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 04:15:26 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 04:15:31 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 04:15:36 GMT
ENV JAVA_VERSION=9-b181
# Tue, 10 Oct 2017 04:15:39 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 10 Oct 2017 04:36:57 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 04:37:11 GMT
CMD ["jshell"]
# Tue, 31 Oct 2017 10:24:34 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 31 Oct 2017 10:24:36 GMT
ARG USER_HOME_DIR=/root
# Tue, 31 Oct 2017 10:24:37 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 31 Oct 2017 10:24:39 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 31 Oct 2017 10:24:49 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Tue, 31 Oct 2017 10:24:54 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 31 Oct 2017 10:24:56 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 31 Oct 2017 10:24:57 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 31 Oct 2017 10:24:59 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 31 Oct 2017 10:25:01 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 31 Oct 2017 10:25:08 GMT
VOLUME [/root/.m2]
# Tue, 31 Oct 2017 10:25:10 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 31 Oct 2017 10:25:12 GMT
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
	-	`sha256:b61e6c60857c077b60e6f1bed65fd0305a4f2dd5780a6e42953e68147c6141a1`  
		Last Modified: Tue, 10 Oct 2017 00:56:04 GMT  
		Size: 9.5 MB (9498659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e853413aca9d7eef1f7f1492c4c67a20c4b710c37a32e69fa952ec6025dd8e5`  
		Last Modified: Tue, 10 Oct 2017 00:56:45 GMT  
		Size: 50.8 MB (50802218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80238feffcfc62f78be99721ef25818b0146a499ed64ebf59fc07dc10a160f71`  
		Last Modified: Tue, 10 Oct 2017 05:16:40 GMT  
		Size: 889.4 KB (889422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a519f075a6f7a048f7499ad86976462b40ac68b26872a5751711643162945e2`  
		Last Modified: Tue, 10 Oct 2017 05:16:39 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3069b664ad66bb885bb3669f3b4e3c099e9c7bc307fd7d5e46b88f8c708d15eb`  
		Last Modified: Tue, 10 Oct 2017 05:16:39 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2584b4f32943a56d816166c53aeea2da741c6a53657525dd7f6f214a7a0f3c36`  
		Last Modified: Tue, 10 Oct 2017 05:17:55 GMT  
		Size: 261.7 MB (261680547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ab5d1eb791c03d99b60ea4dabe1cf34020e38fee1c08f0b6b8cc480a24f6f1`  
		Last Modified: Tue, 31 Oct 2017 10:33:12 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d5bf02792b42fb03794d68bb9515897b6f5f42111b847d0dc77245e5b5c81d`  
		Last Modified: Tue, 31 Oct 2017 10:33:14 GMT  
		Size: 8.9 MB (8883859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5f5c3b231a233d5c3fbbc09e3beadc7837da984bbdde22cd6d9d8716c2db1c`  
		Last Modified: Tue, 31 Oct 2017 10:33:12 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e800040d657ab722f0cce6d544130f812552f6705262c07cab4f8178411d0ad`  
		Last Modified: Tue, 31 Oct 2017 10:33:12 GMT  
		Size: 362.0 B  
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
