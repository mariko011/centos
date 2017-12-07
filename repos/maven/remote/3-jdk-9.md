## `maven:3-jdk-9`

```console
$ docker pull maven@sha256:843b582722994edf2b2582ce290e739a832873f8302a31bb6b1de14f18e3a3b6
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
$ docker pull maven@sha256:2d50b502ba00cc881630441b4b01a3b4dc23ef2d384e815c95e8f4f495ed12a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.0 MB (411049275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb41c0a42c6388856f9ec8cf36f8289d7e5770d18920246c5ecb2aa07512099`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:10 GMT
ADD file:d558b03d3d859cf66504349fc540b4c9ea26365896e7cc64fa87a79ca21bcf78 in / 
# Sat, 04 Nov 2017 05:26:11 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:28:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:54:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:54:54 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:54:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:54:56 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:54:56 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 18:54:56 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 18:54:56 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 18:55:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:55:49 GMT
CMD ["jshell"]
# Sat, 04 Nov 2017 22:58:47 GMT
ARG MAVEN_VERSION=3.5.2
# Sat, 04 Nov 2017 22:58:47 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Nov 2017 22:58:47 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Sat, 04 Nov 2017 22:58:47 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Sat, 04 Nov 2017 22:58:49 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Sat, 04 Nov 2017 22:58:51 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Nov 2017 22:58:51 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Nov 2017 22:58:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Dec 2017 00:41:01 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Dec 2017 00:41:01 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 07 Dec 2017 00:41:02 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Dec 2017 00:41:02 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3a8649ffa174245c68120e05b22db9c8a8f781cc4d9c24816fb562ecf8ab9652`  
		Last Modified: Mon, 09 Oct 2017 21:39:55 GMT  
		Size: 47.6 MB (47561948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a6b3f31b5b5d71ed7ce6bd30da25edc39f05c116f292f6e2a9a206cde538ae`  
		Last Modified: Sat, 04 Nov 2017 15:46:02 GMT  
		Size: 8.6 MB (8629999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aedc2c7a79b6aa0fb79d2e79a62e840b7cf70414ece1c9b6fd747267ba76d55`  
		Last Modified: Sat, 04 Nov 2017 15:46:02 GMT  
		Size: 9.5 MB (9512934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872b7995e681833c3d84c968418853a917689b0042028abec3fe207e5faccd49`  
		Last Modified: Sat, 04 Nov 2017 15:46:24 GMT  
		Size: 50.3 MB (50348398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba17810239b5966216df89e6b749821c7d9d9ac156e0987c1b5d1c6a0e05d5c`  
		Last Modified: Sat, 04 Nov 2017 19:04:03 GMT  
		Size: 893.8 KB (893765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f1f01b39b42c5b5e23aa5c05366d610b1db9655e28c727d48f83133671447c`  
		Last Modified: Sat, 04 Nov 2017 19:04:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00d8389e3e759fc9093031393afbcd3c96a8b0dfc09b0ac812512c119d43c6e`  
		Last Modified: Sat, 04 Nov 2017 19:04:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94110959eca020bbed1fcffd00bc4c9c5162f1663126bee527f904083ae90d1d`  
		Last Modified: Sat, 04 Nov 2017 19:04:44 GMT  
		Size: 285.2 MB (285216688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1fae38846f5d2be911ef0c356ec958f54962853aa206c3d96eb1481a88c7c40`  
		Last Modified: Sat, 04 Nov 2017 23:00:47 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d3673e88fa28271401d8d5817a5c42555f368c7d4f78b151906a3d7baade93`  
		Last Modified: Sat, 04 Nov 2017 23:00:48 GMT  
		Size: 8.9 MB (8883824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5c8ff7a3452f7fa8720a155598ea1018dd1e7a6b062fbaaea98bad009249c65`  
		Last Modified: Thu, 07 Dec 2017 00:45:14 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88d73063e8af70031c56901ca1ea8fe412b3e86a3c68969d150f6b24903b1a1f`  
		Last Modified: Thu, 07 Dec 2017 00:45:13 GMT  
		Size: 363.0 B  
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
$ docker pull maven@sha256:6872e7040e91ffa9ff976093d0ccebc0ee23df5f02a3bff5dfe48f47f38373d8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.6 MB (374626212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cd21daa3ce6f33adbbdfa4c4eadaaec93df26b489708aac25f638d948084a17`
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
# Thu, 07 Dec 2017 06:13:57 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Dec 2017 06:13:57 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 07 Dec 2017 06:13:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Dec 2017 06:13:58 GMT
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
	-	`sha256:e23bbaf4fdf667547921633984feaf46f773c367dea2d02e3d7c6b6d8d328b79`  
		Last Modified: Thu, 07 Dec 2017 06:17:03 GMT  
		Size: 748.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31dad64019dd83e1c4b822240c9957b0194278a2c508889c0164c8e3b985241a`  
		Last Modified: Thu, 07 Dec 2017 06:17:04 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:478cfce773564728b0facfa04cb2a7860452d6a2c063e74127d34cb44e3d9bca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.5 MB (382486489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbad415aa9d62a2c6d172c379bf1c25b88a181a4db867d70ebcad0e02c60125f`
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
# Sat, 04 Nov 2017 18:35:49 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 04 Nov 2017 18:35:50 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 04 Nov 2017 18:35:51 GMT
VOLUME [/root/.m2]
# Sat, 04 Nov 2017 18:35:51 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 04 Nov 2017 18:35:52 GMT
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
	-	`sha256:aa5a34e0340760a5e3c2ad73dcb4226361ae0989d7e551cb8fb6308333272cd8`  
		Last Modified: Sat, 04 Nov 2017 18:41:23 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79e56552104206c3573c7573b35f30a9bdfdcefea319d264bc7d46f78ff2a68`  
		Last Modified: Sat, 04 Nov 2017 18:41:23 GMT  
		Size: 362.0 B  
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
$ docker pull maven@sha256:f61d9c4baa5f5c594917f7dfe95d8cb9d7f3379120636273cc0f0625374655df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.7 MB (397721532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e980310600e806fc1592a63be2f968c89a55464e253e89f4afd9552b648c4ede`
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
# Sat, 04 Nov 2017 12:02:04 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 04 Nov 2017 12:02:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 04 Nov 2017 12:02:11 GMT
VOLUME [/root/.m2]
# Sat, 04 Nov 2017 12:02:12 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 04 Nov 2017 12:02:13 GMT
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
	-	`sha256:90a37237306fc1ec9423ead4a11d7f3d2d0a5df1dbd16a7abe9bccb38969ac4a`  
		Last Modified: Sat, 04 Nov 2017 12:05:14 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0131b99999a3b7c90cb10de34b49737cc9d78dc215f36a0416c8d36f1295fdef`  
		Last Modified: Sat, 04 Nov 2017 12:05:14 GMT  
		Size: 362.0 B  
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
