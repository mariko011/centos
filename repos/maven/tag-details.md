<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `maven`

-	[`maven:3`](#maven3)
-	[`maven:3.5`](#maven35)
-	[`maven:3.5.0`](#maven350)
-	[`maven:3.5.0-alpine`](#maven350-alpine)
-	[`maven:3.5.0-ibmjava`](#maven350-ibmjava)
-	[`maven:3.5.0-ibmjava-8`](#maven350-ibmjava-8)
-	[`maven:3.5.0-ibmjava-8-alpine`](#maven350-ibmjava-8-alpine)
-	[`maven:3.5.0-ibmjava-9`](#maven350-ibmjava-9)
-	[`maven:3.5.0-ibmjava-9-alpine`](#maven350-ibmjava-9-alpine)
-	[`maven:3.5.0-ibmjava-alpine`](#maven350-ibmjava-alpine)
-	[`maven:3.5.0-jdk-7`](#maven350-jdk-7)
-	[`maven:3.5.0-jdk-7-alpine`](#maven350-jdk-7-alpine)
-	[`maven:3.5.0-jdk-7-slim`](#maven350-jdk-7-slim)
-	[`maven:3.5.0-jdk-8`](#maven350-jdk-8)
-	[`maven:3.5.0-jdk-8-alpine`](#maven350-jdk-8-alpine)
-	[`maven:3.5.0-jdk-8-slim`](#maven350-jdk-8-slim)
-	[`maven:3.5.0-jdk-9`](#maven350-jdk-9)
-	[`maven:3.5.0-jdk-9-slim`](#maven350-jdk-9-slim)
-	[`maven:3.5.0-slim`](#maven350-slim)
-	[`maven:3.5-alpine`](#maven35-alpine)
-	[`maven:3.5-ibmjava`](#maven35-ibmjava)
-	[`maven:3.5-ibmjava-8`](#maven35-ibmjava-8)
-	[`maven:3.5-ibmjava-8-alpine`](#maven35-ibmjava-8-alpine)
-	[`maven:3.5-ibmjava-9`](#maven35-ibmjava-9)
-	[`maven:3.5-ibmjava-9-alpine`](#maven35-ibmjava-9-alpine)
-	[`maven:3.5-ibmjava-alpine`](#maven35-ibmjava-alpine)
-	[`maven:3.5-jdk-7`](#maven35-jdk-7)
-	[`maven:3.5-jdk-7-alpine`](#maven35-jdk-7-alpine)
-	[`maven:3.5-jdk-7-slim`](#maven35-jdk-7-slim)
-	[`maven:3.5-jdk-8`](#maven35-jdk-8)
-	[`maven:3.5-jdk-8-alpine`](#maven35-jdk-8-alpine)
-	[`maven:3.5-jdk-8-slim`](#maven35-jdk-8-slim)
-	[`maven:3.5-jdk-9`](#maven35-jdk-9)
-	[`maven:3.5-jdk-9-slim`](#maven35-jdk-9-slim)
-	[`maven:3.5-slim`](#maven35-slim)
-	[`maven:3-ibmjava`](#maven3-ibmjava)
-	[`maven:3-ibmjava-8`](#maven3-ibmjava-8)
-	[`maven:3-ibmjava-8-alpine`](#maven3-ibmjava-8-alpine)
-	[`maven:3-ibmjava-9`](#maven3-ibmjava-9)
-	[`maven:3-ibmjava-9-alpine`](#maven3-ibmjava-9-alpine)
-	[`maven:3-jdk-7`](#maven3-jdk-7)
-	[`maven:3-jdk-7-alpine`](#maven3-jdk-7-alpine)
-	[`maven:3-jdk-7-slim`](#maven3-jdk-7-slim)
-	[`maven:3-jdk-8`](#maven3-jdk-8)
-	[`maven:3-jdk-8-alpine`](#maven3-jdk-8-alpine)
-	[`maven:3-jdk-8-slim`](#maven3-jdk-8-slim)
-	[`maven:3-jdk-9`](#maven3-jdk-9)
-	[`maven:3-jdk-9-slim`](#maven3-jdk-9-slim)
-	[`maven:alpine`](#mavenalpine)
-	[`maven:ibmjava`](#mavenibmjava)
-	[`maven:ibmjava-alpine`](#mavenibmjava-alpine)
-	[`maven:latest`](#mavenlatest)
-	[`maven:slim`](#mavenslim)

## `maven:3`

```console
$ docker pull maven@sha256:2d6f423ef09aeb9ac05fbdf5af213e7adb92aed5bb905efb7378fa4aa5d6ee45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3` - linux; amd64

```console
$ docker pull maven@sha256:0071d6b8e97a1cfc96799f435572af794968669239d20339e9de26566cf56a66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.2 MB (304185910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f0f8f8cc8a18dbc0ac37903ba60e4ca362df58d67dd92e8e6230ddfc1058c03`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:51:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:51:32 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:51:32 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:52:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:52:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 01:47:48 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:47:48 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:47:49 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:47:49 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:47:52 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:47:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:47:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:47:53 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:47:53 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:47:53 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:47:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:47:53 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555d68a907cb72db9d53146f98f3e9b3307749d489eb4164d8a61dcabfaa350`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 892.0 KB (892022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b31cfae59b51710e232f3800a26d72b2fbdf320893915633b1357df05cf20`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7eec7274b2f1435066818cfcc17a337aa6316a7392fbeab68531a9b9a049d22`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb549c32d650ecc18fd7eb1a7c6d0a457ff739ccf3fb3545a8fadc801cf3a55`  
		Last Modified: Wed, 13 Sep 2017 00:04:13 GMT  
		Size: 183.7 MB (183692118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175c1150f2d67959b0ef2039adbcb0d74bb71d92556dfc659e0a1faa7184862c`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 272.0 KB (272039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c46e38915a6fc0409ddbd77052ae2f62d867c7b3db48d33bf322b0123ac124`  
		Last Modified: Wed, 13 Sep 2017 01:50:55 GMT  
		Size: 8.7 MB (8672815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2265d92d17526e3452738a3f147a25b231bf37b0896cdceaf72b57447dfa81f`  
		Last Modified: Wed, 13 Sep 2017 01:50:54 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d543be4c29189323c564dda54e2dc0e041bc0210fd3aff2695a01420b5d40483`  
		Last Modified: Wed, 13 Sep 2017 01:50:54 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5`

```console
$ docker pull maven@sha256:2d6f423ef09aeb9ac05fbdf5af213e7adb92aed5bb905efb7378fa4aa5d6ee45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5` - linux; amd64

```console
$ docker pull maven@sha256:0071d6b8e97a1cfc96799f435572af794968669239d20339e9de26566cf56a66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.2 MB (304185910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f0f8f8cc8a18dbc0ac37903ba60e4ca362df58d67dd92e8e6230ddfc1058c03`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:51:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:51:32 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:51:32 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:52:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:52:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 01:47:48 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:47:48 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:47:49 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:47:49 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:47:52 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:47:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:47:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:47:53 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:47:53 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:47:53 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:47:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:47:53 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555d68a907cb72db9d53146f98f3e9b3307749d489eb4164d8a61dcabfaa350`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 892.0 KB (892022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b31cfae59b51710e232f3800a26d72b2fbdf320893915633b1357df05cf20`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7eec7274b2f1435066818cfcc17a337aa6316a7392fbeab68531a9b9a049d22`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb549c32d650ecc18fd7eb1a7c6d0a457ff739ccf3fb3545a8fadc801cf3a55`  
		Last Modified: Wed, 13 Sep 2017 00:04:13 GMT  
		Size: 183.7 MB (183692118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175c1150f2d67959b0ef2039adbcb0d74bb71d92556dfc659e0a1faa7184862c`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 272.0 KB (272039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c46e38915a6fc0409ddbd77052ae2f62d867c7b3db48d33bf322b0123ac124`  
		Last Modified: Wed, 13 Sep 2017 01:50:55 GMT  
		Size: 8.7 MB (8672815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2265d92d17526e3452738a3f147a25b231bf37b0896cdceaf72b57447dfa81f`  
		Last Modified: Wed, 13 Sep 2017 01:50:54 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d543be4c29189323c564dda54e2dc0e041bc0210fd3aff2695a01420b5d40483`  
		Last Modified: Wed, 13 Sep 2017 01:50:54 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0`

```console
$ docker pull maven@sha256:2d6f423ef09aeb9ac05fbdf5af213e7adb92aed5bb905efb7378fa4aa5d6ee45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5.0` - linux; amd64

```console
$ docker pull maven@sha256:0071d6b8e97a1cfc96799f435572af794968669239d20339e9de26566cf56a66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.2 MB (304185910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f0f8f8cc8a18dbc0ac37903ba60e4ca362df58d67dd92e8e6230ddfc1058c03`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:51:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:51:32 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:51:32 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:52:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:52:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 01:47:48 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:47:48 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:47:49 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:47:49 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:47:52 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:47:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:47:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:47:53 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:47:53 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:47:53 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:47:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:47:53 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555d68a907cb72db9d53146f98f3e9b3307749d489eb4164d8a61dcabfaa350`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 892.0 KB (892022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b31cfae59b51710e232f3800a26d72b2fbdf320893915633b1357df05cf20`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7eec7274b2f1435066818cfcc17a337aa6316a7392fbeab68531a9b9a049d22`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb549c32d650ecc18fd7eb1a7c6d0a457ff739ccf3fb3545a8fadc801cf3a55`  
		Last Modified: Wed, 13 Sep 2017 00:04:13 GMT  
		Size: 183.7 MB (183692118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175c1150f2d67959b0ef2039adbcb0d74bb71d92556dfc659e0a1faa7184862c`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 272.0 KB (272039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c46e38915a6fc0409ddbd77052ae2f62d867c7b3db48d33bf322b0123ac124`  
		Last Modified: Wed, 13 Sep 2017 01:50:55 GMT  
		Size: 8.7 MB (8672815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2265d92d17526e3452738a3f147a25b231bf37b0896cdceaf72b57447dfa81f`  
		Last Modified: Wed, 13 Sep 2017 01:50:54 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d543be4c29189323c564dda54e2dc0e041bc0210fd3aff2695a01420b5d40483`  
		Last Modified: Wed, 13 Sep 2017 01:50:54 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-alpine`

```console
$ docker pull maven@sha256:4ee8a591743eef61fc647052e3225a563a364a1670f53015542099297391fc80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5.0-alpine` - linux; amd64

```console
$ docker pull maven@sha256:1378cdebbe7574ca19df32bd76b65a7c90a933e141d4c0e87db9fb117d3bf501
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.5 MB (82451800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb32c3faa84dd87da306a5587fce6595e6fb6e4bb2d2911c3c5f5eecb19e6636`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:52:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 12 Sep 2017 23:52:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:52:56 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:52:56 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:53:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 01:47:32 GMT
RUN apk add --no-cache curl tar bash
# Wed, 13 Sep 2017 01:47:32 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:47:33 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:47:33 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:47:33 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:47:34 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:47:34 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:47:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:47:35 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:47:35 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:47:35 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:47:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:47:36 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea587fc42c2307f2235a5e0ea171a998ce809de2bfeaae81b8c0bc2966cba9c`  
		Last Modified: Wed, 13 Sep 2017 00:05:33 GMT  
		Size: 70.1 MB (70051350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca416e87eb9424004ff54d141798a7e23d4334b268e55c054067eddb807d2732`  
		Last Modified: Wed, 13 Sep 2017 01:50:03 GMT  
		Size: 1.7 MB (1735943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c35cf9863d7eb577bedbd2b0850e62b9c4d7f406ddb6ae9fbfba6c8df7f3750`  
		Last Modified: Wed, 13 Sep 2017 01:50:05 GMT  
		Size: 8.7 MB (8672780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d2463b84ac5e9988c6928f652c5703b28fa19c25cd928614733bd0ea609c0e`  
		Last Modified: Wed, 13 Sep 2017 01:50:03 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c18779b901dd19c1d3bf8f4931c756a868c042373f569966b4b21e2462e5611`  
		Last Modified: Wed, 13 Sep 2017 01:50:03 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-ibmjava`

```console
$ docker pull maven@sha256:f96a1344a25743396138fe28554d2c18a88d07625d7af59d19232a818c2d2ba2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5.0-ibmjava` - linux; amd64

```console
$ docker pull maven@sha256:ccd29d31d5445bfb6f702f0365b985b261e24eeeb59fea9f0be8b5906dd3ba3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.0 MB (240954388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40facc028b2dedffe8b36f4e43ee0a8ad7c8139be016941734dc588ce88f5a44`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 17:38:21 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 13 Sep 2017 17:39:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 17:39:11 GMT
ENV JAVA_VERSION=1.8.0_sr4fp11
# Wed, 13 Sep 2017 17:43:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0550e9e44b50ec77cd8774f99051b910816daf3cf275c05438994314ff61d7ee';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='fc3180000ee745ba11fbcb8c0eda837ccf34830de652c3747682174980c0a466';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf39ce59310f477d8864134b5d1e8c090ea41a5421c17b6b0eaf5350fdc097bf';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='7056455a52d8f753e435d3994ca87c22c496d19d4a06634ba57e4ffc50d0c722';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='89dc14c0bb8199463396f3f71a168e43d61550c7821acee50ec8c3f6ed60a83f';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 13 Sep 2017 17:43:00 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 18:17:36 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 18:17:36 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 18:17:36 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 18:17:36 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 18:17:48 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update && apt-get install -y curl   && mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 18:17:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 18:17:49 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 18:17:49 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 18:17:49 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 18:17:49 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 18:17:50 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 18:17:50 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a20d9ff07d35a3fc345ee0c2e73a15f752ae515746d57897cbd0716bd5c470`  
		Last Modified: Wed, 13 Sep 2017 17:47:50 GMT  
		Size: 3.1 MB (3070400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:146980859c88cb5e20b9eba9f5c222d7a2ea95e7ce51f7be8c42fc6257cc9d35`  
		Last Modified: Wed, 13 Sep 2017 17:50:52 GMT  
		Size: 148.5 MB (148519270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16209b3d9a016f7e87c46928550d661dc219d51f0a55df9471161f48329134b9`  
		Last Modified: Wed, 13 Sep 2017 18:20:14 GMT  
		Size: 42.1 MB (42102437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41e4def067fdb402b1ac12160ad98af946caa142be8a2b22faf39e9716dc78b`  
		Last Modified: Wed, 13 Sep 2017 18:20:07 GMT  
		Size: 727.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb504bf90e0fc079bab6476425aa90bf0d171bb01dcf2677175f011b47c1a5e7`  
		Last Modified: Wed, 13 Sep 2017 18:20:07 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-ibmjava-8`

```console
$ docker pull maven@sha256:f96a1344a25743396138fe28554d2c18a88d07625d7af59d19232a818c2d2ba2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5.0-ibmjava-8` - linux; amd64

```console
$ docker pull maven@sha256:ccd29d31d5445bfb6f702f0365b985b261e24eeeb59fea9f0be8b5906dd3ba3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.0 MB (240954388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40facc028b2dedffe8b36f4e43ee0a8ad7c8139be016941734dc588ce88f5a44`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 17:38:21 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 13 Sep 2017 17:39:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 17:39:11 GMT
ENV JAVA_VERSION=1.8.0_sr4fp11
# Wed, 13 Sep 2017 17:43:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0550e9e44b50ec77cd8774f99051b910816daf3cf275c05438994314ff61d7ee';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='fc3180000ee745ba11fbcb8c0eda837ccf34830de652c3747682174980c0a466';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf39ce59310f477d8864134b5d1e8c090ea41a5421c17b6b0eaf5350fdc097bf';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='7056455a52d8f753e435d3994ca87c22c496d19d4a06634ba57e4ffc50d0c722';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='89dc14c0bb8199463396f3f71a168e43d61550c7821acee50ec8c3f6ed60a83f';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 13 Sep 2017 17:43:00 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 18:17:36 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 18:17:36 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 18:17:36 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 18:17:36 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 18:17:48 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update && apt-get install -y curl   && mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 18:17:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 18:17:49 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 18:17:49 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 18:17:49 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 18:17:49 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 18:17:50 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 18:17:50 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a20d9ff07d35a3fc345ee0c2e73a15f752ae515746d57897cbd0716bd5c470`  
		Last Modified: Wed, 13 Sep 2017 17:47:50 GMT  
		Size: 3.1 MB (3070400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:146980859c88cb5e20b9eba9f5c222d7a2ea95e7ce51f7be8c42fc6257cc9d35`  
		Last Modified: Wed, 13 Sep 2017 17:50:52 GMT  
		Size: 148.5 MB (148519270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16209b3d9a016f7e87c46928550d661dc219d51f0a55df9471161f48329134b9`  
		Last Modified: Wed, 13 Sep 2017 18:20:14 GMT  
		Size: 42.1 MB (42102437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41e4def067fdb402b1ac12160ad98af946caa142be8a2b22faf39e9716dc78b`  
		Last Modified: Wed, 13 Sep 2017 18:20:07 GMT  
		Size: 727.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb504bf90e0fc079bab6476425aa90bf0d171bb01dcf2677175f011b47c1a5e7`  
		Last Modified: Wed, 13 Sep 2017 18:20:07 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-ibmjava-8-alpine`

```console
$ docker pull maven@sha256:5bfaa0c075c96194f9d93bd12f89ff4c823b0e6ff2d4fe523c293a71eb53e4e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5.0-ibmjava-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:8d4e6c80cf3299c13377a3d1a1a9ba908919da315cc967c60451b2bb64582d87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (165001848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0463d4a59b1234477d42eb2945d00a5faa19ae91f42bb5e0b0e7904de29837d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 17:39:50 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 13 Sep 2017 17:40:06 GMT
RUN apk --update add --no-cache ca-certificates curl openssl xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && curl -Ls https://www.archlinux.org/packages/core/x86_64/gcc-libs/download > /tmp/gcc-libs.tar.xz     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /usr/glibc-compat/lib     && apk del curl     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Wed, 13 Sep 2017 17:40:06 GMT
ENV JAVA_VERSION=1.8.0_sr4fp11
# Wed, 13 Sep 2017 17:43:40 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0550e9e44b50ec77cd8774f99051b910816daf3cf275c05438994314ff61d7ee';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='fc3180000ee745ba11fbcb8c0eda837ccf34830de652c3747682174980c0a466';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf39ce59310f477d8864134b5d1e8c090ea41a5421c17b6b0eaf5350fdc097bf';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='7056455a52d8f753e435d3994ca87c22c496d19d4a06634ba57e4ffc50d0c722';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='89dc14c0bb8199463396f3f71a168e43d61550c7821acee50ec8c3f6ed60a83f';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 13 Sep 2017 17:43:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 18:17:31 GMT
RUN apk add --no-cache curl tar bash
# Wed, 13 Sep 2017 18:17:31 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 18:17:31 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 18:17:31 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 18:17:31 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 18:17:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 18:17:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 18:17:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 18:17:33 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 18:17:34 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 18:17:34 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 18:17:34 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 18:17:34 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd6a2460e4be15d253bc9d5293b9847af9ceedfbb7b51a3a710613b2b8cd47a`  
		Last Modified: Wed, 13 Sep 2017 17:48:42 GMT  
		Size: 4.2 MB (4153449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da73a74ee4b39e4a6997a15fd8c628210eac356edb0302c7d2f7f72e8bf0dac3`  
		Last Modified: Wed, 13 Sep 2017 17:54:13 GMT  
		Size: 148.5 MB (148468039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13816ccb32ce57e6335cb3f0fa05d9311e85b46c674a2670f9f3d87d1a35cf5`  
		Last Modified: Wed, 13 Sep 2017 18:19:41 GMT  
		Size: 1.7 MB (1716109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44550e1a63cc80ad21823622a498cb0705c90b69f6dcd891767e23acbf63c3d`  
		Last Modified: Wed, 13 Sep 2017 18:19:41 GMT  
		Size: 8.7 MB (8672762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48746aeecfe7dea8a47e3516751ba109fa60d052249ebbbc50eba988fdec0616`  
		Last Modified: Wed, 13 Sep 2017 18:19:39 GMT  
		Size: 733.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec1a794d1772e4af7c3e6d3b694597d86d9095b41ea8ac9da1c8dd578d47ed0`  
		Last Modified: Wed, 13 Sep 2017 18:19:39 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-ibmjava-9`

```console
$ docker pull maven@sha256:02c7ce01ba446169ada16a620c5059d080e6c13e94c1601834cadfdec30ec7dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5.0-ibmjava-9` - linux; amd64

```console
$ docker pull maven@sha256:3ebbee4b7e56307990669cfb0a26bb9d93b6456d451c5a09c9367a2d7a2b4403
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.1 MB (364069142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57f5c3687c2610954c9d68cd7e8c168365f6e38dfdc2b32f12efae8b0009d302`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 17:38:21 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 13 Sep 2017 17:39:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 17:43:41 GMT
ENV JAVA_VERSION=1.9.0_ea2
# Wed, 13 Sep 2017 17:44:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0fe3712b54a93695cf4948d9ae171bf5cef038c0e41b364b4e9eb7cb80a60688';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='5add39cc5ca56b97cf8ce71b9e1a15d19d36864aaed1e0296f50355ba3f34bd5';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='3c0dda9f449a667d12fe5f59a1ec059a90a9dc483fd35eef5ff53dd8b096cdf5';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8d06af57d8236839f5c403c12dcf4c89e22dd91716a4d26b85c8d92f6d1e2e8b';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='6e823afa1df83e364381f827f4244bfe29b0ddd58ef0203eb60df9b8c0d123af';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 13 Sep 2017 17:45:49 GMT
ENV JAVA_HOME=/opt/ibm/java PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 18:18:02 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 18:18:02 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 18:18:02 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 18:18:02 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 18:18:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update && apt-get install -y curl   && mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 18:18:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 18:18:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 18:18:48 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 18:18:48 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 18:18:48 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 18:18:48 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 18:18:49 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a20d9ff07d35a3fc345ee0c2e73a15f752ae515746d57897cbd0716bd5c470`  
		Last Modified: Wed, 13 Sep 2017 17:47:50 GMT  
		Size: 3.1 MB (3070400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae6792c5810a8ad17620ee5a49f956c3f651631d86b38e4acf538beb21cb36d`  
		Last Modified: Wed, 13 Sep 2017 17:54:53 GMT  
		Size: 271.6 MB (271633997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e610ca1d154f27712118cee70ab74a6e153fc6ae96473c0e675ea7e987608f`  
		Last Modified: Wed, 13 Sep 2017 18:21:10 GMT  
		Size: 42.1 MB (42102460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcc3efb70dfbd51f756055b853a62031a4c5e425dce1e8dac22cd562fc79ed9`  
		Last Modified: Wed, 13 Sep 2017 18:21:04 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3632c6b860d32196d57466a5b9b2929742c22058dd8a033ec392c401d91b50`  
		Last Modified: Wed, 13 Sep 2017 18:21:04 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-ibmjava-9-alpine`

```console
$ docker pull maven@sha256:c7ebb289a926b132570e2b4ab945c2963737f5d8f3dce519a62d0200c13b34b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5.0-ibmjava-9-alpine` - linux; amd64

```console
$ docker pull maven@sha256:81c6df536a290c1b704c4e92f8f5088531e39dd4fce2a0ae9ebff25a59458f6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.6 MB (291578864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f1ef1db297ef11cb562d4abcf2c89eb9ccbe6eadbdb2dd913494731cc982471`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 17:39:50 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 13 Sep 2017 17:46:07 GMT
RUN apk --update add --no-cache ca-certificates curl openssl xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && curl -Ls https://www.archlinux.org/packages/core/x86_64/gcc-libs/download > /tmp/gcc-libs.tar.xz     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && apk del curl     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Wed, 13 Sep 2017 17:46:07 GMT
ENV JAVA_VERSION=1.9.0_ea2
# Wed, 13 Sep 2017 17:47:08 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0fe3712b54a93695cf4948d9ae171bf5cef038c0e41b364b4e9eb7cb80a60688';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='5add39cc5ca56b97cf8ce71b9e1a15d19d36864aaed1e0296f50355ba3f34bd5';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='3c0dda9f449a667d12fe5f59a1ec059a90a9dc483fd35eef5ff53dd8b096cdf5';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8d06af57d8236839f5c403c12dcf4c89e22dd91716a4d26b85c8d92f6d1e2e8b';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='6e823afa1df83e364381f827f4244bfe29b0ddd58ef0203eb60df9b8c0d123af';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 13 Sep 2017 17:47:25 GMT
ENV JAVA_HOME=/opt/ibm/java PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 18:17:56 GMT
RUN apk add --no-cache curl tar bash
# Wed, 13 Sep 2017 18:17:56 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 18:17:56 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 18:17:56 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 18:17:56 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 18:17:58 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 18:17:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 18:17:58 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 18:17:59 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 18:17:59 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 18:17:59 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 18:17:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 18:18:00 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa9c9325edacd50b9ce0ee23fd20467abd5aaa1f0490d03ed8588e220648eba`  
		Last Modified: Wed, 13 Sep 2017 17:55:10 GMT  
		Size: 7.6 MB (7563859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff892cab404de32578fa30abc3c1b39b50f88d9be76feab027aceb51f5239365`  
		Last Modified: Wed, 13 Sep 2017 17:55:39 GMT  
		Size: 271.6 MB (271634623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ee575f6380768cfe811a2614ec8cfa2998ec1d76999228383ade0f7ca7839d`  
		Last Modified: Wed, 13 Sep 2017 18:20:49 GMT  
		Size: 1.7 MB (1716147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a61c1b90cb1b2d7d59fc928867d2f3757a40b939e35da19315207710d877d0`  
		Last Modified: Wed, 13 Sep 2017 18:20:48 GMT  
		Size: 8.7 MB (8672750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e237bbd017c50eefcbcce208d95f5c5963b38eb5e154ff8241053ba50c7d6b99`  
		Last Modified: Wed, 13 Sep 2017 18:20:47 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb29664926b6646629791bd784325ac5ec057f1b5e751cc6b63d229c9409505`  
		Last Modified: Wed, 13 Sep 2017 18:20:47 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-ibmjava-alpine`

```console
$ docker pull maven@sha256:5bfaa0c075c96194f9d93bd12f89ff4c823b0e6ff2d4fe523c293a71eb53e4e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5.0-ibmjava-alpine` - linux; amd64

```console
$ docker pull maven@sha256:8d4e6c80cf3299c13377a3d1a1a9ba908919da315cc967c60451b2bb64582d87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (165001848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0463d4a59b1234477d42eb2945d00a5faa19ae91f42bb5e0b0e7904de29837d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 17:39:50 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 13 Sep 2017 17:40:06 GMT
RUN apk --update add --no-cache ca-certificates curl openssl xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && curl -Ls https://www.archlinux.org/packages/core/x86_64/gcc-libs/download > /tmp/gcc-libs.tar.xz     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /usr/glibc-compat/lib     && apk del curl     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Wed, 13 Sep 2017 17:40:06 GMT
ENV JAVA_VERSION=1.8.0_sr4fp11
# Wed, 13 Sep 2017 17:43:40 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0550e9e44b50ec77cd8774f99051b910816daf3cf275c05438994314ff61d7ee';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='fc3180000ee745ba11fbcb8c0eda837ccf34830de652c3747682174980c0a466';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf39ce59310f477d8864134b5d1e8c090ea41a5421c17b6b0eaf5350fdc097bf';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='7056455a52d8f753e435d3994ca87c22c496d19d4a06634ba57e4ffc50d0c722';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='89dc14c0bb8199463396f3f71a168e43d61550c7821acee50ec8c3f6ed60a83f';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 13 Sep 2017 17:43:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 18:17:31 GMT
RUN apk add --no-cache curl tar bash
# Wed, 13 Sep 2017 18:17:31 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 18:17:31 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 18:17:31 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 18:17:31 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 18:17:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 18:17:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 18:17:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 18:17:33 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 18:17:34 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 18:17:34 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 18:17:34 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 18:17:34 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd6a2460e4be15d253bc9d5293b9847af9ceedfbb7b51a3a710613b2b8cd47a`  
		Last Modified: Wed, 13 Sep 2017 17:48:42 GMT  
		Size: 4.2 MB (4153449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da73a74ee4b39e4a6997a15fd8c628210eac356edb0302c7d2f7f72e8bf0dac3`  
		Last Modified: Wed, 13 Sep 2017 17:54:13 GMT  
		Size: 148.5 MB (148468039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13816ccb32ce57e6335cb3f0fa05d9311e85b46c674a2670f9f3d87d1a35cf5`  
		Last Modified: Wed, 13 Sep 2017 18:19:41 GMT  
		Size: 1.7 MB (1716109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44550e1a63cc80ad21823622a498cb0705c90b69f6dcd891767e23acbf63c3d`  
		Last Modified: Wed, 13 Sep 2017 18:19:41 GMT  
		Size: 8.7 MB (8672762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48746aeecfe7dea8a47e3516751ba109fa60d052249ebbbc50eba988fdec0616`  
		Last Modified: Wed, 13 Sep 2017 18:19:39 GMT  
		Size: 733.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec1a794d1772e4af7c3e6d3b694597d86d9095b41ea8ac9da1c8dd578d47ed0`  
		Last Modified: Wed, 13 Sep 2017 18:19:39 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-7`

```console
$ docker pull maven@sha256:72d92e1aae0a38dd1a4b4088763026659df96ad1efff482ae99319dce2a80843
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-7` - linux; amd64

```console
$ docker pull maven@sha256:7310bf16dbce3815652d2fe1b04e19df31e74f010a1319f9c2a9556f00faa025
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.5 MB (253491796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c7f1e189d9e7e98ab7ac40b8cd465e77e67605effe8875a11d52d6b7e692ace`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:45:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:45:56 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:45:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:45:57 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:45:57 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:45:58 GMT
ENV JAVA_VERSION=7u151
# Tue, 12 Sep 2017 23:45:58 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 12 Sep 2017 23:46:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 13 Sep 2017 01:47:19 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:47:19 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:47:20 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:47:20 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:47:23 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:47:23 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:47:23 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:47:24 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:47:24 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:47:24 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:47:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:47:25 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f860787a8ac656bdd001a3bed4eb7158b1b61af9ded71ebd245b8ec96a1247f1`  
		Last Modified: Wed, 13 Sep 2017 00:00:29 GMT  
		Size: 828.7 KB (828668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0da8a929ad39a3a6ae6b110c87a15b1c8cf175dd7f8d9eece034b4028439633`  
		Last Modified: Wed, 13 Sep 2017 00:00:29 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01995932d55bca599dcfc23dd8294480b098e7c66d960573517a75172e1226dc`  
		Last Modified: Wed, 13 Sep 2017 00:00:28 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee93c137596ebf3335a9b1739e8227e11bee2c5c9bc0b685c5b6068cb82543`  
		Last Modified: Wed, 13 Sep 2017 00:00:52 GMT  
		Size: 128.9 MB (128902039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed07ac96d5f9f673f0411d5f7e88ce577d3bf130f8a65656b712c5454f2fb3fa`  
		Last Modified: Wed, 13 Sep 2017 01:49:48 GMT  
		Size: 8.7 MB (8672793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19289a89e217f4015fbf8bb7e1d2d5d971ce201c4f8864a50500425b81e48cc`  
		Last Modified: Wed, 13 Sep 2017 01:49:47 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5bd39143eec2b0b59251ad1afd197135d767cd405214204a48c91e94f1516fb`  
		Last Modified: Wed, 13 Sep 2017 01:49:47 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-7-alpine`

```console
$ docker pull maven@sha256:29631532af479c63d75772557f3eae2fa4d28a5172b4f6fcc1ba644a137b97af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-7-alpine` - linux; amd64

```console
$ docker pull maven@sha256:0858b0de299f733d97b704a03f555994a72a520f906d0b7547ef032e93a19101
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.9 MB (89872243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f3c7369638c2b25f7e55eb60c0f3be9971cacb3aff3e7ff021aa00376dc72d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:48:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 12 Sep 2017 23:48:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 12 Sep 2017 23:48:35 GMT
ENV JAVA_VERSION=7u131
# Tue, 12 Sep 2017 23:48:35 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Tue, 12 Sep 2017 23:48:45 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 01:46:44 GMT
RUN apk add --no-cache curl tar bash
# Wed, 13 Sep 2017 01:46:45 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:46:45 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:46:45 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:46:45 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:46:46 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:46:47 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:46:47 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:46:47 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:46:47 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:46:47 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:46:48 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:46:48 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0028340879864dcf160cb49baa12ba5fe473833c8e40da6f0b5325a378b1cd3`  
		Last Modified: Wed, 13 Sep 2017 00:01:56 GMT  
		Size: 77.4 MB (77433839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7feb47b2afa3ac9d5dedbdded72ba9997914a488af0b18fcae2c506a1bc41dd1`  
		Last Modified: Wed, 13 Sep 2017 01:49:18 GMT  
		Size: 1.8 MB (1773886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b4ae1e5bdf46d3b2abb4e328049795ebcc541061d2ef5ba61c5ae330ab682b`  
		Last Modified: Wed, 13 Sep 2017 01:49:18 GMT  
		Size: 8.7 MB (8672790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750c1a25b24add3f772f9f4446aae45d0296951f28a9b1e5dcccd9c373170f3b`  
		Last Modified: Wed, 13 Sep 2017 01:49:17 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fab2b8e523d4b41e12efc96293acd04e07785ebf8cdc69192be2a385808dd87`  
		Last Modified: Wed, 13 Sep 2017 01:49:17 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-7-slim`

```console
$ docker pull maven@sha256:68d1bceb74e4b573b2afa344ba30fa61e8f7af40357eff24ecd0cbff6464380b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-7-slim` - linux; amd64

```console
$ docker pull maven@sha256:df29f104a51b47b9d63971afdc483ea3d9cb72848947b8db2003c7596435bbeb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.7 MB (158742975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:048201bf639862a5b60eb212aaff12b8f49bdfe0735e0dbb3bb7080595ba2890`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 23:47:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:47:09 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:47:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:47:11 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:47:11 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:47:11 GMT
ENV JAVA_VERSION=7u151
# Tue, 12 Sep 2017 23:47:11 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 12 Sep 2017 23:48:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 13 Sep 2017 01:46:49 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:46:49 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:46:49 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:46:49 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:47:14 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:47:16 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:47:16 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:47:16 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:47:17 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:47:17 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:47:17 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:47:18 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:47:18 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76a1ddfd6a28fba225fe560f3276a3f7db172f0a958f8dc252f2abe0f73dc80`  
		Last Modified: Wed, 13 Sep 2017 00:01:08 GMT  
		Size: 463.7 KB (463713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c861e0899db75bf09298b235c83a72ccf4fd6425cad013d453c6be9e0d990de2`  
		Last Modified: Wed, 13 Sep 2017 00:01:08 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889b75b4dc674c5b0727738126a7aa9176ce9b44e1899712addce498f7a5dc75`  
		Last Modified: Wed, 13 Sep 2017 00:01:07 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38997aed7a6fe76eb28163c74c08d25653e9f3f410f8f590aa1fc7b365c829fb`  
		Last Modified: Wed, 13 Sep 2017 00:01:27 GMT  
		Size: 118.2 MB (118187292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7135e70887e547c7bc0c4d20fcdc236640564ffde557da8fc1ecc071c8ca98b`  
		Last Modified: Wed, 13 Sep 2017 01:49:32 GMT  
		Size: 1.3 MB (1304548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c9bf28bdb89c359bac9034706e0c7abe21ef0a895167e88966634925541afa`  
		Last Modified: Wed, 13 Sep 2017 01:49:33 GMT  
		Size: 8.7 MB (8672819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad0f7ad3e271e2a5f193e504da10e3f1fc1e8e27b5b301d1fa383ad22dd4f61`  
		Last Modified: Wed, 13 Sep 2017 01:49:32 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b26721c374d6ef49a7a2051405018773fa845cd56d531631ccb3efecac55e235`  
		Last Modified: Wed, 13 Sep 2017 01:49:32 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-8`

```console
$ docker pull maven@sha256:2d6f423ef09aeb9ac05fbdf5af213e7adb92aed5bb905efb7378fa4aa5d6ee45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-8` - linux; amd64

```console
$ docker pull maven@sha256:0071d6b8e97a1cfc96799f435572af794968669239d20339e9de26566cf56a66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.2 MB (304185910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f0f8f8cc8a18dbc0ac37903ba60e4ca362df58d67dd92e8e6230ddfc1058c03`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:51:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:51:32 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:51:32 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:52:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:52:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 01:47:48 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:47:48 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:47:49 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:47:49 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:47:52 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:47:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:47:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:47:53 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:47:53 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:47:53 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:47:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:47:53 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555d68a907cb72db9d53146f98f3e9b3307749d489eb4164d8a61dcabfaa350`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 892.0 KB (892022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b31cfae59b51710e232f3800a26d72b2fbdf320893915633b1357df05cf20`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7eec7274b2f1435066818cfcc17a337aa6316a7392fbeab68531a9b9a049d22`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb549c32d650ecc18fd7eb1a7c6d0a457ff739ccf3fb3545a8fadc801cf3a55`  
		Last Modified: Wed, 13 Sep 2017 00:04:13 GMT  
		Size: 183.7 MB (183692118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175c1150f2d67959b0ef2039adbcb0d74bb71d92556dfc659e0a1faa7184862c`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 272.0 KB (272039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c46e38915a6fc0409ddbd77052ae2f62d867c7b3db48d33bf322b0123ac124`  
		Last Modified: Wed, 13 Sep 2017 01:50:55 GMT  
		Size: 8.7 MB (8672815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2265d92d17526e3452738a3f147a25b231bf37b0896cdceaf72b57447dfa81f`  
		Last Modified: Wed, 13 Sep 2017 01:50:54 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d543be4c29189323c564dda54e2dc0e041bc0210fd3aff2695a01420b5d40483`  
		Last Modified: Wed, 13 Sep 2017 01:50:54 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-8-alpine`

```console
$ docker pull maven@sha256:4ee8a591743eef61fc647052e3225a563a364a1670f53015542099297391fc80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:1378cdebbe7574ca19df32bd76b65a7c90a933e141d4c0e87db9fb117d3bf501
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.5 MB (82451800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb32c3faa84dd87da306a5587fce6595e6fb6e4bb2d2911c3c5f5eecb19e6636`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:52:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 12 Sep 2017 23:52:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:52:56 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:52:56 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:53:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 01:47:32 GMT
RUN apk add --no-cache curl tar bash
# Wed, 13 Sep 2017 01:47:32 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:47:33 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:47:33 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:47:33 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:47:34 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:47:34 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:47:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:47:35 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:47:35 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:47:35 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:47:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:47:36 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea587fc42c2307f2235a5e0ea171a998ce809de2bfeaae81b8c0bc2966cba9c`  
		Last Modified: Wed, 13 Sep 2017 00:05:33 GMT  
		Size: 70.1 MB (70051350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca416e87eb9424004ff54d141798a7e23d4334b268e55c054067eddb807d2732`  
		Last Modified: Wed, 13 Sep 2017 01:50:03 GMT  
		Size: 1.7 MB (1735943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c35cf9863d7eb577bedbd2b0850e62b9c4d7f406ddb6ae9fbfba6c8df7f3750`  
		Last Modified: Wed, 13 Sep 2017 01:50:05 GMT  
		Size: 8.7 MB (8672780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d2463b84ac5e9988c6928f652c5703b28fa19c25cd928614733bd0ea609c0e`  
		Last Modified: Wed, 13 Sep 2017 01:50:03 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c18779b901dd19c1d3bf8f4931c756a868c042373f569966b4b21e2462e5611`  
		Last Modified: Wed, 13 Sep 2017 01:50:03 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-8-slim`

```console
$ docker pull maven@sha256:c164c826a105f254fb0b344d117e43ece9bd545fab393a5ce124462f4d0027f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-8-slim` - linux; amd64

```console
$ docker pull maven@sha256:4d7c394bc9502830a5e24d9f6065506fdfbbdeff0e71c434022ee2619b37d36f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103875520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:accce11f3a7ca5f31fcc34b0c895a60cfd149cdaed8ed68390b3c155814865ea`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 23:52:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:52:33 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:52:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:52:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:52:34 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:52:35 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:52:35 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:52:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:52:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:52:55 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 01:47:37 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:47:37 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:47:37 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:47:37 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:47:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:47:46 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:47:46 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:47:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:47:47 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:47:47 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:47:47 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:47:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:47:47 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a9fc575c69d17ff3e9a96baa4332e3cf83f6d66c7d2fd53e7ace1707cb57bf`  
		Last Modified: Wed, 13 Sep 2017 00:04:46 GMT  
		Size: 454.7 KB (454749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7517ac40c8f6505f6731fc59a58dad30fe181f8bc491f8c12fc3f07034230bbf`  
		Last Modified: Wed, 13 Sep 2017 00:04:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f9e943a8131a6d6298a442a09c256c8e0dc1f753c9adf0b9616d201aa01774`  
		Last Modified: Wed, 13 Sep 2017 00:04:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78411d1d82e41888926755ee9a839f7099f0ca81a98890cc7b689a443df8216b`  
		Last Modified: Wed, 13 Sep 2017 00:05:00 GMT  
		Size: 68.5 MB (68454905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f048fc7c2df3b471b540f455e14314cdc3c1d9b00aa6ff1bc4dd37783f75457`  
		Last Modified: Wed, 13 Sep 2017 00:04:46 GMT  
		Size: 272.0 KB (272030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0932b1635e9dac613abe80deb7df789e2c186bf1123b1fc09efc2e520bba791`  
		Last Modified: Wed, 13 Sep 2017 01:50:29 GMT  
		Size: 3.5 MB (3531495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19490b0f7d56dd378176259e491fee64fed9efb109637b919a59ea654c002e01`  
		Last Modified: Wed, 13 Sep 2017 01:50:31 GMT  
		Size: 8.7 MB (8672815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9af5447dc930b7bbe26950b93c0588ebd61d11925b2d7c765284fd93405f5c`  
		Last Modified: Wed, 13 Sep 2017 01:50:28 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce69c31eaf075ab5a3253ef71beab5769621c6eec1b8dfb609bf1aaf54b873e5`  
		Last Modified: Wed, 13 Sep 2017 01:50:29 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-9`

```console
$ docker pull maven@sha256:8040bdc8e3736e4ff219c60a4189fd4905721195a7d196f71357350ab2717cb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-9` - linux; amd64

```console
$ docker pull maven@sha256:5d0f8dd4163bbd96c30b1da53c3a959c51bceda956839307c28a44a4f6d0fdb9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.0 MB (402030337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5f21160453014fc784f22ef4584af2e41e8420d6cdbe67e12b976c083accf60`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 07 Sep 2017 23:06:23 GMT
ADD file:24ed5f5bb68abbeda1e34de4caa7be426978141c1664a5238107589d4038b5b0 in / 
# Thu, 07 Sep 2017 23:06:24 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:23:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:23:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 18:01:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:54:59 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:55:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:55:00 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:55:00 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:55:01 GMT
ENV JAVA_VERSION=9-b181
# Tue, 12 Sep 2017 23:55:01 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 12 Sep 2017 23:56:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:56:02 GMT
CMD ["jshell"]
# Wed, 13 Sep 2017 01:48:09 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:48:09 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:48:09 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:48:09 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:48:11 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-amd64/conf
# Wed, 13 Sep 2017 01:48:13 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:48:13 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:48:13 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:48:13 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:48:14 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:48:14 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:48:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:48:14 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:82350343a6fef2218dcf962145f0ad627975bdd80329deb9ba552d2f787b0383`  
		Last Modified: Thu, 07 Sep 2017 23:14:32 GMT  
		Size: 47.8 MB (47753859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9efadb6a07d3fbd922cad53d5ee70b22e727a5ad6d0d84e869960017813c8e`  
		Last Modified: Thu, 07 Sep 2017 23:55:23 GMT  
		Size: 8.5 MB (8549602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef77099728632ff4471bbbc7e3d5541ce4859d6061e74da83f63b89b23aa1d43`  
		Last Modified: Thu, 07 Sep 2017 23:55:23 GMT  
		Size: 9.6 MB (9619154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2305ab8ee4e81a6758bde516da3259860d8ff86dd2fa011c3786170f393f7198`  
		Last Modified: Tue, 12 Sep 2017 18:17:57 GMT  
		Size: 47.5 MB (47475639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115a689d7088e8d46141eec07655241f60ad46f5f6125c659545491867fdd0f0`  
		Last Modified: Wed, 13 Sep 2017 00:07:30 GMT  
		Size: 894.6 KB (894607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e73e79eda4378f42775a531288fec9a3753fe9a2c9e26ffe1f07cd3bbde13dd`  
		Last Modified: Wed, 13 Sep 2017 00:07:30 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ec2a61ba43f47bdea810bc97b3d21d8a02630bd0bdf2df0ac2155d961cc887c`  
		Last Modified: Wed, 13 Sep 2017 00:07:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29aa295e8159d7f06b7a231a3b61ea2394df0d4d06e4893878985bba5460e6b9`  
		Last Modified: Wed, 13 Sep 2017 00:08:16 GMT  
		Size: 279.1 MB (279062975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a5fc23a526b35fd708af0673817f1a3be5e520db57a0507b65eb5a4fb645b2`  
		Last Modified: Wed, 13 Sep 2017 01:51:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d9e4e37203c5c605b3fa95e5c71b3ff535194df2e750057cceda19a57ea70b`  
		Last Modified: Wed, 13 Sep 2017 01:51:45 GMT  
		Size: 8.7 MB (8672807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efc56c18ea189d016488091b2103a66b7420e9d4f040f5dfefd983e62e17025`  
		Last Modified: Wed, 13 Sep 2017 01:51:44 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fd70cbe7f1167080aef805d514e1f06b578a2ce6ef1a12e347d1dc548496d1`  
		Last Modified: Wed, 13 Sep 2017 01:51:43 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-9-slim`

```console
$ docker pull maven@sha256:b6665e322d986cb235147ebdf68ce3548ea4ec7827d66f130d764a56782dba71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-9-slim` - linux; amd64

```console
$ docker pull maven@sha256:50f634c2ec4d21db1da06a780eb62fab3d197baef6a2a9b80cbaf83c32ce3a08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.4 MB (193433249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8340d9411d343fd3d3383500d9a021dc1b7b8e45dd04404d598143e10f685607`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 07 Sep 2017 23:06:37 GMT
ADD file:45b6614e4cfe3201e7d003ca7c2dd680754d840d0d68f4aed1434387d3d7cb9f in / 
# Thu, 07 Sep 2017 23:06:37 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 23:56:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:56:09 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:56:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:56:10 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:56:11 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:56:11 GMT
ENV JAVA_VERSION=9-b181
# Tue, 12 Sep 2017 23:56:11 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 12 Sep 2017 23:56:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:56:55 GMT
CMD ["jshell"]
# Wed, 13 Sep 2017 01:47:54 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:47:55 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:47:55 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:47:55 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:48:05 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:48:05 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-amd64/conf
# Wed, 13 Sep 2017 01:48:07 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:48:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:48:07 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:48:07 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:48:08 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:48:08 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:48:08 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:48:08 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7c204b2b587804ea4060342fa97e944155dfa82fa997c3668fa52b3af6c9d958`  
		Last Modified: Thu, 07 Sep 2017 23:15:14 GMT  
		Size: 24.9 MB (24881942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f67c3b2eb7a22e011d15cd84635c32080c4513cee65019c649ff4381a27a8aa`  
		Last Modified: Wed, 13 Sep 2017 00:08:38 GMT  
		Size: 461.0 KB (461005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0a82e2706ce5e16c9debb4ce1cc258e613455505290a0123b1c9094d17000e`  
		Last Modified: Wed, 13 Sep 2017 00:08:37 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f505cbb0d8ec7e9f3519dee48ca7a3ac5c8d85c68d5a95d018428974d1fb8c5`  
		Last Modified: Wed, 13 Sep 2017 00:08:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c95a9b1359413fe1da2c296544014a76378d769fdabae95b779c6c5fe1a0b`  
		Last Modified: Wed, 13 Sep 2017 00:08:57 GMT  
		Size: 156.4 MB (156415083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10cef3e2547767b9e15eb8a0dbf9c8d349f0f6c54bd01298816fa4bbafb1d014`  
		Last Modified: Wed, 13 Sep 2017 01:51:28 GMT  
		Size: 3.0 MB (3000708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ea56ed0c84ab617aa8a6167a321da2ad32cc083968bc2d22bc92cfe4dd29e4`  
		Last Modified: Wed, 13 Sep 2017 01:51:27 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7858199546685513a329eae03b903853c5d64cb31a0fd2250508f9e77830cf`  
		Last Modified: Wed, 13 Sep 2017 01:51:29 GMT  
		Size: 8.7 MB (8672819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc7ec389cfff551a0459cdd071cb10bed108c7c2c5ab9dbe3f771486bcad910`  
		Last Modified: Wed, 13 Sep 2017 01:51:28 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18df519f4f5340295cc2415a7d79e50cccafdbc380325831a66d4294574894bc`  
		Last Modified: Wed, 13 Sep 2017 01:51:28 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-slim`

```console
$ docker pull maven@sha256:c164c826a105f254fb0b344d117e43ece9bd545fab393a5ce124462f4d0027f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5.0-slim` - linux; amd64

```console
$ docker pull maven@sha256:4d7c394bc9502830a5e24d9f6065506fdfbbdeff0e71c434022ee2619b37d36f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103875520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:accce11f3a7ca5f31fcc34b0c895a60cfd149cdaed8ed68390b3c155814865ea`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 23:52:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:52:33 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:52:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:52:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:52:34 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:52:35 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:52:35 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:52:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:52:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:52:55 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 01:47:37 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:47:37 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:47:37 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:47:37 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:47:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:47:46 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:47:46 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:47:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:47:47 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:47:47 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:47:47 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:47:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:47:47 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a9fc575c69d17ff3e9a96baa4332e3cf83f6d66c7d2fd53e7ace1707cb57bf`  
		Last Modified: Wed, 13 Sep 2017 00:04:46 GMT  
		Size: 454.7 KB (454749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7517ac40c8f6505f6731fc59a58dad30fe181f8bc491f8c12fc3f07034230bbf`  
		Last Modified: Wed, 13 Sep 2017 00:04:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f9e943a8131a6d6298a442a09c256c8e0dc1f753c9adf0b9616d201aa01774`  
		Last Modified: Wed, 13 Sep 2017 00:04:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78411d1d82e41888926755ee9a839f7099f0ca81a98890cc7b689a443df8216b`  
		Last Modified: Wed, 13 Sep 2017 00:05:00 GMT  
		Size: 68.5 MB (68454905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f048fc7c2df3b471b540f455e14314cdc3c1d9b00aa6ff1bc4dd37783f75457`  
		Last Modified: Wed, 13 Sep 2017 00:04:46 GMT  
		Size: 272.0 KB (272030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0932b1635e9dac613abe80deb7df789e2c186bf1123b1fc09efc2e520bba791`  
		Last Modified: Wed, 13 Sep 2017 01:50:29 GMT  
		Size: 3.5 MB (3531495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19490b0f7d56dd378176259e491fee64fed9efb109637b919a59ea654c002e01`  
		Last Modified: Wed, 13 Sep 2017 01:50:31 GMT  
		Size: 8.7 MB (8672815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9af5447dc930b7bbe26950b93c0588ebd61d11925b2d7c765284fd93405f5c`  
		Last Modified: Wed, 13 Sep 2017 01:50:28 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce69c31eaf075ab5a3253ef71beab5769621c6eec1b8dfb609bf1aaf54b873e5`  
		Last Modified: Wed, 13 Sep 2017 01:50:29 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-alpine`

```console
$ docker pull maven@sha256:4ee8a591743eef61fc647052e3225a563a364a1670f53015542099297391fc80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5-alpine` - linux; amd64

```console
$ docker pull maven@sha256:1378cdebbe7574ca19df32bd76b65a7c90a933e141d4c0e87db9fb117d3bf501
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.5 MB (82451800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb32c3faa84dd87da306a5587fce6595e6fb6e4bb2d2911c3c5f5eecb19e6636`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:52:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 12 Sep 2017 23:52:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:52:56 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:52:56 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:53:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 01:47:32 GMT
RUN apk add --no-cache curl tar bash
# Wed, 13 Sep 2017 01:47:32 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:47:33 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:47:33 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:47:33 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:47:34 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:47:34 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:47:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:47:35 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:47:35 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:47:35 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:47:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:47:36 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea587fc42c2307f2235a5e0ea171a998ce809de2bfeaae81b8c0bc2966cba9c`  
		Last Modified: Wed, 13 Sep 2017 00:05:33 GMT  
		Size: 70.1 MB (70051350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca416e87eb9424004ff54d141798a7e23d4334b268e55c054067eddb807d2732`  
		Last Modified: Wed, 13 Sep 2017 01:50:03 GMT  
		Size: 1.7 MB (1735943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c35cf9863d7eb577bedbd2b0850e62b9c4d7f406ddb6ae9fbfba6c8df7f3750`  
		Last Modified: Wed, 13 Sep 2017 01:50:05 GMT  
		Size: 8.7 MB (8672780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d2463b84ac5e9988c6928f652c5703b28fa19c25cd928614733bd0ea609c0e`  
		Last Modified: Wed, 13 Sep 2017 01:50:03 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c18779b901dd19c1d3bf8f4931c756a868c042373f569966b4b21e2462e5611`  
		Last Modified: Wed, 13 Sep 2017 01:50:03 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-ibmjava`

```console
$ docker pull maven@sha256:f96a1344a25743396138fe28554d2c18a88d07625d7af59d19232a818c2d2ba2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5-ibmjava` - linux; amd64

```console
$ docker pull maven@sha256:ccd29d31d5445bfb6f702f0365b985b261e24eeeb59fea9f0be8b5906dd3ba3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.0 MB (240954388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40facc028b2dedffe8b36f4e43ee0a8ad7c8139be016941734dc588ce88f5a44`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 17:38:21 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 13 Sep 2017 17:39:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 17:39:11 GMT
ENV JAVA_VERSION=1.8.0_sr4fp11
# Wed, 13 Sep 2017 17:43:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0550e9e44b50ec77cd8774f99051b910816daf3cf275c05438994314ff61d7ee';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='fc3180000ee745ba11fbcb8c0eda837ccf34830de652c3747682174980c0a466';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf39ce59310f477d8864134b5d1e8c090ea41a5421c17b6b0eaf5350fdc097bf';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='7056455a52d8f753e435d3994ca87c22c496d19d4a06634ba57e4ffc50d0c722';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='89dc14c0bb8199463396f3f71a168e43d61550c7821acee50ec8c3f6ed60a83f';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 13 Sep 2017 17:43:00 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 18:17:36 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 18:17:36 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 18:17:36 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 18:17:36 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 18:17:48 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update && apt-get install -y curl   && mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 18:17:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 18:17:49 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 18:17:49 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 18:17:49 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 18:17:49 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 18:17:50 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 18:17:50 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a20d9ff07d35a3fc345ee0c2e73a15f752ae515746d57897cbd0716bd5c470`  
		Last Modified: Wed, 13 Sep 2017 17:47:50 GMT  
		Size: 3.1 MB (3070400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:146980859c88cb5e20b9eba9f5c222d7a2ea95e7ce51f7be8c42fc6257cc9d35`  
		Last Modified: Wed, 13 Sep 2017 17:50:52 GMT  
		Size: 148.5 MB (148519270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16209b3d9a016f7e87c46928550d661dc219d51f0a55df9471161f48329134b9`  
		Last Modified: Wed, 13 Sep 2017 18:20:14 GMT  
		Size: 42.1 MB (42102437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41e4def067fdb402b1ac12160ad98af946caa142be8a2b22faf39e9716dc78b`  
		Last Modified: Wed, 13 Sep 2017 18:20:07 GMT  
		Size: 727.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb504bf90e0fc079bab6476425aa90bf0d171bb01dcf2677175f011b47c1a5e7`  
		Last Modified: Wed, 13 Sep 2017 18:20:07 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-ibmjava-8`

```console
$ docker pull maven@sha256:f96a1344a25743396138fe28554d2c18a88d07625d7af59d19232a818c2d2ba2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5-ibmjava-8` - linux; amd64

```console
$ docker pull maven@sha256:ccd29d31d5445bfb6f702f0365b985b261e24eeeb59fea9f0be8b5906dd3ba3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.0 MB (240954388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40facc028b2dedffe8b36f4e43ee0a8ad7c8139be016941734dc588ce88f5a44`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 17:38:21 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 13 Sep 2017 17:39:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 17:39:11 GMT
ENV JAVA_VERSION=1.8.0_sr4fp11
# Wed, 13 Sep 2017 17:43:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0550e9e44b50ec77cd8774f99051b910816daf3cf275c05438994314ff61d7ee';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='fc3180000ee745ba11fbcb8c0eda837ccf34830de652c3747682174980c0a466';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf39ce59310f477d8864134b5d1e8c090ea41a5421c17b6b0eaf5350fdc097bf';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='7056455a52d8f753e435d3994ca87c22c496d19d4a06634ba57e4ffc50d0c722';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='89dc14c0bb8199463396f3f71a168e43d61550c7821acee50ec8c3f6ed60a83f';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 13 Sep 2017 17:43:00 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 18:17:36 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 18:17:36 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 18:17:36 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 18:17:36 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 18:17:48 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update && apt-get install -y curl   && mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 18:17:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 18:17:49 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 18:17:49 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 18:17:49 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 18:17:49 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 18:17:50 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 18:17:50 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a20d9ff07d35a3fc345ee0c2e73a15f752ae515746d57897cbd0716bd5c470`  
		Last Modified: Wed, 13 Sep 2017 17:47:50 GMT  
		Size: 3.1 MB (3070400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:146980859c88cb5e20b9eba9f5c222d7a2ea95e7ce51f7be8c42fc6257cc9d35`  
		Last Modified: Wed, 13 Sep 2017 17:50:52 GMT  
		Size: 148.5 MB (148519270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16209b3d9a016f7e87c46928550d661dc219d51f0a55df9471161f48329134b9`  
		Last Modified: Wed, 13 Sep 2017 18:20:14 GMT  
		Size: 42.1 MB (42102437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41e4def067fdb402b1ac12160ad98af946caa142be8a2b22faf39e9716dc78b`  
		Last Modified: Wed, 13 Sep 2017 18:20:07 GMT  
		Size: 727.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb504bf90e0fc079bab6476425aa90bf0d171bb01dcf2677175f011b47c1a5e7`  
		Last Modified: Wed, 13 Sep 2017 18:20:07 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-ibmjava-8-alpine`

```console
$ docker pull maven@sha256:5bfaa0c075c96194f9d93bd12f89ff4c823b0e6ff2d4fe523c293a71eb53e4e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5-ibmjava-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:8d4e6c80cf3299c13377a3d1a1a9ba908919da315cc967c60451b2bb64582d87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (165001848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0463d4a59b1234477d42eb2945d00a5faa19ae91f42bb5e0b0e7904de29837d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 17:39:50 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 13 Sep 2017 17:40:06 GMT
RUN apk --update add --no-cache ca-certificates curl openssl xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && curl -Ls https://www.archlinux.org/packages/core/x86_64/gcc-libs/download > /tmp/gcc-libs.tar.xz     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /usr/glibc-compat/lib     && apk del curl     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Wed, 13 Sep 2017 17:40:06 GMT
ENV JAVA_VERSION=1.8.0_sr4fp11
# Wed, 13 Sep 2017 17:43:40 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0550e9e44b50ec77cd8774f99051b910816daf3cf275c05438994314ff61d7ee';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='fc3180000ee745ba11fbcb8c0eda837ccf34830de652c3747682174980c0a466';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf39ce59310f477d8864134b5d1e8c090ea41a5421c17b6b0eaf5350fdc097bf';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='7056455a52d8f753e435d3994ca87c22c496d19d4a06634ba57e4ffc50d0c722';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='89dc14c0bb8199463396f3f71a168e43d61550c7821acee50ec8c3f6ed60a83f';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 13 Sep 2017 17:43:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 18:17:31 GMT
RUN apk add --no-cache curl tar bash
# Wed, 13 Sep 2017 18:17:31 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 18:17:31 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 18:17:31 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 18:17:31 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 18:17:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 18:17:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 18:17:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 18:17:33 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 18:17:34 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 18:17:34 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 18:17:34 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 18:17:34 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd6a2460e4be15d253bc9d5293b9847af9ceedfbb7b51a3a710613b2b8cd47a`  
		Last Modified: Wed, 13 Sep 2017 17:48:42 GMT  
		Size: 4.2 MB (4153449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da73a74ee4b39e4a6997a15fd8c628210eac356edb0302c7d2f7f72e8bf0dac3`  
		Last Modified: Wed, 13 Sep 2017 17:54:13 GMT  
		Size: 148.5 MB (148468039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13816ccb32ce57e6335cb3f0fa05d9311e85b46c674a2670f9f3d87d1a35cf5`  
		Last Modified: Wed, 13 Sep 2017 18:19:41 GMT  
		Size: 1.7 MB (1716109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44550e1a63cc80ad21823622a498cb0705c90b69f6dcd891767e23acbf63c3d`  
		Last Modified: Wed, 13 Sep 2017 18:19:41 GMT  
		Size: 8.7 MB (8672762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48746aeecfe7dea8a47e3516751ba109fa60d052249ebbbc50eba988fdec0616`  
		Last Modified: Wed, 13 Sep 2017 18:19:39 GMT  
		Size: 733.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec1a794d1772e4af7c3e6d3b694597d86d9095b41ea8ac9da1c8dd578d47ed0`  
		Last Modified: Wed, 13 Sep 2017 18:19:39 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-ibmjava-9`

```console
$ docker pull maven@sha256:02c7ce01ba446169ada16a620c5059d080e6c13e94c1601834cadfdec30ec7dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5-ibmjava-9` - linux; amd64

```console
$ docker pull maven@sha256:3ebbee4b7e56307990669cfb0a26bb9d93b6456d451c5a09c9367a2d7a2b4403
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.1 MB (364069142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57f5c3687c2610954c9d68cd7e8c168365f6e38dfdc2b32f12efae8b0009d302`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 17:38:21 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 13 Sep 2017 17:39:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 17:43:41 GMT
ENV JAVA_VERSION=1.9.0_ea2
# Wed, 13 Sep 2017 17:44:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0fe3712b54a93695cf4948d9ae171bf5cef038c0e41b364b4e9eb7cb80a60688';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='5add39cc5ca56b97cf8ce71b9e1a15d19d36864aaed1e0296f50355ba3f34bd5';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='3c0dda9f449a667d12fe5f59a1ec059a90a9dc483fd35eef5ff53dd8b096cdf5';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8d06af57d8236839f5c403c12dcf4c89e22dd91716a4d26b85c8d92f6d1e2e8b';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='6e823afa1df83e364381f827f4244bfe29b0ddd58ef0203eb60df9b8c0d123af';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 13 Sep 2017 17:45:49 GMT
ENV JAVA_HOME=/opt/ibm/java PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 18:18:02 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 18:18:02 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 18:18:02 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 18:18:02 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 18:18:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update && apt-get install -y curl   && mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 18:18:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 18:18:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 18:18:48 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 18:18:48 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 18:18:48 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 18:18:48 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 18:18:49 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a20d9ff07d35a3fc345ee0c2e73a15f752ae515746d57897cbd0716bd5c470`  
		Last Modified: Wed, 13 Sep 2017 17:47:50 GMT  
		Size: 3.1 MB (3070400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae6792c5810a8ad17620ee5a49f956c3f651631d86b38e4acf538beb21cb36d`  
		Last Modified: Wed, 13 Sep 2017 17:54:53 GMT  
		Size: 271.6 MB (271633997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e610ca1d154f27712118cee70ab74a6e153fc6ae96473c0e675ea7e987608f`  
		Last Modified: Wed, 13 Sep 2017 18:21:10 GMT  
		Size: 42.1 MB (42102460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcc3efb70dfbd51f756055b853a62031a4c5e425dce1e8dac22cd562fc79ed9`  
		Last Modified: Wed, 13 Sep 2017 18:21:04 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3632c6b860d32196d57466a5b9b2929742c22058dd8a033ec392c401d91b50`  
		Last Modified: Wed, 13 Sep 2017 18:21:04 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-ibmjava-9-alpine`

```console
$ docker pull maven@sha256:c7ebb289a926b132570e2b4ab945c2963737f5d8f3dce519a62d0200c13b34b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5-ibmjava-9-alpine` - linux; amd64

```console
$ docker pull maven@sha256:81c6df536a290c1b704c4e92f8f5088531e39dd4fce2a0ae9ebff25a59458f6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.6 MB (291578864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f1ef1db297ef11cb562d4abcf2c89eb9ccbe6eadbdb2dd913494731cc982471`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 17:39:50 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 13 Sep 2017 17:46:07 GMT
RUN apk --update add --no-cache ca-certificates curl openssl xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && curl -Ls https://www.archlinux.org/packages/core/x86_64/gcc-libs/download > /tmp/gcc-libs.tar.xz     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && apk del curl     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Wed, 13 Sep 2017 17:46:07 GMT
ENV JAVA_VERSION=1.9.0_ea2
# Wed, 13 Sep 2017 17:47:08 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0fe3712b54a93695cf4948d9ae171bf5cef038c0e41b364b4e9eb7cb80a60688';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='5add39cc5ca56b97cf8ce71b9e1a15d19d36864aaed1e0296f50355ba3f34bd5';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='3c0dda9f449a667d12fe5f59a1ec059a90a9dc483fd35eef5ff53dd8b096cdf5';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8d06af57d8236839f5c403c12dcf4c89e22dd91716a4d26b85c8d92f6d1e2e8b';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='6e823afa1df83e364381f827f4244bfe29b0ddd58ef0203eb60df9b8c0d123af';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 13 Sep 2017 17:47:25 GMT
ENV JAVA_HOME=/opt/ibm/java PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 18:17:56 GMT
RUN apk add --no-cache curl tar bash
# Wed, 13 Sep 2017 18:17:56 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 18:17:56 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 18:17:56 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 18:17:56 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 18:17:58 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 18:17:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 18:17:58 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 18:17:59 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 18:17:59 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 18:17:59 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 18:17:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 18:18:00 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa9c9325edacd50b9ce0ee23fd20467abd5aaa1f0490d03ed8588e220648eba`  
		Last Modified: Wed, 13 Sep 2017 17:55:10 GMT  
		Size: 7.6 MB (7563859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff892cab404de32578fa30abc3c1b39b50f88d9be76feab027aceb51f5239365`  
		Last Modified: Wed, 13 Sep 2017 17:55:39 GMT  
		Size: 271.6 MB (271634623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ee575f6380768cfe811a2614ec8cfa2998ec1d76999228383ade0f7ca7839d`  
		Last Modified: Wed, 13 Sep 2017 18:20:49 GMT  
		Size: 1.7 MB (1716147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a61c1b90cb1b2d7d59fc928867d2f3757a40b939e35da19315207710d877d0`  
		Last Modified: Wed, 13 Sep 2017 18:20:48 GMT  
		Size: 8.7 MB (8672750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e237bbd017c50eefcbcce208d95f5c5963b38eb5e154ff8241053ba50c7d6b99`  
		Last Modified: Wed, 13 Sep 2017 18:20:47 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb29664926b6646629791bd784325ac5ec057f1b5e751cc6b63d229c9409505`  
		Last Modified: Wed, 13 Sep 2017 18:20:47 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-ibmjava-alpine`

```console
$ docker pull maven@sha256:5bfaa0c075c96194f9d93bd12f89ff4c823b0e6ff2d4fe523c293a71eb53e4e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5-ibmjava-alpine` - linux; amd64

```console
$ docker pull maven@sha256:8d4e6c80cf3299c13377a3d1a1a9ba908919da315cc967c60451b2bb64582d87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (165001848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0463d4a59b1234477d42eb2945d00a5faa19ae91f42bb5e0b0e7904de29837d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 17:39:50 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 13 Sep 2017 17:40:06 GMT
RUN apk --update add --no-cache ca-certificates curl openssl xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && curl -Ls https://www.archlinux.org/packages/core/x86_64/gcc-libs/download > /tmp/gcc-libs.tar.xz     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /usr/glibc-compat/lib     && apk del curl     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Wed, 13 Sep 2017 17:40:06 GMT
ENV JAVA_VERSION=1.8.0_sr4fp11
# Wed, 13 Sep 2017 17:43:40 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0550e9e44b50ec77cd8774f99051b910816daf3cf275c05438994314ff61d7ee';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='fc3180000ee745ba11fbcb8c0eda837ccf34830de652c3747682174980c0a466';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf39ce59310f477d8864134b5d1e8c090ea41a5421c17b6b0eaf5350fdc097bf';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='7056455a52d8f753e435d3994ca87c22c496d19d4a06634ba57e4ffc50d0c722';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='89dc14c0bb8199463396f3f71a168e43d61550c7821acee50ec8c3f6ed60a83f';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 13 Sep 2017 17:43:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 18:17:31 GMT
RUN apk add --no-cache curl tar bash
# Wed, 13 Sep 2017 18:17:31 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 18:17:31 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 18:17:31 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 18:17:31 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 18:17:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 18:17:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 18:17:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 18:17:33 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 18:17:34 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 18:17:34 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 18:17:34 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 18:17:34 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd6a2460e4be15d253bc9d5293b9847af9ceedfbb7b51a3a710613b2b8cd47a`  
		Last Modified: Wed, 13 Sep 2017 17:48:42 GMT  
		Size: 4.2 MB (4153449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da73a74ee4b39e4a6997a15fd8c628210eac356edb0302c7d2f7f72e8bf0dac3`  
		Last Modified: Wed, 13 Sep 2017 17:54:13 GMT  
		Size: 148.5 MB (148468039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13816ccb32ce57e6335cb3f0fa05d9311e85b46c674a2670f9f3d87d1a35cf5`  
		Last Modified: Wed, 13 Sep 2017 18:19:41 GMT  
		Size: 1.7 MB (1716109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44550e1a63cc80ad21823622a498cb0705c90b69f6dcd891767e23acbf63c3d`  
		Last Modified: Wed, 13 Sep 2017 18:19:41 GMT  
		Size: 8.7 MB (8672762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48746aeecfe7dea8a47e3516751ba109fa60d052249ebbbc50eba988fdec0616`  
		Last Modified: Wed, 13 Sep 2017 18:19:39 GMT  
		Size: 733.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec1a794d1772e4af7c3e6d3b694597d86d9095b41ea8ac9da1c8dd578d47ed0`  
		Last Modified: Wed, 13 Sep 2017 18:19:39 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-7`

```console
$ docker pull maven@sha256:72d92e1aae0a38dd1a4b4088763026659df96ad1efff482ae99319dce2a80843
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-7` - linux; amd64

```console
$ docker pull maven@sha256:7310bf16dbce3815652d2fe1b04e19df31e74f010a1319f9c2a9556f00faa025
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.5 MB (253491796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c7f1e189d9e7e98ab7ac40b8cd465e77e67605effe8875a11d52d6b7e692ace`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:45:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:45:56 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:45:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:45:57 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:45:57 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:45:58 GMT
ENV JAVA_VERSION=7u151
# Tue, 12 Sep 2017 23:45:58 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 12 Sep 2017 23:46:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 13 Sep 2017 01:47:19 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:47:19 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:47:20 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:47:20 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:47:23 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:47:23 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:47:23 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:47:24 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:47:24 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:47:24 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:47:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:47:25 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f860787a8ac656bdd001a3bed4eb7158b1b61af9ded71ebd245b8ec96a1247f1`  
		Last Modified: Wed, 13 Sep 2017 00:00:29 GMT  
		Size: 828.7 KB (828668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0da8a929ad39a3a6ae6b110c87a15b1c8cf175dd7f8d9eece034b4028439633`  
		Last Modified: Wed, 13 Sep 2017 00:00:29 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01995932d55bca599dcfc23dd8294480b098e7c66d960573517a75172e1226dc`  
		Last Modified: Wed, 13 Sep 2017 00:00:28 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee93c137596ebf3335a9b1739e8227e11bee2c5c9bc0b685c5b6068cb82543`  
		Last Modified: Wed, 13 Sep 2017 00:00:52 GMT  
		Size: 128.9 MB (128902039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed07ac96d5f9f673f0411d5f7e88ce577d3bf130f8a65656b712c5454f2fb3fa`  
		Last Modified: Wed, 13 Sep 2017 01:49:48 GMT  
		Size: 8.7 MB (8672793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19289a89e217f4015fbf8bb7e1d2d5d971ce201c4f8864a50500425b81e48cc`  
		Last Modified: Wed, 13 Sep 2017 01:49:47 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5bd39143eec2b0b59251ad1afd197135d767cd405214204a48c91e94f1516fb`  
		Last Modified: Wed, 13 Sep 2017 01:49:47 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-7-alpine`

```console
$ docker pull maven@sha256:29631532af479c63d75772557f3eae2fa4d28a5172b4f6fcc1ba644a137b97af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-7-alpine` - linux; amd64

```console
$ docker pull maven@sha256:0858b0de299f733d97b704a03f555994a72a520f906d0b7547ef032e93a19101
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.9 MB (89872243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f3c7369638c2b25f7e55eb60c0f3be9971cacb3aff3e7ff021aa00376dc72d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:48:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 12 Sep 2017 23:48:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 12 Sep 2017 23:48:35 GMT
ENV JAVA_VERSION=7u131
# Tue, 12 Sep 2017 23:48:35 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Tue, 12 Sep 2017 23:48:45 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 01:46:44 GMT
RUN apk add --no-cache curl tar bash
# Wed, 13 Sep 2017 01:46:45 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:46:45 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:46:45 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:46:45 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:46:46 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:46:47 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:46:47 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:46:47 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:46:47 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:46:47 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:46:48 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:46:48 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0028340879864dcf160cb49baa12ba5fe473833c8e40da6f0b5325a378b1cd3`  
		Last Modified: Wed, 13 Sep 2017 00:01:56 GMT  
		Size: 77.4 MB (77433839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7feb47b2afa3ac9d5dedbdded72ba9997914a488af0b18fcae2c506a1bc41dd1`  
		Last Modified: Wed, 13 Sep 2017 01:49:18 GMT  
		Size: 1.8 MB (1773886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b4ae1e5bdf46d3b2abb4e328049795ebcc541061d2ef5ba61c5ae330ab682b`  
		Last Modified: Wed, 13 Sep 2017 01:49:18 GMT  
		Size: 8.7 MB (8672790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750c1a25b24add3f772f9f4446aae45d0296951f28a9b1e5dcccd9c373170f3b`  
		Last Modified: Wed, 13 Sep 2017 01:49:17 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fab2b8e523d4b41e12efc96293acd04e07785ebf8cdc69192be2a385808dd87`  
		Last Modified: Wed, 13 Sep 2017 01:49:17 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-7-slim`

```console
$ docker pull maven@sha256:68d1bceb74e4b573b2afa344ba30fa61e8f7af40357eff24ecd0cbff6464380b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-7-slim` - linux; amd64

```console
$ docker pull maven@sha256:df29f104a51b47b9d63971afdc483ea3d9cb72848947b8db2003c7596435bbeb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.7 MB (158742975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:048201bf639862a5b60eb212aaff12b8f49bdfe0735e0dbb3bb7080595ba2890`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 23:47:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:47:09 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:47:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:47:11 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:47:11 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:47:11 GMT
ENV JAVA_VERSION=7u151
# Tue, 12 Sep 2017 23:47:11 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 12 Sep 2017 23:48:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 13 Sep 2017 01:46:49 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:46:49 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:46:49 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:46:49 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:47:14 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:47:16 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:47:16 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:47:16 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:47:17 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:47:17 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:47:17 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:47:18 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:47:18 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76a1ddfd6a28fba225fe560f3276a3f7db172f0a958f8dc252f2abe0f73dc80`  
		Last Modified: Wed, 13 Sep 2017 00:01:08 GMT  
		Size: 463.7 KB (463713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c861e0899db75bf09298b235c83a72ccf4fd6425cad013d453c6be9e0d990de2`  
		Last Modified: Wed, 13 Sep 2017 00:01:08 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889b75b4dc674c5b0727738126a7aa9176ce9b44e1899712addce498f7a5dc75`  
		Last Modified: Wed, 13 Sep 2017 00:01:07 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38997aed7a6fe76eb28163c74c08d25653e9f3f410f8f590aa1fc7b365c829fb`  
		Last Modified: Wed, 13 Sep 2017 00:01:27 GMT  
		Size: 118.2 MB (118187292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7135e70887e547c7bc0c4d20fcdc236640564ffde557da8fc1ecc071c8ca98b`  
		Last Modified: Wed, 13 Sep 2017 01:49:32 GMT  
		Size: 1.3 MB (1304548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c9bf28bdb89c359bac9034706e0c7abe21ef0a895167e88966634925541afa`  
		Last Modified: Wed, 13 Sep 2017 01:49:33 GMT  
		Size: 8.7 MB (8672819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad0f7ad3e271e2a5f193e504da10e3f1fc1e8e27b5b301d1fa383ad22dd4f61`  
		Last Modified: Wed, 13 Sep 2017 01:49:32 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b26721c374d6ef49a7a2051405018773fa845cd56d531631ccb3efecac55e235`  
		Last Modified: Wed, 13 Sep 2017 01:49:32 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-8`

```console
$ docker pull maven@sha256:2d6f423ef09aeb9ac05fbdf5af213e7adb92aed5bb905efb7378fa4aa5d6ee45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-8` - linux; amd64

```console
$ docker pull maven@sha256:0071d6b8e97a1cfc96799f435572af794968669239d20339e9de26566cf56a66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.2 MB (304185910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f0f8f8cc8a18dbc0ac37903ba60e4ca362df58d67dd92e8e6230ddfc1058c03`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:51:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:51:32 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:51:32 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:52:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:52:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 01:47:48 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:47:48 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:47:49 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:47:49 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:47:52 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:47:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:47:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:47:53 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:47:53 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:47:53 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:47:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:47:53 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555d68a907cb72db9d53146f98f3e9b3307749d489eb4164d8a61dcabfaa350`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 892.0 KB (892022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b31cfae59b51710e232f3800a26d72b2fbdf320893915633b1357df05cf20`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7eec7274b2f1435066818cfcc17a337aa6316a7392fbeab68531a9b9a049d22`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb549c32d650ecc18fd7eb1a7c6d0a457ff739ccf3fb3545a8fadc801cf3a55`  
		Last Modified: Wed, 13 Sep 2017 00:04:13 GMT  
		Size: 183.7 MB (183692118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175c1150f2d67959b0ef2039adbcb0d74bb71d92556dfc659e0a1faa7184862c`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 272.0 KB (272039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c46e38915a6fc0409ddbd77052ae2f62d867c7b3db48d33bf322b0123ac124`  
		Last Modified: Wed, 13 Sep 2017 01:50:55 GMT  
		Size: 8.7 MB (8672815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2265d92d17526e3452738a3f147a25b231bf37b0896cdceaf72b57447dfa81f`  
		Last Modified: Wed, 13 Sep 2017 01:50:54 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d543be4c29189323c564dda54e2dc0e041bc0210fd3aff2695a01420b5d40483`  
		Last Modified: Wed, 13 Sep 2017 01:50:54 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-8-alpine`

```console
$ docker pull maven@sha256:4ee8a591743eef61fc647052e3225a563a364a1670f53015542099297391fc80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:1378cdebbe7574ca19df32bd76b65a7c90a933e141d4c0e87db9fb117d3bf501
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.5 MB (82451800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb32c3faa84dd87da306a5587fce6595e6fb6e4bb2d2911c3c5f5eecb19e6636`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:52:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 12 Sep 2017 23:52:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:52:56 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:52:56 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:53:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 01:47:32 GMT
RUN apk add --no-cache curl tar bash
# Wed, 13 Sep 2017 01:47:32 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:47:33 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:47:33 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:47:33 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:47:34 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:47:34 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:47:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:47:35 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:47:35 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:47:35 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:47:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:47:36 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea587fc42c2307f2235a5e0ea171a998ce809de2bfeaae81b8c0bc2966cba9c`  
		Last Modified: Wed, 13 Sep 2017 00:05:33 GMT  
		Size: 70.1 MB (70051350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca416e87eb9424004ff54d141798a7e23d4334b268e55c054067eddb807d2732`  
		Last Modified: Wed, 13 Sep 2017 01:50:03 GMT  
		Size: 1.7 MB (1735943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c35cf9863d7eb577bedbd2b0850e62b9c4d7f406ddb6ae9fbfba6c8df7f3750`  
		Last Modified: Wed, 13 Sep 2017 01:50:05 GMT  
		Size: 8.7 MB (8672780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d2463b84ac5e9988c6928f652c5703b28fa19c25cd928614733bd0ea609c0e`  
		Last Modified: Wed, 13 Sep 2017 01:50:03 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c18779b901dd19c1d3bf8f4931c756a868c042373f569966b4b21e2462e5611`  
		Last Modified: Wed, 13 Sep 2017 01:50:03 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-8-slim`

```console
$ docker pull maven@sha256:c164c826a105f254fb0b344d117e43ece9bd545fab393a5ce124462f4d0027f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-8-slim` - linux; amd64

```console
$ docker pull maven@sha256:4d7c394bc9502830a5e24d9f6065506fdfbbdeff0e71c434022ee2619b37d36f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103875520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:accce11f3a7ca5f31fcc34b0c895a60cfd149cdaed8ed68390b3c155814865ea`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 23:52:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:52:33 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:52:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:52:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:52:34 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:52:35 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:52:35 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:52:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:52:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:52:55 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 01:47:37 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:47:37 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:47:37 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:47:37 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:47:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:47:46 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:47:46 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:47:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:47:47 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:47:47 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:47:47 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:47:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:47:47 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a9fc575c69d17ff3e9a96baa4332e3cf83f6d66c7d2fd53e7ace1707cb57bf`  
		Last Modified: Wed, 13 Sep 2017 00:04:46 GMT  
		Size: 454.7 KB (454749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7517ac40c8f6505f6731fc59a58dad30fe181f8bc491f8c12fc3f07034230bbf`  
		Last Modified: Wed, 13 Sep 2017 00:04:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f9e943a8131a6d6298a442a09c256c8e0dc1f753c9adf0b9616d201aa01774`  
		Last Modified: Wed, 13 Sep 2017 00:04:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78411d1d82e41888926755ee9a839f7099f0ca81a98890cc7b689a443df8216b`  
		Last Modified: Wed, 13 Sep 2017 00:05:00 GMT  
		Size: 68.5 MB (68454905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f048fc7c2df3b471b540f455e14314cdc3c1d9b00aa6ff1bc4dd37783f75457`  
		Last Modified: Wed, 13 Sep 2017 00:04:46 GMT  
		Size: 272.0 KB (272030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0932b1635e9dac613abe80deb7df789e2c186bf1123b1fc09efc2e520bba791`  
		Last Modified: Wed, 13 Sep 2017 01:50:29 GMT  
		Size: 3.5 MB (3531495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19490b0f7d56dd378176259e491fee64fed9efb109637b919a59ea654c002e01`  
		Last Modified: Wed, 13 Sep 2017 01:50:31 GMT  
		Size: 8.7 MB (8672815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9af5447dc930b7bbe26950b93c0588ebd61d11925b2d7c765284fd93405f5c`  
		Last Modified: Wed, 13 Sep 2017 01:50:28 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce69c31eaf075ab5a3253ef71beab5769621c6eec1b8dfb609bf1aaf54b873e5`  
		Last Modified: Wed, 13 Sep 2017 01:50:29 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-9`

```console
$ docker pull maven@sha256:8040bdc8e3736e4ff219c60a4189fd4905721195a7d196f71357350ab2717cb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-9` - linux; amd64

```console
$ docker pull maven@sha256:5d0f8dd4163bbd96c30b1da53c3a959c51bceda956839307c28a44a4f6d0fdb9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.0 MB (402030337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5f21160453014fc784f22ef4584af2e41e8420d6cdbe67e12b976c083accf60`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 07 Sep 2017 23:06:23 GMT
ADD file:24ed5f5bb68abbeda1e34de4caa7be426978141c1664a5238107589d4038b5b0 in / 
# Thu, 07 Sep 2017 23:06:24 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:23:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:23:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 18:01:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:54:59 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:55:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:55:00 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:55:00 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:55:01 GMT
ENV JAVA_VERSION=9-b181
# Tue, 12 Sep 2017 23:55:01 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 12 Sep 2017 23:56:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:56:02 GMT
CMD ["jshell"]
# Wed, 13 Sep 2017 01:48:09 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:48:09 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:48:09 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:48:09 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:48:11 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-amd64/conf
# Wed, 13 Sep 2017 01:48:13 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:48:13 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:48:13 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:48:13 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:48:14 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:48:14 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:48:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:48:14 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:82350343a6fef2218dcf962145f0ad627975bdd80329deb9ba552d2f787b0383`  
		Last Modified: Thu, 07 Sep 2017 23:14:32 GMT  
		Size: 47.8 MB (47753859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9efadb6a07d3fbd922cad53d5ee70b22e727a5ad6d0d84e869960017813c8e`  
		Last Modified: Thu, 07 Sep 2017 23:55:23 GMT  
		Size: 8.5 MB (8549602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef77099728632ff4471bbbc7e3d5541ce4859d6061e74da83f63b89b23aa1d43`  
		Last Modified: Thu, 07 Sep 2017 23:55:23 GMT  
		Size: 9.6 MB (9619154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2305ab8ee4e81a6758bde516da3259860d8ff86dd2fa011c3786170f393f7198`  
		Last Modified: Tue, 12 Sep 2017 18:17:57 GMT  
		Size: 47.5 MB (47475639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115a689d7088e8d46141eec07655241f60ad46f5f6125c659545491867fdd0f0`  
		Last Modified: Wed, 13 Sep 2017 00:07:30 GMT  
		Size: 894.6 KB (894607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e73e79eda4378f42775a531288fec9a3753fe9a2c9e26ffe1f07cd3bbde13dd`  
		Last Modified: Wed, 13 Sep 2017 00:07:30 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ec2a61ba43f47bdea810bc97b3d21d8a02630bd0bdf2df0ac2155d961cc887c`  
		Last Modified: Wed, 13 Sep 2017 00:07:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29aa295e8159d7f06b7a231a3b61ea2394df0d4d06e4893878985bba5460e6b9`  
		Last Modified: Wed, 13 Sep 2017 00:08:16 GMT  
		Size: 279.1 MB (279062975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a5fc23a526b35fd708af0673817f1a3be5e520db57a0507b65eb5a4fb645b2`  
		Last Modified: Wed, 13 Sep 2017 01:51:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d9e4e37203c5c605b3fa95e5c71b3ff535194df2e750057cceda19a57ea70b`  
		Last Modified: Wed, 13 Sep 2017 01:51:45 GMT  
		Size: 8.7 MB (8672807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efc56c18ea189d016488091b2103a66b7420e9d4f040f5dfefd983e62e17025`  
		Last Modified: Wed, 13 Sep 2017 01:51:44 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fd70cbe7f1167080aef805d514e1f06b578a2ce6ef1a12e347d1dc548496d1`  
		Last Modified: Wed, 13 Sep 2017 01:51:43 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-9-slim`

```console
$ docker pull maven@sha256:b6665e322d986cb235147ebdf68ce3548ea4ec7827d66f130d764a56782dba71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-9-slim` - linux; amd64

```console
$ docker pull maven@sha256:50f634c2ec4d21db1da06a780eb62fab3d197baef6a2a9b80cbaf83c32ce3a08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.4 MB (193433249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8340d9411d343fd3d3383500d9a021dc1b7b8e45dd04404d598143e10f685607`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 07 Sep 2017 23:06:37 GMT
ADD file:45b6614e4cfe3201e7d003ca7c2dd680754d840d0d68f4aed1434387d3d7cb9f in / 
# Thu, 07 Sep 2017 23:06:37 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 23:56:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:56:09 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:56:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:56:10 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:56:11 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:56:11 GMT
ENV JAVA_VERSION=9-b181
# Tue, 12 Sep 2017 23:56:11 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 12 Sep 2017 23:56:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:56:55 GMT
CMD ["jshell"]
# Wed, 13 Sep 2017 01:47:54 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:47:55 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:47:55 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:47:55 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:48:05 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:48:05 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-amd64/conf
# Wed, 13 Sep 2017 01:48:07 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:48:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:48:07 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:48:07 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:48:08 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:48:08 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:48:08 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:48:08 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7c204b2b587804ea4060342fa97e944155dfa82fa997c3668fa52b3af6c9d958`  
		Last Modified: Thu, 07 Sep 2017 23:15:14 GMT  
		Size: 24.9 MB (24881942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f67c3b2eb7a22e011d15cd84635c32080c4513cee65019c649ff4381a27a8aa`  
		Last Modified: Wed, 13 Sep 2017 00:08:38 GMT  
		Size: 461.0 KB (461005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0a82e2706ce5e16c9debb4ce1cc258e613455505290a0123b1c9094d17000e`  
		Last Modified: Wed, 13 Sep 2017 00:08:37 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f505cbb0d8ec7e9f3519dee48ca7a3ac5c8d85c68d5a95d018428974d1fb8c5`  
		Last Modified: Wed, 13 Sep 2017 00:08:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c95a9b1359413fe1da2c296544014a76378d769fdabae95b779c6c5fe1a0b`  
		Last Modified: Wed, 13 Sep 2017 00:08:57 GMT  
		Size: 156.4 MB (156415083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10cef3e2547767b9e15eb8a0dbf9c8d349f0f6c54bd01298816fa4bbafb1d014`  
		Last Modified: Wed, 13 Sep 2017 01:51:28 GMT  
		Size: 3.0 MB (3000708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ea56ed0c84ab617aa8a6167a321da2ad32cc083968bc2d22bc92cfe4dd29e4`  
		Last Modified: Wed, 13 Sep 2017 01:51:27 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7858199546685513a329eae03b903853c5d64cb31a0fd2250508f9e77830cf`  
		Last Modified: Wed, 13 Sep 2017 01:51:29 GMT  
		Size: 8.7 MB (8672819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc7ec389cfff551a0459cdd071cb10bed108c7c2c5ab9dbe3f771486bcad910`  
		Last Modified: Wed, 13 Sep 2017 01:51:28 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18df519f4f5340295cc2415a7d79e50cccafdbc380325831a66d4294574894bc`  
		Last Modified: Wed, 13 Sep 2017 01:51:28 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-slim`

```console
$ docker pull maven@sha256:c164c826a105f254fb0b344d117e43ece9bd545fab393a5ce124462f4d0027f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.5-slim` - linux; amd64

```console
$ docker pull maven@sha256:4d7c394bc9502830a5e24d9f6065506fdfbbdeff0e71c434022ee2619b37d36f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103875520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:accce11f3a7ca5f31fcc34b0c895a60cfd149cdaed8ed68390b3c155814865ea`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 23:52:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:52:33 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:52:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:52:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:52:34 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:52:35 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:52:35 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:52:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:52:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:52:55 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 01:47:37 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:47:37 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:47:37 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:47:37 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:47:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:47:46 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:47:46 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:47:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:47:47 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:47:47 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:47:47 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:47:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:47:47 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a9fc575c69d17ff3e9a96baa4332e3cf83f6d66c7d2fd53e7ace1707cb57bf`  
		Last Modified: Wed, 13 Sep 2017 00:04:46 GMT  
		Size: 454.7 KB (454749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7517ac40c8f6505f6731fc59a58dad30fe181f8bc491f8c12fc3f07034230bbf`  
		Last Modified: Wed, 13 Sep 2017 00:04:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f9e943a8131a6d6298a442a09c256c8e0dc1f753c9adf0b9616d201aa01774`  
		Last Modified: Wed, 13 Sep 2017 00:04:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78411d1d82e41888926755ee9a839f7099f0ca81a98890cc7b689a443df8216b`  
		Last Modified: Wed, 13 Sep 2017 00:05:00 GMT  
		Size: 68.5 MB (68454905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f048fc7c2df3b471b540f455e14314cdc3c1d9b00aa6ff1bc4dd37783f75457`  
		Last Modified: Wed, 13 Sep 2017 00:04:46 GMT  
		Size: 272.0 KB (272030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0932b1635e9dac613abe80deb7df789e2c186bf1123b1fc09efc2e520bba791`  
		Last Modified: Wed, 13 Sep 2017 01:50:29 GMT  
		Size: 3.5 MB (3531495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19490b0f7d56dd378176259e491fee64fed9efb109637b919a59ea654c002e01`  
		Last Modified: Wed, 13 Sep 2017 01:50:31 GMT  
		Size: 8.7 MB (8672815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9af5447dc930b7bbe26950b93c0588ebd61d11925b2d7c765284fd93405f5c`  
		Last Modified: Wed, 13 Sep 2017 01:50:28 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce69c31eaf075ab5a3253ef71beab5769621c6eec1b8dfb609bf1aaf54b873e5`  
		Last Modified: Wed, 13 Sep 2017 01:50:29 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-ibmjava`

```console
$ docker pull maven@sha256:f96a1344a25743396138fe28554d2c18a88d07625d7af59d19232a818c2d2ba2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-ibmjava` - linux; amd64

```console
$ docker pull maven@sha256:ccd29d31d5445bfb6f702f0365b985b261e24eeeb59fea9f0be8b5906dd3ba3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.0 MB (240954388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40facc028b2dedffe8b36f4e43ee0a8ad7c8139be016941734dc588ce88f5a44`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 17:38:21 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 13 Sep 2017 17:39:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 17:39:11 GMT
ENV JAVA_VERSION=1.8.0_sr4fp11
# Wed, 13 Sep 2017 17:43:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0550e9e44b50ec77cd8774f99051b910816daf3cf275c05438994314ff61d7ee';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='fc3180000ee745ba11fbcb8c0eda837ccf34830de652c3747682174980c0a466';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf39ce59310f477d8864134b5d1e8c090ea41a5421c17b6b0eaf5350fdc097bf';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='7056455a52d8f753e435d3994ca87c22c496d19d4a06634ba57e4ffc50d0c722';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='89dc14c0bb8199463396f3f71a168e43d61550c7821acee50ec8c3f6ed60a83f';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 13 Sep 2017 17:43:00 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 18:17:36 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 18:17:36 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 18:17:36 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 18:17:36 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 18:17:48 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update && apt-get install -y curl   && mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 18:17:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 18:17:49 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 18:17:49 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 18:17:49 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 18:17:49 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 18:17:50 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 18:17:50 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a20d9ff07d35a3fc345ee0c2e73a15f752ae515746d57897cbd0716bd5c470`  
		Last Modified: Wed, 13 Sep 2017 17:47:50 GMT  
		Size: 3.1 MB (3070400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:146980859c88cb5e20b9eba9f5c222d7a2ea95e7ce51f7be8c42fc6257cc9d35`  
		Last Modified: Wed, 13 Sep 2017 17:50:52 GMT  
		Size: 148.5 MB (148519270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16209b3d9a016f7e87c46928550d661dc219d51f0a55df9471161f48329134b9`  
		Last Modified: Wed, 13 Sep 2017 18:20:14 GMT  
		Size: 42.1 MB (42102437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41e4def067fdb402b1ac12160ad98af946caa142be8a2b22faf39e9716dc78b`  
		Last Modified: Wed, 13 Sep 2017 18:20:07 GMT  
		Size: 727.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb504bf90e0fc079bab6476425aa90bf0d171bb01dcf2677175f011b47c1a5e7`  
		Last Modified: Wed, 13 Sep 2017 18:20:07 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-ibmjava-8`

```console
$ docker pull maven@sha256:f96a1344a25743396138fe28554d2c18a88d07625d7af59d19232a818c2d2ba2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-ibmjava-8` - linux; amd64

```console
$ docker pull maven@sha256:ccd29d31d5445bfb6f702f0365b985b261e24eeeb59fea9f0be8b5906dd3ba3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.0 MB (240954388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40facc028b2dedffe8b36f4e43ee0a8ad7c8139be016941734dc588ce88f5a44`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 17:38:21 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 13 Sep 2017 17:39:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 17:39:11 GMT
ENV JAVA_VERSION=1.8.0_sr4fp11
# Wed, 13 Sep 2017 17:43:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0550e9e44b50ec77cd8774f99051b910816daf3cf275c05438994314ff61d7ee';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='fc3180000ee745ba11fbcb8c0eda837ccf34830de652c3747682174980c0a466';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf39ce59310f477d8864134b5d1e8c090ea41a5421c17b6b0eaf5350fdc097bf';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='7056455a52d8f753e435d3994ca87c22c496d19d4a06634ba57e4ffc50d0c722';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='89dc14c0bb8199463396f3f71a168e43d61550c7821acee50ec8c3f6ed60a83f';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 13 Sep 2017 17:43:00 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 18:17:36 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 18:17:36 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 18:17:36 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 18:17:36 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 18:17:48 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update && apt-get install -y curl   && mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 18:17:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 18:17:49 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 18:17:49 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 18:17:49 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 18:17:49 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 18:17:50 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 18:17:50 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a20d9ff07d35a3fc345ee0c2e73a15f752ae515746d57897cbd0716bd5c470`  
		Last Modified: Wed, 13 Sep 2017 17:47:50 GMT  
		Size: 3.1 MB (3070400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:146980859c88cb5e20b9eba9f5c222d7a2ea95e7ce51f7be8c42fc6257cc9d35`  
		Last Modified: Wed, 13 Sep 2017 17:50:52 GMT  
		Size: 148.5 MB (148519270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16209b3d9a016f7e87c46928550d661dc219d51f0a55df9471161f48329134b9`  
		Last Modified: Wed, 13 Sep 2017 18:20:14 GMT  
		Size: 42.1 MB (42102437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41e4def067fdb402b1ac12160ad98af946caa142be8a2b22faf39e9716dc78b`  
		Last Modified: Wed, 13 Sep 2017 18:20:07 GMT  
		Size: 727.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb504bf90e0fc079bab6476425aa90bf0d171bb01dcf2677175f011b47c1a5e7`  
		Last Modified: Wed, 13 Sep 2017 18:20:07 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-ibmjava-8-alpine`

```console
$ docker pull maven@sha256:5bfaa0c075c96194f9d93bd12f89ff4c823b0e6ff2d4fe523c293a71eb53e4e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-ibmjava-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:8d4e6c80cf3299c13377a3d1a1a9ba908919da315cc967c60451b2bb64582d87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (165001848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0463d4a59b1234477d42eb2945d00a5faa19ae91f42bb5e0b0e7904de29837d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 17:39:50 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 13 Sep 2017 17:40:06 GMT
RUN apk --update add --no-cache ca-certificates curl openssl xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && curl -Ls https://www.archlinux.org/packages/core/x86_64/gcc-libs/download > /tmp/gcc-libs.tar.xz     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /usr/glibc-compat/lib     && apk del curl     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Wed, 13 Sep 2017 17:40:06 GMT
ENV JAVA_VERSION=1.8.0_sr4fp11
# Wed, 13 Sep 2017 17:43:40 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0550e9e44b50ec77cd8774f99051b910816daf3cf275c05438994314ff61d7ee';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='fc3180000ee745ba11fbcb8c0eda837ccf34830de652c3747682174980c0a466';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf39ce59310f477d8864134b5d1e8c090ea41a5421c17b6b0eaf5350fdc097bf';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='7056455a52d8f753e435d3994ca87c22c496d19d4a06634ba57e4ffc50d0c722';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='89dc14c0bb8199463396f3f71a168e43d61550c7821acee50ec8c3f6ed60a83f';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 13 Sep 2017 17:43:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 18:17:31 GMT
RUN apk add --no-cache curl tar bash
# Wed, 13 Sep 2017 18:17:31 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 18:17:31 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 18:17:31 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 18:17:31 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 18:17:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 18:17:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 18:17:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 18:17:33 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 18:17:34 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 18:17:34 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 18:17:34 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 18:17:34 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd6a2460e4be15d253bc9d5293b9847af9ceedfbb7b51a3a710613b2b8cd47a`  
		Last Modified: Wed, 13 Sep 2017 17:48:42 GMT  
		Size: 4.2 MB (4153449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da73a74ee4b39e4a6997a15fd8c628210eac356edb0302c7d2f7f72e8bf0dac3`  
		Last Modified: Wed, 13 Sep 2017 17:54:13 GMT  
		Size: 148.5 MB (148468039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13816ccb32ce57e6335cb3f0fa05d9311e85b46c674a2670f9f3d87d1a35cf5`  
		Last Modified: Wed, 13 Sep 2017 18:19:41 GMT  
		Size: 1.7 MB (1716109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44550e1a63cc80ad21823622a498cb0705c90b69f6dcd891767e23acbf63c3d`  
		Last Modified: Wed, 13 Sep 2017 18:19:41 GMT  
		Size: 8.7 MB (8672762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48746aeecfe7dea8a47e3516751ba109fa60d052249ebbbc50eba988fdec0616`  
		Last Modified: Wed, 13 Sep 2017 18:19:39 GMT  
		Size: 733.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec1a794d1772e4af7c3e6d3b694597d86d9095b41ea8ac9da1c8dd578d47ed0`  
		Last Modified: Wed, 13 Sep 2017 18:19:39 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-ibmjava-9`

```console
$ docker pull maven@sha256:02c7ce01ba446169ada16a620c5059d080e6c13e94c1601834cadfdec30ec7dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-ibmjava-9` - linux; amd64

```console
$ docker pull maven@sha256:3ebbee4b7e56307990669cfb0a26bb9d93b6456d451c5a09c9367a2d7a2b4403
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.1 MB (364069142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57f5c3687c2610954c9d68cd7e8c168365f6e38dfdc2b32f12efae8b0009d302`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 17:38:21 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 13 Sep 2017 17:39:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 17:43:41 GMT
ENV JAVA_VERSION=1.9.0_ea2
# Wed, 13 Sep 2017 17:44:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0fe3712b54a93695cf4948d9ae171bf5cef038c0e41b364b4e9eb7cb80a60688';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='5add39cc5ca56b97cf8ce71b9e1a15d19d36864aaed1e0296f50355ba3f34bd5';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='3c0dda9f449a667d12fe5f59a1ec059a90a9dc483fd35eef5ff53dd8b096cdf5';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8d06af57d8236839f5c403c12dcf4c89e22dd91716a4d26b85c8d92f6d1e2e8b';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='6e823afa1df83e364381f827f4244bfe29b0ddd58ef0203eb60df9b8c0d123af';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 13 Sep 2017 17:45:49 GMT
ENV JAVA_HOME=/opt/ibm/java PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 18:18:02 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 18:18:02 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 18:18:02 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 18:18:02 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 18:18:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update && apt-get install -y curl   && mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 18:18:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 18:18:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 18:18:48 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 18:18:48 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 18:18:48 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 18:18:48 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 18:18:49 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a20d9ff07d35a3fc345ee0c2e73a15f752ae515746d57897cbd0716bd5c470`  
		Last Modified: Wed, 13 Sep 2017 17:47:50 GMT  
		Size: 3.1 MB (3070400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae6792c5810a8ad17620ee5a49f956c3f651631d86b38e4acf538beb21cb36d`  
		Last Modified: Wed, 13 Sep 2017 17:54:53 GMT  
		Size: 271.6 MB (271633997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e610ca1d154f27712118cee70ab74a6e153fc6ae96473c0e675ea7e987608f`  
		Last Modified: Wed, 13 Sep 2017 18:21:10 GMT  
		Size: 42.1 MB (42102460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcc3efb70dfbd51f756055b853a62031a4c5e425dce1e8dac22cd562fc79ed9`  
		Last Modified: Wed, 13 Sep 2017 18:21:04 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3632c6b860d32196d57466a5b9b2929742c22058dd8a033ec392c401d91b50`  
		Last Modified: Wed, 13 Sep 2017 18:21:04 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-ibmjava-9-alpine`

```console
$ docker pull maven@sha256:c7ebb289a926b132570e2b4ab945c2963737f5d8f3dce519a62d0200c13b34b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-ibmjava-9-alpine` - linux; amd64

```console
$ docker pull maven@sha256:81c6df536a290c1b704c4e92f8f5088531e39dd4fce2a0ae9ebff25a59458f6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.6 MB (291578864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f1ef1db297ef11cb562d4abcf2c89eb9ccbe6eadbdb2dd913494731cc982471`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 17:39:50 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 13 Sep 2017 17:46:07 GMT
RUN apk --update add --no-cache ca-certificates curl openssl xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && curl -Ls https://www.archlinux.org/packages/core/x86_64/gcc-libs/download > /tmp/gcc-libs.tar.xz     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && apk del curl     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Wed, 13 Sep 2017 17:46:07 GMT
ENV JAVA_VERSION=1.9.0_ea2
# Wed, 13 Sep 2017 17:47:08 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0fe3712b54a93695cf4948d9ae171bf5cef038c0e41b364b4e9eb7cb80a60688';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='5add39cc5ca56b97cf8ce71b9e1a15d19d36864aaed1e0296f50355ba3f34bd5';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='3c0dda9f449a667d12fe5f59a1ec059a90a9dc483fd35eef5ff53dd8b096cdf5';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8d06af57d8236839f5c403c12dcf4c89e22dd91716a4d26b85c8d92f6d1e2e8b';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='6e823afa1df83e364381f827f4244bfe29b0ddd58ef0203eb60df9b8c0d123af';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 13 Sep 2017 17:47:25 GMT
ENV JAVA_HOME=/opt/ibm/java PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 18:17:56 GMT
RUN apk add --no-cache curl tar bash
# Wed, 13 Sep 2017 18:17:56 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 18:17:56 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 18:17:56 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 18:17:56 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 18:17:58 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 18:17:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 18:17:58 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 18:17:59 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 18:17:59 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 18:17:59 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 18:17:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 18:18:00 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa9c9325edacd50b9ce0ee23fd20467abd5aaa1f0490d03ed8588e220648eba`  
		Last Modified: Wed, 13 Sep 2017 17:55:10 GMT  
		Size: 7.6 MB (7563859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff892cab404de32578fa30abc3c1b39b50f88d9be76feab027aceb51f5239365`  
		Last Modified: Wed, 13 Sep 2017 17:55:39 GMT  
		Size: 271.6 MB (271634623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ee575f6380768cfe811a2614ec8cfa2998ec1d76999228383ade0f7ca7839d`  
		Last Modified: Wed, 13 Sep 2017 18:20:49 GMT  
		Size: 1.7 MB (1716147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a61c1b90cb1b2d7d59fc928867d2f3757a40b939e35da19315207710d877d0`  
		Last Modified: Wed, 13 Sep 2017 18:20:48 GMT  
		Size: 8.7 MB (8672750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e237bbd017c50eefcbcce208d95f5c5963b38eb5e154ff8241053ba50c7d6b99`  
		Last Modified: Wed, 13 Sep 2017 18:20:47 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb29664926b6646629791bd784325ac5ec057f1b5e751cc6b63d229c9409505`  
		Last Modified: Wed, 13 Sep 2017 18:20:47 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7`

```console
$ docker pull maven@sha256:72d92e1aae0a38dd1a4b4088763026659df96ad1efff482ae99319dce2a80843
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7` - linux; amd64

```console
$ docker pull maven@sha256:7310bf16dbce3815652d2fe1b04e19df31e74f010a1319f9c2a9556f00faa025
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.5 MB (253491796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c7f1e189d9e7e98ab7ac40b8cd465e77e67605effe8875a11d52d6b7e692ace`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:45:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:45:56 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:45:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:45:57 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:45:57 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:45:58 GMT
ENV JAVA_VERSION=7u151
# Tue, 12 Sep 2017 23:45:58 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 12 Sep 2017 23:46:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 13 Sep 2017 01:47:19 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:47:19 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:47:20 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:47:20 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:47:23 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:47:23 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:47:23 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:47:24 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:47:24 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:47:24 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:47:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:47:25 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f860787a8ac656bdd001a3bed4eb7158b1b61af9ded71ebd245b8ec96a1247f1`  
		Last Modified: Wed, 13 Sep 2017 00:00:29 GMT  
		Size: 828.7 KB (828668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0da8a929ad39a3a6ae6b110c87a15b1c8cf175dd7f8d9eece034b4028439633`  
		Last Modified: Wed, 13 Sep 2017 00:00:29 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01995932d55bca599dcfc23dd8294480b098e7c66d960573517a75172e1226dc`  
		Last Modified: Wed, 13 Sep 2017 00:00:28 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee93c137596ebf3335a9b1739e8227e11bee2c5c9bc0b685c5b6068cb82543`  
		Last Modified: Wed, 13 Sep 2017 00:00:52 GMT  
		Size: 128.9 MB (128902039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed07ac96d5f9f673f0411d5f7e88ce577d3bf130f8a65656b712c5454f2fb3fa`  
		Last Modified: Wed, 13 Sep 2017 01:49:48 GMT  
		Size: 8.7 MB (8672793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19289a89e217f4015fbf8bb7e1d2d5d971ce201c4f8864a50500425b81e48cc`  
		Last Modified: Wed, 13 Sep 2017 01:49:47 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5bd39143eec2b0b59251ad1afd197135d767cd405214204a48c91e94f1516fb`  
		Last Modified: Wed, 13 Sep 2017 01:49:47 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-alpine`

```console
$ docker pull maven@sha256:29631532af479c63d75772557f3eae2fa4d28a5172b4f6fcc1ba644a137b97af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-alpine` - linux; amd64

```console
$ docker pull maven@sha256:0858b0de299f733d97b704a03f555994a72a520f906d0b7547ef032e93a19101
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.9 MB (89872243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f3c7369638c2b25f7e55eb60c0f3be9971cacb3aff3e7ff021aa00376dc72d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:48:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 12 Sep 2017 23:48:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 12 Sep 2017 23:48:35 GMT
ENV JAVA_VERSION=7u131
# Tue, 12 Sep 2017 23:48:35 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Tue, 12 Sep 2017 23:48:45 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 01:46:44 GMT
RUN apk add --no-cache curl tar bash
# Wed, 13 Sep 2017 01:46:45 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:46:45 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:46:45 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:46:45 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:46:46 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:46:47 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:46:47 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:46:47 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:46:47 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:46:47 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:46:48 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:46:48 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0028340879864dcf160cb49baa12ba5fe473833c8e40da6f0b5325a378b1cd3`  
		Last Modified: Wed, 13 Sep 2017 00:01:56 GMT  
		Size: 77.4 MB (77433839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7feb47b2afa3ac9d5dedbdded72ba9997914a488af0b18fcae2c506a1bc41dd1`  
		Last Modified: Wed, 13 Sep 2017 01:49:18 GMT  
		Size: 1.8 MB (1773886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b4ae1e5bdf46d3b2abb4e328049795ebcc541061d2ef5ba61c5ae330ab682b`  
		Last Modified: Wed, 13 Sep 2017 01:49:18 GMT  
		Size: 8.7 MB (8672790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750c1a25b24add3f772f9f4446aae45d0296951f28a9b1e5dcccd9c373170f3b`  
		Last Modified: Wed, 13 Sep 2017 01:49:17 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fab2b8e523d4b41e12efc96293acd04e07785ebf8cdc69192be2a385808dd87`  
		Last Modified: Wed, 13 Sep 2017 01:49:17 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-slim`

```console
$ docker pull maven@sha256:68d1bceb74e4b573b2afa344ba30fa61e8f7af40357eff24ecd0cbff6464380b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-slim` - linux; amd64

```console
$ docker pull maven@sha256:df29f104a51b47b9d63971afdc483ea3d9cb72848947b8db2003c7596435bbeb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.7 MB (158742975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:048201bf639862a5b60eb212aaff12b8f49bdfe0735e0dbb3bb7080595ba2890`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 23:47:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:47:09 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:47:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:47:11 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:47:11 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:47:11 GMT
ENV JAVA_VERSION=7u151
# Tue, 12 Sep 2017 23:47:11 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 12 Sep 2017 23:48:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 13 Sep 2017 01:46:49 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:46:49 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:46:49 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:46:49 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:47:14 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:47:16 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:47:16 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:47:16 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:47:17 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:47:17 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:47:17 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:47:18 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:47:18 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76a1ddfd6a28fba225fe560f3276a3f7db172f0a958f8dc252f2abe0f73dc80`  
		Last Modified: Wed, 13 Sep 2017 00:01:08 GMT  
		Size: 463.7 KB (463713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c861e0899db75bf09298b235c83a72ccf4fd6425cad013d453c6be9e0d990de2`  
		Last Modified: Wed, 13 Sep 2017 00:01:08 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889b75b4dc674c5b0727738126a7aa9176ce9b44e1899712addce498f7a5dc75`  
		Last Modified: Wed, 13 Sep 2017 00:01:07 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38997aed7a6fe76eb28163c74c08d25653e9f3f410f8f590aa1fc7b365c829fb`  
		Last Modified: Wed, 13 Sep 2017 00:01:27 GMT  
		Size: 118.2 MB (118187292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7135e70887e547c7bc0c4d20fcdc236640564ffde557da8fc1ecc071c8ca98b`  
		Last Modified: Wed, 13 Sep 2017 01:49:32 GMT  
		Size: 1.3 MB (1304548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c9bf28bdb89c359bac9034706e0c7abe21ef0a895167e88966634925541afa`  
		Last Modified: Wed, 13 Sep 2017 01:49:33 GMT  
		Size: 8.7 MB (8672819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad0f7ad3e271e2a5f193e504da10e3f1fc1e8e27b5b301d1fa383ad22dd4f61`  
		Last Modified: Wed, 13 Sep 2017 01:49:32 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b26721c374d6ef49a7a2051405018773fa845cd56d531631ccb3efecac55e235`  
		Last Modified: Wed, 13 Sep 2017 01:49:32 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8`

```console
$ docker pull maven@sha256:2d6f423ef09aeb9ac05fbdf5af213e7adb92aed5bb905efb7378fa4aa5d6ee45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8` - linux; amd64

```console
$ docker pull maven@sha256:0071d6b8e97a1cfc96799f435572af794968669239d20339e9de26566cf56a66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.2 MB (304185910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f0f8f8cc8a18dbc0ac37903ba60e4ca362df58d67dd92e8e6230ddfc1058c03`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:51:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:51:32 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:51:32 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:52:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:52:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 01:47:48 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:47:48 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:47:49 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:47:49 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:47:52 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:47:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:47:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:47:53 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:47:53 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:47:53 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:47:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:47:53 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555d68a907cb72db9d53146f98f3e9b3307749d489eb4164d8a61dcabfaa350`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 892.0 KB (892022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b31cfae59b51710e232f3800a26d72b2fbdf320893915633b1357df05cf20`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7eec7274b2f1435066818cfcc17a337aa6316a7392fbeab68531a9b9a049d22`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb549c32d650ecc18fd7eb1a7c6d0a457ff739ccf3fb3545a8fadc801cf3a55`  
		Last Modified: Wed, 13 Sep 2017 00:04:13 GMT  
		Size: 183.7 MB (183692118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175c1150f2d67959b0ef2039adbcb0d74bb71d92556dfc659e0a1faa7184862c`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 272.0 KB (272039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c46e38915a6fc0409ddbd77052ae2f62d867c7b3db48d33bf322b0123ac124`  
		Last Modified: Wed, 13 Sep 2017 01:50:55 GMT  
		Size: 8.7 MB (8672815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2265d92d17526e3452738a3f147a25b231bf37b0896cdceaf72b57447dfa81f`  
		Last Modified: Wed, 13 Sep 2017 01:50:54 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d543be4c29189323c564dda54e2dc0e041bc0210fd3aff2695a01420b5d40483`  
		Last Modified: Wed, 13 Sep 2017 01:50:54 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-alpine`

```console
$ docker pull maven@sha256:4ee8a591743eef61fc647052e3225a563a364a1670f53015542099297391fc80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:1378cdebbe7574ca19df32bd76b65a7c90a933e141d4c0e87db9fb117d3bf501
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.5 MB (82451800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb32c3faa84dd87da306a5587fce6595e6fb6e4bb2d2911c3c5f5eecb19e6636`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:52:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 12 Sep 2017 23:52:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:52:56 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:52:56 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:53:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 01:47:32 GMT
RUN apk add --no-cache curl tar bash
# Wed, 13 Sep 2017 01:47:32 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:47:33 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:47:33 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:47:33 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:47:34 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:47:34 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:47:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:47:35 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:47:35 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:47:35 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:47:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:47:36 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea587fc42c2307f2235a5e0ea171a998ce809de2bfeaae81b8c0bc2966cba9c`  
		Last Modified: Wed, 13 Sep 2017 00:05:33 GMT  
		Size: 70.1 MB (70051350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca416e87eb9424004ff54d141798a7e23d4334b268e55c054067eddb807d2732`  
		Last Modified: Wed, 13 Sep 2017 01:50:03 GMT  
		Size: 1.7 MB (1735943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c35cf9863d7eb577bedbd2b0850e62b9c4d7f406ddb6ae9fbfba6c8df7f3750`  
		Last Modified: Wed, 13 Sep 2017 01:50:05 GMT  
		Size: 8.7 MB (8672780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d2463b84ac5e9988c6928f652c5703b28fa19c25cd928614733bd0ea609c0e`  
		Last Modified: Wed, 13 Sep 2017 01:50:03 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c18779b901dd19c1d3bf8f4931c756a868c042373f569966b4b21e2462e5611`  
		Last Modified: Wed, 13 Sep 2017 01:50:03 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-slim`

```console
$ docker pull maven@sha256:c164c826a105f254fb0b344d117e43ece9bd545fab393a5ce124462f4d0027f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-slim` - linux; amd64

```console
$ docker pull maven@sha256:4d7c394bc9502830a5e24d9f6065506fdfbbdeff0e71c434022ee2619b37d36f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103875520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:accce11f3a7ca5f31fcc34b0c895a60cfd149cdaed8ed68390b3c155814865ea`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 23:52:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:52:33 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:52:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:52:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:52:34 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:52:35 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:52:35 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:52:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:52:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:52:55 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 01:47:37 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:47:37 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:47:37 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:47:37 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:47:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:47:46 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:47:46 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:47:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:47:47 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:47:47 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:47:47 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:47:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:47:47 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a9fc575c69d17ff3e9a96baa4332e3cf83f6d66c7d2fd53e7ace1707cb57bf`  
		Last Modified: Wed, 13 Sep 2017 00:04:46 GMT  
		Size: 454.7 KB (454749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7517ac40c8f6505f6731fc59a58dad30fe181f8bc491f8c12fc3f07034230bbf`  
		Last Modified: Wed, 13 Sep 2017 00:04:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f9e943a8131a6d6298a442a09c256c8e0dc1f753c9adf0b9616d201aa01774`  
		Last Modified: Wed, 13 Sep 2017 00:04:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78411d1d82e41888926755ee9a839f7099f0ca81a98890cc7b689a443df8216b`  
		Last Modified: Wed, 13 Sep 2017 00:05:00 GMT  
		Size: 68.5 MB (68454905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f048fc7c2df3b471b540f455e14314cdc3c1d9b00aa6ff1bc4dd37783f75457`  
		Last Modified: Wed, 13 Sep 2017 00:04:46 GMT  
		Size: 272.0 KB (272030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0932b1635e9dac613abe80deb7df789e2c186bf1123b1fc09efc2e520bba791`  
		Last Modified: Wed, 13 Sep 2017 01:50:29 GMT  
		Size: 3.5 MB (3531495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19490b0f7d56dd378176259e491fee64fed9efb109637b919a59ea654c002e01`  
		Last Modified: Wed, 13 Sep 2017 01:50:31 GMT  
		Size: 8.7 MB (8672815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9af5447dc930b7bbe26950b93c0588ebd61d11925b2d7c765284fd93405f5c`  
		Last Modified: Wed, 13 Sep 2017 01:50:28 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce69c31eaf075ab5a3253ef71beab5769621c6eec1b8dfb609bf1aaf54b873e5`  
		Last Modified: Wed, 13 Sep 2017 01:50:29 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-9`

```console
$ docker pull maven@sha256:8040bdc8e3736e4ff219c60a4189fd4905721195a7d196f71357350ab2717cb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9` - linux; amd64

```console
$ docker pull maven@sha256:5d0f8dd4163bbd96c30b1da53c3a959c51bceda956839307c28a44a4f6d0fdb9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.0 MB (402030337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5f21160453014fc784f22ef4584af2e41e8420d6cdbe67e12b976c083accf60`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 07 Sep 2017 23:06:23 GMT
ADD file:24ed5f5bb68abbeda1e34de4caa7be426978141c1664a5238107589d4038b5b0 in / 
# Thu, 07 Sep 2017 23:06:24 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:23:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:23:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 18:01:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:54:59 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:55:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:55:00 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:55:00 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:55:01 GMT
ENV JAVA_VERSION=9-b181
# Tue, 12 Sep 2017 23:55:01 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 12 Sep 2017 23:56:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:56:02 GMT
CMD ["jshell"]
# Wed, 13 Sep 2017 01:48:09 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:48:09 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:48:09 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:48:09 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:48:11 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-amd64/conf
# Wed, 13 Sep 2017 01:48:13 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:48:13 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:48:13 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:48:13 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:48:14 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:48:14 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:48:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:48:14 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:82350343a6fef2218dcf962145f0ad627975bdd80329deb9ba552d2f787b0383`  
		Last Modified: Thu, 07 Sep 2017 23:14:32 GMT  
		Size: 47.8 MB (47753859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9efadb6a07d3fbd922cad53d5ee70b22e727a5ad6d0d84e869960017813c8e`  
		Last Modified: Thu, 07 Sep 2017 23:55:23 GMT  
		Size: 8.5 MB (8549602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef77099728632ff4471bbbc7e3d5541ce4859d6061e74da83f63b89b23aa1d43`  
		Last Modified: Thu, 07 Sep 2017 23:55:23 GMT  
		Size: 9.6 MB (9619154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2305ab8ee4e81a6758bde516da3259860d8ff86dd2fa011c3786170f393f7198`  
		Last Modified: Tue, 12 Sep 2017 18:17:57 GMT  
		Size: 47.5 MB (47475639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115a689d7088e8d46141eec07655241f60ad46f5f6125c659545491867fdd0f0`  
		Last Modified: Wed, 13 Sep 2017 00:07:30 GMT  
		Size: 894.6 KB (894607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e73e79eda4378f42775a531288fec9a3753fe9a2c9e26ffe1f07cd3bbde13dd`  
		Last Modified: Wed, 13 Sep 2017 00:07:30 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ec2a61ba43f47bdea810bc97b3d21d8a02630bd0bdf2df0ac2155d961cc887c`  
		Last Modified: Wed, 13 Sep 2017 00:07:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29aa295e8159d7f06b7a231a3b61ea2394df0d4d06e4893878985bba5460e6b9`  
		Last Modified: Wed, 13 Sep 2017 00:08:16 GMT  
		Size: 279.1 MB (279062975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a5fc23a526b35fd708af0673817f1a3be5e520db57a0507b65eb5a4fb645b2`  
		Last Modified: Wed, 13 Sep 2017 01:51:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d9e4e37203c5c605b3fa95e5c71b3ff535194df2e750057cceda19a57ea70b`  
		Last Modified: Wed, 13 Sep 2017 01:51:45 GMT  
		Size: 8.7 MB (8672807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efc56c18ea189d016488091b2103a66b7420e9d4f040f5dfefd983e62e17025`  
		Last Modified: Wed, 13 Sep 2017 01:51:44 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fd70cbe7f1167080aef805d514e1f06b578a2ce6ef1a12e347d1dc548496d1`  
		Last Modified: Wed, 13 Sep 2017 01:51:43 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-9-slim`

```console
$ docker pull maven@sha256:b6665e322d986cb235147ebdf68ce3548ea4ec7827d66f130d764a56782dba71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9-slim` - linux; amd64

```console
$ docker pull maven@sha256:50f634c2ec4d21db1da06a780eb62fab3d197baef6a2a9b80cbaf83c32ce3a08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.4 MB (193433249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8340d9411d343fd3d3383500d9a021dc1b7b8e45dd04404d598143e10f685607`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 07 Sep 2017 23:06:37 GMT
ADD file:45b6614e4cfe3201e7d003ca7c2dd680754d840d0d68f4aed1434387d3d7cb9f in / 
# Thu, 07 Sep 2017 23:06:37 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 23:56:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:56:09 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:56:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:56:10 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:56:11 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:56:11 GMT
ENV JAVA_VERSION=9-b181
# Tue, 12 Sep 2017 23:56:11 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 12 Sep 2017 23:56:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:56:55 GMT
CMD ["jshell"]
# Wed, 13 Sep 2017 01:47:54 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:47:55 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:47:55 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:47:55 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:48:05 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:48:05 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-amd64/conf
# Wed, 13 Sep 2017 01:48:07 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:48:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:48:07 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:48:07 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:48:08 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:48:08 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:48:08 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:48:08 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7c204b2b587804ea4060342fa97e944155dfa82fa997c3668fa52b3af6c9d958`  
		Last Modified: Thu, 07 Sep 2017 23:15:14 GMT  
		Size: 24.9 MB (24881942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f67c3b2eb7a22e011d15cd84635c32080c4513cee65019c649ff4381a27a8aa`  
		Last Modified: Wed, 13 Sep 2017 00:08:38 GMT  
		Size: 461.0 KB (461005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0a82e2706ce5e16c9debb4ce1cc258e613455505290a0123b1c9094d17000e`  
		Last Modified: Wed, 13 Sep 2017 00:08:37 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f505cbb0d8ec7e9f3519dee48ca7a3ac5c8d85c68d5a95d018428974d1fb8c5`  
		Last Modified: Wed, 13 Sep 2017 00:08:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c95a9b1359413fe1da2c296544014a76378d769fdabae95b779c6c5fe1a0b`  
		Last Modified: Wed, 13 Sep 2017 00:08:57 GMT  
		Size: 156.4 MB (156415083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10cef3e2547767b9e15eb8a0dbf9c8d349f0f6c54bd01298816fa4bbafb1d014`  
		Last Modified: Wed, 13 Sep 2017 01:51:28 GMT  
		Size: 3.0 MB (3000708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ea56ed0c84ab617aa8a6167a321da2ad32cc083968bc2d22bc92cfe4dd29e4`  
		Last Modified: Wed, 13 Sep 2017 01:51:27 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7858199546685513a329eae03b903853c5d64cb31a0fd2250508f9e77830cf`  
		Last Modified: Wed, 13 Sep 2017 01:51:29 GMT  
		Size: 8.7 MB (8672819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc7ec389cfff551a0459cdd071cb10bed108c7c2c5ab9dbe3f771486bcad910`  
		Last Modified: Wed, 13 Sep 2017 01:51:28 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18df519f4f5340295cc2415a7d79e50cccafdbc380325831a66d4294574894bc`  
		Last Modified: Wed, 13 Sep 2017 01:51:28 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:alpine`

```console
$ docker pull maven@sha256:4ee8a591743eef61fc647052e3225a563a364a1670f53015542099297391fc80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:alpine` - linux; amd64

```console
$ docker pull maven@sha256:1378cdebbe7574ca19df32bd76b65a7c90a933e141d4c0e87db9fb117d3bf501
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.5 MB (82451800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb32c3faa84dd87da306a5587fce6595e6fb6e4bb2d2911c3c5f5eecb19e6636`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:52:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 12 Sep 2017 23:52:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:52:56 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:52:56 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:53:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 01:47:32 GMT
RUN apk add --no-cache curl tar bash
# Wed, 13 Sep 2017 01:47:32 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:47:33 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:47:33 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:47:33 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:47:34 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:47:34 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:47:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:47:35 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:47:35 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:47:35 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:47:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:47:36 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea587fc42c2307f2235a5e0ea171a998ce809de2bfeaae81b8c0bc2966cba9c`  
		Last Modified: Wed, 13 Sep 2017 00:05:33 GMT  
		Size: 70.1 MB (70051350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca416e87eb9424004ff54d141798a7e23d4334b268e55c054067eddb807d2732`  
		Last Modified: Wed, 13 Sep 2017 01:50:03 GMT  
		Size: 1.7 MB (1735943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c35cf9863d7eb577bedbd2b0850e62b9c4d7f406ddb6ae9fbfba6c8df7f3750`  
		Last Modified: Wed, 13 Sep 2017 01:50:05 GMT  
		Size: 8.7 MB (8672780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d2463b84ac5e9988c6928f652c5703b28fa19c25cd928614733bd0ea609c0e`  
		Last Modified: Wed, 13 Sep 2017 01:50:03 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c18779b901dd19c1d3bf8f4931c756a868c042373f569966b4b21e2462e5611`  
		Last Modified: Wed, 13 Sep 2017 01:50:03 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:ibmjava`

```console
$ docker pull maven@sha256:f96a1344a25743396138fe28554d2c18a88d07625d7af59d19232a818c2d2ba2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:ibmjava` - linux; amd64

```console
$ docker pull maven@sha256:ccd29d31d5445bfb6f702f0365b985b261e24eeeb59fea9f0be8b5906dd3ba3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.0 MB (240954388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40facc028b2dedffe8b36f4e43ee0a8ad7c8139be016941734dc588ce88f5a44`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 17:38:21 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 13 Sep 2017 17:39:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 17:39:11 GMT
ENV JAVA_VERSION=1.8.0_sr4fp11
# Wed, 13 Sep 2017 17:43:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0550e9e44b50ec77cd8774f99051b910816daf3cf275c05438994314ff61d7ee';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='fc3180000ee745ba11fbcb8c0eda837ccf34830de652c3747682174980c0a466';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf39ce59310f477d8864134b5d1e8c090ea41a5421c17b6b0eaf5350fdc097bf';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='7056455a52d8f753e435d3994ca87c22c496d19d4a06634ba57e4ffc50d0c722';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='89dc14c0bb8199463396f3f71a168e43d61550c7821acee50ec8c3f6ed60a83f';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 13 Sep 2017 17:43:00 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 18:17:36 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 18:17:36 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 18:17:36 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 18:17:36 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 18:17:48 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update && apt-get install -y curl   && mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 18:17:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 18:17:49 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 18:17:49 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 18:17:49 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 18:17:49 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 18:17:50 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 18:17:50 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a20d9ff07d35a3fc345ee0c2e73a15f752ae515746d57897cbd0716bd5c470`  
		Last Modified: Wed, 13 Sep 2017 17:47:50 GMT  
		Size: 3.1 MB (3070400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:146980859c88cb5e20b9eba9f5c222d7a2ea95e7ce51f7be8c42fc6257cc9d35`  
		Last Modified: Wed, 13 Sep 2017 17:50:52 GMT  
		Size: 148.5 MB (148519270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16209b3d9a016f7e87c46928550d661dc219d51f0a55df9471161f48329134b9`  
		Last Modified: Wed, 13 Sep 2017 18:20:14 GMT  
		Size: 42.1 MB (42102437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41e4def067fdb402b1ac12160ad98af946caa142be8a2b22faf39e9716dc78b`  
		Last Modified: Wed, 13 Sep 2017 18:20:07 GMT  
		Size: 727.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb504bf90e0fc079bab6476425aa90bf0d171bb01dcf2677175f011b47c1a5e7`  
		Last Modified: Wed, 13 Sep 2017 18:20:07 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:ibmjava-alpine`

```console
$ docker pull maven@sha256:5bfaa0c075c96194f9d93bd12f89ff4c823b0e6ff2d4fe523c293a71eb53e4e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:ibmjava-alpine` - linux; amd64

```console
$ docker pull maven@sha256:8d4e6c80cf3299c13377a3d1a1a9ba908919da315cc967c60451b2bb64582d87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (165001848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0463d4a59b1234477d42eb2945d00a5faa19ae91f42bb5e0b0e7904de29837d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 17:39:50 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 13 Sep 2017 17:40:06 GMT
RUN apk --update add --no-cache ca-certificates curl openssl xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && curl -Ls https://www.archlinux.org/packages/core/x86_64/gcc-libs/download > /tmp/gcc-libs.tar.xz     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /usr/glibc-compat/lib     && apk del curl     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Wed, 13 Sep 2017 17:40:06 GMT
ENV JAVA_VERSION=1.8.0_sr4fp11
# Wed, 13 Sep 2017 17:43:40 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0550e9e44b50ec77cd8774f99051b910816daf3cf275c05438994314ff61d7ee';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='fc3180000ee745ba11fbcb8c0eda837ccf34830de652c3747682174980c0a466';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf39ce59310f477d8864134b5d1e8c090ea41a5421c17b6b0eaf5350fdc097bf';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='7056455a52d8f753e435d3994ca87c22c496d19d4a06634ba57e4ffc50d0c722';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='89dc14c0bb8199463396f3f71a168e43d61550c7821acee50ec8c3f6ed60a83f';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 13 Sep 2017 17:43:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 18:17:31 GMT
RUN apk add --no-cache curl tar bash
# Wed, 13 Sep 2017 18:17:31 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 18:17:31 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 18:17:31 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 18:17:31 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 18:17:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 18:17:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 18:17:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 18:17:33 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 18:17:34 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 18:17:34 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 18:17:34 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 18:17:34 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd6a2460e4be15d253bc9d5293b9847af9ceedfbb7b51a3a710613b2b8cd47a`  
		Last Modified: Wed, 13 Sep 2017 17:48:42 GMT  
		Size: 4.2 MB (4153449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da73a74ee4b39e4a6997a15fd8c628210eac356edb0302c7d2f7f72e8bf0dac3`  
		Last Modified: Wed, 13 Sep 2017 17:54:13 GMT  
		Size: 148.5 MB (148468039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13816ccb32ce57e6335cb3f0fa05d9311e85b46c674a2670f9f3d87d1a35cf5`  
		Last Modified: Wed, 13 Sep 2017 18:19:41 GMT  
		Size: 1.7 MB (1716109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44550e1a63cc80ad21823622a498cb0705c90b69f6dcd891767e23acbf63c3d`  
		Last Modified: Wed, 13 Sep 2017 18:19:41 GMT  
		Size: 8.7 MB (8672762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48746aeecfe7dea8a47e3516751ba109fa60d052249ebbbc50eba988fdec0616`  
		Last Modified: Wed, 13 Sep 2017 18:19:39 GMT  
		Size: 733.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec1a794d1772e4af7c3e6d3b694597d86d9095b41ea8ac9da1c8dd578d47ed0`  
		Last Modified: Wed, 13 Sep 2017 18:19:39 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:latest`

```console
$ docker pull maven@sha256:2d6f423ef09aeb9ac05fbdf5af213e7adb92aed5bb905efb7378fa4aa5d6ee45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:latest` - linux; amd64

```console
$ docker pull maven@sha256:0071d6b8e97a1cfc96799f435572af794968669239d20339e9de26566cf56a66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.2 MB (304185910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f0f8f8cc8a18dbc0ac37903ba60e4ca362df58d67dd92e8e6230ddfc1058c03`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:51:30 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:51:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:51:31 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:51:32 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:51:32 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:52:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:52:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 01:47:48 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:47:48 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:47:49 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:47:49 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:47:52 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:47:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:47:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:47:53 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:47:53 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:47:53 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:47:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:47:53 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7555d68a907cb72db9d53146f98f3e9b3307749d489eb4164d8a61dcabfaa350`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 892.0 KB (892022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52b31cfae59b51710e232f3800a26d72b2fbdf320893915633b1357df05cf20`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7eec7274b2f1435066818cfcc17a337aa6316a7392fbeab68531a9b9a049d22`  
		Last Modified: Wed, 13 Sep 2017 00:03:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb549c32d650ecc18fd7eb1a7c6d0a457ff739ccf3fb3545a8fadc801cf3a55`  
		Last Modified: Wed, 13 Sep 2017 00:04:13 GMT  
		Size: 183.7 MB (183692118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175c1150f2d67959b0ef2039adbcb0d74bb71d92556dfc659e0a1faa7184862c`  
		Last Modified: Wed, 13 Sep 2017 00:03:32 GMT  
		Size: 272.0 KB (272039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c46e38915a6fc0409ddbd77052ae2f62d867c7b3db48d33bf322b0123ac124`  
		Last Modified: Wed, 13 Sep 2017 01:50:55 GMT  
		Size: 8.7 MB (8672815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2265d92d17526e3452738a3f147a25b231bf37b0896cdceaf72b57447dfa81f`  
		Last Modified: Wed, 13 Sep 2017 01:50:54 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d543be4c29189323c564dda54e2dc0e041bc0210fd3aff2695a01420b5d40483`  
		Last Modified: Wed, 13 Sep 2017 01:50:54 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:slim`

```console
$ docker pull maven@sha256:c164c826a105f254fb0b344d117e43ece9bd545fab393a5ce124462f4d0027f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:slim` - linux; amd64

```console
$ docker pull maven@sha256:4d7c394bc9502830a5e24d9f6065506fdfbbdeff0e71c434022ee2619b37d36f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103875520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:accce11f3a7ca5f31fcc34b0c895a60cfd149cdaed8ed68390b3c155814865ea`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 23:52:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:52:33 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:52:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:52:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:52:34 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:52:35 GMT
ENV JAVA_VERSION=8u141
# Tue, 12 Sep 2017 23:52:35 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 12 Sep 2017 23:52:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Sep 2017 23:52:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:52:55 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 01:47:37 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:47:37 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:47:37 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:47:37 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:47:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:47:46 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:47:46 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:47:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:47:47 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:47:47 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:47:47 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:47:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:47:47 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a9fc575c69d17ff3e9a96baa4332e3cf83f6d66c7d2fd53e7ace1707cb57bf`  
		Last Modified: Wed, 13 Sep 2017 00:04:46 GMT  
		Size: 454.7 KB (454749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7517ac40c8f6505f6731fc59a58dad30fe181f8bc491f8c12fc3f07034230bbf`  
		Last Modified: Wed, 13 Sep 2017 00:04:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f9e943a8131a6d6298a442a09c256c8e0dc1f753c9adf0b9616d201aa01774`  
		Last Modified: Wed, 13 Sep 2017 00:04:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78411d1d82e41888926755ee9a839f7099f0ca81a98890cc7b689a443df8216b`  
		Last Modified: Wed, 13 Sep 2017 00:05:00 GMT  
		Size: 68.5 MB (68454905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f048fc7c2df3b471b540f455e14314cdc3c1d9b00aa6ff1bc4dd37783f75457`  
		Last Modified: Wed, 13 Sep 2017 00:04:46 GMT  
		Size: 272.0 KB (272030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0932b1635e9dac613abe80deb7df789e2c186bf1123b1fc09efc2e520bba791`  
		Last Modified: Wed, 13 Sep 2017 01:50:29 GMT  
		Size: 3.5 MB (3531495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19490b0f7d56dd378176259e491fee64fed9efb109637b919a59ea654c002e01`  
		Last Modified: Wed, 13 Sep 2017 01:50:31 GMT  
		Size: 8.7 MB (8672815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9af5447dc930b7bbe26950b93c0588ebd61d11925b2d7c765284fd93405f5c`  
		Last Modified: Wed, 13 Sep 2017 01:50:28 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce69c31eaf075ab5a3253ef71beab5769621c6eec1b8dfb609bf1aaf54b873e5`  
		Last Modified: Wed, 13 Sep 2017 01:50:29 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
