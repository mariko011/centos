## `maven:3-jdk-7`

```console
$ docker pull maven@sha256:f147d93d451ea63620c79a5fb66c8751180fe8effb1691ae77aff88f65d6996c
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

### `maven:3-jdk-7` - linux; amd64

```console
$ docker pull maven@sha256:9d147e37ef7e21935114159c52c25eba6c39661361842eab9bced2b56b8b5f49
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253702732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bb4dd764190edf80c2bc7af2926f8fe4733a8780cd216c9b404d206f4aa5dff`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:36:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:36:41 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:36:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:36:43 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:36:44 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:36:44 GMT
ENV JAVA_VERSION=7u151
# Tue, 10 Oct 2017 00:36:44 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 10 Oct 2017 00:38:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 30 Oct 2017 20:05:17 GMT
ARG MAVEN_VERSION=3.5.2
# Mon, 30 Oct 2017 20:05:17 GMT
ARG USER_HOME_DIR=/root
# Mon, 30 Oct 2017 20:05:18 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Mon, 30 Oct 2017 20:05:18 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Mon, 30 Oct 2017 20:05:20 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 30 Oct 2017 20:05:20 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 30 Oct 2017 20:05:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 30 Oct 2017 20:05:21 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 30 Oct 2017 20:05:21 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 30 Oct 2017 20:05:21 GMT
VOLUME [/root/.m2]
# Mon, 30 Oct 2017 20:05:21 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 30 Oct 2017 20:05:22 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661393707836d5196874d18a5d89808079f01cb4376800584bfc1f7b33dd0852`  
		Last Modified: Mon, 09 Oct 2017 22:58:41 GMT  
		Size: 43.2 MB (43228125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c1589802ecad54f7897f34b36fbdbb6b689b765688a9abecf56c2bd445d3a4`  
		Last Modified: Tue, 10 Oct 2017 01:11:55 GMT  
		Size: 828.7 KB (828686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6494729fa0855c6777551738b712cfd6292b968deb362933a5ac6beb35eb16e5`  
		Last Modified: Tue, 10 Oct 2017 01:11:55 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce9d8c463b7f7a5217e23671bb82214ce9609b46d07c8719864e7f025a86b2a`  
		Last Modified: Tue, 10 Oct 2017 01:11:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608e935187420110e1073b932b129778bd8111327ede217281559b644bbaa252`  
		Last Modified: Tue, 10 Oct 2017 01:12:14 GMT  
		Size: 128.9 MB (128901568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e30d49ddbcf83a3282df0397265d201542189e1799e5b249c82fa2b0e986cdfa`  
		Last Modified: Mon, 30 Oct 2017 20:09:07 GMT  
		Size: 8.9 MB (8883840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e432ee667f6c267e5b17dbfa3491291bf65c15a6f1bd97660bc802c95ff0a058`  
		Last Modified: Mon, 30 Oct 2017 20:09:06 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ecfc7181eb048004fb3cfdf872c8542a54c8898ee7fd2214862eddec0aedae`  
		Last Modified: Mon, 30 Oct 2017 20:09:06 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7` - linux; arm variant v5

```console
$ docker pull maven@sha256:2f1f70ddd8fb845ea156887d8dce7bd161e3749f46bcacbe9c5a144f25ac2b14
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.7 MB (224745986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c429b997f6225c3952ae20fb25ea81832e59f9e2a632c8805faa674e38cebe6e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:12:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:12:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:13:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:06:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:06:32 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 08:06:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 08:06:34 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 08:06:34 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 08:06:34 GMT
ENV JAVA_VERSION=7u151
# Tue, 10 Oct 2017 08:06:35 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 10 Oct 2017 08:07:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 31 Oct 2017 14:06:45 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 31 Oct 2017 14:06:45 GMT
ARG USER_HOME_DIR=/root
# Tue, 31 Oct 2017 14:06:45 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 31 Oct 2017 14:06:46 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 31 Oct 2017 14:06:48 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 31 Oct 2017 14:06:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 31 Oct 2017 14:06:49 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 31 Oct 2017 14:06:49 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 31 Oct 2017 14:06:50 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 31 Oct 2017 14:06:50 GMT
VOLUME [/root/.m2]
# Tue, 31 Oct 2017 14:06:50 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 31 Oct 2017 14:06:51 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffbd68139d082d5462baf2dcc79e9164c03c8aa02e40c979170c408d744c80b`  
		Last Modified: Mon, 09 Oct 2017 22:24:37 GMT  
		Size: 18.7 MB (18654351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25a8d00f5623c0cf6540a91059805ce464addb2a5a50059f743796346302529`  
		Last Modified: Mon, 09 Oct 2017 22:24:46 GMT  
		Size: 41.1 MB (41071202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9263441f2e5a1c4b41f81e9a1914e947edbb3ec82f96ea7a1e95c60151819cfa`  
		Last Modified: Tue, 10 Oct 2017 08:18:43 GMT  
		Size: 822.0 KB (821989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f16f8aeafe8f8fca77db7caa84ac9cccc916f5ed68e9839dbfff8dc02ec41d`  
		Last Modified: Tue, 10 Oct 2017 08:18:44 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bb8629a8a7581c86a7c2707843789ffba6f76e5dd1c98b71eb3d6ebbbee4b0`  
		Last Modified: Tue, 10 Oct 2017 08:18:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b399e73ad89620fe4f81b79208a2c96bf954d01568d02929511ebd60b15d3386`  
		Last Modified: Tue, 10 Oct 2017 08:19:04 GMT  
		Size: 104.4 MB (104433217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd96a1e2446f016e052bf38a15cbb41ca1c551d9d21c0fd71c7415c7e820f570`  
		Last Modified: Tue, 31 Oct 2017 14:08:55 GMT  
		Size: 8.9 MB (8883860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d41babf2f3031d951c6e85d131a16062a8fa6a8716b2cec6ca641a07f7e4044`  
		Last Modified: Tue, 31 Oct 2017 14:08:53 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545d1982c8e30a2375cba428fa05aa24af9eb954389259062644719a3ed21bce`  
		Last Modified: Tue, 31 Oct 2017 14:08:53 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7` - linux; arm variant v7

```console
$ docker pull maven@sha256:046ba5769c9bdffb9db2ee82ddecdcdff0456e8a44e07c43a8b9b7dcb9dd794f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.2 MB (229222378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16dd7957511d718e37013815de567e53f9e8c40791f3565fb7b36f1088dd2f3a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:17:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:17:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:19:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:55:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:55:50 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:55:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:55:59 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:56:01 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 22:56:02 GMT
ENV JAVA_VERSION=7u151
# Mon, 09 Oct 2017 22:56:02 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Mon, 09 Oct 2017 22:57:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 31 Oct 2017 05:12:45 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 31 Oct 2017 05:12:45 GMT
ARG USER_HOME_DIR=/root
# Tue, 31 Oct 2017 05:12:45 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 31 Oct 2017 05:12:45 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 31 Oct 2017 05:12:57 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 31 Oct 2017 05:12:57 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 31 Oct 2017 05:12:57 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 31 Oct 2017 05:12:57 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 31 Oct 2017 05:12:58 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 31 Oct 2017 05:12:58 GMT
VOLUME [/root/.m2]
# Tue, 31 Oct 2017 05:12:58 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 31 Oct 2017 05:12:59 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd486ac73440295f728f6eadb49eabdf58a6cad76cf3c8e36ef7a32894278271`  
		Last Modified: Mon, 09 Oct 2017 22:31:21 GMT  
		Size: 18.3 MB (18262741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d2aef63d92f28cede17dbc2fa087b4521783b77f8a04a8da664fd65b7c5198`  
		Last Modified: Mon, 09 Oct 2017 22:31:42 GMT  
		Size: 39.7 MB (39704394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5a2d46e156c49d694c2b0c01a2beb56e8f95a4892e2b06c24a3ae2059d6121`  
		Last Modified: Mon, 09 Oct 2017 23:16:53 GMT  
		Size: 795.9 KB (795907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f90ec13dfd13aa1ef9eececc42cee1ded3657e0f2826fef10ae5a569ad63ab`  
		Last Modified: Mon, 09 Oct 2017 23:16:53 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:446f643199bbd8f9acff03b118fd1f742587f20ef204463dbc7ea86eb2493af2`  
		Last Modified: Mon, 09 Oct 2017 23:16:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5551e8f7a595c5ff92650b64e7fa8ea0a58a7530d537c7270b873f4c40d247bc`  
		Last Modified: Mon, 09 Oct 2017 23:19:02 GMT  
		Size: 112.9 MB (112887697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc0c1cf336dccea63a9689bdda4990dcc0d1d36264113fb3350ff7660c80fea`  
		Last Modified: Tue, 31 Oct 2017 05:14:53 GMT  
		Size: 8.9 MB (8883855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2efd5bd04693252f690b43695fbadcaf2876587bbe6aae8ce89f515529894de`  
		Last Modified: Tue, 31 Oct 2017 05:14:51 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5397ae9868b265cc876b0e8a2cb92315fce6aea01c9423076643112c726c455d`  
		Last Modified: Tue, 31 Oct 2017 05:14:51 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:7ed5c26d86be5e036e9a4dea6a1488718ee8b04f2ceb20fda99e8da3dfcb1362
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.8 MB (223776493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09540f8a934a23c5465ccd82636b6e40008ee4a0bfd7cb52690ab1ab6ecfc127`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:39:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:41:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:49:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:49:19 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:49:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:49:22 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:49:23 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:49:24 GMT
ENV JAVA_VERSION=7u151
# Tue, 10 Oct 2017 00:49:24 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 10 Oct 2017 00:58:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 31 Oct 2017 16:29:49 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 31 Oct 2017 16:29:50 GMT
ARG USER_HOME_DIR=/root
# Tue, 31 Oct 2017 16:29:50 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 31 Oct 2017 16:29:51 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 31 Oct 2017 16:29:58 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 31 Oct 2017 16:29:59 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 31 Oct 2017 16:30:00 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 31 Oct 2017 16:30:00 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 31 Oct 2017 16:30:01 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 31 Oct 2017 16:30:02 GMT
VOLUME [/root/.m2]
# Tue, 31 Oct 2017 16:30:02 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 31 Oct 2017 16:30:03 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eea24e7c11451963104c40894381c41b9efc0c36165352be38c74f40da7cc7`  
		Last Modified: Mon, 09 Oct 2017 23:28:06 GMT  
		Size: 18.7 MB (18738058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55f6271a8b3615caad80877c6727a9fc25abee93f70dcd8d6af4edabfeeb42a`  
		Last Modified: Mon, 09 Oct 2017 23:28:47 GMT  
		Size: 41.0 MB (40990042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c4d92000fd15747cc851cf3f5b4e64ed1d745aee25e87058524e6376dc145d`  
		Last Modified: Tue, 10 Oct 2017 02:03:14 GMT  
		Size: 823.8 KB (823847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d621141b33d05c389eee3319aa6e07426275f86d447f287908ac91b03e90368c`  
		Last Modified: Tue, 10 Oct 2017 02:03:13 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c1c480b79d125ce8145ae2b8995971ba7d572b569538b2ed6da2ecc5303ff9`  
		Last Modified: Tue, 10 Oct 2017 02:03:13 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f956c3f227be3b88b1bc548032f7c22d4a790e68636ab356600c7b128e5cf5`  
		Last Modified: Tue, 10 Oct 2017 02:04:07 GMT  
		Size: 104.4 MB (104409936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e91fdf4b0912e41b13fb30e53242fe8ca8e15b2c643b0a57f5bf038ccff83d9`  
		Last Modified: Tue, 31 Oct 2017 16:35:28 GMT  
		Size: 8.9 MB (8883828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:813b7436299bbcc7b31ec047b12c6e6c608686b4562d148c014ef291b66c3ca5`  
		Last Modified: Tue, 31 Oct 2017 16:35:26 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a990195be0b4b12ad5812227624783ea781c770d8a1b1a2563eb0910adab7e94`  
		Last Modified: Tue, 31 Oct 2017 16:35:26 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7` - linux; 386

```console
$ docker pull maven@sha256:1b204ceccae728706fa6f93e8876dbca1c01a32e337f34b9f6a125a6c444a992
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.1 MB (268099505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b69d7491ff827397ed85a4c3737e5acf932a70a609f18022ed717930593d62f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:58:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:58:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:01:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:52:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:52:59 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:53:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:53:01 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:53:01 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:53:01 GMT
ENV JAVA_VERSION=7u151
# Tue, 10 Oct 2017 00:53:01 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 10 Oct 2017 00:54:18 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 31 Oct 2017 01:43:35 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 31 Oct 2017 01:43:36 GMT
ARG USER_HOME_DIR=/root
# Tue, 31 Oct 2017 01:43:36 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 31 Oct 2017 01:43:36 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 31 Oct 2017 01:43:39 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 31 Oct 2017 01:43:39 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 31 Oct 2017 01:43:40 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 31 Oct 2017 01:43:40 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 31 Oct 2017 01:43:40 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 31 Oct 2017 01:43:40 GMT
VOLUME [/root/.m2]
# Tue, 31 Oct 2017 01:43:41 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 31 Oct 2017 01:43:41 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a231408e4353a3649b3f45db871f8f6823088270a8319239d3819fd2ef0501b3`  
		Last Modified: Mon, 09 Oct 2017 23:37:27 GMT  
		Size: 21.6 MB (21594870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c5e5ef1f110977e0931f2fcbc49c9f550e6b93813727de7e4432f85d99218c`  
		Last Modified: Mon, 09 Oct 2017 23:37:53 GMT  
		Size: 43.9 MB (43880551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4df7c22981197bdddc3d4693e56e024a84e346edc1a9c12aee5fc819cfaad1`  
		Last Modified: Tue, 10 Oct 2017 01:41:26 GMT  
		Size: 831.7 KB (831667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ee21e508ddd87507d7fc83cee44dd5c3fcadcac845262136e8a8addeea4bc4`  
		Last Modified: Tue, 10 Oct 2017 01:41:25 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1cff4d6201c58d4a0dab3fdd02bb61f531a3cee45f1b9ec92bdfbbdbad259b4`  
		Last Modified: Tue, 10 Oct 2017 01:41:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb1fffac68bdae374a6260cba89f9fd2832b57097f18d3142f2d11c3947e38`  
		Last Modified: Tue, 10 Oct 2017 01:41:49 GMT  
		Size: 140.1 MB (140133266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815ebd51ca9e317636177d6d5cee47ffb824d73c085ff99154226ff5bc972a5a`  
		Last Modified: Tue, 31 Oct 2017 01:52:37 GMT  
		Size: 8.9 MB (8883830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5f92ad5d5389e96f0088ac61a48b9073f2ee92355b7199dbb3109910856668`  
		Last Modified: Tue, 31 Oct 2017 01:52:34 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7972c032dcd5ef9142a717f1004afd1bc271a83c91361a3037a9ff44a2b07d1`  
		Last Modified: Tue, 31 Oct 2017 01:52:34 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7` - linux; ppc64le

```console
$ docker pull maven@sha256:7fd36e7705a87b67329bce1fbe3be62261858dd9112e86180524d1f9078cd598
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229933669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a935f2dd40a97f367240ba0d1456972ebb1acf18a9401221755355d7ccb62ce`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:20:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:23:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:30:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 20:30:30 GMT
ENV LANG=C.UTF-8
# Thu, 02 Nov 2017 20:30:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 02 Nov 2017 20:30:42 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 02 Nov 2017 20:30:45 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 02 Nov 2017 20:30:47 GMT
ENV JAVA_VERSION=7u151
# Thu, 02 Nov 2017 20:30:49 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Thu, 02 Nov 2017 20:45:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 02 Nov 2017 22:13:21 GMT
ARG MAVEN_VERSION=3.5.2
# Thu, 02 Nov 2017 22:13:24 GMT
ARG USER_HOME_DIR=/root
# Thu, 02 Nov 2017 22:13:26 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Thu, 02 Nov 2017 22:13:28 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Thu, 02 Nov 2017 22:13:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 02 Nov 2017 22:13:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 02 Nov 2017 22:13:39 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 02 Nov 2017 22:13:42 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 02 Nov 2017 22:13:45 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 02 Nov 2017 22:13:51 GMT
VOLUME [/root/.m2]
# Thu, 02 Nov 2017 22:13:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 02 Nov 2017 22:13:55 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e89885275517e26348ed4e0233ba2840ced4a5353d0672d6b9c7eacc3cd124`  
		Last Modified: Tue, 10 Oct 2017 00:55:23 GMT  
		Size: 19.2 MB (19201020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:923dbaebae2aff2ba892061be6efa144dd8d75c1a77e6c955e3acd5b56d750ca`  
		Last Modified: Thu, 02 Nov 2017 17:48:29 GMT  
		Size: 42.7 MB (42730737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790a8cd247b313c8a8fb249a15de3fec5e345cc22f5c8c8d887b5bea1f2f3a39`  
		Last Modified: Thu, 02 Nov 2017 21:39:40 GMT  
		Size: 824.7 KB (824723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942802111d07cb9e64338d7726bbca5c214ce4004e82b7d7523ae55607f0fc95`  
		Last Modified: Thu, 02 Nov 2017 21:39:40 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a363f74f06fb4661b17457ddcc150916b55b9c74f443973901fbe016bc7229d6`  
		Last Modified: Thu, 02 Nov 2017 21:39:40 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f575a6e0b927006bc51afa6328fd259a77df8a54960252278c9e811dfcabaa`  
		Last Modified: Thu, 02 Nov 2017 21:40:13 GMT  
		Size: 106.5 MB (106482105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311dd0b0fb4337950719ac43c2badcbc22b6ec3f0637c995527621f0f9555f10`  
		Last Modified: Thu, 02 Nov 2017 22:15:39 GMT  
		Size: 8.9 MB (8883868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4922ddc0dd640badd5087a71e3f2eb0be0b6aebf24f8891e8a3082e30331a0b2`  
		Last Modified: Thu, 02 Nov 2017 22:15:31 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2878c07e988fe0c419c388c678b6b4e4e87422e8e389a26c93aaa3f86030b082`  
		Last Modified: Thu, 02 Nov 2017 22:15:31 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7` - linux; s390x

```console
$ docker pull maven@sha256:d2102d791616850ba590947846a1e59c596a1246e47b7cfe2be1fab1bdb636f9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.8 MB (230827864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec68bc08223bbb69af621163100eb42e55c415edd3efbe4fac5b8cb4e804499`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 16:40:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 16:41:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 22:42:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 22:42:46 GMT
ENV LANG=C.UTF-8
# Thu, 02 Nov 2017 22:42:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 02 Nov 2017 22:42:48 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 02 Nov 2017 22:42:48 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 02 Nov 2017 22:42:48 GMT
ENV JAVA_VERSION=7u151
# Thu, 02 Nov 2017 22:42:48 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Thu, 02 Nov 2017 22:43:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 03 Nov 2017 00:48:01 GMT
ARG MAVEN_VERSION=3.5.2
# Fri, 03 Nov 2017 00:48:02 GMT
ARG USER_HOME_DIR=/root
# Fri, 03 Nov 2017 00:48:02 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Fri, 03 Nov 2017 00:48:02 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Fri, 03 Nov 2017 00:48:07 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 03 Nov 2017 00:48:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 03 Nov 2017 00:48:08 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 03 Nov 2017 00:48:08 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 03 Nov 2017 00:48:08 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 03 Nov 2017 00:48:08 GMT
VOLUME [/root/.m2]
# Fri, 03 Nov 2017 00:48:09 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 03 Nov 2017 00:48:09 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fbe5b310182c757ab3228a9ffed355ef25e28e7581d9ef1235cd8615314d64`  
		Last Modified: Mon, 09 Oct 2017 22:19:54 GMT  
		Size: 19.5 MB (19470778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a9e9eedd6c8ea8826d811537a552917508422c89649ccd7b987a7281d3916d`  
		Last Modified: Thu, 02 Nov 2017 16:54:36 GMT  
		Size: 43.4 MB (43363329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b476b46255748dc66f53d368487ad14d7c66381957b8c14501a20e188ff2e962`  
		Last Modified: Thu, 02 Nov 2017 22:49:28 GMT  
		Size: 838.0 KB (838005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf0bcf185a9939384d37b6e965f5408aca5551cefc368be66a3cc2939620d89`  
		Last Modified: Thu, 02 Nov 2017 22:49:28 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30db348b0825de8f653e3aee89c029e292a79ec456498f2f325b7a2c80965092`  
		Last Modified: Thu, 02 Nov 2017 22:49:28 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d488cdbb394faae334fb82030d7fcdaa94e108617273411b5ef53fb1c40ad2fd`  
		Last Modified: Thu, 02 Nov 2017 22:49:42 GMT  
		Size: 105.5 MB (105481575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3373a6532181b6f204dbf4bf8aac97f5050d30488ab41539e34316a02a808d94`  
		Last Modified: Fri, 03 Nov 2017 00:48:57 GMT  
		Size: 8.9 MB (8883834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe79b03b74ae47ef95d66552ec9a5ce7c7d650ce5bfce54d68be9e762cba5ed`  
		Last Modified: Fri, 03 Nov 2017 00:48:55 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4604d71949eb790665d078c4814dcea661a2652ad14bbbb337f865f0b76e189a`  
		Last Modified: Fri, 03 Nov 2017 00:48:56 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
