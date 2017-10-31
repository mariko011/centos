## `maven:3-jdk-8-alpine`

```console
$ docker pull maven@sha256:6b75d41c55d5564abd8eeb9d551120253fba9f72cc3fded668bd5a01886f0252
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm variant v6
	-	linux; 386

### `maven:3-jdk-8-alpine` - linux; arm variant v6

```console
$ docker pull maven@sha256:fc9babf5bb8fb32bf104d21bca856a7a682a6a1682168a496dc9b1dea71e65aa
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (63951037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c2fdc62b2b4ffc4054e8c76309075885b4c2453f64263dc06ba8ed779887308`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 13 May 2017 05:35:49 GMT
ADD file:be7cfe66d037514dfa5b3049f3c2912458d1f83132ef9d13780c84a85353cc80 in / 
# Sat, 13 May 2017 05:35:49 GMT
CMD ["sh"]
# Mon, 15 May 2017 20:51:35 GMT
ENV LANG=C.UTF-8
# Mon, 15 May 2017 20:51:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 15 May 2017 20:51:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Mon, 15 May 2017 20:51:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 15 May 2017 20:51:58 GMT
ENV JAVA_VERSION=8u121
# Mon, 15 May 2017 20:51:58 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Mon, 15 May 2017 20:52:11 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 30 Oct 2017 19:57:27 GMT
RUN apk add --no-cache curl tar bash
# Mon, 30 Oct 2017 19:57:27 GMT
ARG MAVEN_VERSION=3.5.2
# Mon, 30 Oct 2017 19:57:27 GMT
ARG USER_HOME_DIR=/root
# Mon, 30 Oct 2017 19:57:27 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Mon, 30 Oct 2017 19:57:28 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Mon, 30 Oct 2017 19:57:30 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 30 Oct 2017 19:57:30 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 30 Oct 2017 19:57:30 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 30 Oct 2017 19:57:31 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 30 Oct 2017 19:57:31 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 30 Oct 2017 19:57:31 GMT
VOLUME [/root/.m2]
# Mon, 30 Oct 2017 19:57:31 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 30 Oct 2017 19:57:32 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:47c5ef52fac1f1ab481cccaf684fd041d64aaca4b9fd16d2fef19ef1aaaed084`  
		Last Modified: Sat, 13 May 2017 05:38:04 GMT  
		Size: 1.9 MB (1867536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448b7b9cbe4a50a14e8f4ad8bc21a46a12e6aead982e8354f4b9192e05f97229`  
		Last Modified: Mon, 15 May 2017 20:52:19 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59af9715d4b8eacef33d32bd5a933f1926af1d9418e631fd2e12a8aac73668aa`  
		Last Modified: Mon, 15 May 2017 20:53:19 GMT  
		Size: 51.5 MB (51488443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d321b0d3714aef929eab6ac1681d1c5143d5e67bc8926b58ba0f53c084ff28`  
		Last Modified: Mon, 30 Oct 2017 19:57:47 GMT  
		Size: 1.7 MB (1709859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6481267eb0ce0883a9486a28bb4182180bfd0cb5d3255b77255da563eb938cf4`  
		Last Modified: Mon, 30 Oct 2017 19:57:48 GMT  
		Size: 8.9 MB (8883874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f45f7d7b1e5c609ef833ea5c435139648f90db6d98a8481f965ad7c8f07323`  
		Last Modified: Mon, 30 Oct 2017 19:57:47 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a8952af275538465c1d9e573d65af86a3f9c266ff215e13ec359e2b5db54c0`  
		Last Modified: Mon, 30 Oct 2017 19:57:46 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-alpine` - linux; 386

```console
$ docker pull maven@sha256:c638f79c612ce434a489a6c24f1a1913ace14b80d6aa0362502d4ab51799bd69
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.7 MB (67659299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da23ba772ce0d773e325d839dd6bc04c2c481d63d9787311d92dc28f4b50b692`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 13 May 2017 04:29:27 GMT
ADD file:e900452b23e54c736cfe6d382244128cf76b1de073045356c3e614872f4a4d0e in / 
# Sat, 13 May 2017 04:29:28 GMT
CMD ["sh"]
# Mon, 15 May 2017 21:00:12 GMT
ENV LANG=C.UTF-8
# Mon, 15 May 2017 21:00:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 15 May 2017 21:01:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Mon, 15 May 2017 21:01:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 15 May 2017 21:01:25 GMT
ENV JAVA_VERSION=8u121
# Mon, 15 May 2017 21:01:26 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Mon, 15 May 2017 21:01:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 31 Oct 2017 01:43:58 GMT
RUN apk add --no-cache curl tar bash
# Tue, 31 Oct 2017 01:43:58 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 31 Oct 2017 01:43:58 GMT
ARG USER_HOME_DIR=/root
# Tue, 31 Oct 2017 01:43:58 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 31 Oct 2017 01:43:58 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 31 Oct 2017 01:44:00 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 31 Oct 2017 01:44:00 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 31 Oct 2017 01:44:00 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 31 Oct 2017 01:44:00 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 31 Oct 2017 01:44:01 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 31 Oct 2017 01:44:01 GMT
VOLUME [/root/.m2]
# Tue, 31 Oct 2017 01:44:01 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 31 Oct 2017 01:44:01 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:613687d8794057a97a070d4c975c4bd357238d5819c54b14ed7e6133546c45b2`  
		Last Modified: Sat, 13 May 2017 04:29:32 GMT  
		Size: 2.0 MB (2017241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f865c8d151e4d09c228efd9df1262334e85b6073b92790c24a49f0fedf3b3b0`  
		Last Modified: Mon, 15 May 2017 21:07:25 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb2852b40e799365450ab4c787ef3d8b9b49e082f70a04d9b08ba8706abd5f4`  
		Last Modified: Mon, 15 May 2017 21:08:32 GMT  
		Size: 54.9 MB (54880098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c77933014cbeb41d0bb6708238918413cc8189ca7eafdf63a6c0ba6b3567ae0`  
		Last Modified: Tue, 31 Oct 2017 01:53:01 GMT  
		Size: 1.9 MB (1876793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:601f0b7defc9eec1cc6fee79144d0c8d950acc8b7242133c69cab90725b05be0`  
		Last Modified: Tue, 31 Oct 2017 01:53:01 GMT  
		Size: 8.9 MB (8883842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd495de5179d744d7a2bf1af9c054e3a5b4b489c9f543307721794afdb499c0d`  
		Last Modified: Tue, 31 Oct 2017 01:53:00 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd53a03a381fdb04a934ba151aa627524f99b8e9a2320e099275f145731a9e7`  
		Last Modified: Tue, 31 Oct 2017 01:53:01 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
