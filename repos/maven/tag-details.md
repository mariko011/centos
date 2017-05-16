<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `maven`

-	[`maven:3.5.0-jdk-7`](#maven350-jdk-7)
-	[`maven:3.5-jdk-7`](#maven35-jdk-7)
-	[`maven:3-jdk-7`](#maven3-jdk-7)
-	[`maven:3.5.0-jdk-7-onbuild`](#maven350-jdk-7-onbuild)
-	[`maven:3.5-jdk-7-onbuild`](#maven35-jdk-7-onbuild)
-	[`maven:3-jdk-7-onbuild`](#maven3-jdk-7-onbuild)
-	[`maven:3.5.0-jdk-7-alpine`](#maven350-jdk-7-alpine)
-	[`maven:3.5-jdk-7-alpine`](#maven35-jdk-7-alpine)
-	[`maven:3-jdk-7-alpine`](#maven3-jdk-7-alpine)
-	[`maven:3.5.0-jdk-7-onbuild-alpine`](#maven350-jdk-7-onbuild-alpine)
-	[`maven:3.5-jdk-7-onbuild-alpine`](#maven35-jdk-7-onbuild-alpine)
-	[`maven:3-jdk-7-onbuild-alpine`](#maven3-jdk-7-onbuild-alpine)
-	[`maven:3.5.0-jdk-8`](#maven350-jdk-8)
-	[`maven:3.5.0`](#maven350)
-	[`maven:3.5-jdk-8`](#maven35-jdk-8)
-	[`maven:3.5`](#maven35)
-	[`maven:3-jdk-8`](#maven3-jdk-8)
-	[`maven:3`](#maven3)
-	[`maven:latest`](#mavenlatest)
-	[`maven:3.5.0-jdk-8-onbuild`](#maven350-jdk-8-onbuild)
-	[`maven:3.5.0-onbuild`](#maven350-onbuild)
-	[`maven:3.5-jdk-8-onbuild`](#maven35-jdk-8-onbuild)
-	[`maven:3.5-onbuild`](#maven35-onbuild)
-	[`maven:3-jdk-8-onbuild`](#maven3-jdk-8-onbuild)
-	[`maven:3-onbuild`](#maven3-onbuild)
-	[`maven:onbuild`](#mavenonbuild)
-	[`maven:3.5.0-jdk-8-alpine`](#maven350-jdk-8-alpine)
-	[`maven:3.5.0-alpine`](#maven350-alpine)
-	[`maven:3.5-jdk-8-alpine`](#maven35-jdk-8-alpine)
-	[`maven:3.5-alpine`](#maven35-alpine)
-	[`maven:3-jdk-8-alpine`](#maven3-jdk-8-alpine)
-	[`maven:3-alpine`](#maven3-alpine)
-	[`maven:alpine`](#mavenalpine)
-	[`maven:3.5.0-jdk-8-onbuild-alpine`](#maven350-jdk-8-onbuild-alpine)
-	[`maven:3.5.0-onbuild-alpine`](#maven350-onbuild-alpine)
-	[`maven:3.5-jdk-8-onbuild-alpine`](#maven35-jdk-8-onbuild-alpine)
-	[`maven:3.5-onbuild-alpine`](#maven35-onbuild-alpine)
-	[`maven:3-jdk-8-onbuild-alpine`](#maven3-jdk-8-onbuild-alpine)
-	[`maven:3-onbuild-alpine`](#maven3-onbuild-alpine)
-	[`maven:onbuild-alpine`](#mavenonbuild-alpine)
-	[`maven:3.5.0-jdk-9`](#maven350-jdk-9)
-	[`maven:3.5-jdk-9`](#maven35-jdk-9)
-	[`maven:3-jdk-9`](#maven3-jdk-9)
-	[`maven:3.5.0-jdk-9-onbuild`](#maven350-jdk-9-onbuild)
-	[`maven:3.5-jdk-9-onbuild`](#maven35-jdk-9-onbuild)
-	[`maven:3-jdk-9-onbuild`](#maven3-jdk-9-onbuild)

## `maven:3.5.0-jdk-7`

```console
$ docker pull maven@sha256:404f714f350e15fc30878d51cce88baad54b127b4b0bb252555dd4c59608cf61
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.3 MB (265289007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18439ea62136f17a2a0c2bc5fc837bb929db7e7e1e1cb09c9ef883cfe63e1bac`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:26 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:56:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:56:29 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:56:29 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:56:30 GMT
ENV JAVA_VERSION=7u121
# Wed, 10 May 2017 13:56:31 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 10 May 2017 13:57:36 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 11 May 2017 05:15:21 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:15:21 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:15:22 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:15:23 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:15:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:15:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:15:28 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:15:29 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:15:30 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:15:31 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:15:32 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:15:33 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76c91400b73290264b745c82f1be6e6f172b58f7d316219d3e2799377e5c9c0`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4457313886a547bbd4b4724c03f7b72e4221ddc4b397bda49f28cd5ca8793d`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012cb57f0bf53bcab2335cbcbef8bdd51d4233735a1eee1c73b5627a78f12679`  
		Last Modified: Fri, 12 May 2017 15:07:01 GMT  
		Size: 140.9 MB (140933078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602b40c94c2ad59c3d6e2bc16bdae9d2c5846f270d9f42fdafcc0fb5c1cec89a`  
		Last Modified: Sat, 13 May 2017 17:03:25 GMT  
		Size: 8.7 MB (8672753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ebc209748aef08ac73890d1e6ba7020250332c24e32e45ad19bf37e916dd94`  
		Last Modified: Sat, 13 May 2017 17:03:25 GMT  
		Size: 697.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532db26e655c5a412e65b3586555e378b91733778c1519ca30e279eed5151e6a`  
		Last Modified: Sat, 13 May 2017 17:03:25 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-7`

```console
$ docker pull maven@sha256:404f714f350e15fc30878d51cce88baad54b127b4b0bb252555dd4c59608cf61
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.3 MB (265289007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18439ea62136f17a2a0c2bc5fc837bb929db7e7e1e1cb09c9ef883cfe63e1bac`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:26 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:56:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:56:29 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:56:29 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:56:30 GMT
ENV JAVA_VERSION=7u121
# Wed, 10 May 2017 13:56:31 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 10 May 2017 13:57:36 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 11 May 2017 05:15:21 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:15:21 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:15:22 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:15:23 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:15:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:15:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:15:28 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:15:29 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:15:30 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:15:31 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:15:32 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:15:33 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76c91400b73290264b745c82f1be6e6f172b58f7d316219d3e2799377e5c9c0`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4457313886a547bbd4b4724c03f7b72e4221ddc4b397bda49f28cd5ca8793d`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012cb57f0bf53bcab2335cbcbef8bdd51d4233735a1eee1c73b5627a78f12679`  
		Last Modified: Fri, 12 May 2017 15:07:01 GMT  
		Size: 140.9 MB (140933078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602b40c94c2ad59c3d6e2bc16bdae9d2c5846f270d9f42fdafcc0fb5c1cec89a`  
		Last Modified: Sat, 13 May 2017 17:03:25 GMT  
		Size: 8.7 MB (8672753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ebc209748aef08ac73890d1e6ba7020250332c24e32e45ad19bf37e916dd94`  
		Last Modified: Sat, 13 May 2017 17:03:25 GMT  
		Size: 697.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532db26e655c5a412e65b3586555e378b91733778c1519ca30e279eed5151e6a`  
		Last Modified: Sat, 13 May 2017 17:03:25 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7`

```console
$ docker pull maven@sha256:404f714f350e15fc30878d51cce88baad54b127b4b0bb252555dd4c59608cf61
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.3 MB (265289007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18439ea62136f17a2a0c2bc5fc837bb929db7e7e1e1cb09c9ef883cfe63e1bac`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:26 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:56:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:56:29 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:56:29 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:56:30 GMT
ENV JAVA_VERSION=7u121
# Wed, 10 May 2017 13:56:31 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 10 May 2017 13:57:36 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 11 May 2017 05:15:21 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:15:21 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:15:22 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:15:23 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:15:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:15:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:15:28 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:15:29 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:15:30 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:15:31 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:15:32 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:15:33 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76c91400b73290264b745c82f1be6e6f172b58f7d316219d3e2799377e5c9c0`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4457313886a547bbd4b4724c03f7b72e4221ddc4b397bda49f28cd5ca8793d`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012cb57f0bf53bcab2335cbcbef8bdd51d4233735a1eee1c73b5627a78f12679`  
		Last Modified: Fri, 12 May 2017 15:07:01 GMT  
		Size: 140.9 MB (140933078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602b40c94c2ad59c3d6e2bc16bdae9d2c5846f270d9f42fdafcc0fb5c1cec89a`  
		Last Modified: Sat, 13 May 2017 17:03:25 GMT  
		Size: 8.7 MB (8672753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ebc209748aef08ac73890d1e6ba7020250332c24e32e45ad19bf37e916dd94`  
		Last Modified: Sat, 13 May 2017 17:03:25 GMT  
		Size: 697.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532db26e655c5a412e65b3586555e378b91733778c1519ca30e279eed5151e6a`  
		Last Modified: Sat, 13 May 2017 17:03:25 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-7-onbuild`

```console
$ docker pull maven@sha256:ffd0f6b6553daa349b00a09fbd366f2fd4ce1c13ff3023c7102e9ed7d275da06
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-7-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.3 MB (265289168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3fd09709bc5a1f0ec55fa3d9c0fea70d5dfaa305c3723abc0cbfb86d5b7cf5b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:26 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:56:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:56:29 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:56:29 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:56:30 GMT
ENV JAVA_VERSION=7u121
# Wed, 10 May 2017 13:56:31 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 10 May 2017 13:57:36 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 11 May 2017 05:15:21 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:15:21 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:15:22 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:15:23 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:15:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:15:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:15:28 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:15:29 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:15:30 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:15:31 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:15:32 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:15:33 GMT
CMD ["mvn"]
# Thu, 11 May 2017 05:16:29 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 05:16:30 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 05:16:31 GMT
ONBUILD ADD . /usr/src/app
# Thu, 11 May 2017 05:16:32 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76c91400b73290264b745c82f1be6e6f172b58f7d316219d3e2799377e5c9c0`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4457313886a547bbd4b4724c03f7b72e4221ddc4b397bda49f28cd5ca8793d`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012cb57f0bf53bcab2335cbcbef8bdd51d4233735a1eee1c73b5627a78f12679`  
		Last Modified: Fri, 12 May 2017 15:07:01 GMT  
		Size: 140.9 MB (140933078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602b40c94c2ad59c3d6e2bc16bdae9d2c5846f270d9f42fdafcc0fb5c1cec89a`  
		Last Modified: Sat, 13 May 2017 17:03:25 GMT  
		Size: 8.7 MB (8672753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ebc209748aef08ac73890d1e6ba7020250332c24e32e45ad19bf37e916dd94`  
		Last Modified: Sat, 13 May 2017 17:03:25 GMT  
		Size: 697.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532db26e655c5a412e65b3586555e378b91733778c1519ca30e279eed5151e6a`  
		Last Modified: Sat, 13 May 2017 17:03:25 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa5b56a6c335b28625e9a029a5899d9eb8aeb666a72d85a31de928befb3e593`  
		Last Modified: Sat, 13 May 2017 17:05:51 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-7-onbuild`

```console
$ docker pull maven@sha256:ffd0f6b6553daa349b00a09fbd366f2fd4ce1c13ff3023c7102e9ed7d275da06
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-7-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.3 MB (265289168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3fd09709bc5a1f0ec55fa3d9c0fea70d5dfaa305c3723abc0cbfb86d5b7cf5b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:26 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:56:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:56:29 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:56:29 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:56:30 GMT
ENV JAVA_VERSION=7u121
# Wed, 10 May 2017 13:56:31 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 10 May 2017 13:57:36 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 11 May 2017 05:15:21 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:15:21 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:15:22 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:15:23 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:15:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:15:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:15:28 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:15:29 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:15:30 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:15:31 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:15:32 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:15:33 GMT
CMD ["mvn"]
# Thu, 11 May 2017 05:16:29 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 05:16:30 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 05:16:31 GMT
ONBUILD ADD . /usr/src/app
# Thu, 11 May 2017 05:16:32 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76c91400b73290264b745c82f1be6e6f172b58f7d316219d3e2799377e5c9c0`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4457313886a547bbd4b4724c03f7b72e4221ddc4b397bda49f28cd5ca8793d`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012cb57f0bf53bcab2335cbcbef8bdd51d4233735a1eee1c73b5627a78f12679`  
		Last Modified: Fri, 12 May 2017 15:07:01 GMT  
		Size: 140.9 MB (140933078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602b40c94c2ad59c3d6e2bc16bdae9d2c5846f270d9f42fdafcc0fb5c1cec89a`  
		Last Modified: Sat, 13 May 2017 17:03:25 GMT  
		Size: 8.7 MB (8672753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ebc209748aef08ac73890d1e6ba7020250332c24e32e45ad19bf37e916dd94`  
		Last Modified: Sat, 13 May 2017 17:03:25 GMT  
		Size: 697.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532db26e655c5a412e65b3586555e378b91733778c1519ca30e279eed5151e6a`  
		Last Modified: Sat, 13 May 2017 17:03:25 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa5b56a6c335b28625e9a029a5899d9eb8aeb666a72d85a31de928befb3e593`  
		Last Modified: Sat, 13 May 2017 17:05:51 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-onbuild`

```console
$ docker pull maven@sha256:ffd0f6b6553daa349b00a09fbd366f2fd4ce1c13ff3023c7102e9ed7d275da06
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.3 MB (265289168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3fd09709bc5a1f0ec55fa3d9c0fea70d5dfaa305c3723abc0cbfb86d5b7cf5b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:26 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:56:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:56:29 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:56:29 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:56:30 GMT
ENV JAVA_VERSION=7u121
# Wed, 10 May 2017 13:56:31 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 10 May 2017 13:57:36 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 11 May 2017 05:15:21 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:15:21 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:15:22 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:15:23 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:15:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:15:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:15:28 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:15:29 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:15:30 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:15:31 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:15:32 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:15:33 GMT
CMD ["mvn"]
# Thu, 11 May 2017 05:16:29 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 05:16:30 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 05:16:31 GMT
ONBUILD ADD . /usr/src/app
# Thu, 11 May 2017 05:16:32 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76c91400b73290264b745c82f1be6e6f172b58f7d316219d3e2799377e5c9c0`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4457313886a547bbd4b4724c03f7b72e4221ddc4b397bda49f28cd5ca8793d`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012cb57f0bf53bcab2335cbcbef8bdd51d4233735a1eee1c73b5627a78f12679`  
		Last Modified: Fri, 12 May 2017 15:07:01 GMT  
		Size: 140.9 MB (140933078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602b40c94c2ad59c3d6e2bc16bdae9d2c5846f270d9f42fdafcc0fb5c1cec89a`  
		Last Modified: Sat, 13 May 2017 17:03:25 GMT  
		Size: 8.7 MB (8672753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ebc209748aef08ac73890d1e6ba7020250332c24e32e45ad19bf37e916dd94`  
		Last Modified: Sat, 13 May 2017 17:03:25 GMT  
		Size: 697.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532db26e655c5a412e65b3586555e378b91733778c1519ca30e279eed5151e6a`  
		Last Modified: Sat, 13 May 2017 17:03:25 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa5b56a6c335b28625e9a029a5899d9eb8aeb666a72d85a31de928befb3e593`  
		Last Modified: Sat, 13 May 2017 17:05:51 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-7-alpine`

```console
$ docker pull maven@sha256:8278230bda75e95e668c209e88b640b3ff9809ca002ad1abe073c6ff4d48d7c4
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-7-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89080203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b10eb786544e6fb6c89bf555359abe68788834626468f0789958564ceb0a0b02`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:45:43 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 21:45:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 21:45:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 10 May 2017 21:45:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 10 May 2017 21:45:47 GMT
ENV JAVA_VERSION=7u121
# Wed, 10 May 2017 21:45:48 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Wed, 10 May 2017 21:45:55 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:15:56 GMT
RUN apk add --no-cache curl tar bash
# Thu, 11 May 2017 05:15:57 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:15:58 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:15:58 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:15:59 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:16:01 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:16:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:16:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:16:04 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:16:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:16:06 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:16:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:16:08 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef60c9fac754d4f3ad417367907ef7e198902936bad7e24749f08d31ad051ea`  
		Last Modified: Fri, 12 May 2017 15:10:27 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d10ab02e0419619a869a1f649d3eb6efbc4fb91b214709cb2e27af96a50f589a`  
		Last Modified: Fri, 12 May 2017 15:10:38 GMT  
		Size: 76.2 MB (76239840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e04f57e31c78208cc5b3e6a88e91628766f2d58a02957ac23aebf9b53df204`  
		Last Modified: Sat, 13 May 2017 17:04:40 GMT  
		Size: 1.8 MB (1783308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937d9327f372a9d4505338eaccc7f3311281273bb09c100a4a80ef309cb2637e`  
		Last Modified: Sat, 13 May 2017 17:04:40 GMT  
		Size: 8.7 MB (8672750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ea97eef127be9cd3cba09523a8015ef643169b84d7f0cc6c5fd27f5caf4cdc`  
		Last Modified: Sat, 13 May 2017 17:04:39 GMT  
		Size: 689.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44a5bdbf75a06e9ff0a842cd6bbc5d8662f52721804bf05ef23e18729d12ebc8`  
		Last Modified: Sat, 13 May 2017 17:04:39 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-7-alpine`

```console
$ docker pull maven@sha256:8278230bda75e95e668c209e88b640b3ff9809ca002ad1abe073c6ff4d48d7c4
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-7-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89080203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b10eb786544e6fb6c89bf555359abe68788834626468f0789958564ceb0a0b02`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:45:43 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 21:45:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 21:45:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 10 May 2017 21:45:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 10 May 2017 21:45:47 GMT
ENV JAVA_VERSION=7u121
# Wed, 10 May 2017 21:45:48 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Wed, 10 May 2017 21:45:55 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:15:56 GMT
RUN apk add --no-cache curl tar bash
# Thu, 11 May 2017 05:15:57 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:15:58 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:15:58 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:15:59 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:16:01 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:16:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:16:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:16:04 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:16:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:16:06 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:16:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:16:08 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef60c9fac754d4f3ad417367907ef7e198902936bad7e24749f08d31ad051ea`  
		Last Modified: Fri, 12 May 2017 15:10:27 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d10ab02e0419619a869a1f649d3eb6efbc4fb91b214709cb2e27af96a50f589a`  
		Last Modified: Fri, 12 May 2017 15:10:38 GMT  
		Size: 76.2 MB (76239840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e04f57e31c78208cc5b3e6a88e91628766f2d58a02957ac23aebf9b53df204`  
		Last Modified: Sat, 13 May 2017 17:04:40 GMT  
		Size: 1.8 MB (1783308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937d9327f372a9d4505338eaccc7f3311281273bb09c100a4a80ef309cb2637e`  
		Last Modified: Sat, 13 May 2017 17:04:40 GMT  
		Size: 8.7 MB (8672750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ea97eef127be9cd3cba09523a8015ef643169b84d7f0cc6c5fd27f5caf4cdc`  
		Last Modified: Sat, 13 May 2017 17:04:39 GMT  
		Size: 689.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44a5bdbf75a06e9ff0a842cd6bbc5d8662f52721804bf05ef23e18729d12ebc8`  
		Last Modified: Sat, 13 May 2017 17:04:39 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-alpine`

```console
$ docker pull maven@sha256:8278230bda75e95e668c209e88b640b3ff9809ca002ad1abe073c6ff4d48d7c4
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89080203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b10eb786544e6fb6c89bf555359abe68788834626468f0789958564ceb0a0b02`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:45:43 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 21:45:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 21:45:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 10 May 2017 21:45:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 10 May 2017 21:45:47 GMT
ENV JAVA_VERSION=7u121
# Wed, 10 May 2017 21:45:48 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Wed, 10 May 2017 21:45:55 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:15:56 GMT
RUN apk add --no-cache curl tar bash
# Thu, 11 May 2017 05:15:57 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:15:58 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:15:58 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:15:59 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:16:01 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:16:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:16:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:16:04 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:16:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:16:06 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:16:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:16:08 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef60c9fac754d4f3ad417367907ef7e198902936bad7e24749f08d31ad051ea`  
		Last Modified: Fri, 12 May 2017 15:10:27 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d10ab02e0419619a869a1f649d3eb6efbc4fb91b214709cb2e27af96a50f589a`  
		Last Modified: Fri, 12 May 2017 15:10:38 GMT  
		Size: 76.2 MB (76239840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e04f57e31c78208cc5b3e6a88e91628766f2d58a02957ac23aebf9b53df204`  
		Last Modified: Sat, 13 May 2017 17:04:40 GMT  
		Size: 1.8 MB (1783308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937d9327f372a9d4505338eaccc7f3311281273bb09c100a4a80ef309cb2637e`  
		Last Modified: Sat, 13 May 2017 17:04:40 GMT  
		Size: 8.7 MB (8672750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ea97eef127be9cd3cba09523a8015ef643169b84d7f0cc6c5fd27f5caf4cdc`  
		Last Modified: Sat, 13 May 2017 17:04:39 GMT  
		Size: 689.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44a5bdbf75a06e9ff0a842cd6bbc5d8662f52721804bf05ef23e18729d12ebc8`  
		Last Modified: Sat, 13 May 2017 17:04:39 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-7-onbuild-alpine`

```console
$ docker pull maven@sha256:a0987ae2f0b36d90af839a2c917cd8f63ce3128d92ee8217a85c5499ffef3fcb
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-7-onbuild-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89080360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cca92217dcefb0f753fad01e835f11fdb2266e9dea64b408eb3a24040a7c76c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:45:43 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 21:45:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 21:45:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 10 May 2017 21:45:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 10 May 2017 21:45:47 GMT
ENV JAVA_VERSION=7u121
# Wed, 10 May 2017 21:45:48 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Wed, 10 May 2017 21:45:55 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:15:56 GMT
RUN apk add --no-cache curl tar bash
# Thu, 11 May 2017 05:15:57 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:15:58 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:15:58 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:15:59 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:16:01 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:16:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:16:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:16:04 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:16:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:16:06 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:16:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:16:08 GMT
CMD ["mvn"]
# Thu, 11 May 2017 05:16:53 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 05:16:54 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 05:16:55 GMT
ONBUILD ADD . /usr/src/app
# Thu, 11 May 2017 05:16:55 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef60c9fac754d4f3ad417367907ef7e198902936bad7e24749f08d31ad051ea`  
		Last Modified: Fri, 12 May 2017 15:10:27 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d10ab02e0419619a869a1f649d3eb6efbc4fb91b214709cb2e27af96a50f589a`  
		Last Modified: Fri, 12 May 2017 15:10:38 GMT  
		Size: 76.2 MB (76239840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e04f57e31c78208cc5b3e6a88e91628766f2d58a02957ac23aebf9b53df204`  
		Last Modified: Sat, 13 May 2017 17:04:40 GMT  
		Size: 1.8 MB (1783308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937d9327f372a9d4505338eaccc7f3311281273bb09c100a4a80ef309cb2637e`  
		Last Modified: Sat, 13 May 2017 17:04:40 GMT  
		Size: 8.7 MB (8672750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ea97eef127be9cd3cba09523a8015ef643169b84d7f0cc6c5fd27f5caf4cdc`  
		Last Modified: Sat, 13 May 2017 17:04:39 GMT  
		Size: 689.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44a5bdbf75a06e9ff0a842cd6bbc5d8662f52721804bf05ef23e18729d12ebc8`  
		Last Modified: Sat, 13 May 2017 17:04:39 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c9db6285a4dd616ec61d348c0787421494c2c2fe1608723b01b4b7f63fb2e9`  
		Last Modified: Sat, 13 May 2017 17:07:01 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-7-onbuild-alpine`

```console
$ docker pull maven@sha256:a0987ae2f0b36d90af839a2c917cd8f63ce3128d92ee8217a85c5499ffef3fcb
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-7-onbuild-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89080360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cca92217dcefb0f753fad01e835f11fdb2266e9dea64b408eb3a24040a7c76c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:45:43 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 21:45:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 21:45:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 10 May 2017 21:45:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 10 May 2017 21:45:47 GMT
ENV JAVA_VERSION=7u121
# Wed, 10 May 2017 21:45:48 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Wed, 10 May 2017 21:45:55 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:15:56 GMT
RUN apk add --no-cache curl tar bash
# Thu, 11 May 2017 05:15:57 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:15:58 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:15:58 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:15:59 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:16:01 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:16:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:16:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:16:04 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:16:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:16:06 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:16:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:16:08 GMT
CMD ["mvn"]
# Thu, 11 May 2017 05:16:53 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 05:16:54 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 05:16:55 GMT
ONBUILD ADD . /usr/src/app
# Thu, 11 May 2017 05:16:55 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef60c9fac754d4f3ad417367907ef7e198902936bad7e24749f08d31ad051ea`  
		Last Modified: Fri, 12 May 2017 15:10:27 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d10ab02e0419619a869a1f649d3eb6efbc4fb91b214709cb2e27af96a50f589a`  
		Last Modified: Fri, 12 May 2017 15:10:38 GMT  
		Size: 76.2 MB (76239840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e04f57e31c78208cc5b3e6a88e91628766f2d58a02957ac23aebf9b53df204`  
		Last Modified: Sat, 13 May 2017 17:04:40 GMT  
		Size: 1.8 MB (1783308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937d9327f372a9d4505338eaccc7f3311281273bb09c100a4a80ef309cb2637e`  
		Last Modified: Sat, 13 May 2017 17:04:40 GMT  
		Size: 8.7 MB (8672750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ea97eef127be9cd3cba09523a8015ef643169b84d7f0cc6c5fd27f5caf4cdc`  
		Last Modified: Sat, 13 May 2017 17:04:39 GMT  
		Size: 689.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44a5bdbf75a06e9ff0a842cd6bbc5d8662f52721804bf05ef23e18729d12ebc8`  
		Last Modified: Sat, 13 May 2017 17:04:39 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c9db6285a4dd616ec61d348c0787421494c2c2fe1608723b01b4b7f63fb2e9`  
		Last Modified: Sat, 13 May 2017 17:07:01 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-onbuild-alpine`

```console
$ docker pull maven@sha256:a0987ae2f0b36d90af839a2c917cd8f63ce3128d92ee8217a85c5499ffef3fcb
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-onbuild-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89080360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cca92217dcefb0f753fad01e835f11fdb2266e9dea64b408eb3a24040a7c76c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 10 May 2017 16:37:36 GMT
ADD file:9c596c6cb8ba1d7f93d4dc5fc3f42bfcd5edca57d5be5d60ea04ef42f55fb7a8 in / 
# Wed, 10 May 2017 16:37:37 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:45:43 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 21:45:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 21:45:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 10 May 2017 21:45:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 10 May 2017 21:45:47 GMT
ENV JAVA_VERSION=7u121
# Wed, 10 May 2017 21:45:48 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Wed, 10 May 2017 21:45:55 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:15:56 GMT
RUN apk add --no-cache curl tar bash
# Thu, 11 May 2017 05:15:57 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:15:58 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:15:58 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:15:59 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:16:01 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:16:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:16:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:16:04 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:16:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:16:06 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:16:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:16:08 GMT
CMD ["mvn"]
# Thu, 11 May 2017 05:16:53 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 05:16:54 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 05:16:55 GMT
ONBUILD ADD . /usr/src/app
# Thu, 11 May 2017 05:16:55 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:79650cf9cc01ddb17cb9c4036ba9268528b775fe0322f347d15b5e4176928f34`  
		Last Modified: Wed, 10 May 2017 16:40:36 GMT  
		Size: 2.4 MB (2383037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef60c9fac754d4f3ad417367907ef7e198902936bad7e24749f08d31ad051ea`  
		Last Modified: Fri, 12 May 2017 15:10:27 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d10ab02e0419619a869a1f649d3eb6efbc4fb91b214709cb2e27af96a50f589a`  
		Last Modified: Fri, 12 May 2017 15:10:38 GMT  
		Size: 76.2 MB (76239840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e04f57e31c78208cc5b3e6a88e91628766f2d58a02957ac23aebf9b53df204`  
		Last Modified: Sat, 13 May 2017 17:04:40 GMT  
		Size: 1.8 MB (1783308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937d9327f372a9d4505338eaccc7f3311281273bb09c100a4a80ef309cb2637e`  
		Last Modified: Sat, 13 May 2017 17:04:40 GMT  
		Size: 8.7 MB (8672750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ea97eef127be9cd3cba09523a8015ef643169b84d7f0cc6c5fd27f5caf4cdc`  
		Last Modified: Sat, 13 May 2017 17:04:39 GMT  
		Size: 689.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44a5bdbf75a06e9ff0a842cd6bbc5d8662f52721804bf05ef23e18729d12ebc8`  
		Last Modified: Sat, 13 May 2017 17:04:39 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c9db6285a4dd616ec61d348c0787421494c2c2fe1608723b01b4b7f63fb2e9`  
		Last Modified: Sat, 13 May 2017 17:07:01 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-8`

```console
$ docker pull maven@sha256:16e68f691322cd425d27c798f88df4eb3c4322fe294067f21325b36ec587fa06
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256532845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58c661bb6ad4389f3c220165d5615104395e2f67446dd6ffe3753abc8598286`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 13:59:04 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 13:59:05 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:00:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:00:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 May 2017 05:14:13 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:14:14 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:14:14 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:14:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:14:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:14:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:14:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:14:21 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:14:22 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:14:23 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:14:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:14:24 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e103826bb9283f07bab12bf50e481eb402879019c1f0174152dec7af9c4cd4`  
		Last Modified: Fri, 12 May 2017 15:13:34 GMT  
		Size: 131.9 MB (131886999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f86e3b23d2747541173fddbcbcb1046ef432b31bcd32a238f6ccf9bf13fee5`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 289.6 KB (289649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1ef17d78009d125f7be43294c0483872a476d3cfa420f22d1b039955c21d95`  
		Last Modified: Sat, 13 May 2017 17:08:12 GMT  
		Size: 8.7 MB (8672786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53e406921365ea0f4ae74b34ac127ef1bb1afc870ed0680eec687ff2445b6`  
		Last Modified: Sat, 13 May 2017 17:08:10 GMT  
		Size: 720.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56f8a8fbb85f3098aec9bfd7478621a8fa23d544d5d79d75beca7e603368e47`  
		Last Modified: Sat, 13 May 2017 17:08:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0`

```console
$ docker pull maven@sha256:16e68f691322cd425d27c798f88df4eb3c4322fe294067f21325b36ec587fa06
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256532845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58c661bb6ad4389f3c220165d5615104395e2f67446dd6ffe3753abc8598286`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 13:59:04 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 13:59:05 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:00:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:00:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 May 2017 05:14:13 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:14:14 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:14:14 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:14:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:14:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:14:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:14:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:14:21 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:14:22 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:14:23 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:14:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:14:24 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e103826bb9283f07bab12bf50e481eb402879019c1f0174152dec7af9c4cd4`  
		Last Modified: Fri, 12 May 2017 15:13:34 GMT  
		Size: 131.9 MB (131886999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f86e3b23d2747541173fddbcbcb1046ef432b31bcd32a238f6ccf9bf13fee5`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 289.6 KB (289649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1ef17d78009d125f7be43294c0483872a476d3cfa420f22d1b039955c21d95`  
		Last Modified: Sat, 13 May 2017 17:08:12 GMT  
		Size: 8.7 MB (8672786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53e406921365ea0f4ae74b34ac127ef1bb1afc870ed0680eec687ff2445b6`  
		Last Modified: Sat, 13 May 2017 17:08:10 GMT  
		Size: 720.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56f8a8fbb85f3098aec9bfd7478621a8fa23d544d5d79d75beca7e603368e47`  
		Last Modified: Sat, 13 May 2017 17:08:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-8`

```console
$ docker pull maven@sha256:16e68f691322cd425d27c798f88df4eb3c4322fe294067f21325b36ec587fa06
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256532845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58c661bb6ad4389f3c220165d5615104395e2f67446dd6ffe3753abc8598286`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 13:59:04 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 13:59:05 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:00:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:00:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 May 2017 05:14:13 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:14:14 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:14:14 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:14:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:14:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:14:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:14:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:14:21 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:14:22 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:14:23 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:14:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:14:24 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e103826bb9283f07bab12bf50e481eb402879019c1f0174152dec7af9c4cd4`  
		Last Modified: Fri, 12 May 2017 15:13:34 GMT  
		Size: 131.9 MB (131886999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f86e3b23d2747541173fddbcbcb1046ef432b31bcd32a238f6ccf9bf13fee5`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 289.6 KB (289649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1ef17d78009d125f7be43294c0483872a476d3cfa420f22d1b039955c21d95`  
		Last Modified: Sat, 13 May 2017 17:08:12 GMT  
		Size: 8.7 MB (8672786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53e406921365ea0f4ae74b34ac127ef1bb1afc870ed0680eec687ff2445b6`  
		Last Modified: Sat, 13 May 2017 17:08:10 GMT  
		Size: 720.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56f8a8fbb85f3098aec9bfd7478621a8fa23d544d5d79d75beca7e603368e47`  
		Last Modified: Sat, 13 May 2017 17:08:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5`

```console
$ docker pull maven@sha256:16e68f691322cd425d27c798f88df4eb3c4322fe294067f21325b36ec587fa06
```

-	Platforms:
	-	linux; amd64

### `maven:3.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256532845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58c661bb6ad4389f3c220165d5615104395e2f67446dd6ffe3753abc8598286`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 13:59:04 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 13:59:05 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:00:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:00:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 May 2017 05:14:13 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:14:14 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:14:14 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:14:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:14:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:14:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:14:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:14:21 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:14:22 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:14:23 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:14:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:14:24 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e103826bb9283f07bab12bf50e481eb402879019c1f0174152dec7af9c4cd4`  
		Last Modified: Fri, 12 May 2017 15:13:34 GMT  
		Size: 131.9 MB (131886999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f86e3b23d2747541173fddbcbcb1046ef432b31bcd32a238f6ccf9bf13fee5`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 289.6 KB (289649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1ef17d78009d125f7be43294c0483872a476d3cfa420f22d1b039955c21d95`  
		Last Modified: Sat, 13 May 2017 17:08:12 GMT  
		Size: 8.7 MB (8672786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53e406921365ea0f4ae74b34ac127ef1bb1afc870ed0680eec687ff2445b6`  
		Last Modified: Sat, 13 May 2017 17:08:10 GMT  
		Size: 720.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56f8a8fbb85f3098aec9bfd7478621a8fa23d544d5d79d75beca7e603368e47`  
		Last Modified: Sat, 13 May 2017 17:08:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8`

```console
$ docker pull maven@sha256:16e68f691322cd425d27c798f88df4eb3c4322fe294067f21325b36ec587fa06
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256532845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58c661bb6ad4389f3c220165d5615104395e2f67446dd6ffe3753abc8598286`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 13:59:04 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 13:59:05 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:00:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:00:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 May 2017 05:14:13 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:14:14 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:14:14 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:14:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:14:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:14:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:14:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:14:21 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:14:22 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:14:23 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:14:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:14:24 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e103826bb9283f07bab12bf50e481eb402879019c1f0174152dec7af9c4cd4`  
		Last Modified: Fri, 12 May 2017 15:13:34 GMT  
		Size: 131.9 MB (131886999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f86e3b23d2747541173fddbcbcb1046ef432b31bcd32a238f6ccf9bf13fee5`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 289.6 KB (289649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1ef17d78009d125f7be43294c0483872a476d3cfa420f22d1b039955c21d95`  
		Last Modified: Sat, 13 May 2017 17:08:12 GMT  
		Size: 8.7 MB (8672786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53e406921365ea0f4ae74b34ac127ef1bb1afc870ed0680eec687ff2445b6`  
		Last Modified: Sat, 13 May 2017 17:08:10 GMT  
		Size: 720.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56f8a8fbb85f3098aec9bfd7478621a8fa23d544d5d79d75beca7e603368e47`  
		Last Modified: Sat, 13 May 2017 17:08:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3`

```console
$ docker pull maven@sha256:16e68f691322cd425d27c798f88df4eb3c4322fe294067f21325b36ec587fa06
```

-	Platforms:
	-	linux; amd64

### `maven:3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256532845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58c661bb6ad4389f3c220165d5615104395e2f67446dd6ffe3753abc8598286`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 13:59:04 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 13:59:05 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:00:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:00:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 May 2017 05:14:13 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:14:14 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:14:14 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:14:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:14:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:14:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:14:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:14:21 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:14:22 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:14:23 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:14:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:14:24 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e103826bb9283f07bab12bf50e481eb402879019c1f0174152dec7af9c4cd4`  
		Last Modified: Fri, 12 May 2017 15:13:34 GMT  
		Size: 131.9 MB (131886999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f86e3b23d2747541173fddbcbcb1046ef432b31bcd32a238f6ccf9bf13fee5`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 289.6 KB (289649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1ef17d78009d125f7be43294c0483872a476d3cfa420f22d1b039955c21d95`  
		Last Modified: Sat, 13 May 2017 17:08:12 GMT  
		Size: 8.7 MB (8672786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53e406921365ea0f4ae74b34ac127ef1bb1afc870ed0680eec687ff2445b6`  
		Last Modified: Sat, 13 May 2017 17:08:10 GMT  
		Size: 720.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56f8a8fbb85f3098aec9bfd7478621a8fa23d544d5d79d75beca7e603368e47`  
		Last Modified: Sat, 13 May 2017 17:08:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:latest`

```console
$ docker pull maven@sha256:16e68f691322cd425d27c798f88df4eb3c4322fe294067f21325b36ec587fa06
```

-	Platforms:
	-	linux; amd64

### `maven:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256532845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58c661bb6ad4389f3c220165d5615104395e2f67446dd6ffe3753abc8598286`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 13:59:04 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 13:59:05 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:00:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:00:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 May 2017 05:14:13 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:14:14 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:14:14 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:14:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:14:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:14:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:14:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:14:21 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:14:22 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:14:23 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:14:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:14:24 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e103826bb9283f07bab12bf50e481eb402879019c1f0174152dec7af9c4cd4`  
		Last Modified: Fri, 12 May 2017 15:13:34 GMT  
		Size: 131.9 MB (131886999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f86e3b23d2747541173fddbcbcb1046ef432b31bcd32a238f6ccf9bf13fee5`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 289.6 KB (289649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1ef17d78009d125f7be43294c0483872a476d3cfa420f22d1b039955c21d95`  
		Last Modified: Sat, 13 May 2017 17:08:12 GMT  
		Size: 8.7 MB (8672786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53e406921365ea0f4ae74b34ac127ef1bb1afc870ed0680eec687ff2445b6`  
		Last Modified: Sat, 13 May 2017 17:08:10 GMT  
		Size: 720.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56f8a8fbb85f3098aec9bfd7478621a8fa23d544d5d79d75beca7e603368e47`  
		Last Modified: Sat, 13 May 2017 17:08:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-8-onbuild`

```console
$ docker pull maven@sha256:a039f6f69ef0459592cba947f0c749a0ceeb7a1e186f132ca6efff59f8e1b911
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-8-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256533005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93997a80c82e39d976a94006b0aee5607e22832f5e8aa96914453bd388bfe1fc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 13:59:04 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 13:59:05 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:00:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:00:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 May 2017 05:14:13 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:14:14 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:14:14 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:14:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:14:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:14:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:14:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:14:21 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:14:22 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:14:23 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:14:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:14:24 GMT
CMD ["mvn"]
# Thu, 11 May 2017 05:17:16 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 05:17:17 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 05:17:18 GMT
ONBUILD ADD . /usr/src/app
# Thu, 11 May 2017 05:17:19 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e103826bb9283f07bab12bf50e481eb402879019c1f0174152dec7af9c4cd4`  
		Last Modified: Fri, 12 May 2017 15:13:34 GMT  
		Size: 131.9 MB (131886999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f86e3b23d2747541173fddbcbcb1046ef432b31bcd32a238f6ccf9bf13fee5`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 289.6 KB (289649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1ef17d78009d125f7be43294c0483872a476d3cfa420f22d1b039955c21d95`  
		Last Modified: Sat, 13 May 2017 17:08:12 GMT  
		Size: 8.7 MB (8672786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53e406921365ea0f4ae74b34ac127ef1bb1afc870ed0680eec687ff2445b6`  
		Last Modified: Sat, 13 May 2017 17:08:10 GMT  
		Size: 720.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56f8a8fbb85f3098aec9bfd7478621a8fa23d544d5d79d75beca7e603368e47`  
		Last Modified: Sat, 13 May 2017 17:08:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6770d44d9718f06fbf94b391f4196877311df570baf2e2d8a861500b3787ecd5`  
		Last Modified: Sat, 13 May 2017 17:13:29 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-onbuild`

```console
$ docker pull maven@sha256:a039f6f69ef0459592cba947f0c749a0ceeb7a1e186f132ca6efff59f8e1b911
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256533005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93997a80c82e39d976a94006b0aee5607e22832f5e8aa96914453bd388bfe1fc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 13:59:04 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 13:59:05 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:00:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:00:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 May 2017 05:14:13 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:14:14 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:14:14 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:14:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:14:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:14:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:14:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:14:21 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:14:22 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:14:23 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:14:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:14:24 GMT
CMD ["mvn"]
# Thu, 11 May 2017 05:17:16 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 05:17:17 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 05:17:18 GMT
ONBUILD ADD . /usr/src/app
# Thu, 11 May 2017 05:17:19 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e103826bb9283f07bab12bf50e481eb402879019c1f0174152dec7af9c4cd4`  
		Last Modified: Fri, 12 May 2017 15:13:34 GMT  
		Size: 131.9 MB (131886999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f86e3b23d2747541173fddbcbcb1046ef432b31bcd32a238f6ccf9bf13fee5`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 289.6 KB (289649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1ef17d78009d125f7be43294c0483872a476d3cfa420f22d1b039955c21d95`  
		Last Modified: Sat, 13 May 2017 17:08:12 GMT  
		Size: 8.7 MB (8672786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53e406921365ea0f4ae74b34ac127ef1bb1afc870ed0680eec687ff2445b6`  
		Last Modified: Sat, 13 May 2017 17:08:10 GMT  
		Size: 720.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56f8a8fbb85f3098aec9bfd7478621a8fa23d544d5d79d75beca7e603368e47`  
		Last Modified: Sat, 13 May 2017 17:08:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6770d44d9718f06fbf94b391f4196877311df570baf2e2d8a861500b3787ecd5`  
		Last Modified: Sat, 13 May 2017 17:13:29 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-8-onbuild`

```console
$ docker pull maven@sha256:a039f6f69ef0459592cba947f0c749a0ceeb7a1e186f132ca6efff59f8e1b911
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-8-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256533005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93997a80c82e39d976a94006b0aee5607e22832f5e8aa96914453bd388bfe1fc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 13:59:04 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 13:59:05 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:00:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:00:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 May 2017 05:14:13 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:14:14 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:14:14 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:14:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:14:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:14:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:14:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:14:21 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:14:22 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:14:23 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:14:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:14:24 GMT
CMD ["mvn"]
# Thu, 11 May 2017 05:17:16 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 05:17:17 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 05:17:18 GMT
ONBUILD ADD . /usr/src/app
# Thu, 11 May 2017 05:17:19 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e103826bb9283f07bab12bf50e481eb402879019c1f0174152dec7af9c4cd4`  
		Last Modified: Fri, 12 May 2017 15:13:34 GMT  
		Size: 131.9 MB (131886999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f86e3b23d2747541173fddbcbcb1046ef432b31bcd32a238f6ccf9bf13fee5`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 289.6 KB (289649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1ef17d78009d125f7be43294c0483872a476d3cfa420f22d1b039955c21d95`  
		Last Modified: Sat, 13 May 2017 17:08:12 GMT  
		Size: 8.7 MB (8672786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53e406921365ea0f4ae74b34ac127ef1bb1afc870ed0680eec687ff2445b6`  
		Last Modified: Sat, 13 May 2017 17:08:10 GMT  
		Size: 720.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56f8a8fbb85f3098aec9bfd7478621a8fa23d544d5d79d75beca7e603368e47`  
		Last Modified: Sat, 13 May 2017 17:08:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6770d44d9718f06fbf94b391f4196877311df570baf2e2d8a861500b3787ecd5`  
		Last Modified: Sat, 13 May 2017 17:13:29 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-onbuild`

```console
$ docker pull maven@sha256:a039f6f69ef0459592cba947f0c749a0ceeb7a1e186f132ca6efff59f8e1b911
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256533005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93997a80c82e39d976a94006b0aee5607e22832f5e8aa96914453bd388bfe1fc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 13:59:04 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 13:59:05 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:00:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:00:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 May 2017 05:14:13 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:14:14 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:14:14 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:14:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:14:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:14:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:14:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:14:21 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:14:22 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:14:23 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:14:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:14:24 GMT
CMD ["mvn"]
# Thu, 11 May 2017 05:17:16 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 05:17:17 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 05:17:18 GMT
ONBUILD ADD . /usr/src/app
# Thu, 11 May 2017 05:17:19 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e103826bb9283f07bab12bf50e481eb402879019c1f0174152dec7af9c4cd4`  
		Last Modified: Fri, 12 May 2017 15:13:34 GMT  
		Size: 131.9 MB (131886999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f86e3b23d2747541173fddbcbcb1046ef432b31bcd32a238f6ccf9bf13fee5`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 289.6 KB (289649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1ef17d78009d125f7be43294c0483872a476d3cfa420f22d1b039955c21d95`  
		Last Modified: Sat, 13 May 2017 17:08:12 GMT  
		Size: 8.7 MB (8672786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53e406921365ea0f4ae74b34ac127ef1bb1afc870ed0680eec687ff2445b6`  
		Last Modified: Sat, 13 May 2017 17:08:10 GMT  
		Size: 720.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56f8a8fbb85f3098aec9bfd7478621a8fa23d544d5d79d75beca7e603368e47`  
		Last Modified: Sat, 13 May 2017 17:08:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6770d44d9718f06fbf94b391f4196877311df570baf2e2d8a861500b3787ecd5`  
		Last Modified: Sat, 13 May 2017 17:13:29 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-onbuild`

```console
$ docker pull maven@sha256:a039f6f69ef0459592cba947f0c749a0ceeb7a1e186f132ca6efff59f8e1b911
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256533005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93997a80c82e39d976a94006b0aee5607e22832f5e8aa96914453bd388bfe1fc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 13:59:04 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 13:59:05 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:00:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:00:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 May 2017 05:14:13 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:14:14 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:14:14 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:14:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:14:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:14:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:14:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:14:21 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:14:22 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:14:23 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:14:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:14:24 GMT
CMD ["mvn"]
# Thu, 11 May 2017 05:17:16 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 05:17:17 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 05:17:18 GMT
ONBUILD ADD . /usr/src/app
# Thu, 11 May 2017 05:17:19 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e103826bb9283f07bab12bf50e481eb402879019c1f0174152dec7af9c4cd4`  
		Last Modified: Fri, 12 May 2017 15:13:34 GMT  
		Size: 131.9 MB (131886999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f86e3b23d2747541173fddbcbcb1046ef432b31bcd32a238f6ccf9bf13fee5`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 289.6 KB (289649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1ef17d78009d125f7be43294c0483872a476d3cfa420f22d1b039955c21d95`  
		Last Modified: Sat, 13 May 2017 17:08:12 GMT  
		Size: 8.7 MB (8672786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53e406921365ea0f4ae74b34ac127ef1bb1afc870ed0680eec687ff2445b6`  
		Last Modified: Sat, 13 May 2017 17:08:10 GMT  
		Size: 720.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56f8a8fbb85f3098aec9bfd7478621a8fa23d544d5d79d75beca7e603368e47`  
		Last Modified: Sat, 13 May 2017 17:08:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6770d44d9718f06fbf94b391f4196877311df570baf2e2d8a861500b3787ecd5`  
		Last Modified: Sat, 13 May 2017 17:13:29 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-onbuild`

```console
$ docker pull maven@sha256:a039f6f69ef0459592cba947f0c749a0ceeb7a1e186f132ca6efff59f8e1b911
```

-	Platforms:
	-	linux; amd64

### `maven:3-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256533005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93997a80c82e39d976a94006b0aee5607e22832f5e8aa96914453bd388bfe1fc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 13:59:04 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 13:59:05 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:00:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:00:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 May 2017 05:14:13 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:14:14 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:14:14 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:14:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:14:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:14:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:14:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:14:21 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:14:22 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:14:23 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:14:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:14:24 GMT
CMD ["mvn"]
# Thu, 11 May 2017 05:17:16 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 05:17:17 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 05:17:18 GMT
ONBUILD ADD . /usr/src/app
# Thu, 11 May 2017 05:17:19 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e103826bb9283f07bab12bf50e481eb402879019c1f0174152dec7af9c4cd4`  
		Last Modified: Fri, 12 May 2017 15:13:34 GMT  
		Size: 131.9 MB (131886999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f86e3b23d2747541173fddbcbcb1046ef432b31bcd32a238f6ccf9bf13fee5`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 289.6 KB (289649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1ef17d78009d125f7be43294c0483872a476d3cfa420f22d1b039955c21d95`  
		Last Modified: Sat, 13 May 2017 17:08:12 GMT  
		Size: 8.7 MB (8672786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53e406921365ea0f4ae74b34ac127ef1bb1afc870ed0680eec687ff2445b6`  
		Last Modified: Sat, 13 May 2017 17:08:10 GMT  
		Size: 720.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56f8a8fbb85f3098aec9bfd7478621a8fa23d544d5d79d75beca7e603368e47`  
		Last Modified: Sat, 13 May 2017 17:08:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6770d44d9718f06fbf94b391f4196877311df570baf2e2d8a861500b3787ecd5`  
		Last Modified: Sat, 13 May 2017 17:13:29 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:onbuild`

```console
$ docker pull maven@sha256:a039f6f69ef0459592cba947f0c749a0ceeb7a1e186f132ca6efff59f8e1b911
```

-	Platforms:
	-	linux; amd64

### `maven:onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256533005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93997a80c82e39d976a94006b0aee5607e22832f5e8aa96914453bd388bfe1fc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 13:59:04 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 13:59:05 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:00:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:00:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 May 2017 05:14:13 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:14:14 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:14:14 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:14:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:14:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:14:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:14:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:14:21 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:14:22 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:14:23 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:14:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:14:24 GMT
CMD ["mvn"]
# Thu, 11 May 2017 05:17:16 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 05:17:17 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 05:17:18 GMT
ONBUILD ADD . /usr/src/app
# Thu, 11 May 2017 05:17:19 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e103826bb9283f07bab12bf50e481eb402879019c1f0174152dec7af9c4cd4`  
		Last Modified: Fri, 12 May 2017 15:13:34 GMT  
		Size: 131.9 MB (131886999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f86e3b23d2747541173fddbcbcb1046ef432b31bcd32a238f6ccf9bf13fee5`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 289.6 KB (289649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1ef17d78009d125f7be43294c0483872a476d3cfa420f22d1b039955c21d95`  
		Last Modified: Sat, 13 May 2017 17:08:12 GMT  
		Size: 8.7 MB (8672786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53e406921365ea0f4ae74b34ac127ef1bb1afc870ed0680eec687ff2445b6`  
		Last Modified: Sat, 13 May 2017 17:08:10 GMT  
		Size: 720.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56f8a8fbb85f3098aec9bfd7478621a8fa23d544d5d79d75beca7e603368e47`  
		Last Modified: Sat, 13 May 2017 17:08:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6770d44d9718f06fbf94b391f4196877311df570baf2e2d8a861500b3787ecd5`  
		Last Modified: Sat, 13 May 2017 17:13:29 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-8-alpine`

```console
$ docker pull maven@sha256:b92d531df92a2b9e9d5e12756b0263cc3f62215fd940cbfb5ed493e2af8a42e7
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-8-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82374517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c2b824cf55feb803da05884f23eaa750cd6f211db445f9b8a0d52ed7298cbb4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:14:48 GMT
RUN apk add --no-cache curl tar bash
# Thu, 11 May 2017 05:14:49 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:14:49 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:14:50 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:14:51 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:14:54 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:14:54 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:14:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:14:56 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:14:57 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:14:58 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:14:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:15:00 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90eb3991a51dce61c3e6b2080b4afa57bba3cc5074a31911a867483a8daa360`  
		Last Modified: Sat, 13 May 2017 17:10:53 GMT  
		Size: 1.7 MB (1728409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79eb66973f0d559344715a6f95e0e9dfa4b59fc5755c133507d395e1d5c2ed5a`  
		Last Modified: Sat, 13 May 2017 17:10:54 GMT  
		Size: 8.7 MB (8672760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c82c2e3ac8fc2d32ace00d04b06afa2d2be50df39102d2071b4316da59b770`  
		Last Modified: Sat, 13 May 2017 17:10:51 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88dfad34afac4fccf4b9b1dfa5ccc3e1218a8e450effab396748a6f4271babe`  
		Last Modified: Sat, 13 May 2017 17:10:51 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-alpine`

```console
$ docker pull maven@sha256:b92d531df92a2b9e9d5e12756b0263cc3f62215fd940cbfb5ed493e2af8a42e7
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82374517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c2b824cf55feb803da05884f23eaa750cd6f211db445f9b8a0d52ed7298cbb4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:14:48 GMT
RUN apk add --no-cache curl tar bash
# Thu, 11 May 2017 05:14:49 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:14:49 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:14:50 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:14:51 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:14:54 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:14:54 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:14:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:14:56 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:14:57 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:14:58 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:14:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:15:00 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90eb3991a51dce61c3e6b2080b4afa57bba3cc5074a31911a867483a8daa360`  
		Last Modified: Sat, 13 May 2017 17:10:53 GMT  
		Size: 1.7 MB (1728409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79eb66973f0d559344715a6f95e0e9dfa4b59fc5755c133507d395e1d5c2ed5a`  
		Last Modified: Sat, 13 May 2017 17:10:54 GMT  
		Size: 8.7 MB (8672760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c82c2e3ac8fc2d32ace00d04b06afa2d2be50df39102d2071b4316da59b770`  
		Last Modified: Sat, 13 May 2017 17:10:51 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88dfad34afac4fccf4b9b1dfa5ccc3e1218a8e450effab396748a6f4271babe`  
		Last Modified: Sat, 13 May 2017 17:10:51 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-8-alpine`

```console
$ docker pull maven@sha256:b92d531df92a2b9e9d5e12756b0263cc3f62215fd940cbfb5ed493e2af8a42e7
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-8-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82374517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c2b824cf55feb803da05884f23eaa750cd6f211db445f9b8a0d52ed7298cbb4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:14:48 GMT
RUN apk add --no-cache curl tar bash
# Thu, 11 May 2017 05:14:49 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:14:49 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:14:50 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:14:51 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:14:54 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:14:54 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:14:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:14:56 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:14:57 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:14:58 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:14:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:15:00 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90eb3991a51dce61c3e6b2080b4afa57bba3cc5074a31911a867483a8daa360`  
		Last Modified: Sat, 13 May 2017 17:10:53 GMT  
		Size: 1.7 MB (1728409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79eb66973f0d559344715a6f95e0e9dfa4b59fc5755c133507d395e1d5c2ed5a`  
		Last Modified: Sat, 13 May 2017 17:10:54 GMT  
		Size: 8.7 MB (8672760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c82c2e3ac8fc2d32ace00d04b06afa2d2be50df39102d2071b4316da59b770`  
		Last Modified: Sat, 13 May 2017 17:10:51 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88dfad34afac4fccf4b9b1dfa5ccc3e1218a8e450effab396748a6f4271babe`  
		Last Modified: Sat, 13 May 2017 17:10:51 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-alpine`

```console
$ docker pull maven@sha256:b92d531df92a2b9e9d5e12756b0263cc3f62215fd940cbfb5ed493e2af8a42e7
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82374517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c2b824cf55feb803da05884f23eaa750cd6f211db445f9b8a0d52ed7298cbb4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:14:48 GMT
RUN apk add --no-cache curl tar bash
# Thu, 11 May 2017 05:14:49 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:14:49 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:14:50 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:14:51 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:14:54 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:14:54 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:14:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:14:56 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:14:57 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:14:58 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:14:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:15:00 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90eb3991a51dce61c3e6b2080b4afa57bba3cc5074a31911a867483a8daa360`  
		Last Modified: Sat, 13 May 2017 17:10:53 GMT  
		Size: 1.7 MB (1728409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79eb66973f0d559344715a6f95e0e9dfa4b59fc5755c133507d395e1d5c2ed5a`  
		Last Modified: Sat, 13 May 2017 17:10:54 GMT  
		Size: 8.7 MB (8672760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c82c2e3ac8fc2d32ace00d04b06afa2d2be50df39102d2071b4316da59b770`  
		Last Modified: Sat, 13 May 2017 17:10:51 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88dfad34afac4fccf4b9b1dfa5ccc3e1218a8e450effab396748a6f4271babe`  
		Last Modified: Sat, 13 May 2017 17:10:51 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-alpine`

```console
$ docker pull maven@sha256:b92d531df92a2b9e9d5e12756b0263cc3f62215fd940cbfb5ed493e2af8a42e7
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82374517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c2b824cf55feb803da05884f23eaa750cd6f211db445f9b8a0d52ed7298cbb4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:14:48 GMT
RUN apk add --no-cache curl tar bash
# Thu, 11 May 2017 05:14:49 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:14:49 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:14:50 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:14:51 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:14:54 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:14:54 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:14:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:14:56 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:14:57 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:14:58 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:14:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:15:00 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90eb3991a51dce61c3e6b2080b4afa57bba3cc5074a31911a867483a8daa360`  
		Last Modified: Sat, 13 May 2017 17:10:53 GMT  
		Size: 1.7 MB (1728409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79eb66973f0d559344715a6f95e0e9dfa4b59fc5755c133507d395e1d5c2ed5a`  
		Last Modified: Sat, 13 May 2017 17:10:54 GMT  
		Size: 8.7 MB (8672760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c82c2e3ac8fc2d32ace00d04b06afa2d2be50df39102d2071b4316da59b770`  
		Last Modified: Sat, 13 May 2017 17:10:51 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88dfad34afac4fccf4b9b1dfa5ccc3e1218a8e450effab396748a6f4271babe`  
		Last Modified: Sat, 13 May 2017 17:10:51 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-alpine`

```console
$ docker pull maven@sha256:b92d531df92a2b9e9d5e12756b0263cc3f62215fd940cbfb5ed493e2af8a42e7
```

-	Platforms:
	-	linux; amd64

### `maven:3-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82374517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c2b824cf55feb803da05884f23eaa750cd6f211db445f9b8a0d52ed7298cbb4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:14:48 GMT
RUN apk add --no-cache curl tar bash
# Thu, 11 May 2017 05:14:49 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:14:49 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:14:50 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:14:51 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:14:54 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:14:54 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:14:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:14:56 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:14:57 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:14:58 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:14:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:15:00 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90eb3991a51dce61c3e6b2080b4afa57bba3cc5074a31911a867483a8daa360`  
		Last Modified: Sat, 13 May 2017 17:10:53 GMT  
		Size: 1.7 MB (1728409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79eb66973f0d559344715a6f95e0e9dfa4b59fc5755c133507d395e1d5c2ed5a`  
		Last Modified: Sat, 13 May 2017 17:10:54 GMT  
		Size: 8.7 MB (8672760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c82c2e3ac8fc2d32ace00d04b06afa2d2be50df39102d2071b4316da59b770`  
		Last Modified: Sat, 13 May 2017 17:10:51 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88dfad34afac4fccf4b9b1dfa5ccc3e1218a8e450effab396748a6f4271babe`  
		Last Modified: Sat, 13 May 2017 17:10:51 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:alpine`

```console
$ docker pull maven@sha256:b92d531df92a2b9e9d5e12756b0263cc3f62215fd940cbfb5ed493e2af8a42e7
```

-	Platforms:
	-	linux; amd64

### `maven:alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82374517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c2b824cf55feb803da05884f23eaa750cd6f211db445f9b8a0d52ed7298cbb4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:14:48 GMT
RUN apk add --no-cache curl tar bash
# Thu, 11 May 2017 05:14:49 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:14:49 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:14:50 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:14:51 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:14:54 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:14:54 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:14:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:14:56 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:14:57 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:14:58 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:14:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:15:00 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90eb3991a51dce61c3e6b2080b4afa57bba3cc5074a31911a867483a8daa360`  
		Last Modified: Sat, 13 May 2017 17:10:53 GMT  
		Size: 1.7 MB (1728409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79eb66973f0d559344715a6f95e0e9dfa4b59fc5755c133507d395e1d5c2ed5a`  
		Last Modified: Sat, 13 May 2017 17:10:54 GMT  
		Size: 8.7 MB (8672760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c82c2e3ac8fc2d32ace00d04b06afa2d2be50df39102d2071b4316da59b770`  
		Last Modified: Sat, 13 May 2017 17:10:51 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88dfad34afac4fccf4b9b1dfa5ccc3e1218a8e450effab396748a6f4271babe`  
		Last Modified: Sat, 13 May 2017 17:10:51 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-8-onbuild-alpine`

```console
$ docker pull maven@sha256:1163c0720e26e4cb3f5635f913f31a0171a6493cf7927c176bd5609c0972cdc3
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-8-onbuild-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82374677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cdf277912a0e8ec669810af84c8cc47a51ac3a0b0ff7c087e487b1f9f9c457c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:14:48 GMT
RUN apk add --no-cache curl tar bash
# Thu, 11 May 2017 05:14:49 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:14:49 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:14:50 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:14:51 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:14:54 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:14:54 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:14:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:14:56 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:14:57 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:14:58 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:14:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:15:00 GMT
CMD ["mvn"]
# Thu, 11 May 2017 05:17:40 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 05:17:41 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 05:17:42 GMT
ONBUILD ADD . /usr/src/app
# Thu, 11 May 2017 05:17:43 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90eb3991a51dce61c3e6b2080b4afa57bba3cc5074a31911a867483a8daa360`  
		Last Modified: Sat, 13 May 2017 17:10:53 GMT  
		Size: 1.7 MB (1728409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79eb66973f0d559344715a6f95e0e9dfa4b59fc5755c133507d395e1d5c2ed5a`  
		Last Modified: Sat, 13 May 2017 17:10:54 GMT  
		Size: 8.7 MB (8672760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c82c2e3ac8fc2d32ace00d04b06afa2d2be50df39102d2071b4316da59b770`  
		Last Modified: Sat, 13 May 2017 17:10:51 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88dfad34afac4fccf4b9b1dfa5ccc3e1218a8e450effab396748a6f4271babe`  
		Last Modified: Sat, 13 May 2017 17:10:51 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1586ea2d3bf4dda7bcceacb6ccb58bf5e435155100a347192c5687023dcf93`  
		Last Modified: Sat, 13 May 2017 17:16:09 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-onbuild-alpine`

```console
$ docker pull maven@sha256:1163c0720e26e4cb3f5635f913f31a0171a6493cf7927c176bd5609c0972cdc3
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-onbuild-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82374677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cdf277912a0e8ec669810af84c8cc47a51ac3a0b0ff7c087e487b1f9f9c457c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:14:48 GMT
RUN apk add --no-cache curl tar bash
# Thu, 11 May 2017 05:14:49 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:14:49 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:14:50 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:14:51 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:14:54 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:14:54 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:14:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:14:56 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:14:57 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:14:58 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:14:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:15:00 GMT
CMD ["mvn"]
# Thu, 11 May 2017 05:17:40 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 05:17:41 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 05:17:42 GMT
ONBUILD ADD . /usr/src/app
# Thu, 11 May 2017 05:17:43 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90eb3991a51dce61c3e6b2080b4afa57bba3cc5074a31911a867483a8daa360`  
		Last Modified: Sat, 13 May 2017 17:10:53 GMT  
		Size: 1.7 MB (1728409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79eb66973f0d559344715a6f95e0e9dfa4b59fc5755c133507d395e1d5c2ed5a`  
		Last Modified: Sat, 13 May 2017 17:10:54 GMT  
		Size: 8.7 MB (8672760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c82c2e3ac8fc2d32ace00d04b06afa2d2be50df39102d2071b4316da59b770`  
		Last Modified: Sat, 13 May 2017 17:10:51 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88dfad34afac4fccf4b9b1dfa5ccc3e1218a8e450effab396748a6f4271babe`  
		Last Modified: Sat, 13 May 2017 17:10:51 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1586ea2d3bf4dda7bcceacb6ccb58bf5e435155100a347192c5687023dcf93`  
		Last Modified: Sat, 13 May 2017 17:16:09 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-8-onbuild-alpine`

```console
$ docker pull maven@sha256:1163c0720e26e4cb3f5635f913f31a0171a6493cf7927c176bd5609c0972cdc3
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-8-onbuild-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82374677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cdf277912a0e8ec669810af84c8cc47a51ac3a0b0ff7c087e487b1f9f9c457c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:14:48 GMT
RUN apk add --no-cache curl tar bash
# Thu, 11 May 2017 05:14:49 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:14:49 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:14:50 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:14:51 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:14:54 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:14:54 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:14:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:14:56 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:14:57 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:14:58 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:14:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:15:00 GMT
CMD ["mvn"]
# Thu, 11 May 2017 05:17:40 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 05:17:41 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 05:17:42 GMT
ONBUILD ADD . /usr/src/app
# Thu, 11 May 2017 05:17:43 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90eb3991a51dce61c3e6b2080b4afa57bba3cc5074a31911a867483a8daa360`  
		Last Modified: Sat, 13 May 2017 17:10:53 GMT  
		Size: 1.7 MB (1728409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79eb66973f0d559344715a6f95e0e9dfa4b59fc5755c133507d395e1d5c2ed5a`  
		Last Modified: Sat, 13 May 2017 17:10:54 GMT  
		Size: 8.7 MB (8672760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c82c2e3ac8fc2d32ace00d04b06afa2d2be50df39102d2071b4316da59b770`  
		Last Modified: Sat, 13 May 2017 17:10:51 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88dfad34afac4fccf4b9b1dfa5ccc3e1218a8e450effab396748a6f4271babe`  
		Last Modified: Sat, 13 May 2017 17:10:51 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1586ea2d3bf4dda7bcceacb6ccb58bf5e435155100a347192c5687023dcf93`  
		Last Modified: Sat, 13 May 2017 17:16:09 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-onbuild-alpine`

```console
$ docker pull maven@sha256:1163c0720e26e4cb3f5635f913f31a0171a6493cf7927c176bd5609c0972cdc3
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-onbuild-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82374677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cdf277912a0e8ec669810af84c8cc47a51ac3a0b0ff7c087e487b1f9f9c457c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:14:48 GMT
RUN apk add --no-cache curl tar bash
# Thu, 11 May 2017 05:14:49 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:14:49 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:14:50 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:14:51 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:14:54 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:14:54 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:14:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:14:56 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:14:57 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:14:58 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:14:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:15:00 GMT
CMD ["mvn"]
# Thu, 11 May 2017 05:17:40 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 05:17:41 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 05:17:42 GMT
ONBUILD ADD . /usr/src/app
# Thu, 11 May 2017 05:17:43 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90eb3991a51dce61c3e6b2080b4afa57bba3cc5074a31911a867483a8daa360`  
		Last Modified: Sat, 13 May 2017 17:10:53 GMT  
		Size: 1.7 MB (1728409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79eb66973f0d559344715a6f95e0e9dfa4b59fc5755c133507d395e1d5c2ed5a`  
		Last Modified: Sat, 13 May 2017 17:10:54 GMT  
		Size: 8.7 MB (8672760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c82c2e3ac8fc2d32ace00d04b06afa2d2be50df39102d2071b4316da59b770`  
		Last Modified: Sat, 13 May 2017 17:10:51 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88dfad34afac4fccf4b9b1dfa5ccc3e1218a8e450effab396748a6f4271babe`  
		Last Modified: Sat, 13 May 2017 17:10:51 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1586ea2d3bf4dda7bcceacb6ccb58bf5e435155100a347192c5687023dcf93`  
		Last Modified: Sat, 13 May 2017 17:16:09 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-onbuild-alpine`

```console
$ docker pull maven@sha256:1163c0720e26e4cb3f5635f913f31a0171a6493cf7927c176bd5609c0972cdc3
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-onbuild-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82374677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cdf277912a0e8ec669810af84c8cc47a51ac3a0b0ff7c087e487b1f9f9c457c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:14:48 GMT
RUN apk add --no-cache curl tar bash
# Thu, 11 May 2017 05:14:49 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:14:49 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:14:50 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:14:51 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:14:54 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:14:54 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:14:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:14:56 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:14:57 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:14:58 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:14:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:15:00 GMT
CMD ["mvn"]
# Thu, 11 May 2017 05:17:40 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 05:17:41 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 05:17:42 GMT
ONBUILD ADD . /usr/src/app
# Thu, 11 May 2017 05:17:43 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90eb3991a51dce61c3e6b2080b4afa57bba3cc5074a31911a867483a8daa360`  
		Last Modified: Sat, 13 May 2017 17:10:53 GMT  
		Size: 1.7 MB (1728409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79eb66973f0d559344715a6f95e0e9dfa4b59fc5755c133507d395e1d5c2ed5a`  
		Last Modified: Sat, 13 May 2017 17:10:54 GMT  
		Size: 8.7 MB (8672760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c82c2e3ac8fc2d32ace00d04b06afa2d2be50df39102d2071b4316da59b770`  
		Last Modified: Sat, 13 May 2017 17:10:51 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88dfad34afac4fccf4b9b1dfa5ccc3e1218a8e450effab396748a6f4271babe`  
		Last Modified: Sat, 13 May 2017 17:10:51 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1586ea2d3bf4dda7bcceacb6ccb58bf5e435155100a347192c5687023dcf93`  
		Last Modified: Sat, 13 May 2017 17:16:09 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-onbuild-alpine`

```console
$ docker pull maven@sha256:1163c0720e26e4cb3f5635f913f31a0171a6493cf7927c176bd5609c0972cdc3
```

-	Platforms:
	-	linux; amd64

### `maven:3-onbuild-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82374677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cdf277912a0e8ec669810af84c8cc47a51ac3a0b0ff7c087e487b1f9f9c457c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:14:48 GMT
RUN apk add --no-cache curl tar bash
# Thu, 11 May 2017 05:14:49 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:14:49 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:14:50 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:14:51 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:14:54 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:14:54 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:14:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:14:56 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:14:57 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:14:58 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:14:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:15:00 GMT
CMD ["mvn"]
# Thu, 11 May 2017 05:17:40 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 05:17:41 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 05:17:42 GMT
ONBUILD ADD . /usr/src/app
# Thu, 11 May 2017 05:17:43 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90eb3991a51dce61c3e6b2080b4afa57bba3cc5074a31911a867483a8daa360`  
		Last Modified: Sat, 13 May 2017 17:10:53 GMT  
		Size: 1.7 MB (1728409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79eb66973f0d559344715a6f95e0e9dfa4b59fc5755c133507d395e1d5c2ed5a`  
		Last Modified: Sat, 13 May 2017 17:10:54 GMT  
		Size: 8.7 MB (8672760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c82c2e3ac8fc2d32ace00d04b06afa2d2be50df39102d2071b4316da59b770`  
		Last Modified: Sat, 13 May 2017 17:10:51 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88dfad34afac4fccf4b9b1dfa5ccc3e1218a8e450effab396748a6f4271babe`  
		Last Modified: Sat, 13 May 2017 17:10:51 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1586ea2d3bf4dda7bcceacb6ccb58bf5e435155100a347192c5687023dcf93`  
		Last Modified: Sat, 13 May 2017 17:16:09 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:onbuild-alpine`

```console
$ docker pull maven@sha256:1163c0720e26e4cb3f5635f913f31a0171a6493cf7927c176bd5609c0972cdc3
```

-	Platforms:
	-	linux; amd64

### `maven:onbuild-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82374677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cdf277912a0e8ec669810af84c8cc47a51ac3a0b0ff7c087e487b1f9f9c457c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:14:48 GMT
RUN apk add --no-cache curl tar bash
# Thu, 11 May 2017 05:14:49 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 11 May 2017 05:14:49 GMT
ARG USER_HOME_DIR=/root
# Thu, 11 May 2017 05:14:50 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 11 May 2017 05:14:51 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 11 May 2017 05:14:54 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 May 2017 05:14:54 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 May 2017 05:14:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 11 May 2017 05:14:56 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 11 May 2017 05:14:57 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 11 May 2017 05:14:58 GMT
VOLUME [/root/.m2]
# Thu, 11 May 2017 05:14:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 11 May 2017 05:15:00 GMT
CMD ["mvn"]
# Thu, 11 May 2017 05:17:40 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 05:17:41 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 05:17:42 GMT
ONBUILD ADD . /usr/src/app
# Thu, 11 May 2017 05:17:43 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90eb3991a51dce61c3e6b2080b4afa57bba3cc5074a31911a867483a8daa360`  
		Last Modified: Sat, 13 May 2017 17:10:53 GMT  
		Size: 1.7 MB (1728409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79eb66973f0d559344715a6f95e0e9dfa4b59fc5755c133507d395e1d5c2ed5a`  
		Last Modified: Sat, 13 May 2017 17:10:54 GMT  
		Size: 8.7 MB (8672760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c82c2e3ac8fc2d32ace00d04b06afa2d2be50df39102d2071b4316da59b770`  
		Last Modified: Sat, 13 May 2017 17:10:51 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88dfad34afac4fccf4b9b1dfa5ccc3e1218a8e450effab396748a6f4271babe`  
		Last Modified: Sat, 13 May 2017 17:10:51 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1586ea2d3bf4dda7bcceacb6ccb58bf5e435155100a347192c5687023dcf93`  
		Last Modified: Sat, 13 May 2017 17:16:09 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-9`

```console
$ docker pull maven@sha256:67192bee0826e9d74cf21bc11eb5d3e1f7843e08ba2ff6f690c73e0cf5e4c938
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272054377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a9b9786a0e72eec2525d28456c8c3aef32f65bac2c0826ff5d942aa2133450`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 08 May 2017 23:32:23 GMT
ADD file:485c5e010aec72afb62c7fe5bc651d739dad42e9baf81e811e6b3f369c72a917 in / 
# Mon, 08 May 2017 23:32:23 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:57:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:58:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:01:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:01:36 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 10 May 2017 14:01:37 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:01:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:01:40 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:01:41 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 15 May 2017 20:43:59 GMT
ENV JAVA_VERSION=9~b169
# Mon, 15 May 2017 20:44:00 GMT
ENV JAVA_DEBIAN_VERSION=9~b169-1
# Mon, 15 May 2017 20:44:32 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 00:37:30 GMT
ARG MAVEN_VERSION=3.5.0
# Tue, 16 May 2017 00:37:31 GMT
ARG USER_HOME_DIR=/root
# Tue, 16 May 2017 00:37:32 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Tue, 16 May 2017 00:37:33 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Tue, 16 May 2017 00:37:37 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 16 May 2017 00:37:38 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 16 May 2017 00:37:38 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 16 May 2017 00:37:40 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 16 May 2017 00:37:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 16 May 2017 00:37:42 GMT
VOLUME [/root/.m2]
# Tue, 16 May 2017 00:37:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 16 May 2017 00:37:43 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:705d0395ca7a3af6e4662abc693a18e13ffd882aaf93db55fc1a1b313b69cad8`  
		Last Modified: Mon, 08 May 2017 23:48:38 GMT  
		Size: 45.3 MB (45254594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95bfff6e637f7f460b136c6303bc8a9e3341d1821affa81f98ce0d8e2895d0a`  
		Last Modified: Tue, 09 May 2017 15:58:23 GMT  
		Size: 11.3 MB (11265380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:403c3d1db0ff620b98f8da5320fbc4e7557b3539d0c89fe984f5f234de90fd16`  
		Last Modified: Tue, 09 May 2017 15:59:04 GMT  
		Size: 50.9 MB (50947148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:576e6eaba21c7578ad992b4ff9f6eff4fd1ca8329b9a6c1e9720e2a524b248a0`  
		Last Modified: Fri, 12 May 2017 15:25:09 GMT  
		Size: 659.6 KB (659573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246f443a7ab8ddd8d3567f262c1c4803c4cf5ff9783b17741610868c8d8a0074`  
		Last Modified: Fri, 12 May 2017 15:25:07 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2c23f42b858c7463b45cdfa706ba72abae930789ebbe7a1b922a1a4edd6b4b`  
		Last Modified: Fri, 12 May 2017 15:25:06 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2182f7c7320ae2a988e779fffa1264e78dcf1449007063abdd14f92a64aecc`  
		Last Modified: Fri, 12 May 2017 15:25:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d58bae5e0bbcfa967c2d4ab3386954cf31a493fad23c51d4f3c8821f5b6d394`  
		Last Modified: Mon, 15 May 2017 21:07:05 GMT  
		Size: 155.3 MB (155253270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf9878203fb34646feaa3a4a25c95ff32a128b110624b0c4f5586811c351d54`  
		Last Modified: Tue, 16 May 2017 00:53:27 GMT  
		Size: 8.7 MB (8672761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ad583ce1119648c89920d68a1ee87312e5439284885556c77fec4893bde4e6`  
		Last Modified: Tue, 16 May 2017 00:53:26 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70145daea852497b0290e2aefb56e19623f4e9c1cd2e3ed933144308b86bbbc0`  
		Last Modified: Tue, 16 May 2017 00:53:26 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-9`

```console
$ docker pull maven@sha256:67192bee0826e9d74cf21bc11eb5d3e1f7843e08ba2ff6f690c73e0cf5e4c938
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272054377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a9b9786a0e72eec2525d28456c8c3aef32f65bac2c0826ff5d942aa2133450`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 08 May 2017 23:32:23 GMT
ADD file:485c5e010aec72afb62c7fe5bc651d739dad42e9baf81e811e6b3f369c72a917 in / 
# Mon, 08 May 2017 23:32:23 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:57:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:58:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:01:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:01:36 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 10 May 2017 14:01:37 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:01:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:01:40 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:01:41 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 15 May 2017 20:43:59 GMT
ENV JAVA_VERSION=9~b169
# Mon, 15 May 2017 20:44:00 GMT
ENV JAVA_DEBIAN_VERSION=9~b169-1
# Mon, 15 May 2017 20:44:32 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 00:37:30 GMT
ARG MAVEN_VERSION=3.5.0
# Tue, 16 May 2017 00:37:31 GMT
ARG USER_HOME_DIR=/root
# Tue, 16 May 2017 00:37:32 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Tue, 16 May 2017 00:37:33 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Tue, 16 May 2017 00:37:37 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 16 May 2017 00:37:38 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 16 May 2017 00:37:38 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 16 May 2017 00:37:40 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 16 May 2017 00:37:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 16 May 2017 00:37:42 GMT
VOLUME [/root/.m2]
# Tue, 16 May 2017 00:37:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 16 May 2017 00:37:43 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:705d0395ca7a3af6e4662abc693a18e13ffd882aaf93db55fc1a1b313b69cad8`  
		Last Modified: Mon, 08 May 2017 23:48:38 GMT  
		Size: 45.3 MB (45254594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95bfff6e637f7f460b136c6303bc8a9e3341d1821affa81f98ce0d8e2895d0a`  
		Last Modified: Tue, 09 May 2017 15:58:23 GMT  
		Size: 11.3 MB (11265380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:403c3d1db0ff620b98f8da5320fbc4e7557b3539d0c89fe984f5f234de90fd16`  
		Last Modified: Tue, 09 May 2017 15:59:04 GMT  
		Size: 50.9 MB (50947148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:576e6eaba21c7578ad992b4ff9f6eff4fd1ca8329b9a6c1e9720e2a524b248a0`  
		Last Modified: Fri, 12 May 2017 15:25:09 GMT  
		Size: 659.6 KB (659573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246f443a7ab8ddd8d3567f262c1c4803c4cf5ff9783b17741610868c8d8a0074`  
		Last Modified: Fri, 12 May 2017 15:25:07 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2c23f42b858c7463b45cdfa706ba72abae930789ebbe7a1b922a1a4edd6b4b`  
		Last Modified: Fri, 12 May 2017 15:25:06 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2182f7c7320ae2a988e779fffa1264e78dcf1449007063abdd14f92a64aecc`  
		Last Modified: Fri, 12 May 2017 15:25:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d58bae5e0bbcfa967c2d4ab3386954cf31a493fad23c51d4f3c8821f5b6d394`  
		Last Modified: Mon, 15 May 2017 21:07:05 GMT  
		Size: 155.3 MB (155253270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf9878203fb34646feaa3a4a25c95ff32a128b110624b0c4f5586811c351d54`  
		Last Modified: Tue, 16 May 2017 00:53:27 GMT  
		Size: 8.7 MB (8672761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ad583ce1119648c89920d68a1ee87312e5439284885556c77fec4893bde4e6`  
		Last Modified: Tue, 16 May 2017 00:53:26 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70145daea852497b0290e2aefb56e19623f4e9c1cd2e3ed933144308b86bbbc0`  
		Last Modified: Tue, 16 May 2017 00:53:26 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-9`

```console
$ docker pull maven@sha256:67192bee0826e9d74cf21bc11eb5d3e1f7843e08ba2ff6f690c73e0cf5e4c938
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272054377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a9b9786a0e72eec2525d28456c8c3aef32f65bac2c0826ff5d942aa2133450`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 08 May 2017 23:32:23 GMT
ADD file:485c5e010aec72afb62c7fe5bc651d739dad42e9baf81e811e6b3f369c72a917 in / 
# Mon, 08 May 2017 23:32:23 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:57:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:58:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:01:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:01:36 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 10 May 2017 14:01:37 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:01:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:01:40 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:01:41 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 15 May 2017 20:43:59 GMT
ENV JAVA_VERSION=9~b169
# Mon, 15 May 2017 20:44:00 GMT
ENV JAVA_DEBIAN_VERSION=9~b169-1
# Mon, 15 May 2017 20:44:32 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 00:37:30 GMT
ARG MAVEN_VERSION=3.5.0
# Tue, 16 May 2017 00:37:31 GMT
ARG USER_HOME_DIR=/root
# Tue, 16 May 2017 00:37:32 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Tue, 16 May 2017 00:37:33 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Tue, 16 May 2017 00:37:37 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 16 May 2017 00:37:38 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 16 May 2017 00:37:38 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 16 May 2017 00:37:40 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 16 May 2017 00:37:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 16 May 2017 00:37:42 GMT
VOLUME [/root/.m2]
# Tue, 16 May 2017 00:37:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 16 May 2017 00:37:43 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:705d0395ca7a3af6e4662abc693a18e13ffd882aaf93db55fc1a1b313b69cad8`  
		Last Modified: Mon, 08 May 2017 23:48:38 GMT  
		Size: 45.3 MB (45254594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95bfff6e637f7f460b136c6303bc8a9e3341d1821affa81f98ce0d8e2895d0a`  
		Last Modified: Tue, 09 May 2017 15:58:23 GMT  
		Size: 11.3 MB (11265380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:403c3d1db0ff620b98f8da5320fbc4e7557b3539d0c89fe984f5f234de90fd16`  
		Last Modified: Tue, 09 May 2017 15:59:04 GMT  
		Size: 50.9 MB (50947148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:576e6eaba21c7578ad992b4ff9f6eff4fd1ca8329b9a6c1e9720e2a524b248a0`  
		Last Modified: Fri, 12 May 2017 15:25:09 GMT  
		Size: 659.6 KB (659573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246f443a7ab8ddd8d3567f262c1c4803c4cf5ff9783b17741610868c8d8a0074`  
		Last Modified: Fri, 12 May 2017 15:25:07 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2c23f42b858c7463b45cdfa706ba72abae930789ebbe7a1b922a1a4edd6b4b`  
		Last Modified: Fri, 12 May 2017 15:25:06 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2182f7c7320ae2a988e779fffa1264e78dcf1449007063abdd14f92a64aecc`  
		Last Modified: Fri, 12 May 2017 15:25:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d58bae5e0bbcfa967c2d4ab3386954cf31a493fad23c51d4f3c8821f5b6d394`  
		Last Modified: Mon, 15 May 2017 21:07:05 GMT  
		Size: 155.3 MB (155253270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf9878203fb34646feaa3a4a25c95ff32a128b110624b0c4f5586811c351d54`  
		Last Modified: Tue, 16 May 2017 00:53:27 GMT  
		Size: 8.7 MB (8672761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ad583ce1119648c89920d68a1ee87312e5439284885556c77fec4893bde4e6`  
		Last Modified: Tue, 16 May 2017 00:53:26 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70145daea852497b0290e2aefb56e19623f4e9c1cd2e3ed933144308b86bbbc0`  
		Last Modified: Tue, 16 May 2017 00:53:26 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-9-onbuild`

```console
$ docker pull maven@sha256:0c6058a3c367449013eddab73d107947718c1f321272a025758887922e37e0d2
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-9-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272054534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ef0f98e26ef719f1fbaa1c6b702359fabf3755d3a0857f33d358c6fce852424`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 08 May 2017 23:32:23 GMT
ADD file:485c5e010aec72afb62c7fe5bc651d739dad42e9baf81e811e6b3f369c72a917 in / 
# Mon, 08 May 2017 23:32:23 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:57:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:58:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:01:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:01:36 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 10 May 2017 14:01:37 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:01:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:01:40 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:01:41 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 15 May 2017 20:43:59 GMT
ENV JAVA_VERSION=9~b169
# Mon, 15 May 2017 20:44:00 GMT
ENV JAVA_DEBIAN_VERSION=9~b169-1
# Mon, 15 May 2017 20:44:32 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 00:37:30 GMT
ARG MAVEN_VERSION=3.5.0
# Tue, 16 May 2017 00:37:31 GMT
ARG USER_HOME_DIR=/root
# Tue, 16 May 2017 00:37:32 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Tue, 16 May 2017 00:37:33 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Tue, 16 May 2017 00:37:37 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 16 May 2017 00:37:38 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 16 May 2017 00:37:38 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 16 May 2017 00:37:40 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 16 May 2017 00:37:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 16 May 2017 00:37:42 GMT
VOLUME [/root/.m2]
# Tue, 16 May 2017 00:37:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 16 May 2017 00:37:43 GMT
CMD ["mvn"]
# Tue, 16 May 2017 00:38:05 GMT
RUN mkdir -p /usr/src/app
# Tue, 16 May 2017 00:38:06 GMT
WORKDIR /usr/src/app
# Tue, 16 May 2017 00:38:07 GMT
ONBUILD ADD . /usr/src/app
# Tue, 16 May 2017 00:38:08 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:705d0395ca7a3af6e4662abc693a18e13ffd882aaf93db55fc1a1b313b69cad8`  
		Last Modified: Mon, 08 May 2017 23:48:38 GMT  
		Size: 45.3 MB (45254594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95bfff6e637f7f460b136c6303bc8a9e3341d1821affa81f98ce0d8e2895d0a`  
		Last Modified: Tue, 09 May 2017 15:58:23 GMT  
		Size: 11.3 MB (11265380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:403c3d1db0ff620b98f8da5320fbc4e7557b3539d0c89fe984f5f234de90fd16`  
		Last Modified: Tue, 09 May 2017 15:59:04 GMT  
		Size: 50.9 MB (50947148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:576e6eaba21c7578ad992b4ff9f6eff4fd1ca8329b9a6c1e9720e2a524b248a0`  
		Last Modified: Fri, 12 May 2017 15:25:09 GMT  
		Size: 659.6 KB (659573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246f443a7ab8ddd8d3567f262c1c4803c4cf5ff9783b17741610868c8d8a0074`  
		Last Modified: Fri, 12 May 2017 15:25:07 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2c23f42b858c7463b45cdfa706ba72abae930789ebbe7a1b922a1a4edd6b4b`  
		Last Modified: Fri, 12 May 2017 15:25:06 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2182f7c7320ae2a988e779fffa1264e78dcf1449007063abdd14f92a64aecc`  
		Last Modified: Fri, 12 May 2017 15:25:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d58bae5e0bbcfa967c2d4ab3386954cf31a493fad23c51d4f3c8821f5b6d394`  
		Last Modified: Mon, 15 May 2017 21:07:05 GMT  
		Size: 155.3 MB (155253270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf9878203fb34646feaa3a4a25c95ff32a128b110624b0c4f5586811c351d54`  
		Last Modified: Tue, 16 May 2017 00:53:27 GMT  
		Size: 8.7 MB (8672761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ad583ce1119648c89920d68a1ee87312e5439284885556c77fec4893bde4e6`  
		Last Modified: Tue, 16 May 2017 00:53:26 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70145daea852497b0290e2aefb56e19623f4e9c1cd2e3ed933144308b86bbbc0`  
		Last Modified: Tue, 16 May 2017 00:53:26 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7bdcbe8f2e2b12c63328deb597cfe0f57e8f9778fa2801be33183535a8562f8`  
		Last Modified: Tue, 16 May 2017 00:54:38 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-9-onbuild`

```console
$ docker pull maven@sha256:0c6058a3c367449013eddab73d107947718c1f321272a025758887922e37e0d2
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-9-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272054534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ef0f98e26ef719f1fbaa1c6b702359fabf3755d3a0857f33d358c6fce852424`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 08 May 2017 23:32:23 GMT
ADD file:485c5e010aec72afb62c7fe5bc651d739dad42e9baf81e811e6b3f369c72a917 in / 
# Mon, 08 May 2017 23:32:23 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:57:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:58:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:01:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:01:36 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 10 May 2017 14:01:37 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:01:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:01:40 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:01:41 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 15 May 2017 20:43:59 GMT
ENV JAVA_VERSION=9~b169
# Mon, 15 May 2017 20:44:00 GMT
ENV JAVA_DEBIAN_VERSION=9~b169-1
# Mon, 15 May 2017 20:44:32 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 00:37:30 GMT
ARG MAVEN_VERSION=3.5.0
# Tue, 16 May 2017 00:37:31 GMT
ARG USER_HOME_DIR=/root
# Tue, 16 May 2017 00:37:32 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Tue, 16 May 2017 00:37:33 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Tue, 16 May 2017 00:37:37 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 16 May 2017 00:37:38 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 16 May 2017 00:37:38 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 16 May 2017 00:37:40 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 16 May 2017 00:37:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 16 May 2017 00:37:42 GMT
VOLUME [/root/.m2]
# Tue, 16 May 2017 00:37:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 16 May 2017 00:37:43 GMT
CMD ["mvn"]
# Tue, 16 May 2017 00:38:05 GMT
RUN mkdir -p /usr/src/app
# Tue, 16 May 2017 00:38:06 GMT
WORKDIR /usr/src/app
# Tue, 16 May 2017 00:38:07 GMT
ONBUILD ADD . /usr/src/app
# Tue, 16 May 2017 00:38:08 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:705d0395ca7a3af6e4662abc693a18e13ffd882aaf93db55fc1a1b313b69cad8`  
		Last Modified: Mon, 08 May 2017 23:48:38 GMT  
		Size: 45.3 MB (45254594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95bfff6e637f7f460b136c6303bc8a9e3341d1821affa81f98ce0d8e2895d0a`  
		Last Modified: Tue, 09 May 2017 15:58:23 GMT  
		Size: 11.3 MB (11265380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:403c3d1db0ff620b98f8da5320fbc4e7557b3539d0c89fe984f5f234de90fd16`  
		Last Modified: Tue, 09 May 2017 15:59:04 GMT  
		Size: 50.9 MB (50947148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:576e6eaba21c7578ad992b4ff9f6eff4fd1ca8329b9a6c1e9720e2a524b248a0`  
		Last Modified: Fri, 12 May 2017 15:25:09 GMT  
		Size: 659.6 KB (659573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246f443a7ab8ddd8d3567f262c1c4803c4cf5ff9783b17741610868c8d8a0074`  
		Last Modified: Fri, 12 May 2017 15:25:07 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2c23f42b858c7463b45cdfa706ba72abae930789ebbe7a1b922a1a4edd6b4b`  
		Last Modified: Fri, 12 May 2017 15:25:06 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2182f7c7320ae2a988e779fffa1264e78dcf1449007063abdd14f92a64aecc`  
		Last Modified: Fri, 12 May 2017 15:25:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d58bae5e0bbcfa967c2d4ab3386954cf31a493fad23c51d4f3c8821f5b6d394`  
		Last Modified: Mon, 15 May 2017 21:07:05 GMT  
		Size: 155.3 MB (155253270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf9878203fb34646feaa3a4a25c95ff32a128b110624b0c4f5586811c351d54`  
		Last Modified: Tue, 16 May 2017 00:53:27 GMT  
		Size: 8.7 MB (8672761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ad583ce1119648c89920d68a1ee87312e5439284885556c77fec4893bde4e6`  
		Last Modified: Tue, 16 May 2017 00:53:26 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70145daea852497b0290e2aefb56e19623f4e9c1cd2e3ed933144308b86bbbc0`  
		Last Modified: Tue, 16 May 2017 00:53:26 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7bdcbe8f2e2b12c63328deb597cfe0f57e8f9778fa2801be33183535a8562f8`  
		Last Modified: Tue, 16 May 2017 00:54:38 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-9-onbuild`

```console
$ docker pull maven@sha256:0c6058a3c367449013eddab73d107947718c1f321272a025758887922e37e0d2
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272054534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ef0f98e26ef719f1fbaa1c6b702359fabf3755d3a0857f33d358c6fce852424`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 08 May 2017 23:32:23 GMT
ADD file:485c5e010aec72afb62c7fe5bc651d739dad42e9baf81e811e6b3f369c72a917 in / 
# Mon, 08 May 2017 23:32:23 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:57:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:58:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:01:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:01:36 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 10 May 2017 14:01:37 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:01:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:01:40 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:01:41 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 15 May 2017 20:43:59 GMT
ENV JAVA_VERSION=9~b169
# Mon, 15 May 2017 20:44:00 GMT
ENV JAVA_DEBIAN_VERSION=9~b169-1
# Mon, 15 May 2017 20:44:32 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 00:37:30 GMT
ARG MAVEN_VERSION=3.5.0
# Tue, 16 May 2017 00:37:31 GMT
ARG USER_HOME_DIR=/root
# Tue, 16 May 2017 00:37:32 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Tue, 16 May 2017 00:37:33 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Tue, 16 May 2017 00:37:37 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 16 May 2017 00:37:38 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 16 May 2017 00:37:38 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 16 May 2017 00:37:40 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 16 May 2017 00:37:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 16 May 2017 00:37:42 GMT
VOLUME [/root/.m2]
# Tue, 16 May 2017 00:37:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 16 May 2017 00:37:43 GMT
CMD ["mvn"]
# Tue, 16 May 2017 00:38:05 GMT
RUN mkdir -p /usr/src/app
# Tue, 16 May 2017 00:38:06 GMT
WORKDIR /usr/src/app
# Tue, 16 May 2017 00:38:07 GMT
ONBUILD ADD . /usr/src/app
# Tue, 16 May 2017 00:38:08 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:705d0395ca7a3af6e4662abc693a18e13ffd882aaf93db55fc1a1b313b69cad8`  
		Last Modified: Mon, 08 May 2017 23:48:38 GMT  
		Size: 45.3 MB (45254594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95bfff6e637f7f460b136c6303bc8a9e3341d1821affa81f98ce0d8e2895d0a`  
		Last Modified: Tue, 09 May 2017 15:58:23 GMT  
		Size: 11.3 MB (11265380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:403c3d1db0ff620b98f8da5320fbc4e7557b3539d0c89fe984f5f234de90fd16`  
		Last Modified: Tue, 09 May 2017 15:59:04 GMT  
		Size: 50.9 MB (50947148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:576e6eaba21c7578ad992b4ff9f6eff4fd1ca8329b9a6c1e9720e2a524b248a0`  
		Last Modified: Fri, 12 May 2017 15:25:09 GMT  
		Size: 659.6 KB (659573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246f443a7ab8ddd8d3567f262c1c4803c4cf5ff9783b17741610868c8d8a0074`  
		Last Modified: Fri, 12 May 2017 15:25:07 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2c23f42b858c7463b45cdfa706ba72abae930789ebbe7a1b922a1a4edd6b4b`  
		Last Modified: Fri, 12 May 2017 15:25:06 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2182f7c7320ae2a988e779fffa1264e78dcf1449007063abdd14f92a64aecc`  
		Last Modified: Fri, 12 May 2017 15:25:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d58bae5e0bbcfa967c2d4ab3386954cf31a493fad23c51d4f3c8821f5b6d394`  
		Last Modified: Mon, 15 May 2017 21:07:05 GMT  
		Size: 155.3 MB (155253270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf9878203fb34646feaa3a4a25c95ff32a128b110624b0c4f5586811c351d54`  
		Last Modified: Tue, 16 May 2017 00:53:27 GMT  
		Size: 8.7 MB (8672761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ad583ce1119648c89920d68a1ee87312e5439284885556c77fec4893bde4e6`  
		Last Modified: Tue, 16 May 2017 00:53:26 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70145daea852497b0290e2aefb56e19623f4e9c1cd2e3ed933144308b86bbbc0`  
		Last Modified: Tue, 16 May 2017 00:53:26 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7bdcbe8f2e2b12c63328deb597cfe0f57e8f9778fa2801be33183535a8562f8`  
		Last Modified: Tue, 16 May 2017 00:54:38 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
