<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `groovy`

-	[`groovy:2.4.10-jdk7`](#groovy2410-jdk7)
-	[`groovy:2.4-jdk7`](#groovy24-jdk7)
-	[`groovy:jdk7`](#groovyjdk7)
-	[`groovy:2.4.10-jre7`](#groovy2410-jre7)
-	[`groovy:2.4-jre7`](#groovy24-jre7)
-	[`groovy:jre7`](#groovyjre7)
-	[`groovy:2.4.10-jdk7-alpine`](#groovy2410-jdk7-alpine)
-	[`groovy:2.4-jdk7-alpine`](#groovy24-jdk7-alpine)
-	[`groovy:jdk7-alpine`](#groovyjdk7-alpine)
-	[`groovy:2.4.10-jre7-alpine`](#groovy2410-jre7-alpine)
-	[`groovy:2.4-jre7-alpine`](#groovy24-jre7-alpine)
-	[`groovy:jre7-alpine`](#groovyjre7-alpine)
-	[`groovy:2.4.10-jdk8`](#groovy2410-jdk8)
-	[`groovy:2.4-jdk8`](#groovy24-jdk8)
-	[`groovy:jdk8`](#groovyjdk8)
-	[`groovy:2.4.10-jdk`](#groovy2410-jdk)
-	[`groovy:2.4-jdk`](#groovy24-jdk)
-	[`groovy:jdk`](#groovyjdk)
-	[`groovy:2.4.10-jre8`](#groovy2410-jre8)
-	[`groovy:2.4-jre8`](#groovy24-jre8)
-	[`groovy:jre8`](#groovyjre8)
-	[`groovy:2.4.10-jre`](#groovy2410-jre)
-	[`groovy:2.4-jre`](#groovy24-jre)
-	[`groovy:jre`](#groovyjre)
-	[`groovy:2.4.10`](#groovy2410)
-	[`groovy:2.4`](#groovy24)
-	[`groovy:latest`](#groovylatest)
-	[`groovy:2.4.10-jdk8-alpine`](#groovy2410-jdk8-alpine)
-	[`groovy:2.4-jdk8-alpine`](#groovy24-jdk8-alpine)
-	[`groovy:jdk8-alpine`](#groovyjdk8-alpine)
-	[`groovy:2.4.10-jdk-alpine`](#groovy2410-jdk-alpine)
-	[`groovy:2.4-jdk-alpine`](#groovy24-jdk-alpine)
-	[`groovy:jdk-alpine`](#groovyjdk-alpine)
-	[`groovy:2.4.10-jre8-alpine`](#groovy2410-jre8-alpine)
-	[`groovy:2.4-jre8-alpine`](#groovy24-jre8-alpine)
-	[`groovy:jre8-alpine`](#groovyjre8-alpine)
-	[`groovy:2.4.10-jre-alpine`](#groovy2410-jre-alpine)
-	[`groovy:2.4-jre-alpine`](#groovy24-jre-alpine)
-	[`groovy:jre-alpine`](#groovyjre-alpine)
-	[`groovy:2.4.10-alpine`](#groovy2410-alpine)
-	[`groovy:2.4-alpine`](#groovy24-alpine)
-	[`groovy:alpine`](#groovyalpine)
-	[`groovy:2.4.10-jdk9`](#groovy2410-jdk9)
-	[`groovy:2.4-jdk9`](#groovy24-jdk9)
-	[`groovy:jdk9`](#groovyjdk9)
-	[`groovy:2.4.10-jre9`](#groovy2410-jre9)
-	[`groovy:2.4-jre9`](#groovy24-jre9)
-	[`groovy:jre9`](#groovyjre9)

## `groovy:2.4.10-jdk7`

**does not exist** (yet?)

## `groovy:2.4-jdk7`

```console
$ docker pull groovy@sha256:d85d88a6cefed8c65b5e1bb8835655e8acfee729cc6070d00dd64d8128189a3f
```

-	Platforms:
	-	linux; amd64

### `groovy:2.4-jdk7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.9 MB (288878760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:179c690baae07b10b07dea5825f003fd6b3dd3fb936530731920ca77e6ff42c4`
-	Default Command: `["groovysh"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 03:41:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 03:41:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Tue, 28 Feb 2017 15:22:08 GMT
ENV JAVA_VERSION=7u121
# Tue, 28 Feb 2017 15:22:08 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Tue, 28 Feb 2017 15:23:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 18:27:16 GMT
CMD ["groovysh"]
# Tue, 14 Mar 2017 16:59:12 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 14 Mar 2017 16:59:13 GMT
ENV GROOVY_VERSION=2.4.9
# Tue, 14 Mar 2017 16:59:18 GMT
RUN set -o errexit -o nounset 	&& echo "Downloading Groovy" 	&& wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Checking download signature" 	&& wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm --recursive "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Adding groovy user and group" 	&& groupadd --system --gid 1000 groovy 	&& useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy 	&& mkdir --parents /home/groovy/.groovy/grapes 	&& chown --recursive groovy:groovy /home/groovy
# Tue, 14 Mar 2017 16:59:18 GMT
USER [groovy]
# Tue, 14 Mar 2017 16:59:19 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 14 Mar 2017 16:59:19 GMT
WORKDIR /home/groovy
# Tue, 14 Mar 2017 16:59:23 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a53adee4b44c6a341116e88f3d45f603a1284c082b01b9ecd2bd5d9642c0d7c`  
		Last Modified: Tue, 28 Feb 2017 21:55:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0dfaeb69835f9abb2ad5b52fe322a94834ebdb9760cf195596fad3909838d7`  
		Last Modified: Tue, 28 Feb 2017 21:55:40 GMT  
		Size: 139.5 MB (139472425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fa41e9aa1ec0bac4ee5d7b6afdbb195a524ee65e1e2d9df41aa62db6105669`  
		Last Modified: Tue, 14 Mar 2017 17:02:20 GMT  
		Size: 36.4 MB (36412078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13ad353ea126961febef94cad49d86adef171c266e7ca37b14e05b9a4c7afb4`  
		Last Modified: Tue, 14 Mar 2017 17:02:17 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:jdk7`

```console
$ docker pull groovy@sha256:d85d88a6cefed8c65b5e1bb8835655e8acfee729cc6070d00dd64d8128189a3f
```

-	Platforms:
	-	linux; amd64

### `groovy:jdk7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.9 MB (288878760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:179c690baae07b10b07dea5825f003fd6b3dd3fb936530731920ca77e6ff42c4`
-	Default Command: `["groovysh"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 03:41:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 03:41:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Tue, 28 Feb 2017 15:22:08 GMT
ENV JAVA_VERSION=7u121
# Tue, 28 Feb 2017 15:22:08 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Tue, 28 Feb 2017 15:23:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 18:27:16 GMT
CMD ["groovysh"]
# Tue, 14 Mar 2017 16:59:12 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 14 Mar 2017 16:59:13 GMT
ENV GROOVY_VERSION=2.4.9
# Tue, 14 Mar 2017 16:59:18 GMT
RUN set -o errexit -o nounset 	&& echo "Downloading Groovy" 	&& wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Checking download signature" 	&& wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm --recursive "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Adding groovy user and group" 	&& groupadd --system --gid 1000 groovy 	&& useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy 	&& mkdir --parents /home/groovy/.groovy/grapes 	&& chown --recursive groovy:groovy /home/groovy
# Tue, 14 Mar 2017 16:59:18 GMT
USER [groovy]
# Tue, 14 Mar 2017 16:59:19 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 14 Mar 2017 16:59:19 GMT
WORKDIR /home/groovy
# Tue, 14 Mar 2017 16:59:23 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a53adee4b44c6a341116e88f3d45f603a1284c082b01b9ecd2bd5d9642c0d7c`  
		Last Modified: Tue, 28 Feb 2017 21:55:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0dfaeb69835f9abb2ad5b52fe322a94834ebdb9760cf195596fad3909838d7`  
		Last Modified: Tue, 28 Feb 2017 21:55:40 GMT  
		Size: 139.5 MB (139472425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fa41e9aa1ec0bac4ee5d7b6afdbb195a524ee65e1e2d9df41aa62db6105669`  
		Last Modified: Tue, 14 Mar 2017 17:02:20 GMT  
		Size: 36.4 MB (36412078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13ad353ea126961febef94cad49d86adef171c266e7ca37b14e05b9a4c7afb4`  
		Last Modified: Tue, 14 Mar 2017 17:02:17 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:2.4.10-jre7`

**does not exist** (yet?)

## `groovy:2.4-jre7`

```console
$ docker pull groovy@sha256:6e9b172fc0847f2ac9b389e3d902d7fc7636fd8b07b691f54b9dea34f3249775
```

-	Platforms:
	-	linux; amd64

### `groovy:2.4-jre7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.7 MB (184691543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:012b3306268051a16796d6d85a4887f8bdbc8fe6af90035f46f2e68b0cc6613b`
-	Default Command: `["groovysh"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:23:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:23:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:23:27 GMT
ENV JAVA_VERSION=7u121
# Tue, 28 Feb 2017 15:23:27 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Tue, 28 Feb 2017 15:24:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 18:27:26 GMT
CMD ["groovysh"]
# Tue, 14 Mar 2017 16:59:24 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 14 Mar 2017 16:59:24 GMT
ENV GROOVY_VERSION=2.4.9
# Tue, 14 Mar 2017 16:59:28 GMT
RUN set -o errexit -o nounset 	&& echo "Downloading Groovy" 	&& wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Checking download signature" 	&& wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm --recursive "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Adding groovy user and group" 	&& groupadd --system --gid 1000 groovy 	&& useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy 	&& mkdir --parents /home/groovy/.groovy/grapes 	&& chown --recursive groovy:groovy /home/groovy
# Tue, 14 Mar 2017 16:59:29 GMT
USER [groovy]
# Tue, 14 Mar 2017 16:59:29 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 14 Mar 2017 16:59:29 GMT
WORKDIR /home/groovy
# Tue, 14 Mar 2017 16:59:33 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2fd21b2210400e7764782a10451f499b6df86fae6ba5724557871c4b24621ca`  
		Last Modified: Tue, 28 Feb 2017 21:56:47 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67cd8115494e7b08a6478d778d1981e74ddd5eaf074e85e91d748ad3b577f85`  
		Last Modified: Tue, 28 Feb 2017 21:57:07 GMT  
		Size: 77.8 MB (77812863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9972e600f987b835226ccdf8b3644c14addc0c95fce379e62d16e0549e5113`  
		Last Modified: Tue, 14 Mar 2017 17:03:23 GMT  
		Size: 36.4 MB (36412094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a8f6e04554b6c8a4c53308a0951d0b015181e9b03b973e0b6f404d1c8b5f3f`  
		Last Modified: Tue, 14 Mar 2017 17:03:20 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:jre7`

```console
$ docker pull groovy@sha256:6e9b172fc0847f2ac9b389e3d902d7fc7636fd8b07b691f54b9dea34f3249775
```

-	Platforms:
	-	linux; amd64

### `groovy:jre7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.7 MB (184691543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:012b3306268051a16796d6d85a4887f8bdbc8fe6af90035f46f2e68b0cc6613b`
-	Default Command: `["groovysh"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:23:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:23:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:23:27 GMT
ENV JAVA_VERSION=7u121
# Tue, 28 Feb 2017 15:23:27 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Tue, 28 Feb 2017 15:24:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 18:27:26 GMT
CMD ["groovysh"]
# Tue, 14 Mar 2017 16:59:24 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 14 Mar 2017 16:59:24 GMT
ENV GROOVY_VERSION=2.4.9
# Tue, 14 Mar 2017 16:59:28 GMT
RUN set -o errexit -o nounset 	&& echo "Downloading Groovy" 	&& wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Checking download signature" 	&& wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm --recursive "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Adding groovy user and group" 	&& groupadd --system --gid 1000 groovy 	&& useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy 	&& mkdir --parents /home/groovy/.groovy/grapes 	&& chown --recursive groovy:groovy /home/groovy
# Tue, 14 Mar 2017 16:59:29 GMT
USER [groovy]
# Tue, 14 Mar 2017 16:59:29 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 14 Mar 2017 16:59:29 GMT
WORKDIR /home/groovy
# Tue, 14 Mar 2017 16:59:33 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2fd21b2210400e7764782a10451f499b6df86fae6ba5724557871c4b24621ca`  
		Last Modified: Tue, 28 Feb 2017 21:56:47 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67cd8115494e7b08a6478d778d1981e74ddd5eaf074e85e91d748ad3b577f85`  
		Last Modified: Tue, 28 Feb 2017 21:57:07 GMT  
		Size: 77.8 MB (77812863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9972e600f987b835226ccdf8b3644c14addc0c95fce379e62d16e0549e5113`  
		Last Modified: Tue, 14 Mar 2017 17:03:23 GMT  
		Size: 36.4 MB (36412094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a8f6e04554b6c8a4c53308a0951d0b015181e9b03b973e0b6f404d1c8b5f3f`  
		Last Modified: Tue, 14 Mar 2017 17:03:20 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:2.4.10-jdk7-alpine`

**does not exist** (yet?)

## `groovy:2.4-jdk7-alpine`

```console
$ docker pull groovy@sha256:432de7c507adae5943cf3407cc19adca7288d5c980764479b9d280c224d414a0
```

-	Platforms:
	-	linux; amd64

### `groovy:2.4-jdk7-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115740763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8170f63f2f5ce4507434b1389f9a239442c62aeeab184fb2961e7ae9ca341710`
-	Default Command: `["groovysh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:00:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Fri, 03 Mar 2017 22:00:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 03 Mar 2017 22:00:59 GMT
ENV JAVA_VERSION=7u121
# Fri, 03 Mar 2017 22:00:59 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Fri, 03 Mar 2017 22:01:09 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:09:34 GMT
CMD ["groovysh"]
# Tue, 14 Mar 2017 16:59:34 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 14 Mar 2017 16:59:34 GMT
ENV GROOVY_VERSION=2.4.9
# Tue, 14 Mar 2017 16:59:44 GMT
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		openssl 		unzip 		&& echo "Downloading Groovy" 	&& wget -O groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Checking download signature" 	&& wget -O groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm -r "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mkdir /opt 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Applying workaround for https://issues.apache.org/jira/browse/GROOVY-7906" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/grape" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovy" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovyc" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovyConsole" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovydoc" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovysh" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/java2groovy" 		&& echo "Cleaning up build dependencies" 	&& apk del .build-deps 		&& echo "Adding groovy user and group" 	&& addgroup -S -g 1000 groovy 	&& adduser -D -S -G groovy -u 1000 -s /bin/ash groovy 	&& mkdir -p /home/groovy/.groovy/grapes 	&& chown -R groovy:groovy /home/groovy
# Tue, 14 Mar 2017 16:59:45 GMT
USER [groovy]
# Tue, 14 Mar 2017 16:59:45 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 14 Mar 2017 16:59:45 GMT
WORKDIR /home/groovy
# Tue, 14 Mar 2017 16:59:49 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:813a1a00513cab49fcb6584abe3ba296279d0561ecfc7335b705d6e8eb1726c1`  
		Last Modified: Sat, 04 Mar 2017 01:28:34 GMT  
		Size: 75.6 MB (75585206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199aad54edd57b5f84f4d525652182112db9511d61a24a1c6d55e9e3fbd6fbd9`  
		Last Modified: Tue, 14 Mar 2017 17:04:28 GMT  
		Size: 37.8 MB (37841804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729bf26071049fd8bfd97cfe3620b5568380d71f34fbb6025925e17729d0ba48`  
		Last Modified: Tue, 14 Mar 2017 17:04:24 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:jdk7-alpine`

```console
$ docker pull groovy@sha256:432de7c507adae5943cf3407cc19adca7288d5c980764479b9d280c224d414a0
```

-	Platforms:
	-	linux; amd64

### `groovy:jdk7-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115740763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8170f63f2f5ce4507434b1389f9a239442c62aeeab184fb2961e7ae9ca341710`
-	Default Command: `["groovysh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:00:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Fri, 03 Mar 2017 22:00:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 03 Mar 2017 22:00:59 GMT
ENV JAVA_VERSION=7u121
# Fri, 03 Mar 2017 22:00:59 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Fri, 03 Mar 2017 22:01:09 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:09:34 GMT
CMD ["groovysh"]
# Tue, 14 Mar 2017 16:59:34 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 14 Mar 2017 16:59:34 GMT
ENV GROOVY_VERSION=2.4.9
# Tue, 14 Mar 2017 16:59:44 GMT
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		openssl 		unzip 		&& echo "Downloading Groovy" 	&& wget -O groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Checking download signature" 	&& wget -O groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm -r "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mkdir /opt 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Applying workaround for https://issues.apache.org/jira/browse/GROOVY-7906" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/grape" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovy" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovyc" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovyConsole" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovydoc" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovysh" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/java2groovy" 		&& echo "Cleaning up build dependencies" 	&& apk del .build-deps 		&& echo "Adding groovy user and group" 	&& addgroup -S -g 1000 groovy 	&& adduser -D -S -G groovy -u 1000 -s /bin/ash groovy 	&& mkdir -p /home/groovy/.groovy/grapes 	&& chown -R groovy:groovy /home/groovy
# Tue, 14 Mar 2017 16:59:45 GMT
USER [groovy]
# Tue, 14 Mar 2017 16:59:45 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 14 Mar 2017 16:59:45 GMT
WORKDIR /home/groovy
# Tue, 14 Mar 2017 16:59:49 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:813a1a00513cab49fcb6584abe3ba296279d0561ecfc7335b705d6e8eb1726c1`  
		Last Modified: Sat, 04 Mar 2017 01:28:34 GMT  
		Size: 75.6 MB (75585206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199aad54edd57b5f84f4d525652182112db9511d61a24a1c6d55e9e3fbd6fbd9`  
		Last Modified: Tue, 14 Mar 2017 17:04:28 GMT  
		Size: 37.8 MB (37841804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729bf26071049fd8bfd97cfe3620b5568380d71f34fbb6025925e17729d0ba48`  
		Last Modified: Tue, 14 Mar 2017 17:04:24 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:2.4.10-jre7-alpine`

**does not exist** (yet?)

## `groovy:2.4-jre7-alpine`

```console
$ docker pull groovy@sha256:fd55abab774bb55f0bbd0b6e16543758a3e7446421adeceb1e70ae1a5dffa98c
```

-	Platforms:
	-	linux; amd64

### `groovy:2.4-jre7-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.5 MB (99491620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c730db09a1508df2e9c9c6fd43c7780df1579c215038cb80ee1e071bba3e5d5`
-	Default Command: `["groovysh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Fri, 03 Mar 2017 22:01:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 03 Mar 2017 22:01:10 GMT
ENV JAVA_VERSION=7u121
# Fri, 03 Mar 2017 22:01:11 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Fri, 03 Mar 2017 22:01:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:09:48 GMT
CMD ["groovysh"]
# Tue, 14 Mar 2017 16:59:50 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 14 Mar 2017 16:59:50 GMT
ENV GROOVY_VERSION=2.4.9
# Tue, 14 Mar 2017 16:59:59 GMT
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		openssl 		unzip 		&& echo "Downloading Groovy" 	&& wget -O groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Checking download signature" 	&& wget -O groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm -r "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mkdir /opt 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Applying workaround for https://issues.apache.org/jira/browse/GROOVY-7906" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/grape" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovy" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovyc" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovyConsole" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovydoc" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovysh" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/java2groovy" 		&& echo "Cleaning up build dependencies" 	&& apk del .build-deps 		&& echo "Adding groovy user and group" 	&& addgroup -S -g 1000 groovy 	&& adduser -D -S -G groovy -u 1000 -s /bin/ash groovy 	&& mkdir -p /home/groovy/.groovy/grapes 	&& chown -R groovy:groovy /home/groovy
# Tue, 14 Mar 2017 17:00:00 GMT
USER [groovy]
# Tue, 14 Mar 2017 17:00:00 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 14 Mar 2017 17:00:01 GMT
WORKDIR /home/groovy
# Tue, 14 Mar 2017 17:00:04 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00931970f016de39c34343b7c5f5974d896c296f713fcd3102c5afe0b3ac15a8`  
		Last Modified: Sat, 04 Mar 2017 02:10:53 GMT  
		Size: 59.3 MB (59347767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6823a5d41476743df10f0e764bce51d4681b22263aa2165703e4f66f1e1ccef`  
		Last Modified: Tue, 14 Mar 2017 17:05:32 GMT  
		Size: 37.8 MB (37830101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8535d2a3238086248d8f2b7684cb7970c72a5bff828e7252d6d74bf46ac417f4`  
		Last Modified: Tue, 14 Mar 2017 17:05:27 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:jre7-alpine`

```console
$ docker pull groovy@sha256:fd55abab774bb55f0bbd0b6e16543758a3e7446421adeceb1e70ae1a5dffa98c
```

-	Platforms:
	-	linux; amd64

### `groovy:jre7-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.5 MB (99491620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c730db09a1508df2e9c9c6fd43c7780df1579c215038cb80ee1e071bba3e5d5`
-	Default Command: `["groovysh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Fri, 03 Mar 2017 22:01:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 03 Mar 2017 22:01:10 GMT
ENV JAVA_VERSION=7u121
# Fri, 03 Mar 2017 22:01:11 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Fri, 03 Mar 2017 22:01:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:09:48 GMT
CMD ["groovysh"]
# Tue, 14 Mar 2017 16:59:50 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 14 Mar 2017 16:59:50 GMT
ENV GROOVY_VERSION=2.4.9
# Tue, 14 Mar 2017 16:59:59 GMT
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		openssl 		unzip 		&& echo "Downloading Groovy" 	&& wget -O groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Checking download signature" 	&& wget -O groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm -r "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mkdir /opt 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Applying workaround for https://issues.apache.org/jira/browse/GROOVY-7906" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/grape" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovy" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovyc" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovyConsole" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovydoc" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovysh" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/java2groovy" 		&& echo "Cleaning up build dependencies" 	&& apk del .build-deps 		&& echo "Adding groovy user and group" 	&& addgroup -S -g 1000 groovy 	&& adduser -D -S -G groovy -u 1000 -s /bin/ash groovy 	&& mkdir -p /home/groovy/.groovy/grapes 	&& chown -R groovy:groovy /home/groovy
# Tue, 14 Mar 2017 17:00:00 GMT
USER [groovy]
# Tue, 14 Mar 2017 17:00:00 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 14 Mar 2017 17:00:01 GMT
WORKDIR /home/groovy
# Tue, 14 Mar 2017 17:00:04 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00931970f016de39c34343b7c5f5974d896c296f713fcd3102c5afe0b3ac15a8`  
		Last Modified: Sat, 04 Mar 2017 02:10:53 GMT  
		Size: 59.3 MB (59347767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6823a5d41476743df10f0e764bce51d4681b22263aa2165703e4f66f1e1ccef`  
		Last Modified: Tue, 14 Mar 2017 17:05:32 GMT  
		Size: 37.8 MB (37830101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8535d2a3238086248d8f2b7684cb7970c72a5bff828e7252d6d74bf46ac417f4`  
		Last Modified: Tue, 14 Mar 2017 17:05:27 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:2.4.10-jdk8`

**does not exist** (yet?)

## `groovy:2.4-jdk8`

```console
$ docker pull groovy@sha256:98f485799a0208f10024665381628a2942b8c9583b8fbd4e00c3aea95c2b2ae6
```

-	Platforms:
	-	linux; amd64

### `groovy:2.4-jdk8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (280011111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa93cf516cdccac8d41052014670c4c94a71c1863409a7eebeb4dab669742005`
-	Default Command: `["groovysh"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 28 Feb 2017 18:28:02 GMT
CMD ["groovysh"]
# Tue, 14 Mar 2017 17:00:05 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 14 Mar 2017 17:00:05 GMT
ENV GROOVY_VERSION=2.4.9
# Tue, 14 Mar 2017 17:00:09 GMT
RUN set -o errexit -o nounset 	&& echo "Downloading Groovy" 	&& wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Checking download signature" 	&& wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm --recursive "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Adding groovy user and group" 	&& groupadd --system --gid 1000 groovy 	&& useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy 	&& mkdir --parents /home/groovy/.groovy/grapes 	&& chown --recursive groovy:groovy /home/groovy
# Tue, 14 Mar 2017 17:00:10 GMT
USER [groovy]
# Tue, 14 Mar 2017 17:00:10 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 14 Mar 2017 17:00:11 GMT
WORKDIR /home/groovy
# Tue, 14 Mar 2017 17:00:17 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ac206f50b0c3bb7caa36318382ac9b6afb1afe843e4351ef31c19433b1cd1e`  
		Last Modified: Tue, 14 Mar 2017 17:06:35 GMT  
		Size: 36.4 MB (36412082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48020618a76efb2a976b1944fef3322bb1f6613fc7be090a76edf5ebbb4c2989`  
		Last Modified: Tue, 14 Mar 2017 17:06:31 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:jdk8`

```console
$ docker pull groovy@sha256:98f485799a0208f10024665381628a2942b8c9583b8fbd4e00c3aea95c2b2ae6
```

-	Platforms:
	-	linux; amd64

### `groovy:jdk8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (280011111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa93cf516cdccac8d41052014670c4c94a71c1863409a7eebeb4dab669742005`
-	Default Command: `["groovysh"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 28 Feb 2017 18:28:02 GMT
CMD ["groovysh"]
# Tue, 14 Mar 2017 17:00:05 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 14 Mar 2017 17:00:05 GMT
ENV GROOVY_VERSION=2.4.9
# Tue, 14 Mar 2017 17:00:09 GMT
RUN set -o errexit -o nounset 	&& echo "Downloading Groovy" 	&& wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Checking download signature" 	&& wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm --recursive "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Adding groovy user and group" 	&& groupadd --system --gid 1000 groovy 	&& useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy 	&& mkdir --parents /home/groovy/.groovy/grapes 	&& chown --recursive groovy:groovy /home/groovy
# Tue, 14 Mar 2017 17:00:10 GMT
USER [groovy]
# Tue, 14 Mar 2017 17:00:10 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 14 Mar 2017 17:00:11 GMT
WORKDIR /home/groovy
# Tue, 14 Mar 2017 17:00:17 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ac206f50b0c3bb7caa36318382ac9b6afb1afe843e4351ef31c19433b1cd1e`  
		Last Modified: Tue, 14 Mar 2017 17:06:35 GMT  
		Size: 36.4 MB (36412082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48020618a76efb2a976b1944fef3322bb1f6613fc7be090a76edf5ebbb4c2989`  
		Last Modified: Tue, 14 Mar 2017 17:06:31 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:2.4.10-jdk`

**does not exist** (yet?)

## `groovy:2.4-jdk`

```console
$ docker pull groovy@sha256:98f485799a0208f10024665381628a2942b8c9583b8fbd4e00c3aea95c2b2ae6
```

-	Platforms:
	-	linux; amd64

### `groovy:2.4-jdk` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (280011111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa93cf516cdccac8d41052014670c4c94a71c1863409a7eebeb4dab669742005`
-	Default Command: `["groovysh"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 28 Feb 2017 18:28:02 GMT
CMD ["groovysh"]
# Tue, 14 Mar 2017 17:00:05 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 14 Mar 2017 17:00:05 GMT
ENV GROOVY_VERSION=2.4.9
# Tue, 14 Mar 2017 17:00:09 GMT
RUN set -o errexit -o nounset 	&& echo "Downloading Groovy" 	&& wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Checking download signature" 	&& wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm --recursive "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Adding groovy user and group" 	&& groupadd --system --gid 1000 groovy 	&& useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy 	&& mkdir --parents /home/groovy/.groovy/grapes 	&& chown --recursive groovy:groovy /home/groovy
# Tue, 14 Mar 2017 17:00:10 GMT
USER [groovy]
# Tue, 14 Mar 2017 17:00:10 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 14 Mar 2017 17:00:11 GMT
WORKDIR /home/groovy
# Tue, 14 Mar 2017 17:00:17 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ac206f50b0c3bb7caa36318382ac9b6afb1afe843e4351ef31c19433b1cd1e`  
		Last Modified: Tue, 14 Mar 2017 17:06:35 GMT  
		Size: 36.4 MB (36412082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48020618a76efb2a976b1944fef3322bb1f6613fc7be090a76edf5ebbb4c2989`  
		Last Modified: Tue, 14 Mar 2017 17:06:31 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:jdk`

```console
$ docker pull groovy@sha256:98f485799a0208f10024665381628a2942b8c9583b8fbd4e00c3aea95c2b2ae6
```

-	Platforms:
	-	linux; amd64

### `groovy:jdk` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (280011111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa93cf516cdccac8d41052014670c4c94a71c1863409a7eebeb4dab669742005`
-	Default Command: `["groovysh"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 28 Feb 2017 18:28:02 GMT
CMD ["groovysh"]
# Tue, 14 Mar 2017 17:00:05 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 14 Mar 2017 17:00:05 GMT
ENV GROOVY_VERSION=2.4.9
# Tue, 14 Mar 2017 17:00:09 GMT
RUN set -o errexit -o nounset 	&& echo "Downloading Groovy" 	&& wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Checking download signature" 	&& wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm --recursive "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Adding groovy user and group" 	&& groupadd --system --gid 1000 groovy 	&& useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy 	&& mkdir --parents /home/groovy/.groovy/grapes 	&& chown --recursive groovy:groovy /home/groovy
# Tue, 14 Mar 2017 17:00:10 GMT
USER [groovy]
# Tue, 14 Mar 2017 17:00:10 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 14 Mar 2017 17:00:11 GMT
WORKDIR /home/groovy
# Tue, 14 Mar 2017 17:00:17 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ac206f50b0c3bb7caa36318382ac9b6afb1afe843e4351ef31c19433b1cd1e`  
		Last Modified: Tue, 14 Mar 2017 17:06:35 GMT  
		Size: 36.4 MB (36412082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48020618a76efb2a976b1944fef3322bb1f6613fc7be090a76edf5ebbb4c2989`  
		Last Modified: Tue, 14 Mar 2017 17:06:31 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:2.4.10-jre8`

**does not exist** (yet?)

## `groovy:2.4-jre8`

```console
$ docker pull groovy@sha256:0b8bf76fa256d7856fb011c422464221e74581fd3bebd5ada12c43e49e19d188
```

-	Platforms:
	-	linux; amd64

### `groovy:2.4-jre8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160686429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70d70759d4ce9d65afacbb60718ec414fcce1f15e888479a519df2915948cd8b`
-	Default Command: `["groovysh"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 28 Feb 2017 18:28:09 GMT
CMD ["groovysh"]
# Tue, 14 Mar 2017 17:00:18 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 14 Mar 2017 17:00:18 GMT
ENV GROOVY_VERSION=2.4.9
# Tue, 14 Mar 2017 17:00:22 GMT
RUN set -o errexit -o nounset 	&& echo "Downloading Groovy" 	&& wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Checking download signature" 	&& wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm --recursive "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Adding groovy user and group" 	&& groupadd --system --gid 1000 groovy 	&& useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy 	&& mkdir --parents /home/groovy/.groovy/grapes 	&& chown --recursive groovy:groovy /home/groovy
# Tue, 14 Mar 2017 17:00:23 GMT
USER [groovy]
# Tue, 14 Mar 2017 17:00:23 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 14 Mar 2017 17:00:23 GMT
WORKDIR /home/groovy
# Tue, 14 Mar 2017 17:00:30 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b989f7a74ffbb1fd4ac2bc11a108595b9dedbae8a1d0877cd2c648198bd1ea66`  
		Last Modified: Tue, 14 Mar 2017 17:08:35 GMT  
		Size: 36.4 MB (36412077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f17674032721c63c9d6f26024299725b826ba5fb81c5fc64615c927144cbfa5`  
		Last Modified: Tue, 14 Mar 2017 17:08:30 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:jre8`

```console
$ docker pull groovy@sha256:0b8bf76fa256d7856fb011c422464221e74581fd3bebd5ada12c43e49e19d188
```

-	Platforms:
	-	linux; amd64

### `groovy:jre8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160686429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70d70759d4ce9d65afacbb60718ec414fcce1f15e888479a519df2915948cd8b`
-	Default Command: `["groovysh"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 28 Feb 2017 18:28:09 GMT
CMD ["groovysh"]
# Tue, 14 Mar 2017 17:00:18 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 14 Mar 2017 17:00:18 GMT
ENV GROOVY_VERSION=2.4.9
# Tue, 14 Mar 2017 17:00:22 GMT
RUN set -o errexit -o nounset 	&& echo "Downloading Groovy" 	&& wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Checking download signature" 	&& wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm --recursive "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Adding groovy user and group" 	&& groupadd --system --gid 1000 groovy 	&& useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy 	&& mkdir --parents /home/groovy/.groovy/grapes 	&& chown --recursive groovy:groovy /home/groovy
# Tue, 14 Mar 2017 17:00:23 GMT
USER [groovy]
# Tue, 14 Mar 2017 17:00:23 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 14 Mar 2017 17:00:23 GMT
WORKDIR /home/groovy
# Tue, 14 Mar 2017 17:00:30 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b989f7a74ffbb1fd4ac2bc11a108595b9dedbae8a1d0877cd2c648198bd1ea66`  
		Last Modified: Tue, 14 Mar 2017 17:08:35 GMT  
		Size: 36.4 MB (36412077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f17674032721c63c9d6f26024299725b826ba5fb81c5fc64615c927144cbfa5`  
		Last Modified: Tue, 14 Mar 2017 17:08:30 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:2.4.10-jre`

**does not exist** (yet?)

## `groovy:2.4-jre`

```console
$ docker pull groovy@sha256:0b8bf76fa256d7856fb011c422464221e74581fd3bebd5ada12c43e49e19d188
```

-	Platforms:
	-	linux; amd64

### `groovy:2.4-jre` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160686429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70d70759d4ce9d65afacbb60718ec414fcce1f15e888479a519df2915948cd8b`
-	Default Command: `["groovysh"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 28 Feb 2017 18:28:09 GMT
CMD ["groovysh"]
# Tue, 14 Mar 2017 17:00:18 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 14 Mar 2017 17:00:18 GMT
ENV GROOVY_VERSION=2.4.9
# Tue, 14 Mar 2017 17:00:22 GMT
RUN set -o errexit -o nounset 	&& echo "Downloading Groovy" 	&& wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Checking download signature" 	&& wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm --recursive "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Adding groovy user and group" 	&& groupadd --system --gid 1000 groovy 	&& useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy 	&& mkdir --parents /home/groovy/.groovy/grapes 	&& chown --recursive groovy:groovy /home/groovy
# Tue, 14 Mar 2017 17:00:23 GMT
USER [groovy]
# Tue, 14 Mar 2017 17:00:23 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 14 Mar 2017 17:00:23 GMT
WORKDIR /home/groovy
# Tue, 14 Mar 2017 17:00:30 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b989f7a74ffbb1fd4ac2bc11a108595b9dedbae8a1d0877cd2c648198bd1ea66`  
		Last Modified: Tue, 14 Mar 2017 17:08:35 GMT  
		Size: 36.4 MB (36412077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f17674032721c63c9d6f26024299725b826ba5fb81c5fc64615c927144cbfa5`  
		Last Modified: Tue, 14 Mar 2017 17:08:30 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:jre`

```console
$ docker pull groovy@sha256:0b8bf76fa256d7856fb011c422464221e74581fd3bebd5ada12c43e49e19d188
```

-	Platforms:
	-	linux; amd64

### `groovy:jre` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160686429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70d70759d4ce9d65afacbb60718ec414fcce1f15e888479a519df2915948cd8b`
-	Default Command: `["groovysh"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 28 Feb 2017 18:28:09 GMT
CMD ["groovysh"]
# Tue, 14 Mar 2017 17:00:18 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 14 Mar 2017 17:00:18 GMT
ENV GROOVY_VERSION=2.4.9
# Tue, 14 Mar 2017 17:00:22 GMT
RUN set -o errexit -o nounset 	&& echo "Downloading Groovy" 	&& wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Checking download signature" 	&& wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm --recursive "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Adding groovy user and group" 	&& groupadd --system --gid 1000 groovy 	&& useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy 	&& mkdir --parents /home/groovy/.groovy/grapes 	&& chown --recursive groovy:groovy /home/groovy
# Tue, 14 Mar 2017 17:00:23 GMT
USER [groovy]
# Tue, 14 Mar 2017 17:00:23 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 14 Mar 2017 17:00:23 GMT
WORKDIR /home/groovy
# Tue, 14 Mar 2017 17:00:30 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b989f7a74ffbb1fd4ac2bc11a108595b9dedbae8a1d0877cd2c648198bd1ea66`  
		Last Modified: Tue, 14 Mar 2017 17:08:35 GMT  
		Size: 36.4 MB (36412077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f17674032721c63c9d6f26024299725b826ba5fb81c5fc64615c927144cbfa5`  
		Last Modified: Tue, 14 Mar 2017 17:08:30 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:2.4.10`

**does not exist** (yet?)

## `groovy:2.4`

```console
$ docker pull groovy@sha256:0b8bf76fa256d7856fb011c422464221e74581fd3bebd5ada12c43e49e19d188
```

-	Platforms:
	-	linux; amd64

### `groovy:2.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160686429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70d70759d4ce9d65afacbb60718ec414fcce1f15e888479a519df2915948cd8b`
-	Default Command: `["groovysh"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 28 Feb 2017 18:28:09 GMT
CMD ["groovysh"]
# Tue, 14 Mar 2017 17:00:18 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 14 Mar 2017 17:00:18 GMT
ENV GROOVY_VERSION=2.4.9
# Tue, 14 Mar 2017 17:00:22 GMT
RUN set -o errexit -o nounset 	&& echo "Downloading Groovy" 	&& wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Checking download signature" 	&& wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm --recursive "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Adding groovy user and group" 	&& groupadd --system --gid 1000 groovy 	&& useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy 	&& mkdir --parents /home/groovy/.groovy/grapes 	&& chown --recursive groovy:groovy /home/groovy
# Tue, 14 Mar 2017 17:00:23 GMT
USER [groovy]
# Tue, 14 Mar 2017 17:00:23 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 14 Mar 2017 17:00:23 GMT
WORKDIR /home/groovy
# Tue, 14 Mar 2017 17:00:30 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b989f7a74ffbb1fd4ac2bc11a108595b9dedbae8a1d0877cd2c648198bd1ea66`  
		Last Modified: Tue, 14 Mar 2017 17:08:35 GMT  
		Size: 36.4 MB (36412077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f17674032721c63c9d6f26024299725b826ba5fb81c5fc64615c927144cbfa5`  
		Last Modified: Tue, 14 Mar 2017 17:08:30 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:latest`

```console
$ docker pull groovy@sha256:0b8bf76fa256d7856fb011c422464221e74581fd3bebd5ada12c43e49e19d188
```

-	Platforms:
	-	linux; amd64

### `groovy:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160686429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70d70759d4ce9d65afacbb60718ec414fcce1f15e888479a519df2915948cd8b`
-	Default Command: `["groovysh"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 28 Feb 2017 18:28:09 GMT
CMD ["groovysh"]
# Tue, 14 Mar 2017 17:00:18 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 14 Mar 2017 17:00:18 GMT
ENV GROOVY_VERSION=2.4.9
# Tue, 14 Mar 2017 17:00:22 GMT
RUN set -o errexit -o nounset 	&& echo "Downloading Groovy" 	&& wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Checking download signature" 	&& wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm --recursive "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Adding groovy user and group" 	&& groupadd --system --gid 1000 groovy 	&& useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy 	&& mkdir --parents /home/groovy/.groovy/grapes 	&& chown --recursive groovy:groovy /home/groovy
# Tue, 14 Mar 2017 17:00:23 GMT
USER [groovy]
# Tue, 14 Mar 2017 17:00:23 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 14 Mar 2017 17:00:23 GMT
WORKDIR /home/groovy
# Tue, 14 Mar 2017 17:00:30 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b989f7a74ffbb1fd4ac2bc11a108595b9dedbae8a1d0877cd2c648198bd1ea66`  
		Last Modified: Tue, 14 Mar 2017 17:08:35 GMT  
		Size: 36.4 MB (36412077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f17674032721c63c9d6f26024299725b826ba5fb81c5fc64615c927144cbfa5`  
		Last Modified: Tue, 14 Mar 2017 17:08:30 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:2.4.10-jdk8-alpine`

**does not exist** (yet?)

## `groovy:2.4-jdk8-alpine`

```console
$ docker pull groovy@sha256:80f0fc27eb2e82a47f8d8ec91018a2b328b76bd370553665ab8afbee55e661fc
```

-	Platforms:
	-	linux; amd64

### `groovy:2.4-jdk8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109269405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6a706da9a63903559ee5b23a6db5db6b3e99ce8f8315e026ac2d79f43c5ce13`
-	Default Command: `["groovysh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 07 Mar 2017 01:04:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 18:07:44 GMT
CMD ["groovysh"]
# Tue, 14 Mar 2017 17:00:31 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 14 Mar 2017 17:00:32 GMT
ENV GROOVY_VERSION=2.4.9
# Tue, 14 Mar 2017 17:00:40 GMT
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		openssl 		unzip 		&& echo "Downloading Groovy" 	&& wget -O groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Checking download signature" 	&& wget -O groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm -r "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mkdir /opt 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Applying workaround for https://issues.apache.org/jira/browse/GROOVY-7906" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/grape" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovy" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovyc" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovyConsole" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovydoc" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovysh" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/java2groovy" 		&& echo "Cleaning up build dependencies" 	&& apk del .build-deps 		&& echo "Adding groovy user and group" 	&& addgroup -S -g 1000 groovy 	&& adduser -D -S -G groovy -u 1000 -s /bin/ash groovy 	&& mkdir -p /home/groovy/.groovy/grapes 	&& chown -R groovy:groovy /home/groovy
# Tue, 14 Mar 2017 17:00:41 GMT
USER [groovy]
# Tue, 14 Mar 2017 17:00:41 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 14 Mar 2017 17:00:42 GMT
WORKDIR /home/groovy
# Tue, 14 Mar 2017 17:00:46 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e00029ebfe30f96f53c89cd3c838b89876ee212cbb545e8ac5c70698c1818f1`  
		Last Modified: Tue, 07 Mar 2017 01:12:59 GMT  
		Size: 69.6 MB (69564916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f46c4ab55f0e09314e015f0ea0e6d29ecd9dd9e3630b902c9bb7ffd358aa17`  
		Last Modified: Tue, 14 Mar 2017 17:11:30 GMT  
		Size: 37.8 MB (37798845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bebeaf5a6320c0c3ad0f1cc8f24da9d32eea1ca8c7deb9cad79804b236254a`  
		Last Modified: Tue, 14 Mar 2017 17:11:26 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:jdk8-alpine`

```console
$ docker pull groovy@sha256:80f0fc27eb2e82a47f8d8ec91018a2b328b76bd370553665ab8afbee55e661fc
```

-	Platforms:
	-	linux; amd64

### `groovy:jdk8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109269405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6a706da9a63903559ee5b23a6db5db6b3e99ce8f8315e026ac2d79f43c5ce13`
-	Default Command: `["groovysh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 07 Mar 2017 01:04:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 18:07:44 GMT
CMD ["groovysh"]
# Tue, 14 Mar 2017 17:00:31 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 14 Mar 2017 17:00:32 GMT
ENV GROOVY_VERSION=2.4.9
# Tue, 14 Mar 2017 17:00:40 GMT
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		openssl 		unzip 		&& echo "Downloading Groovy" 	&& wget -O groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Checking download signature" 	&& wget -O groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm -r "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mkdir /opt 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Applying workaround for https://issues.apache.org/jira/browse/GROOVY-7906" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/grape" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovy" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovyc" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovyConsole" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovydoc" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovysh" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/java2groovy" 		&& echo "Cleaning up build dependencies" 	&& apk del .build-deps 		&& echo "Adding groovy user and group" 	&& addgroup -S -g 1000 groovy 	&& adduser -D -S -G groovy -u 1000 -s /bin/ash groovy 	&& mkdir -p /home/groovy/.groovy/grapes 	&& chown -R groovy:groovy /home/groovy
# Tue, 14 Mar 2017 17:00:41 GMT
USER [groovy]
# Tue, 14 Mar 2017 17:00:41 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 14 Mar 2017 17:00:42 GMT
WORKDIR /home/groovy
# Tue, 14 Mar 2017 17:00:46 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e00029ebfe30f96f53c89cd3c838b89876ee212cbb545e8ac5c70698c1818f1`  
		Last Modified: Tue, 07 Mar 2017 01:12:59 GMT  
		Size: 69.6 MB (69564916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f46c4ab55f0e09314e015f0ea0e6d29ecd9dd9e3630b902c9bb7ffd358aa17`  
		Last Modified: Tue, 14 Mar 2017 17:11:30 GMT  
		Size: 37.8 MB (37798845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bebeaf5a6320c0c3ad0f1cc8f24da9d32eea1ca8c7deb9cad79804b236254a`  
		Last Modified: Tue, 14 Mar 2017 17:11:26 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:2.4.10-jdk-alpine`

**does not exist** (yet?)

## `groovy:2.4-jdk-alpine`

```console
$ docker pull groovy@sha256:80f0fc27eb2e82a47f8d8ec91018a2b328b76bd370553665ab8afbee55e661fc
```

-	Platforms:
	-	linux; amd64

### `groovy:2.4-jdk-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109269405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6a706da9a63903559ee5b23a6db5db6b3e99ce8f8315e026ac2d79f43c5ce13`
-	Default Command: `["groovysh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 07 Mar 2017 01:04:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 18:07:44 GMT
CMD ["groovysh"]
# Tue, 14 Mar 2017 17:00:31 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 14 Mar 2017 17:00:32 GMT
ENV GROOVY_VERSION=2.4.9
# Tue, 14 Mar 2017 17:00:40 GMT
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		openssl 		unzip 		&& echo "Downloading Groovy" 	&& wget -O groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Checking download signature" 	&& wget -O groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm -r "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mkdir /opt 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Applying workaround for https://issues.apache.org/jira/browse/GROOVY-7906" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/grape" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovy" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovyc" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovyConsole" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovydoc" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovysh" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/java2groovy" 		&& echo "Cleaning up build dependencies" 	&& apk del .build-deps 		&& echo "Adding groovy user and group" 	&& addgroup -S -g 1000 groovy 	&& adduser -D -S -G groovy -u 1000 -s /bin/ash groovy 	&& mkdir -p /home/groovy/.groovy/grapes 	&& chown -R groovy:groovy /home/groovy
# Tue, 14 Mar 2017 17:00:41 GMT
USER [groovy]
# Tue, 14 Mar 2017 17:00:41 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 14 Mar 2017 17:00:42 GMT
WORKDIR /home/groovy
# Tue, 14 Mar 2017 17:00:46 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e00029ebfe30f96f53c89cd3c838b89876ee212cbb545e8ac5c70698c1818f1`  
		Last Modified: Tue, 07 Mar 2017 01:12:59 GMT  
		Size: 69.6 MB (69564916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f46c4ab55f0e09314e015f0ea0e6d29ecd9dd9e3630b902c9bb7ffd358aa17`  
		Last Modified: Tue, 14 Mar 2017 17:11:30 GMT  
		Size: 37.8 MB (37798845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bebeaf5a6320c0c3ad0f1cc8f24da9d32eea1ca8c7deb9cad79804b236254a`  
		Last Modified: Tue, 14 Mar 2017 17:11:26 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:jdk-alpine`

```console
$ docker pull groovy@sha256:80f0fc27eb2e82a47f8d8ec91018a2b328b76bd370553665ab8afbee55e661fc
```

-	Platforms:
	-	linux; amd64

### `groovy:jdk-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109269405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6a706da9a63903559ee5b23a6db5db6b3e99ce8f8315e026ac2d79f43c5ce13`
-	Default Command: `["groovysh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 07 Mar 2017 01:04:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 18:07:44 GMT
CMD ["groovysh"]
# Tue, 14 Mar 2017 17:00:31 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 14 Mar 2017 17:00:32 GMT
ENV GROOVY_VERSION=2.4.9
# Tue, 14 Mar 2017 17:00:40 GMT
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		openssl 		unzip 		&& echo "Downloading Groovy" 	&& wget -O groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Checking download signature" 	&& wget -O groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm -r "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mkdir /opt 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Applying workaround for https://issues.apache.org/jira/browse/GROOVY-7906" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/grape" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovy" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovyc" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovyConsole" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovydoc" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovysh" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/java2groovy" 		&& echo "Cleaning up build dependencies" 	&& apk del .build-deps 		&& echo "Adding groovy user and group" 	&& addgroup -S -g 1000 groovy 	&& adduser -D -S -G groovy -u 1000 -s /bin/ash groovy 	&& mkdir -p /home/groovy/.groovy/grapes 	&& chown -R groovy:groovy /home/groovy
# Tue, 14 Mar 2017 17:00:41 GMT
USER [groovy]
# Tue, 14 Mar 2017 17:00:41 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 14 Mar 2017 17:00:42 GMT
WORKDIR /home/groovy
# Tue, 14 Mar 2017 17:00:46 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e00029ebfe30f96f53c89cd3c838b89876ee212cbb545e8ac5c70698c1818f1`  
		Last Modified: Tue, 07 Mar 2017 01:12:59 GMT  
		Size: 69.6 MB (69564916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f46c4ab55f0e09314e015f0ea0e6d29ecd9dd9e3630b902c9bb7ffd358aa17`  
		Last Modified: Tue, 14 Mar 2017 17:11:30 GMT  
		Size: 37.8 MB (37798845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67bebeaf5a6320c0c3ad0f1cc8f24da9d32eea1ca8c7deb9cad79804b236254a`  
		Last Modified: Tue, 14 Mar 2017 17:11:26 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:2.4.10-jre8-alpine`

**does not exist** (yet?)

## `groovy:2.4-jre8-alpine`

```console
$ docker pull groovy@sha256:961a457ab11a6fb1dc7dea1b0f45453c690f81902e09bbfe5859dfe7503242ee
```

-	Platforms:
	-	linux; amd64

### `groovy:2.4-jre8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.5 MB (93514161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca1bce5b11c3a68018ebafa3401d7de11e6afbae5fdefb9421a91d2f7f046b1`
-	Default Command: `["groovysh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 18:08:33 GMT
CMD ["groovysh"]
# Tue, 14 Mar 2017 17:00:47 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 14 Mar 2017 17:00:48 GMT
ENV GROOVY_VERSION=2.4.9
# Tue, 14 Mar 2017 17:00:56 GMT
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		openssl 		unzip 		&& echo "Downloading Groovy" 	&& wget -O groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Checking download signature" 	&& wget -O groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm -r "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mkdir /opt 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Applying workaround for https://issues.apache.org/jira/browse/GROOVY-7906" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/grape" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovy" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovyc" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovyConsole" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovydoc" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovysh" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/java2groovy" 		&& echo "Cleaning up build dependencies" 	&& apk del .build-deps 		&& echo "Adding groovy user and group" 	&& addgroup -S -g 1000 groovy 	&& adduser -D -S -G groovy -u 1000 -s /bin/ash groovy 	&& mkdir -p /home/groovy/.groovy/grapes 	&& chown -R groovy:groovy /home/groovy
# Tue, 14 Mar 2017 17:00:57 GMT
USER [groovy]
# Tue, 14 Mar 2017 17:00:57 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 14 Mar 2017 17:00:57 GMT
WORKDIR /home/groovy
# Tue, 14 Mar 2017 17:01:02 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89268e3bf5cf7b1f936709875aa49c2a87cde45ccc7b35e9092326852e3628b`  
		Last Modified: Tue, 14 Mar 2017 17:13:26 GMT  
		Size: 37.8 MB (37797426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d97ef2b1fd62616928cd1310dba4d12a96cda854344ac6ccf814bd43956d85b`  
		Last Modified: Tue, 14 Mar 2017 17:13:23 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:jre8-alpine`

```console
$ docker pull groovy@sha256:961a457ab11a6fb1dc7dea1b0f45453c690f81902e09bbfe5859dfe7503242ee
```

-	Platforms:
	-	linux; amd64

### `groovy:jre8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.5 MB (93514161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca1bce5b11c3a68018ebafa3401d7de11e6afbae5fdefb9421a91d2f7f046b1`
-	Default Command: `["groovysh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 18:08:33 GMT
CMD ["groovysh"]
# Tue, 14 Mar 2017 17:00:47 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 14 Mar 2017 17:00:48 GMT
ENV GROOVY_VERSION=2.4.9
# Tue, 14 Mar 2017 17:00:56 GMT
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		openssl 		unzip 		&& echo "Downloading Groovy" 	&& wget -O groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Checking download signature" 	&& wget -O groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm -r "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mkdir /opt 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Applying workaround for https://issues.apache.org/jira/browse/GROOVY-7906" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/grape" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovy" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovyc" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovyConsole" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovydoc" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovysh" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/java2groovy" 		&& echo "Cleaning up build dependencies" 	&& apk del .build-deps 		&& echo "Adding groovy user and group" 	&& addgroup -S -g 1000 groovy 	&& adduser -D -S -G groovy -u 1000 -s /bin/ash groovy 	&& mkdir -p /home/groovy/.groovy/grapes 	&& chown -R groovy:groovy /home/groovy
# Tue, 14 Mar 2017 17:00:57 GMT
USER [groovy]
# Tue, 14 Mar 2017 17:00:57 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 14 Mar 2017 17:00:57 GMT
WORKDIR /home/groovy
# Tue, 14 Mar 2017 17:01:02 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89268e3bf5cf7b1f936709875aa49c2a87cde45ccc7b35e9092326852e3628b`  
		Last Modified: Tue, 14 Mar 2017 17:13:26 GMT  
		Size: 37.8 MB (37797426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d97ef2b1fd62616928cd1310dba4d12a96cda854344ac6ccf814bd43956d85b`  
		Last Modified: Tue, 14 Mar 2017 17:13:23 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:2.4.10-jre-alpine`

**does not exist** (yet?)

## `groovy:2.4-jre-alpine`

```console
$ docker pull groovy@sha256:961a457ab11a6fb1dc7dea1b0f45453c690f81902e09bbfe5859dfe7503242ee
```

-	Platforms:
	-	linux; amd64

### `groovy:2.4-jre-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.5 MB (93514161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca1bce5b11c3a68018ebafa3401d7de11e6afbae5fdefb9421a91d2f7f046b1`
-	Default Command: `["groovysh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 18:08:33 GMT
CMD ["groovysh"]
# Tue, 14 Mar 2017 17:00:47 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 14 Mar 2017 17:00:48 GMT
ENV GROOVY_VERSION=2.4.9
# Tue, 14 Mar 2017 17:00:56 GMT
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		openssl 		unzip 		&& echo "Downloading Groovy" 	&& wget -O groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Checking download signature" 	&& wget -O groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm -r "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mkdir /opt 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Applying workaround for https://issues.apache.org/jira/browse/GROOVY-7906" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/grape" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovy" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovyc" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovyConsole" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovydoc" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovysh" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/java2groovy" 		&& echo "Cleaning up build dependencies" 	&& apk del .build-deps 		&& echo "Adding groovy user and group" 	&& addgroup -S -g 1000 groovy 	&& adduser -D -S -G groovy -u 1000 -s /bin/ash groovy 	&& mkdir -p /home/groovy/.groovy/grapes 	&& chown -R groovy:groovy /home/groovy
# Tue, 14 Mar 2017 17:00:57 GMT
USER [groovy]
# Tue, 14 Mar 2017 17:00:57 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 14 Mar 2017 17:00:57 GMT
WORKDIR /home/groovy
# Tue, 14 Mar 2017 17:01:02 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89268e3bf5cf7b1f936709875aa49c2a87cde45ccc7b35e9092326852e3628b`  
		Last Modified: Tue, 14 Mar 2017 17:13:26 GMT  
		Size: 37.8 MB (37797426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d97ef2b1fd62616928cd1310dba4d12a96cda854344ac6ccf814bd43956d85b`  
		Last Modified: Tue, 14 Mar 2017 17:13:23 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:jre-alpine`

```console
$ docker pull groovy@sha256:961a457ab11a6fb1dc7dea1b0f45453c690f81902e09bbfe5859dfe7503242ee
```

-	Platforms:
	-	linux; amd64

### `groovy:jre-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.5 MB (93514161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca1bce5b11c3a68018ebafa3401d7de11e6afbae5fdefb9421a91d2f7f046b1`
-	Default Command: `["groovysh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 18:08:33 GMT
CMD ["groovysh"]
# Tue, 14 Mar 2017 17:00:47 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 14 Mar 2017 17:00:48 GMT
ENV GROOVY_VERSION=2.4.9
# Tue, 14 Mar 2017 17:00:56 GMT
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		openssl 		unzip 		&& echo "Downloading Groovy" 	&& wget -O groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Checking download signature" 	&& wget -O groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm -r "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mkdir /opt 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Applying workaround for https://issues.apache.org/jira/browse/GROOVY-7906" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/grape" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovy" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovyc" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovyConsole" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovydoc" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovysh" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/java2groovy" 		&& echo "Cleaning up build dependencies" 	&& apk del .build-deps 		&& echo "Adding groovy user and group" 	&& addgroup -S -g 1000 groovy 	&& adduser -D -S -G groovy -u 1000 -s /bin/ash groovy 	&& mkdir -p /home/groovy/.groovy/grapes 	&& chown -R groovy:groovy /home/groovy
# Tue, 14 Mar 2017 17:00:57 GMT
USER [groovy]
# Tue, 14 Mar 2017 17:00:57 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 14 Mar 2017 17:00:57 GMT
WORKDIR /home/groovy
# Tue, 14 Mar 2017 17:01:02 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89268e3bf5cf7b1f936709875aa49c2a87cde45ccc7b35e9092326852e3628b`  
		Last Modified: Tue, 14 Mar 2017 17:13:26 GMT  
		Size: 37.8 MB (37797426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d97ef2b1fd62616928cd1310dba4d12a96cda854344ac6ccf814bd43956d85b`  
		Last Modified: Tue, 14 Mar 2017 17:13:23 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:2.4.10-alpine`

**does not exist** (yet?)

## `groovy:2.4-alpine`

```console
$ docker pull groovy@sha256:961a457ab11a6fb1dc7dea1b0f45453c690f81902e09bbfe5859dfe7503242ee
```

-	Platforms:
	-	linux; amd64

### `groovy:2.4-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.5 MB (93514161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca1bce5b11c3a68018ebafa3401d7de11e6afbae5fdefb9421a91d2f7f046b1`
-	Default Command: `["groovysh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 18:08:33 GMT
CMD ["groovysh"]
# Tue, 14 Mar 2017 17:00:47 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 14 Mar 2017 17:00:48 GMT
ENV GROOVY_VERSION=2.4.9
# Tue, 14 Mar 2017 17:00:56 GMT
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		openssl 		unzip 		&& echo "Downloading Groovy" 	&& wget -O groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Checking download signature" 	&& wget -O groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm -r "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mkdir /opt 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Applying workaround for https://issues.apache.org/jira/browse/GROOVY-7906" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/grape" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovy" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovyc" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovyConsole" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovydoc" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovysh" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/java2groovy" 		&& echo "Cleaning up build dependencies" 	&& apk del .build-deps 		&& echo "Adding groovy user and group" 	&& addgroup -S -g 1000 groovy 	&& adduser -D -S -G groovy -u 1000 -s /bin/ash groovy 	&& mkdir -p /home/groovy/.groovy/grapes 	&& chown -R groovy:groovy /home/groovy
# Tue, 14 Mar 2017 17:00:57 GMT
USER [groovy]
# Tue, 14 Mar 2017 17:00:57 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 14 Mar 2017 17:00:57 GMT
WORKDIR /home/groovy
# Tue, 14 Mar 2017 17:01:02 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89268e3bf5cf7b1f936709875aa49c2a87cde45ccc7b35e9092326852e3628b`  
		Last Modified: Tue, 14 Mar 2017 17:13:26 GMT  
		Size: 37.8 MB (37797426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d97ef2b1fd62616928cd1310dba4d12a96cda854344ac6ccf814bd43956d85b`  
		Last Modified: Tue, 14 Mar 2017 17:13:23 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:alpine`

```console
$ docker pull groovy@sha256:961a457ab11a6fb1dc7dea1b0f45453c690f81902e09bbfe5859dfe7503242ee
```

-	Platforms:
	-	linux; amd64

### `groovy:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.5 MB (93514161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca1bce5b11c3a68018ebafa3401d7de11e6afbae5fdefb9421a91d2f7f046b1`
-	Default Command: `["groovysh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 18:08:33 GMT
CMD ["groovysh"]
# Tue, 14 Mar 2017 17:00:47 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 14 Mar 2017 17:00:48 GMT
ENV GROOVY_VERSION=2.4.9
# Tue, 14 Mar 2017 17:00:56 GMT
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		openssl 		unzip 		&& echo "Downloading Groovy" 	&& wget -O groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Checking download signature" 	&& wget -O groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm -r "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mkdir /opt 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Applying workaround for https://issues.apache.org/jira/browse/GROOVY-7906" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/grape" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovy" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovyc" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovyConsole" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovydoc" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/groovysh" 	&& sed -i "s|#!/bin/sh|#!/bin/bash|" "${GROOVY_HOME}/bin/java2groovy" 		&& echo "Cleaning up build dependencies" 	&& apk del .build-deps 		&& echo "Adding groovy user and group" 	&& addgroup -S -g 1000 groovy 	&& adduser -D -S -G groovy -u 1000 -s /bin/ash groovy 	&& mkdir -p /home/groovy/.groovy/grapes 	&& chown -R groovy:groovy /home/groovy
# Tue, 14 Mar 2017 17:00:57 GMT
USER [groovy]
# Tue, 14 Mar 2017 17:00:57 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 14 Mar 2017 17:00:57 GMT
WORKDIR /home/groovy
# Tue, 14 Mar 2017 17:01:02 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89268e3bf5cf7b1f936709875aa49c2a87cde45ccc7b35e9092326852e3628b`  
		Last Modified: Tue, 14 Mar 2017 17:13:26 GMT  
		Size: 37.8 MB (37797426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d97ef2b1fd62616928cd1310dba4d12a96cda854344ac6ccf814bd43956d85b`  
		Last Modified: Tue, 14 Mar 2017 17:13:23 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:2.4.10-jdk9`

**does not exist** (yet?)

## `groovy:2.4-jdk9`

```console
$ docker pull groovy@sha256:051671492e7bfd62d0b9cce3c4602273ffcde9bb805ad300e2f133e1ea66080d
```

-	Platforms:
	-	linux; amd64

### `groovy:2.4-jdk9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.1 MB (297123539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84ae1e4220a472d96638870106ce087a943cdcdc6ae39963840d89f051c2e621`
-	Default Command: `["groovysh"]`

```dockerfile
# Mon, 27 Feb 2017 20:36:00 GMT
ADD file:976136a811110184c7ff305b3354fc765d3d21ce0d7ce86eee8900a231e0e38a in / 
# Mon, 27 Feb 2017 20:36:01 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:18:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:51 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 28 Feb 2017 15:25:51 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Fri, 17 Mar 2017 21:55:59 GMT
ENV JAVA_VERSION=9~b161
# Fri, 17 Mar 2017 21:55:59 GMT
ENV JAVA_DEBIAN_VERSION=9~b161-1
# Fri, 17 Mar 2017 21:56:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 20 Mar 2017 18:29:05 GMT
CMD ["groovysh"]
# Mon, 20 Mar 2017 18:29:06 GMT
ENV GROOVY_HOME=/opt/groovy
# Mon, 20 Mar 2017 18:29:06 GMT
ENV GROOVY_VERSION=2.4.9
# Mon, 20 Mar 2017 18:29:27 GMT
RUN set -o errexit -o nounset 	&& echo "Downloading Groovy" 	&& wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Installing build dependencies" 	&& apt-get update 	&& apt-get update && apt-get install --yes --no-install-recommends 		dirmngr 		gnupg 	&& rm --recursive /var/lib/apt/lists/* 		&& echo "Checking download signature" 	&& wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm --recursive --force "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Cleaning up build dependencies" 	&& echo $(apt-mark showauto) 	&& apt-get remove --yes --purge 		dirmngr 		gnupg 	&& apt-get autoremove --yes --purge 		&& echo "Adding groovy user and group" 	&& groupadd --system --gid 1000 groovy 	&& useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy 	&& mkdir --parents /home/groovy/.groovy/grapes 	&& chown --recursive groovy:groovy /home/groovy 		&& echo "Applying workaround for https://github.com/docker-library/openjdk/issues/101" 	&& bash -c '([[ ! -d $JAVA_SECURITY_DIR ]] && ln -s $JAVA_HOME/lib $JAVA_HOME/conf) || (echo "Found java conf dir, package has been fixed, remove this hack"; exit -1)'
# Mon, 20 Mar 2017 18:29:28 GMT
USER [groovy]
# Mon, 20 Mar 2017 18:29:29 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Mon, 20 Mar 2017 18:29:30 GMT
WORKDIR /home/groovy
# Mon, 20 Mar 2017 18:29:34 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:a40c9d226366db9384aa684e3d34913cdacf75282bdc70dff4ff186e130ee2c3`  
		Last Modified: Mon, 27 Feb 2017 20:44:12 GMT  
		Size: 44.3 MB (44250775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370d333d5093cd32956cf56f9aae4f0b66699bcae00e5dabfd442881776f9ce9`  
		Last Modified: Mon, 27 Feb 2017 21:58:16 GMT  
		Size: 21.1 MB (21146887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05576433df0ed43f1d775c55f43190e4f804b1a2125f0653f3aca0da5dc1b9eb`  
		Last Modified: Mon, 27 Feb 2017 21:58:55 GMT  
		Size: 40.0 MB (40048126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1074fc6a6eb725a42e59a4a152dbcce3c92ddd5b441c6c8dcb891d7a8c3ca7f`  
		Last Modified: Tue, 28 Feb 2017 22:10:27 GMT  
		Size: 651.7 KB (651691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a217b2041ecf93dcad732fcdf5e68fd6491537f89645a44c78738007039cbad`  
		Last Modified: Tue, 28 Feb 2017 22:10:27 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f50c71f32ae033ed06cc00bac252494e71cf49032d4bd8791c0ef172a93d2dd`  
		Last Modified: Tue, 28 Feb 2017 22:10:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d1f1136bed7e8e0646a1db56071dc22d3f8cb1935bd10c3b46d7c402304770`  
		Last Modified: Fri, 17 Mar 2017 22:08:46 GMT  
		Size: 154.5 MB (154476617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438d835b8bcc3fea6c1cca8aef2bef6efdde553982857956bd8b4403c70541e4`  
		Last Modified: Mon, 20 Mar 2017 18:36:00 GMT  
		Size: 36.5 MB (36548848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9a69880d52cd82c7467ca549823b4a6b628d3b364862ecfb82bfde3492c3e6`  
		Last Modified: Mon, 20 Mar 2017 18:35:56 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:jdk9`

```console
$ docker pull groovy@sha256:051671492e7bfd62d0b9cce3c4602273ffcde9bb805ad300e2f133e1ea66080d
```

-	Platforms:
	-	linux; amd64

### `groovy:jdk9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.1 MB (297123539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84ae1e4220a472d96638870106ce087a943cdcdc6ae39963840d89f051c2e621`
-	Default Command: `["groovysh"]`

```dockerfile
# Mon, 27 Feb 2017 20:36:00 GMT
ADD file:976136a811110184c7ff305b3354fc765d3d21ce0d7ce86eee8900a231e0e38a in / 
# Mon, 27 Feb 2017 20:36:01 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:18:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:51 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 28 Feb 2017 15:25:51 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Fri, 17 Mar 2017 21:55:59 GMT
ENV JAVA_VERSION=9~b161
# Fri, 17 Mar 2017 21:55:59 GMT
ENV JAVA_DEBIAN_VERSION=9~b161-1
# Fri, 17 Mar 2017 21:56:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 20 Mar 2017 18:29:05 GMT
CMD ["groovysh"]
# Mon, 20 Mar 2017 18:29:06 GMT
ENV GROOVY_HOME=/opt/groovy
# Mon, 20 Mar 2017 18:29:06 GMT
ENV GROOVY_VERSION=2.4.9
# Mon, 20 Mar 2017 18:29:27 GMT
RUN set -o errexit -o nounset 	&& echo "Downloading Groovy" 	&& wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Installing build dependencies" 	&& apt-get update 	&& apt-get update && apt-get install --yes --no-install-recommends 		dirmngr 		gnupg 	&& rm --recursive /var/lib/apt/lists/* 		&& echo "Checking download signature" 	&& wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm --recursive --force "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Cleaning up build dependencies" 	&& echo $(apt-mark showauto) 	&& apt-get remove --yes --purge 		dirmngr 		gnupg 	&& apt-get autoremove --yes --purge 		&& echo "Adding groovy user and group" 	&& groupadd --system --gid 1000 groovy 	&& useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy 	&& mkdir --parents /home/groovy/.groovy/grapes 	&& chown --recursive groovy:groovy /home/groovy 		&& echo "Applying workaround for https://github.com/docker-library/openjdk/issues/101" 	&& bash -c '([[ ! -d $JAVA_SECURITY_DIR ]] && ln -s $JAVA_HOME/lib $JAVA_HOME/conf) || (echo "Found java conf dir, package has been fixed, remove this hack"; exit -1)'
# Mon, 20 Mar 2017 18:29:28 GMT
USER [groovy]
# Mon, 20 Mar 2017 18:29:29 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Mon, 20 Mar 2017 18:29:30 GMT
WORKDIR /home/groovy
# Mon, 20 Mar 2017 18:29:34 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:a40c9d226366db9384aa684e3d34913cdacf75282bdc70dff4ff186e130ee2c3`  
		Last Modified: Mon, 27 Feb 2017 20:44:12 GMT  
		Size: 44.3 MB (44250775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370d333d5093cd32956cf56f9aae4f0b66699bcae00e5dabfd442881776f9ce9`  
		Last Modified: Mon, 27 Feb 2017 21:58:16 GMT  
		Size: 21.1 MB (21146887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05576433df0ed43f1d775c55f43190e4f804b1a2125f0653f3aca0da5dc1b9eb`  
		Last Modified: Mon, 27 Feb 2017 21:58:55 GMT  
		Size: 40.0 MB (40048126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1074fc6a6eb725a42e59a4a152dbcce3c92ddd5b441c6c8dcb891d7a8c3ca7f`  
		Last Modified: Tue, 28 Feb 2017 22:10:27 GMT  
		Size: 651.7 KB (651691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a217b2041ecf93dcad732fcdf5e68fd6491537f89645a44c78738007039cbad`  
		Last Modified: Tue, 28 Feb 2017 22:10:27 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f50c71f32ae033ed06cc00bac252494e71cf49032d4bd8791c0ef172a93d2dd`  
		Last Modified: Tue, 28 Feb 2017 22:10:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d1f1136bed7e8e0646a1db56071dc22d3f8cb1935bd10c3b46d7c402304770`  
		Last Modified: Fri, 17 Mar 2017 22:08:46 GMT  
		Size: 154.5 MB (154476617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438d835b8bcc3fea6c1cca8aef2bef6efdde553982857956bd8b4403c70541e4`  
		Last Modified: Mon, 20 Mar 2017 18:36:00 GMT  
		Size: 36.5 MB (36548848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9a69880d52cd82c7467ca549823b4a6b628d3b364862ecfb82bfde3492c3e6`  
		Last Modified: Mon, 20 Mar 2017 18:35:56 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:2.4.10-jre9`

**does not exist** (yet?)

## `groovy:2.4-jre9`

```console
$ docker pull groovy@sha256:328a94d32902f68e8baac6ce85ba3c06c3def6a7ac9abbf2f5ef25a8c623030b
```

-	Platforms:
	-	linux; amd64

### `groovy:2.4-jre9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.5 MB (257531463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d6b19ac093739cff4e05af6e348606b379c00ba6a19f29b608a9309f44f45ff`
-	Default Command: `["groovysh"]`

```dockerfile
# Mon, 27 Feb 2017 20:36:00 GMT
ADD file:976136a811110184c7ff305b3354fc765d3d21ce0d7ce86eee8900a231e0e38a in / 
# Mon, 27 Feb 2017 20:36:01 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:26:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:26:29 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 28 Feb 2017 15:26:30 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:26:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:26:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Fri, 17 Mar 2017 21:56:42 GMT
ENV JAVA_VERSION=9~b161
# Fri, 17 Mar 2017 21:56:42 GMT
ENV JAVA_DEBIAN_VERSION=9~b161-1
# Fri, 17 Mar 2017 21:57:08 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 20 Mar 2017 18:29:36 GMT
CMD ["groovysh"]
# Mon, 20 Mar 2017 18:29:37 GMT
ENV GROOVY_HOME=/opt/groovy
# Mon, 20 Mar 2017 18:29:38 GMT
ENV GROOVY_VERSION=2.4.9
# Mon, 20 Mar 2017 18:29:52 GMT
RUN set -o errexit -o nounset 	&& echo "Downloading Groovy" 	&& wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Installing build dependencies" 	&& apt-get update 	&& apt-get update && apt-get install --yes --no-install-recommends 		dirmngr 		gnupg 	&& rm --recursive /var/lib/apt/lists/* 		&& echo "Checking download signature" 	&& wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm --recursive --force "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Cleaning up build dependencies" 	&& echo $(apt-mark showauto) 	&& apt-get remove --yes --purge 		dirmngr 		gnupg 	&& apt-get autoremove --yes --purge 		&& echo "Adding groovy user and group" 	&& groupadd --system --gid 1000 groovy 	&& useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy 	&& mkdir --parents /home/groovy/.groovy/grapes 	&& chown --recursive groovy:groovy /home/groovy 		&& echo "Applying workaround for https://github.com/docker-library/openjdk/issues/101" 	&& bash -c '([[ ! -d $JAVA_SECURITY_DIR ]] && ln -s $JAVA_HOME/lib $JAVA_HOME/conf) || (echo "Found java conf dir, package has been fixed, remove this hack"; exit -1)'
# Mon, 20 Mar 2017 18:29:53 GMT
USER [groovy]
# Mon, 20 Mar 2017 18:29:53 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Mon, 20 Mar 2017 18:29:54 GMT
WORKDIR /home/groovy
# Mon, 20 Mar 2017 18:29:59 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:a40c9d226366db9384aa684e3d34913cdacf75282bdc70dff4ff186e130ee2c3`  
		Last Modified: Mon, 27 Feb 2017 20:44:12 GMT  
		Size: 44.3 MB (44250775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370d333d5093cd32956cf56f9aae4f0b66699bcae00e5dabfd442881776f9ce9`  
		Last Modified: Mon, 27 Feb 2017 21:58:16 GMT  
		Size: 21.1 MB (21146887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e0553b285628a266ebb4d38e7623c65244465467ff8604f7f64366042e3039`  
		Last Modified: Tue, 28 Feb 2017 22:12:11 GMT  
		Size: 627.4 KB (627359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1cce74783347f4d67fe262681d92e193267109a2efe84e770286dc7fbaba966`  
		Last Modified: Tue, 28 Feb 2017 22:12:09 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f8a4ee143079447c017ac3a2dfecc28661c48d79827a87d5051d34be06d6dba`  
		Last Modified: Tue, 28 Feb 2017 22:12:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d61dba2769d7040b34edda649849b596bcd6b6498a003384e5524ff2421afe`  
		Last Modified: Fri, 17 Mar 2017 22:10:29 GMT  
		Size: 155.0 MB (154983022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b02398690e03fe864061fcaed068e0bd751f00fb723f8c437223adfe1452c6f`  
		Last Modified: Mon, 20 Mar 2017 18:44:28 GMT  
		Size: 36.5 MB (36522822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e168063afb72eded8a4876150a03c1d9bb00e8f7cda38b8424f9faa6306e3b8`  
		Last Modified: Mon, 20 Mar 2017 18:44:24 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:jre9`

```console
$ docker pull groovy@sha256:328a94d32902f68e8baac6ce85ba3c06c3def6a7ac9abbf2f5ef25a8c623030b
```

-	Platforms:
	-	linux; amd64

### `groovy:jre9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.5 MB (257531463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d6b19ac093739cff4e05af6e348606b379c00ba6a19f29b608a9309f44f45ff`
-	Default Command: `["groovysh"]`

```dockerfile
# Mon, 27 Feb 2017 20:36:00 GMT
ADD file:976136a811110184c7ff305b3354fc765d3d21ce0d7ce86eee8900a231e0e38a in / 
# Mon, 27 Feb 2017 20:36:01 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:26:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:26:29 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 28 Feb 2017 15:26:30 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:26:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:26:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Fri, 17 Mar 2017 21:56:42 GMT
ENV JAVA_VERSION=9~b161
# Fri, 17 Mar 2017 21:56:42 GMT
ENV JAVA_DEBIAN_VERSION=9~b161-1
# Fri, 17 Mar 2017 21:57:08 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 20 Mar 2017 18:29:36 GMT
CMD ["groovysh"]
# Mon, 20 Mar 2017 18:29:37 GMT
ENV GROOVY_HOME=/opt/groovy
# Mon, 20 Mar 2017 18:29:38 GMT
ENV GROOVY_VERSION=2.4.9
# Mon, 20 Mar 2017 18:29:52 GMT
RUN set -o errexit -o nounset 	&& echo "Downloading Groovy" 	&& wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Installing build dependencies" 	&& apt-get update 	&& apt-get update && apt-get install --yes --no-install-recommends 		dirmngr 		gnupg 	&& rm --recursive /var/lib/apt/lists/* 		&& echo "Checking download signature" 	&& wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& gpg --keyserver pgp.mit.edu --recv-keys "0x41321490758AAD6F" "0x825C06C827AF6B66" "0x6A65176A0FB1CD0B" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm --recursive --force "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}" 	&& ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Cleaning up build dependencies" 	&& echo $(apt-mark showauto) 	&& apt-get remove --yes --purge 		dirmngr 		gnupg 	&& apt-get autoremove --yes --purge 		&& echo "Adding groovy user and group" 	&& groupadd --system --gid 1000 groovy 	&& useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy 	&& mkdir --parents /home/groovy/.groovy/grapes 	&& chown --recursive groovy:groovy /home/groovy 		&& echo "Applying workaround for https://github.com/docker-library/openjdk/issues/101" 	&& bash -c '([[ ! -d $JAVA_SECURITY_DIR ]] && ln -s $JAVA_HOME/lib $JAVA_HOME/conf) || (echo "Found java conf dir, package has been fixed, remove this hack"; exit -1)'
# Mon, 20 Mar 2017 18:29:53 GMT
USER [groovy]
# Mon, 20 Mar 2017 18:29:53 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Mon, 20 Mar 2017 18:29:54 GMT
WORKDIR /home/groovy
# Mon, 20 Mar 2017 18:29:59 GMT
RUN groovy --version
```

-	Layers:
	-	`sha256:a40c9d226366db9384aa684e3d34913cdacf75282bdc70dff4ff186e130ee2c3`  
		Last Modified: Mon, 27 Feb 2017 20:44:12 GMT  
		Size: 44.3 MB (44250775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370d333d5093cd32956cf56f9aae4f0b66699bcae00e5dabfd442881776f9ce9`  
		Last Modified: Mon, 27 Feb 2017 21:58:16 GMT  
		Size: 21.1 MB (21146887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e0553b285628a266ebb4d38e7623c65244465467ff8604f7f64366042e3039`  
		Last Modified: Tue, 28 Feb 2017 22:12:11 GMT  
		Size: 627.4 KB (627359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1cce74783347f4d67fe262681d92e193267109a2efe84e770286dc7fbaba966`  
		Last Modified: Tue, 28 Feb 2017 22:12:09 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f8a4ee143079447c017ac3a2dfecc28661c48d79827a87d5051d34be06d6dba`  
		Last Modified: Tue, 28 Feb 2017 22:12:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d61dba2769d7040b34edda649849b596bcd6b6498a003384e5524ff2421afe`  
		Last Modified: Fri, 17 Mar 2017 22:10:29 GMT  
		Size: 155.0 MB (154983022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b02398690e03fe864061fcaed068e0bd751f00fb723f8c437223adfe1452c6f`  
		Last Modified: Mon, 20 Mar 2017 18:44:28 GMT  
		Size: 36.5 MB (36522822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e168063afb72eded8a4876150a03c1d9bb00e8f7cda38b8424f9faa6306e3b8`  
		Last Modified: Mon, 20 Mar 2017 18:44:24 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
