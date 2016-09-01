<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `maven`

-	[`maven:3.3.9-jdk-7`](#maven339-jdk-7)
-	[`maven:3.3-jdk-7`](#maven33-jdk-7)
-	[`maven:3-jdk-7`](#maven3-jdk-7)
-	[`maven:3.3.9-jdk-7-onbuild`](#maven339-jdk-7-onbuild)
-	[`maven:3.3-jdk-7-onbuild`](#maven33-jdk-7-onbuild)
-	[`maven:3-jdk-7-onbuild`](#maven3-jdk-7-onbuild)
-	[`maven:3.3.9-jdk-7-alpine`](#maven339-jdk-7-alpine)
-	[`maven:3.3-jdk-7-alpine`](#maven33-jdk-7-alpine)
-	[`maven:3-jdk-7-alpine`](#maven3-jdk-7-alpine)
-	[`maven:3.3.9-jdk-7-onbuild-alpine`](#maven339-jdk-7-onbuild-alpine)
-	[`maven:3.3-jdk-7-onbuild-alpine`](#maven33-jdk-7-onbuild-alpine)
-	[`maven:3-jdk-7-onbuild-alpine`](#maven3-jdk-7-onbuild-alpine)
-	[`maven:3.3.9-jdk-8`](#maven339-jdk-8)
-	[`maven:3.3.9`](#maven339)
-	[`maven:3.3-jdk-8`](#maven33-jdk-8)
-	[`maven:3.3`](#maven33)
-	[`maven:3-jdk-8`](#maven3-jdk-8)
-	[`maven:3`](#maven3)
-	[`maven:latest`](#mavenlatest)
-	[`maven:3.3.9-jdk-8-onbuild`](#maven339-jdk-8-onbuild)
-	[`maven:3.3.9-onbuild`](#maven339-onbuild)
-	[`maven:3.3-jdk-8-onbuild`](#maven33-jdk-8-onbuild)
-	[`maven:3.3-onbuild`](#maven33-onbuild)
-	[`maven:3-jdk-8-onbuild`](#maven3-jdk-8-onbuild)
-	[`maven:3-onbuild`](#maven3-onbuild)
-	[`maven:onbuild`](#mavenonbuild)
-	[`maven:3.3.9-jdk-8-alpine`](#maven339-jdk-8-alpine)
-	[`maven:3.3.9-alpine`](#maven339-alpine)
-	[`maven:3.3-jdk-8-alpine`](#maven33-jdk-8-alpine)
-	[`maven:3.3-alpine`](#maven33-alpine)
-	[`maven:3-jdk-8-alpine`](#maven3-jdk-8-alpine)
-	[`maven:3-alpine`](#maven3-alpine)
-	[`maven:alpine`](#mavenalpine)
-	[`maven:3.3.9-jdk-8-onbuild-alpine`](#maven339-jdk-8-onbuild-alpine)
-	[`maven:3.3.9-onbuild-alpine`](#maven339-onbuild-alpine)
-	[`maven:3.3-jdk-8-onbuild-alpine`](#maven33-jdk-8-onbuild-alpine)
-	[`maven:3.3-onbuild-alpine`](#maven33-onbuild-alpine)
-	[`maven:3-jdk-8-onbuild-alpine`](#maven3-jdk-8-onbuild-alpine)
-	[`maven:3-onbuild-alpine`](#maven3-onbuild-alpine)
-	[`maven:onbuild-alpine`](#mavenonbuild-alpine)
-	[`maven:3.3.9-jdk-9`](#maven339-jdk-9)
-	[`maven:3.3-jdk-9`](#maven33-jdk-9)
-	[`maven:3-jdk-9`](#maven3-jdk-9)
-	[`maven:3.3.9-jdk-9-onbuild`](#maven339-jdk-9-onbuild)
-	[`maven:3.3-jdk-9-onbuild`](#maven33-jdk-9-onbuild)
-	[`maven:3-jdk-9-onbuild`](#maven3-jdk-9-onbuild)

## `maven:3.3.9-jdk-7`

```console
$ docker pull maven@sha256:bc460ff072d84ebe4eb934635d43431363d202e10c34ae98fa7eb046ee96198b
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261194889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3bde308bc02a9b3a2110906b2eb37c7ce20cfa00685c6b95484b1163541b18f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:12:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:12:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Wed, 31 Aug 2016 17:12:28 GMT
ENV JAVA_VERSION=7u111
# Wed, 31 Aug 2016 17:12:28 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Wed, 31 Aug 2016 17:13:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 21:05:40 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 21:05:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 21:05:42 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 21:05:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 21:05:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 21:05:43 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 21:05:43 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 21:05:43 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 21:05:44 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 21:05:44 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20e1d6ebfbde12fa4aedce90247d62e887e340cdcdce54a960ed189adb5aa7e`  
		Last Modified: Wed, 31 Aug 2016 17:21:38 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617f4f214be685f5db5a232b29b8842c9a6db561aa0c0e90942a2c862fe212ea`  
		Last Modified: Wed, 31 Aug 2016 17:22:19 GMT  
		Size: 139.6 MB (139611253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cacf651d75528d5bea8fba1a8030b1ac257ec95a1db792710c0068ac281502`  
		Last Modified: Wed, 31 Aug 2016 21:05:51 GMT  
		Size: 8.6 MB (8598850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b3d3c06232e515a3e43cfcf7bcdd2e597e0cd69b7dbcb898aeaf53c7432716`  
		Last Modified: Wed, 31 Aug 2016 21:05:50 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0b7276292b8a21afa4672396db7cb19d28078e77467d1e2105f32dc625e546`  
		Last Modified: Wed, 31 Aug 2016 21:05:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-7`

```console
$ docker pull maven@sha256:bc460ff072d84ebe4eb934635d43431363d202e10c34ae98fa7eb046ee96198b
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261194889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3bde308bc02a9b3a2110906b2eb37c7ce20cfa00685c6b95484b1163541b18f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:12:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:12:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Wed, 31 Aug 2016 17:12:28 GMT
ENV JAVA_VERSION=7u111
# Wed, 31 Aug 2016 17:12:28 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Wed, 31 Aug 2016 17:13:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 21:05:40 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 21:05:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 21:05:42 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 21:05:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 21:05:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 21:05:43 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 21:05:43 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 21:05:43 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 21:05:44 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 21:05:44 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20e1d6ebfbde12fa4aedce90247d62e887e340cdcdce54a960ed189adb5aa7e`  
		Last Modified: Wed, 31 Aug 2016 17:21:38 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617f4f214be685f5db5a232b29b8842c9a6db561aa0c0e90942a2c862fe212ea`  
		Last Modified: Wed, 31 Aug 2016 17:22:19 GMT  
		Size: 139.6 MB (139611253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cacf651d75528d5bea8fba1a8030b1ac257ec95a1db792710c0068ac281502`  
		Last Modified: Wed, 31 Aug 2016 21:05:51 GMT  
		Size: 8.6 MB (8598850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b3d3c06232e515a3e43cfcf7bcdd2e597e0cd69b7dbcb898aeaf53c7432716`  
		Last Modified: Wed, 31 Aug 2016 21:05:50 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0b7276292b8a21afa4672396db7cb19d28078e77467d1e2105f32dc625e546`  
		Last Modified: Wed, 31 Aug 2016 21:05:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7`

```console
$ docker pull maven@sha256:0849b69f084eccc8545ff7292c56371931bae6b1168dfb748cb43d0c8a915169
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261186132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:898739f7e11cb401dc272c4738c9245751272e6ac88cbe6f76cd88b35ee5f664`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:02:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:02:59 GMT
ENV LANG=C.UTF-8
# Fri, 05 Aug 2016 22:03:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 Aug 2016 22:03:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Fri, 05 Aug 2016 22:03:02 GMT
ENV JAVA_VERSION=7u111
# Fri, 05 Aug 2016 22:03:03 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Fri, 05 Aug 2016 22:05:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 17 Aug 2016 19:39:03 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 17 Aug 2016 19:39:04 GMT
ARG USER_HOME_DIR=/root
# Wed, 17 Aug 2016 19:39:06 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 17 Aug 2016 19:39:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 17 Aug 2016 19:39:08 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 17 Aug 2016 19:39:10 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh
# Wed, 17 Aug 2016 19:39:11 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/
# Wed, 17 Aug 2016 19:39:12 GMT
VOLUME [/root/.m2]
# Wed, 17 Aug 2016 19:39:13 GMT
ENTRYPOINT &{["/usr/local/bin/mvn-entrypoint.sh"]}
# Wed, 17 Aug 2016 19:39:14 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557cb7f84eb963a60165663691b52690b01249b98c7c106228ee789eaa5070a3`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 593.2 KB (593224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbd9fac5727074a3af671d929e588dc9d9b1f78cdf87523ac35926fe8cd7e01`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f5ec8580f15fa5e9ab163c0e8e1ef1153596f9ef3184c4ed141f4d1e41ac4a`  
		Last Modified: Fri, 05 Aug 2016 22:13:01 GMT  
		Size: 139.6 MB (139604792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91df8c05571365c5771c92b77f8fa5367d037ee6a1871eb2a3d8aaefb58a593`  
		Last Modified: Wed, 17 Aug 2016 19:42:10 GMT  
		Size: 8.6 MB (8598861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ca13583f0208ee12e2b9338a4e8fe2ebeee0f1448b2c9e9ad0d30e05196c1e`  
		Last Modified: Wed, 17 Aug 2016 19:42:10 GMT  
		Size: 692.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aad738f48439e20fe8ab5421fc9077e46de84ac1d4514b6e57b2b8a83115a99`  
		Last Modified: Wed, 17 Aug 2016 19:42:09 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-7-onbuild`

```console
$ docker pull maven@sha256:dc95be885bb5015e18463a23b5277a0c8061236c7e3205be2f1ab8eecfd228cb
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-7-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261195047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6f3d607b1d4ffdca9374ce6ae99e6086fb59a69b931ec47d54c58fdd9a992c0`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:12:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:12:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Wed, 31 Aug 2016 17:12:28 GMT
ENV JAVA_VERSION=7u111
# Wed, 31 Aug 2016 17:12:28 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Wed, 31 Aug 2016 17:13:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 21:05:40 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 21:05:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 21:05:42 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 21:05:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 21:05:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 21:05:43 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 21:05:43 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 21:05:43 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 21:05:44 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 21:05:44 GMT
CMD ["mvn"]
# Wed, 31 Aug 2016 21:07:49 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 21:07:50 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 21:07:50 GMT
ONBUILD ADD . /usr/src/app
# Wed, 31 Aug 2016 21:07:50 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20e1d6ebfbde12fa4aedce90247d62e887e340cdcdce54a960ed189adb5aa7e`  
		Last Modified: Wed, 31 Aug 2016 17:21:38 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617f4f214be685f5db5a232b29b8842c9a6db561aa0c0e90942a2c862fe212ea`  
		Last Modified: Wed, 31 Aug 2016 17:22:19 GMT  
		Size: 139.6 MB (139611253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cacf651d75528d5bea8fba1a8030b1ac257ec95a1db792710c0068ac281502`  
		Last Modified: Wed, 31 Aug 2016 21:05:51 GMT  
		Size: 8.6 MB (8598850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b3d3c06232e515a3e43cfcf7bcdd2e597e0cd69b7dbcb898aeaf53c7432716`  
		Last Modified: Wed, 31 Aug 2016 21:05:50 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0b7276292b8a21afa4672396db7cb19d28078e77467d1e2105f32dc625e546`  
		Last Modified: Wed, 31 Aug 2016 21:05:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f9e0cdfb707643043f31750e04bb6ffcd478f4c7daedefc01bb223f0728e02`  
		Last Modified: Wed, 31 Aug 2016 21:07:55 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-7-onbuild`

```console
$ docker pull maven@sha256:dc95be885bb5015e18463a23b5277a0c8061236c7e3205be2f1ab8eecfd228cb
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-7-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261195047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6f3d607b1d4ffdca9374ce6ae99e6086fb59a69b931ec47d54c58fdd9a992c0`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:12:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:12:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Wed, 31 Aug 2016 17:12:28 GMT
ENV JAVA_VERSION=7u111
# Wed, 31 Aug 2016 17:12:28 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Wed, 31 Aug 2016 17:13:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 21:05:40 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 21:05:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 21:05:42 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 21:05:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 21:05:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 21:05:43 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 21:05:43 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 21:05:43 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 21:05:44 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 21:05:44 GMT
CMD ["mvn"]
# Wed, 31 Aug 2016 21:07:49 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 21:07:50 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 21:07:50 GMT
ONBUILD ADD . /usr/src/app
# Wed, 31 Aug 2016 21:07:50 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20e1d6ebfbde12fa4aedce90247d62e887e340cdcdce54a960ed189adb5aa7e`  
		Last Modified: Wed, 31 Aug 2016 17:21:38 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617f4f214be685f5db5a232b29b8842c9a6db561aa0c0e90942a2c862fe212ea`  
		Last Modified: Wed, 31 Aug 2016 17:22:19 GMT  
		Size: 139.6 MB (139611253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cacf651d75528d5bea8fba1a8030b1ac257ec95a1db792710c0068ac281502`  
		Last Modified: Wed, 31 Aug 2016 21:05:51 GMT  
		Size: 8.6 MB (8598850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b3d3c06232e515a3e43cfcf7bcdd2e597e0cd69b7dbcb898aeaf53c7432716`  
		Last Modified: Wed, 31 Aug 2016 21:05:50 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0b7276292b8a21afa4672396db7cb19d28078e77467d1e2105f32dc625e546`  
		Last Modified: Wed, 31 Aug 2016 21:05:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f9e0cdfb707643043f31750e04bb6ffcd478f4c7daedefc01bb223f0728e02`  
		Last Modified: Wed, 31 Aug 2016 21:07:55 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-onbuild`

```console
$ docker pull maven@sha256:dc95be885bb5015e18463a23b5277a0c8061236c7e3205be2f1ab8eecfd228cb
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261195047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6f3d607b1d4ffdca9374ce6ae99e6086fb59a69b931ec47d54c58fdd9a992c0`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:12:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:12:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Wed, 31 Aug 2016 17:12:28 GMT
ENV JAVA_VERSION=7u111
# Wed, 31 Aug 2016 17:12:28 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Wed, 31 Aug 2016 17:13:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 21:05:40 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 21:05:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 21:05:42 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 21:05:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 21:05:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 21:05:43 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 21:05:43 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 21:05:43 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 21:05:44 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 21:05:44 GMT
CMD ["mvn"]
# Wed, 31 Aug 2016 21:07:49 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 21:07:50 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 21:07:50 GMT
ONBUILD ADD . /usr/src/app
# Wed, 31 Aug 2016 21:07:50 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20e1d6ebfbde12fa4aedce90247d62e887e340cdcdce54a960ed189adb5aa7e`  
		Last Modified: Wed, 31 Aug 2016 17:21:38 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617f4f214be685f5db5a232b29b8842c9a6db561aa0c0e90942a2c862fe212ea`  
		Last Modified: Wed, 31 Aug 2016 17:22:19 GMT  
		Size: 139.6 MB (139611253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cacf651d75528d5bea8fba1a8030b1ac257ec95a1db792710c0068ac281502`  
		Last Modified: Wed, 31 Aug 2016 21:05:51 GMT  
		Size: 8.6 MB (8598850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b3d3c06232e515a3e43cfcf7bcdd2e597e0cd69b7dbcb898aeaf53c7432716`  
		Last Modified: Wed, 31 Aug 2016 21:05:50 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0b7276292b8a21afa4672396db7cb19d28078e77467d1e2105f32dc625e546`  
		Last Modified: Wed, 31 Aug 2016 21:05:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f9e0cdfb707643043f31750e04bb6ffcd478f4c7daedefc01bb223f0728e02`  
		Last Modified: Wed, 31 Aug 2016 21:07:55 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-7-alpine`

```console
$ docker pull maven@sha256:3cf7e7b075d10c155142c940d3a4d6b6f5c986372a5ca5173241bcc11e09e868
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-7-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.6 MB (89574381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6fb7c572e9b8f2185739aa6ee4d4fd30d163e6b86a7b4bc6dce834672183f1b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:53:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 30 Aug 2016 19:53:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 30 Aug 2016 19:53:18 GMT
ENV JAVA_VERSION=7u91
# Tue, 30 Aug 2016 19:53:18 GMT
ENV JAVA_ALPINE_VERSION=7.91.2.6.3-r2
# Tue, 30 Aug 2016 19:53:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 04:49:08 GMT
RUN apk add --no-cache curl tar bash
# Wed, 31 Aug 2016 04:49:08 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 04:49:08 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 04:49:10 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 04:49:10 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 04:49:10 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 04:49:11 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 04:49:11 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 04:49:11 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 04:49:12 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 04:49:12 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e519571e574e23b8d02f416d1cb46011151200ff1218f6242e923807194c3427`  
		Last Modified: Wed, 31 Aug 2016 17:23:34 GMT  
		Size: 76.6 MB (76600896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b3bf0c4edac601147abb9ccb50c59d131c046822827f8034cb488d9a46eccd`  
		Last Modified: Wed, 31 Aug 2016 21:07:27 GMT  
		Size: 2.1 MB (2063081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e5062255e35c493dafa6a16ade8da4570b9eddc33cfd658b16cb6be9253253`  
		Last Modified: Wed, 31 Aug 2016 21:07:27 GMT  
		Size: 8.6 MB (8598853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32443aef49add633b486dd65c1e91fc3352be915c32556a02544ae142f5ca29`  
		Last Modified: Wed, 31 Aug 2016 21:07:25 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6cadad592ca5f20c5dfede73099c5a9d177306290360d321788c4df24cd02d`  
		Last Modified: Wed, 31 Aug 2016 21:07:26 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-7-alpine`

```console
$ docker pull maven@sha256:3cf7e7b075d10c155142c940d3a4d6b6f5c986372a5ca5173241bcc11e09e868
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-7-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.6 MB (89574381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6fb7c572e9b8f2185739aa6ee4d4fd30d163e6b86a7b4bc6dce834672183f1b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:53:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 30 Aug 2016 19:53:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 30 Aug 2016 19:53:18 GMT
ENV JAVA_VERSION=7u91
# Tue, 30 Aug 2016 19:53:18 GMT
ENV JAVA_ALPINE_VERSION=7.91.2.6.3-r2
# Tue, 30 Aug 2016 19:53:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 04:49:08 GMT
RUN apk add --no-cache curl tar bash
# Wed, 31 Aug 2016 04:49:08 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 04:49:08 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 04:49:10 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 04:49:10 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 04:49:10 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 04:49:11 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 04:49:11 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 04:49:11 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 04:49:12 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 04:49:12 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e519571e574e23b8d02f416d1cb46011151200ff1218f6242e923807194c3427`  
		Last Modified: Wed, 31 Aug 2016 17:23:34 GMT  
		Size: 76.6 MB (76600896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b3bf0c4edac601147abb9ccb50c59d131c046822827f8034cb488d9a46eccd`  
		Last Modified: Wed, 31 Aug 2016 21:07:27 GMT  
		Size: 2.1 MB (2063081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e5062255e35c493dafa6a16ade8da4570b9eddc33cfd658b16cb6be9253253`  
		Last Modified: Wed, 31 Aug 2016 21:07:27 GMT  
		Size: 8.6 MB (8598853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32443aef49add633b486dd65c1e91fc3352be915c32556a02544ae142f5ca29`  
		Last Modified: Wed, 31 Aug 2016 21:07:25 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6cadad592ca5f20c5dfede73099c5a9d177306290360d321788c4df24cd02d`  
		Last Modified: Wed, 31 Aug 2016 21:07:26 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-alpine`

```console
$ docker pull maven@sha256:3cf7e7b075d10c155142c940d3a4d6b6f5c986372a5ca5173241bcc11e09e868
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.6 MB (89574381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6fb7c572e9b8f2185739aa6ee4d4fd30d163e6b86a7b4bc6dce834672183f1b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:53:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 30 Aug 2016 19:53:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 30 Aug 2016 19:53:18 GMT
ENV JAVA_VERSION=7u91
# Tue, 30 Aug 2016 19:53:18 GMT
ENV JAVA_ALPINE_VERSION=7.91.2.6.3-r2
# Tue, 30 Aug 2016 19:53:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 04:49:08 GMT
RUN apk add --no-cache curl tar bash
# Wed, 31 Aug 2016 04:49:08 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 04:49:08 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 04:49:10 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 04:49:10 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 04:49:10 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 04:49:11 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 04:49:11 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 04:49:11 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 04:49:12 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 04:49:12 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e519571e574e23b8d02f416d1cb46011151200ff1218f6242e923807194c3427`  
		Last Modified: Wed, 31 Aug 2016 17:23:34 GMT  
		Size: 76.6 MB (76600896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b3bf0c4edac601147abb9ccb50c59d131c046822827f8034cb488d9a46eccd`  
		Last Modified: Wed, 31 Aug 2016 21:07:27 GMT  
		Size: 2.1 MB (2063081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e5062255e35c493dafa6a16ade8da4570b9eddc33cfd658b16cb6be9253253`  
		Last Modified: Wed, 31 Aug 2016 21:07:27 GMT  
		Size: 8.6 MB (8598853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32443aef49add633b486dd65c1e91fc3352be915c32556a02544ae142f5ca29`  
		Last Modified: Wed, 31 Aug 2016 21:07:25 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6cadad592ca5f20c5dfede73099c5a9d177306290360d321788c4df24cd02d`  
		Last Modified: Wed, 31 Aug 2016 21:07:26 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-7-onbuild-alpine`

```console
$ docker pull maven@sha256:229461358d279e70b471cc52678461b5a99c8179a1bb597882c6121635e5637a
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-7-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.6 MB (89574540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d79cdebb60930d30fa3398154ce500e415264361145fab64a8c3a585bae8f0ca`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:53:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 30 Aug 2016 19:53:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 30 Aug 2016 19:53:18 GMT
ENV JAVA_VERSION=7u91
# Tue, 30 Aug 2016 19:53:18 GMT
ENV JAVA_ALPINE_VERSION=7.91.2.6.3-r2
# Tue, 30 Aug 2016 19:53:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 04:49:08 GMT
RUN apk add --no-cache curl tar bash
# Wed, 31 Aug 2016 04:49:08 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 04:49:08 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 04:49:10 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 04:49:10 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 04:49:10 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 04:49:11 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 04:49:11 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 04:49:11 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 04:49:12 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 04:49:12 GMT
CMD ["mvn"]
# Wed, 31 Aug 2016 04:49:14 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 04:49:14 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 04:49:14 GMT
ONBUILD ADD . /usr/src/app
# Wed, 31 Aug 2016 04:49:14 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e519571e574e23b8d02f416d1cb46011151200ff1218f6242e923807194c3427`  
		Last Modified: Wed, 31 Aug 2016 17:23:34 GMT  
		Size: 76.6 MB (76600896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b3bf0c4edac601147abb9ccb50c59d131c046822827f8034cb488d9a46eccd`  
		Last Modified: Wed, 31 Aug 2016 21:07:27 GMT  
		Size: 2.1 MB (2063081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e5062255e35c493dafa6a16ade8da4570b9eddc33cfd658b16cb6be9253253`  
		Last Modified: Wed, 31 Aug 2016 21:07:27 GMT  
		Size: 8.6 MB (8598853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32443aef49add633b486dd65c1e91fc3352be915c32556a02544ae142f5ca29`  
		Last Modified: Wed, 31 Aug 2016 21:07:25 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6cadad592ca5f20c5dfede73099c5a9d177306290360d321788c4df24cd02d`  
		Last Modified: Wed, 31 Aug 2016 21:07:26 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3aa610e6fc372d8caeab9f9d4a216516adbb8860b5ff5bf66a04ffcc1d3e03`  
		Last Modified: Wed, 31 Aug 2016 21:08:20 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-7-onbuild-alpine`

```console
$ docker pull maven@sha256:229461358d279e70b471cc52678461b5a99c8179a1bb597882c6121635e5637a
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-7-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.6 MB (89574540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d79cdebb60930d30fa3398154ce500e415264361145fab64a8c3a585bae8f0ca`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:53:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 30 Aug 2016 19:53:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 30 Aug 2016 19:53:18 GMT
ENV JAVA_VERSION=7u91
# Tue, 30 Aug 2016 19:53:18 GMT
ENV JAVA_ALPINE_VERSION=7.91.2.6.3-r2
# Tue, 30 Aug 2016 19:53:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 04:49:08 GMT
RUN apk add --no-cache curl tar bash
# Wed, 31 Aug 2016 04:49:08 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 04:49:08 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 04:49:10 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 04:49:10 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 04:49:10 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 04:49:11 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 04:49:11 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 04:49:11 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 04:49:12 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 04:49:12 GMT
CMD ["mvn"]
# Wed, 31 Aug 2016 04:49:14 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 04:49:14 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 04:49:14 GMT
ONBUILD ADD . /usr/src/app
# Wed, 31 Aug 2016 04:49:14 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e519571e574e23b8d02f416d1cb46011151200ff1218f6242e923807194c3427`  
		Last Modified: Wed, 31 Aug 2016 17:23:34 GMT  
		Size: 76.6 MB (76600896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b3bf0c4edac601147abb9ccb50c59d131c046822827f8034cb488d9a46eccd`  
		Last Modified: Wed, 31 Aug 2016 21:07:27 GMT  
		Size: 2.1 MB (2063081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e5062255e35c493dafa6a16ade8da4570b9eddc33cfd658b16cb6be9253253`  
		Last Modified: Wed, 31 Aug 2016 21:07:27 GMT  
		Size: 8.6 MB (8598853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32443aef49add633b486dd65c1e91fc3352be915c32556a02544ae142f5ca29`  
		Last Modified: Wed, 31 Aug 2016 21:07:25 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6cadad592ca5f20c5dfede73099c5a9d177306290360d321788c4df24cd02d`  
		Last Modified: Wed, 31 Aug 2016 21:07:26 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3aa610e6fc372d8caeab9f9d4a216516adbb8860b5ff5bf66a04ffcc1d3e03`  
		Last Modified: Wed, 31 Aug 2016 21:08:20 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-onbuild-alpine`

```console
$ docker pull maven@sha256:229461358d279e70b471cc52678461b5a99c8179a1bb597882c6121635e5637a
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.6 MB (89574540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d79cdebb60930d30fa3398154ce500e415264361145fab64a8c3a585bae8f0ca`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:53:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 30 Aug 2016 19:53:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 30 Aug 2016 19:53:18 GMT
ENV JAVA_VERSION=7u91
# Tue, 30 Aug 2016 19:53:18 GMT
ENV JAVA_ALPINE_VERSION=7.91.2.6.3-r2
# Tue, 30 Aug 2016 19:53:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 04:49:08 GMT
RUN apk add --no-cache curl tar bash
# Wed, 31 Aug 2016 04:49:08 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 04:49:08 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 04:49:10 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 04:49:10 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 04:49:10 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 04:49:11 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 04:49:11 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 04:49:11 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 04:49:12 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 04:49:12 GMT
CMD ["mvn"]
# Wed, 31 Aug 2016 04:49:14 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 04:49:14 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 04:49:14 GMT
ONBUILD ADD . /usr/src/app
# Wed, 31 Aug 2016 04:49:14 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e519571e574e23b8d02f416d1cb46011151200ff1218f6242e923807194c3427`  
		Last Modified: Wed, 31 Aug 2016 17:23:34 GMT  
		Size: 76.6 MB (76600896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b3bf0c4edac601147abb9ccb50c59d131c046822827f8034cb488d9a46eccd`  
		Last Modified: Wed, 31 Aug 2016 21:07:27 GMT  
		Size: 2.1 MB (2063081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e5062255e35c493dafa6a16ade8da4570b9eddc33cfd658b16cb6be9253253`  
		Last Modified: Wed, 31 Aug 2016 21:07:27 GMT  
		Size: 8.6 MB (8598853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32443aef49add633b486dd65c1e91fc3352be915c32556a02544ae142f5ca29`  
		Last Modified: Wed, 31 Aug 2016 21:07:25 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6cadad592ca5f20c5dfede73099c5a9d177306290360d321788c4df24cd02d`  
		Last Modified: Wed, 31 Aug 2016 21:07:26 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3aa610e6fc372d8caeab9f9d4a216516adbb8860b5ff5bf66a04ffcc1d3e03`  
		Last Modified: Wed, 31 Aug 2016 21:08:20 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-8`

```console
$ docker pull maven@sha256:f6becf58234086fa8cbfa89a38917ed3bec81baaac4465c3275d51ec22b60461
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251941742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:798297e72bd123e0fef89bcc8bba4221cc9ef739362093b08e6627c756cde360`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:15:01 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:15:01 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:15:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:15:03 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:15:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:08:40 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 21:08:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 21:08:41 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 21:08:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 21:08:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 21:08:42 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 21:08:43 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 21:08:43 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 21:08:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 21:08:44 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a614fcb4b1be6e9b94f188ac859803e5214d24c2af86c6437bd74817e75613d`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcd29499236d6a936fbacb8d65340eeb7177b930148fb1c401d5fa71ab88c82`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df99ed2f401ca635670635998c2b540cc748e390ffd8b47a2092815e6cb56b6`  
		Last Modified: Wed, 31 Aug 2016 17:26:53 GMT  
		Size: 130.1 MB (130073666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b6cf75aef4eade93918ef73b6c2896c664f50fdb8e6f5e4c586c05a3d4c864`  
		Last Modified: Wed, 31 Aug 2016 17:26:13 GMT  
		Size: 284.2 KB (284227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9530c9c753987e50d8b618d828ab559529c6d168decd110b00dc420d3f06f2f`  
		Last Modified: Wed, 31 Aug 2016 21:08:51 GMT  
		Size: 8.6 MB (8598847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b11c85df0f6231a6db532099b8b2140baf92d6c626130b08383bc8dbb3344ee`  
		Last Modified: Wed, 31 Aug 2016 21:08:50 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738259c5fcae4e5a0292b0cce6035e868d5d2b52cb6149db23718b8219881cba`  
		Last Modified: Wed, 31 Aug 2016 21:08:49 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9`

```console
$ docker pull maven@sha256:f6becf58234086fa8cbfa89a38917ed3bec81baaac4465c3275d51ec22b60461
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251941742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:798297e72bd123e0fef89bcc8bba4221cc9ef739362093b08e6627c756cde360`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:15:01 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:15:01 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:15:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:15:03 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:15:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:08:40 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 21:08:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 21:08:41 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 21:08:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 21:08:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 21:08:42 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 21:08:43 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 21:08:43 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 21:08:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 21:08:44 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a614fcb4b1be6e9b94f188ac859803e5214d24c2af86c6437bd74817e75613d`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcd29499236d6a936fbacb8d65340eeb7177b930148fb1c401d5fa71ab88c82`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df99ed2f401ca635670635998c2b540cc748e390ffd8b47a2092815e6cb56b6`  
		Last Modified: Wed, 31 Aug 2016 17:26:53 GMT  
		Size: 130.1 MB (130073666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b6cf75aef4eade93918ef73b6c2896c664f50fdb8e6f5e4c586c05a3d4c864`  
		Last Modified: Wed, 31 Aug 2016 17:26:13 GMT  
		Size: 284.2 KB (284227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9530c9c753987e50d8b618d828ab559529c6d168decd110b00dc420d3f06f2f`  
		Last Modified: Wed, 31 Aug 2016 21:08:51 GMT  
		Size: 8.6 MB (8598847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b11c85df0f6231a6db532099b8b2140baf92d6c626130b08383bc8dbb3344ee`  
		Last Modified: Wed, 31 Aug 2016 21:08:50 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738259c5fcae4e5a0292b0cce6035e868d5d2b52cb6149db23718b8219881cba`  
		Last Modified: Wed, 31 Aug 2016 21:08:49 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-8`

```console
$ docker pull maven@sha256:f6becf58234086fa8cbfa89a38917ed3bec81baaac4465c3275d51ec22b60461
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251941742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:798297e72bd123e0fef89bcc8bba4221cc9ef739362093b08e6627c756cde360`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:15:01 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:15:01 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:15:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:15:03 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:15:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:08:40 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 21:08:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 21:08:41 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 21:08:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 21:08:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 21:08:42 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 21:08:43 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 21:08:43 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 21:08:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 21:08:44 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a614fcb4b1be6e9b94f188ac859803e5214d24c2af86c6437bd74817e75613d`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcd29499236d6a936fbacb8d65340eeb7177b930148fb1c401d5fa71ab88c82`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df99ed2f401ca635670635998c2b540cc748e390ffd8b47a2092815e6cb56b6`  
		Last Modified: Wed, 31 Aug 2016 17:26:53 GMT  
		Size: 130.1 MB (130073666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b6cf75aef4eade93918ef73b6c2896c664f50fdb8e6f5e4c586c05a3d4c864`  
		Last Modified: Wed, 31 Aug 2016 17:26:13 GMT  
		Size: 284.2 KB (284227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9530c9c753987e50d8b618d828ab559529c6d168decd110b00dc420d3f06f2f`  
		Last Modified: Wed, 31 Aug 2016 21:08:51 GMT  
		Size: 8.6 MB (8598847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b11c85df0f6231a6db532099b8b2140baf92d6c626130b08383bc8dbb3344ee`  
		Last Modified: Wed, 31 Aug 2016 21:08:50 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738259c5fcae4e5a0292b0cce6035e868d5d2b52cb6149db23718b8219881cba`  
		Last Modified: Wed, 31 Aug 2016 21:08:49 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3`

```console
$ docker pull maven@sha256:f6becf58234086fa8cbfa89a38917ed3bec81baaac4465c3275d51ec22b60461
```

-	Platforms:
	-	linux; amd64

### `maven:3.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251941742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:798297e72bd123e0fef89bcc8bba4221cc9ef739362093b08e6627c756cde360`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:15:01 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:15:01 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:15:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:15:03 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:15:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:08:40 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 21:08:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 21:08:41 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 21:08:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 21:08:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 21:08:42 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 21:08:43 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 21:08:43 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 21:08:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 21:08:44 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a614fcb4b1be6e9b94f188ac859803e5214d24c2af86c6437bd74817e75613d`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcd29499236d6a936fbacb8d65340eeb7177b930148fb1c401d5fa71ab88c82`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df99ed2f401ca635670635998c2b540cc748e390ffd8b47a2092815e6cb56b6`  
		Last Modified: Wed, 31 Aug 2016 17:26:53 GMT  
		Size: 130.1 MB (130073666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b6cf75aef4eade93918ef73b6c2896c664f50fdb8e6f5e4c586c05a3d4c864`  
		Last Modified: Wed, 31 Aug 2016 17:26:13 GMT  
		Size: 284.2 KB (284227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9530c9c753987e50d8b618d828ab559529c6d168decd110b00dc420d3f06f2f`  
		Last Modified: Wed, 31 Aug 2016 21:08:51 GMT  
		Size: 8.6 MB (8598847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b11c85df0f6231a6db532099b8b2140baf92d6c626130b08383bc8dbb3344ee`  
		Last Modified: Wed, 31 Aug 2016 21:08:50 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738259c5fcae4e5a0292b0cce6035e868d5d2b52cb6149db23718b8219881cba`  
		Last Modified: Wed, 31 Aug 2016 21:08:49 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8`

```console
$ docker pull maven@sha256:f6becf58234086fa8cbfa89a38917ed3bec81baaac4465c3275d51ec22b60461
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251941742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:798297e72bd123e0fef89bcc8bba4221cc9ef739362093b08e6627c756cde360`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:15:01 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:15:01 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:15:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:15:03 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:15:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:08:40 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 21:08:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 21:08:41 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 21:08:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 21:08:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 21:08:42 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 21:08:43 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 21:08:43 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 21:08:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 21:08:44 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a614fcb4b1be6e9b94f188ac859803e5214d24c2af86c6437bd74817e75613d`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcd29499236d6a936fbacb8d65340eeb7177b930148fb1c401d5fa71ab88c82`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df99ed2f401ca635670635998c2b540cc748e390ffd8b47a2092815e6cb56b6`  
		Last Modified: Wed, 31 Aug 2016 17:26:53 GMT  
		Size: 130.1 MB (130073666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b6cf75aef4eade93918ef73b6c2896c664f50fdb8e6f5e4c586c05a3d4c864`  
		Last Modified: Wed, 31 Aug 2016 17:26:13 GMT  
		Size: 284.2 KB (284227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9530c9c753987e50d8b618d828ab559529c6d168decd110b00dc420d3f06f2f`  
		Last Modified: Wed, 31 Aug 2016 21:08:51 GMT  
		Size: 8.6 MB (8598847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b11c85df0f6231a6db532099b8b2140baf92d6c626130b08383bc8dbb3344ee`  
		Last Modified: Wed, 31 Aug 2016 21:08:50 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738259c5fcae4e5a0292b0cce6035e868d5d2b52cb6149db23718b8219881cba`  
		Last Modified: Wed, 31 Aug 2016 21:08:49 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3`

```console
$ docker pull maven@sha256:f6becf58234086fa8cbfa89a38917ed3bec81baaac4465c3275d51ec22b60461
```

-	Platforms:
	-	linux; amd64

### `maven:3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251941742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:798297e72bd123e0fef89bcc8bba4221cc9ef739362093b08e6627c756cde360`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:15:01 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:15:01 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:15:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:15:03 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:15:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:08:40 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 21:08:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 21:08:41 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 21:08:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 21:08:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 21:08:42 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 21:08:43 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 21:08:43 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 21:08:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 21:08:44 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a614fcb4b1be6e9b94f188ac859803e5214d24c2af86c6437bd74817e75613d`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcd29499236d6a936fbacb8d65340eeb7177b930148fb1c401d5fa71ab88c82`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df99ed2f401ca635670635998c2b540cc748e390ffd8b47a2092815e6cb56b6`  
		Last Modified: Wed, 31 Aug 2016 17:26:53 GMT  
		Size: 130.1 MB (130073666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b6cf75aef4eade93918ef73b6c2896c664f50fdb8e6f5e4c586c05a3d4c864`  
		Last Modified: Wed, 31 Aug 2016 17:26:13 GMT  
		Size: 284.2 KB (284227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9530c9c753987e50d8b618d828ab559529c6d168decd110b00dc420d3f06f2f`  
		Last Modified: Wed, 31 Aug 2016 21:08:51 GMT  
		Size: 8.6 MB (8598847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b11c85df0f6231a6db532099b8b2140baf92d6c626130b08383bc8dbb3344ee`  
		Last Modified: Wed, 31 Aug 2016 21:08:50 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738259c5fcae4e5a0292b0cce6035e868d5d2b52cb6149db23718b8219881cba`  
		Last Modified: Wed, 31 Aug 2016 21:08:49 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:latest`

```console
$ docker pull maven@sha256:f6becf58234086fa8cbfa89a38917ed3bec81baaac4465c3275d51ec22b60461
```

-	Platforms:
	-	linux; amd64

### `maven:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251941742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:798297e72bd123e0fef89bcc8bba4221cc9ef739362093b08e6627c756cde360`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:15:01 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:15:01 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:15:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:15:03 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:15:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:08:40 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 21:08:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 21:08:41 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 21:08:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 21:08:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 21:08:42 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 21:08:43 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 21:08:43 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 21:08:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 21:08:44 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a614fcb4b1be6e9b94f188ac859803e5214d24c2af86c6437bd74817e75613d`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcd29499236d6a936fbacb8d65340eeb7177b930148fb1c401d5fa71ab88c82`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df99ed2f401ca635670635998c2b540cc748e390ffd8b47a2092815e6cb56b6`  
		Last Modified: Wed, 31 Aug 2016 17:26:53 GMT  
		Size: 130.1 MB (130073666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b6cf75aef4eade93918ef73b6c2896c664f50fdb8e6f5e4c586c05a3d4c864`  
		Last Modified: Wed, 31 Aug 2016 17:26:13 GMT  
		Size: 284.2 KB (284227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9530c9c753987e50d8b618d828ab559529c6d168decd110b00dc420d3f06f2f`  
		Last Modified: Wed, 31 Aug 2016 21:08:51 GMT  
		Size: 8.6 MB (8598847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b11c85df0f6231a6db532099b8b2140baf92d6c626130b08383bc8dbb3344ee`  
		Last Modified: Wed, 31 Aug 2016 21:08:50 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738259c5fcae4e5a0292b0cce6035e868d5d2b52cb6149db23718b8219881cba`  
		Last Modified: Wed, 31 Aug 2016 21:08:49 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-8-onbuild`

```console
$ docker pull maven@sha256:237f0b9bb30f3303bfc3126dc1df83bad0083e981a345eb1e894a13c5f64cf16
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-8-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251941903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ee5900fafd08edb9fd1e5557265ec26a7c3692a50668900e3992b1d314b0c5a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:15:01 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:15:01 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:15:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:15:03 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:15:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:08:40 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 21:08:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 21:08:41 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 21:08:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 21:08:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 21:08:42 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 21:08:43 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 21:08:43 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 21:08:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 21:08:44 GMT
CMD ["mvn"]
# Wed, 31 Aug 2016 21:10:41 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 21:10:41 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 21:10:42 GMT
ONBUILD ADD . /usr/src/app
# Wed, 31 Aug 2016 21:10:42 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a614fcb4b1be6e9b94f188ac859803e5214d24c2af86c6437bd74817e75613d`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcd29499236d6a936fbacb8d65340eeb7177b930148fb1c401d5fa71ab88c82`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df99ed2f401ca635670635998c2b540cc748e390ffd8b47a2092815e6cb56b6`  
		Last Modified: Wed, 31 Aug 2016 17:26:53 GMT  
		Size: 130.1 MB (130073666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b6cf75aef4eade93918ef73b6c2896c664f50fdb8e6f5e4c586c05a3d4c864`  
		Last Modified: Wed, 31 Aug 2016 17:26:13 GMT  
		Size: 284.2 KB (284227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9530c9c753987e50d8b618d828ab559529c6d168decd110b00dc420d3f06f2f`  
		Last Modified: Wed, 31 Aug 2016 21:08:51 GMT  
		Size: 8.6 MB (8598847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b11c85df0f6231a6db532099b8b2140baf92d6c626130b08383bc8dbb3344ee`  
		Last Modified: Wed, 31 Aug 2016 21:08:50 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738259c5fcae4e5a0292b0cce6035e868d5d2b52cb6149db23718b8219881cba`  
		Last Modified: Wed, 31 Aug 2016 21:08:49 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3a2801393898ff0075b7d7a4868cbc45230d628c53d2ddfd3cc40122e2f610`  
		Last Modified: Wed, 31 Aug 2016 21:10:47 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-onbuild`

```console
$ docker pull maven@sha256:237f0b9bb30f3303bfc3126dc1df83bad0083e981a345eb1e894a13c5f64cf16
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251941903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ee5900fafd08edb9fd1e5557265ec26a7c3692a50668900e3992b1d314b0c5a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:15:01 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:15:01 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:15:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:15:03 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:15:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:08:40 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 21:08:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 21:08:41 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 21:08:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 21:08:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 21:08:42 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 21:08:43 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 21:08:43 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 21:08:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 21:08:44 GMT
CMD ["mvn"]
# Wed, 31 Aug 2016 21:10:41 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 21:10:41 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 21:10:42 GMT
ONBUILD ADD . /usr/src/app
# Wed, 31 Aug 2016 21:10:42 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a614fcb4b1be6e9b94f188ac859803e5214d24c2af86c6437bd74817e75613d`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcd29499236d6a936fbacb8d65340eeb7177b930148fb1c401d5fa71ab88c82`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df99ed2f401ca635670635998c2b540cc748e390ffd8b47a2092815e6cb56b6`  
		Last Modified: Wed, 31 Aug 2016 17:26:53 GMT  
		Size: 130.1 MB (130073666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b6cf75aef4eade93918ef73b6c2896c664f50fdb8e6f5e4c586c05a3d4c864`  
		Last Modified: Wed, 31 Aug 2016 17:26:13 GMT  
		Size: 284.2 KB (284227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9530c9c753987e50d8b618d828ab559529c6d168decd110b00dc420d3f06f2f`  
		Last Modified: Wed, 31 Aug 2016 21:08:51 GMT  
		Size: 8.6 MB (8598847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b11c85df0f6231a6db532099b8b2140baf92d6c626130b08383bc8dbb3344ee`  
		Last Modified: Wed, 31 Aug 2016 21:08:50 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738259c5fcae4e5a0292b0cce6035e868d5d2b52cb6149db23718b8219881cba`  
		Last Modified: Wed, 31 Aug 2016 21:08:49 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3a2801393898ff0075b7d7a4868cbc45230d628c53d2ddfd3cc40122e2f610`  
		Last Modified: Wed, 31 Aug 2016 21:10:47 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-8-onbuild`

```console
$ docker pull maven@sha256:237f0b9bb30f3303bfc3126dc1df83bad0083e981a345eb1e894a13c5f64cf16
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-8-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251941903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ee5900fafd08edb9fd1e5557265ec26a7c3692a50668900e3992b1d314b0c5a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:15:01 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:15:01 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:15:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:15:03 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:15:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:08:40 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 21:08:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 21:08:41 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 21:08:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 21:08:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 21:08:42 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 21:08:43 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 21:08:43 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 21:08:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 21:08:44 GMT
CMD ["mvn"]
# Wed, 31 Aug 2016 21:10:41 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 21:10:41 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 21:10:42 GMT
ONBUILD ADD . /usr/src/app
# Wed, 31 Aug 2016 21:10:42 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a614fcb4b1be6e9b94f188ac859803e5214d24c2af86c6437bd74817e75613d`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcd29499236d6a936fbacb8d65340eeb7177b930148fb1c401d5fa71ab88c82`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df99ed2f401ca635670635998c2b540cc748e390ffd8b47a2092815e6cb56b6`  
		Last Modified: Wed, 31 Aug 2016 17:26:53 GMT  
		Size: 130.1 MB (130073666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b6cf75aef4eade93918ef73b6c2896c664f50fdb8e6f5e4c586c05a3d4c864`  
		Last Modified: Wed, 31 Aug 2016 17:26:13 GMT  
		Size: 284.2 KB (284227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9530c9c753987e50d8b618d828ab559529c6d168decd110b00dc420d3f06f2f`  
		Last Modified: Wed, 31 Aug 2016 21:08:51 GMT  
		Size: 8.6 MB (8598847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b11c85df0f6231a6db532099b8b2140baf92d6c626130b08383bc8dbb3344ee`  
		Last Modified: Wed, 31 Aug 2016 21:08:50 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738259c5fcae4e5a0292b0cce6035e868d5d2b52cb6149db23718b8219881cba`  
		Last Modified: Wed, 31 Aug 2016 21:08:49 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3a2801393898ff0075b7d7a4868cbc45230d628c53d2ddfd3cc40122e2f610`  
		Last Modified: Wed, 31 Aug 2016 21:10:47 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-onbuild`

```console
$ docker pull maven@sha256:237f0b9bb30f3303bfc3126dc1df83bad0083e981a345eb1e894a13c5f64cf16
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251941903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ee5900fafd08edb9fd1e5557265ec26a7c3692a50668900e3992b1d314b0c5a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:15:01 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:15:01 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:15:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:15:03 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:15:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:08:40 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 21:08:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 21:08:41 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 21:08:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 21:08:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 21:08:42 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 21:08:43 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 21:08:43 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 21:08:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 21:08:44 GMT
CMD ["mvn"]
# Wed, 31 Aug 2016 21:10:41 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 21:10:41 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 21:10:42 GMT
ONBUILD ADD . /usr/src/app
# Wed, 31 Aug 2016 21:10:42 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a614fcb4b1be6e9b94f188ac859803e5214d24c2af86c6437bd74817e75613d`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcd29499236d6a936fbacb8d65340eeb7177b930148fb1c401d5fa71ab88c82`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df99ed2f401ca635670635998c2b540cc748e390ffd8b47a2092815e6cb56b6`  
		Last Modified: Wed, 31 Aug 2016 17:26:53 GMT  
		Size: 130.1 MB (130073666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b6cf75aef4eade93918ef73b6c2896c664f50fdb8e6f5e4c586c05a3d4c864`  
		Last Modified: Wed, 31 Aug 2016 17:26:13 GMT  
		Size: 284.2 KB (284227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9530c9c753987e50d8b618d828ab559529c6d168decd110b00dc420d3f06f2f`  
		Last Modified: Wed, 31 Aug 2016 21:08:51 GMT  
		Size: 8.6 MB (8598847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b11c85df0f6231a6db532099b8b2140baf92d6c626130b08383bc8dbb3344ee`  
		Last Modified: Wed, 31 Aug 2016 21:08:50 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738259c5fcae4e5a0292b0cce6035e868d5d2b52cb6149db23718b8219881cba`  
		Last Modified: Wed, 31 Aug 2016 21:08:49 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3a2801393898ff0075b7d7a4868cbc45230d628c53d2ddfd3cc40122e2f610`  
		Last Modified: Wed, 31 Aug 2016 21:10:47 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-onbuild`

```console
$ docker pull maven@sha256:237f0b9bb30f3303bfc3126dc1df83bad0083e981a345eb1e894a13c5f64cf16
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251941903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ee5900fafd08edb9fd1e5557265ec26a7c3692a50668900e3992b1d314b0c5a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:15:01 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:15:01 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:15:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:15:03 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:15:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:08:40 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 21:08:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 21:08:41 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 21:08:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 21:08:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 21:08:42 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 21:08:43 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 21:08:43 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 21:08:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 21:08:44 GMT
CMD ["mvn"]
# Wed, 31 Aug 2016 21:10:41 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 21:10:41 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 21:10:42 GMT
ONBUILD ADD . /usr/src/app
# Wed, 31 Aug 2016 21:10:42 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a614fcb4b1be6e9b94f188ac859803e5214d24c2af86c6437bd74817e75613d`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcd29499236d6a936fbacb8d65340eeb7177b930148fb1c401d5fa71ab88c82`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df99ed2f401ca635670635998c2b540cc748e390ffd8b47a2092815e6cb56b6`  
		Last Modified: Wed, 31 Aug 2016 17:26:53 GMT  
		Size: 130.1 MB (130073666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b6cf75aef4eade93918ef73b6c2896c664f50fdb8e6f5e4c586c05a3d4c864`  
		Last Modified: Wed, 31 Aug 2016 17:26:13 GMT  
		Size: 284.2 KB (284227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9530c9c753987e50d8b618d828ab559529c6d168decd110b00dc420d3f06f2f`  
		Last Modified: Wed, 31 Aug 2016 21:08:51 GMT  
		Size: 8.6 MB (8598847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b11c85df0f6231a6db532099b8b2140baf92d6c626130b08383bc8dbb3344ee`  
		Last Modified: Wed, 31 Aug 2016 21:08:50 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738259c5fcae4e5a0292b0cce6035e868d5d2b52cb6149db23718b8219881cba`  
		Last Modified: Wed, 31 Aug 2016 21:08:49 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3a2801393898ff0075b7d7a4868cbc45230d628c53d2ddfd3cc40122e2f610`  
		Last Modified: Wed, 31 Aug 2016 21:10:47 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-onbuild`

```console
$ docker pull maven@sha256:237f0b9bb30f3303bfc3126dc1df83bad0083e981a345eb1e894a13c5f64cf16
```

-	Platforms:
	-	linux; amd64

### `maven:3-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251941903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ee5900fafd08edb9fd1e5557265ec26a7c3692a50668900e3992b1d314b0c5a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:15:01 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:15:01 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:15:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:15:03 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:15:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:08:40 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 21:08:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 21:08:41 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 21:08:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 21:08:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 21:08:42 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 21:08:43 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 21:08:43 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 21:08:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 21:08:44 GMT
CMD ["mvn"]
# Wed, 31 Aug 2016 21:10:41 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 21:10:41 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 21:10:42 GMT
ONBUILD ADD . /usr/src/app
# Wed, 31 Aug 2016 21:10:42 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a614fcb4b1be6e9b94f188ac859803e5214d24c2af86c6437bd74817e75613d`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcd29499236d6a936fbacb8d65340eeb7177b930148fb1c401d5fa71ab88c82`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df99ed2f401ca635670635998c2b540cc748e390ffd8b47a2092815e6cb56b6`  
		Last Modified: Wed, 31 Aug 2016 17:26:53 GMT  
		Size: 130.1 MB (130073666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b6cf75aef4eade93918ef73b6c2896c664f50fdb8e6f5e4c586c05a3d4c864`  
		Last Modified: Wed, 31 Aug 2016 17:26:13 GMT  
		Size: 284.2 KB (284227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9530c9c753987e50d8b618d828ab559529c6d168decd110b00dc420d3f06f2f`  
		Last Modified: Wed, 31 Aug 2016 21:08:51 GMT  
		Size: 8.6 MB (8598847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b11c85df0f6231a6db532099b8b2140baf92d6c626130b08383bc8dbb3344ee`  
		Last Modified: Wed, 31 Aug 2016 21:08:50 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738259c5fcae4e5a0292b0cce6035e868d5d2b52cb6149db23718b8219881cba`  
		Last Modified: Wed, 31 Aug 2016 21:08:49 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3a2801393898ff0075b7d7a4868cbc45230d628c53d2ddfd3cc40122e2f610`  
		Last Modified: Wed, 31 Aug 2016 21:10:47 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:onbuild`

```console
$ docker pull maven@sha256:237f0b9bb30f3303bfc3126dc1df83bad0083e981a345eb1e894a13c5f64cf16
```

-	Platforms:
	-	linux; amd64

### `maven:onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251941903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ee5900fafd08edb9fd1e5557265ec26a7c3692a50668900e3992b1d314b0c5a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:15:01 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:15:01 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:15:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:15:03 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:15:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:08:40 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 21:08:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 21:08:41 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 21:08:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 21:08:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 21:08:42 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 21:08:43 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 21:08:43 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 21:08:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 21:08:44 GMT
CMD ["mvn"]
# Wed, 31 Aug 2016 21:10:41 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 21:10:41 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 21:10:42 GMT
ONBUILD ADD . /usr/src/app
# Wed, 31 Aug 2016 21:10:42 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a614fcb4b1be6e9b94f188ac859803e5214d24c2af86c6437bd74817e75613d`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcd29499236d6a936fbacb8d65340eeb7177b930148fb1c401d5fa71ab88c82`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df99ed2f401ca635670635998c2b540cc748e390ffd8b47a2092815e6cb56b6`  
		Last Modified: Wed, 31 Aug 2016 17:26:53 GMT  
		Size: 130.1 MB (130073666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b6cf75aef4eade93918ef73b6c2896c664f50fdb8e6f5e4c586c05a3d4c864`  
		Last Modified: Wed, 31 Aug 2016 17:26:13 GMT  
		Size: 284.2 KB (284227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9530c9c753987e50d8b618d828ab559529c6d168decd110b00dc420d3f06f2f`  
		Last Modified: Wed, 31 Aug 2016 21:08:51 GMT  
		Size: 8.6 MB (8598847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b11c85df0f6231a6db532099b8b2140baf92d6c626130b08383bc8dbb3344ee`  
		Last Modified: Wed, 31 Aug 2016 21:08:50 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738259c5fcae4e5a0292b0cce6035e868d5d2b52cb6149db23718b8219881cba`  
		Last Modified: Wed, 31 Aug 2016 21:08:49 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3a2801393898ff0075b7d7a4868cbc45230d628c53d2ddfd3cc40122e2f610`  
		Last Modified: Wed, 31 Aug 2016 21:10:47 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-8-alpine`

```console
$ docker pull maven@sha256:aa471c4b227a4fdd20ddb30b690d0bb383951371e49c626015a3520af884242c
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-8-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61922321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3277efdcd5a1a470a2b67edd7d8cf7e41b9f4321431c0b3c4d38f313caee4c33`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 30 Aug 2016 19:55:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:55:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 04:49:24 GMT
RUN apk add --no-cache curl tar bash
# Wed, 31 Aug 2016 04:49:24 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 04:49:24 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 04:49:25 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 04:49:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 04:49:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 04:49:26 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 04:49:27 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 04:49:27 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 04:49:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 04:49:28 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f0d61cd0d229546b1e33b0c92036ad3f35b42dd2c9a945aeaf67f84684ce26`  
		Last Modified: Tue, 30 Aug 2016 21:56:07 GMT  
		Size: 49.3 MB (49325330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0973e1692b3386eea97dfbb0d29ff4fffe499f41f77295d6ae982e7b3be12a4d`  
		Last Modified: Wed, 31 Aug 2016 21:09:49 GMT  
		Size: 1.7 MB (1686596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47cc4c80728515a820f0bf2f2b46d95afe62a3e6b9147ccdb10afb458f9f344`  
		Last Modified: Wed, 31 Aug 2016 21:09:49 GMT  
		Size: 8.6 MB (8598842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e344ff1ea65115dece12e7ea0821f5f563e5644db256be591f034bb13e07571`  
		Last Modified: Wed, 31 Aug 2016 21:09:48 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36922a31d2ce8ee1902ee1c519b035ad3d98f6d68b0b739592cc597bf0e505f`  
		Last Modified: Wed, 31 Aug 2016 21:09:48 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-alpine`

```console
$ docker pull maven@sha256:aa471c4b227a4fdd20ddb30b690d0bb383951371e49c626015a3520af884242c
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61922321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3277efdcd5a1a470a2b67edd7d8cf7e41b9f4321431c0b3c4d38f313caee4c33`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 30 Aug 2016 19:55:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:55:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 04:49:24 GMT
RUN apk add --no-cache curl tar bash
# Wed, 31 Aug 2016 04:49:24 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 04:49:24 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 04:49:25 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 04:49:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 04:49:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 04:49:26 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 04:49:27 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 04:49:27 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 04:49:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 04:49:28 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f0d61cd0d229546b1e33b0c92036ad3f35b42dd2c9a945aeaf67f84684ce26`  
		Last Modified: Tue, 30 Aug 2016 21:56:07 GMT  
		Size: 49.3 MB (49325330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0973e1692b3386eea97dfbb0d29ff4fffe499f41f77295d6ae982e7b3be12a4d`  
		Last Modified: Wed, 31 Aug 2016 21:09:49 GMT  
		Size: 1.7 MB (1686596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47cc4c80728515a820f0bf2f2b46d95afe62a3e6b9147ccdb10afb458f9f344`  
		Last Modified: Wed, 31 Aug 2016 21:09:49 GMT  
		Size: 8.6 MB (8598842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e344ff1ea65115dece12e7ea0821f5f563e5644db256be591f034bb13e07571`  
		Last Modified: Wed, 31 Aug 2016 21:09:48 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36922a31d2ce8ee1902ee1c519b035ad3d98f6d68b0b739592cc597bf0e505f`  
		Last Modified: Wed, 31 Aug 2016 21:09:48 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-8-alpine`

```console
$ docker pull maven@sha256:aa471c4b227a4fdd20ddb30b690d0bb383951371e49c626015a3520af884242c
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-8-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61922321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3277efdcd5a1a470a2b67edd7d8cf7e41b9f4321431c0b3c4d38f313caee4c33`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 30 Aug 2016 19:55:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:55:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 04:49:24 GMT
RUN apk add --no-cache curl tar bash
# Wed, 31 Aug 2016 04:49:24 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 04:49:24 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 04:49:25 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 04:49:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 04:49:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 04:49:26 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 04:49:27 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 04:49:27 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 04:49:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 04:49:28 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f0d61cd0d229546b1e33b0c92036ad3f35b42dd2c9a945aeaf67f84684ce26`  
		Last Modified: Tue, 30 Aug 2016 21:56:07 GMT  
		Size: 49.3 MB (49325330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0973e1692b3386eea97dfbb0d29ff4fffe499f41f77295d6ae982e7b3be12a4d`  
		Last Modified: Wed, 31 Aug 2016 21:09:49 GMT  
		Size: 1.7 MB (1686596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47cc4c80728515a820f0bf2f2b46d95afe62a3e6b9147ccdb10afb458f9f344`  
		Last Modified: Wed, 31 Aug 2016 21:09:49 GMT  
		Size: 8.6 MB (8598842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e344ff1ea65115dece12e7ea0821f5f563e5644db256be591f034bb13e07571`  
		Last Modified: Wed, 31 Aug 2016 21:09:48 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36922a31d2ce8ee1902ee1c519b035ad3d98f6d68b0b739592cc597bf0e505f`  
		Last Modified: Wed, 31 Aug 2016 21:09:48 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-alpine`

```console
$ docker pull maven@sha256:aa471c4b227a4fdd20ddb30b690d0bb383951371e49c626015a3520af884242c
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61922321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3277efdcd5a1a470a2b67edd7d8cf7e41b9f4321431c0b3c4d38f313caee4c33`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 30 Aug 2016 19:55:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:55:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 04:49:24 GMT
RUN apk add --no-cache curl tar bash
# Wed, 31 Aug 2016 04:49:24 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 04:49:24 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 04:49:25 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 04:49:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 04:49:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 04:49:26 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 04:49:27 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 04:49:27 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 04:49:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 04:49:28 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f0d61cd0d229546b1e33b0c92036ad3f35b42dd2c9a945aeaf67f84684ce26`  
		Last Modified: Tue, 30 Aug 2016 21:56:07 GMT  
		Size: 49.3 MB (49325330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0973e1692b3386eea97dfbb0d29ff4fffe499f41f77295d6ae982e7b3be12a4d`  
		Last Modified: Wed, 31 Aug 2016 21:09:49 GMT  
		Size: 1.7 MB (1686596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47cc4c80728515a820f0bf2f2b46d95afe62a3e6b9147ccdb10afb458f9f344`  
		Last Modified: Wed, 31 Aug 2016 21:09:49 GMT  
		Size: 8.6 MB (8598842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e344ff1ea65115dece12e7ea0821f5f563e5644db256be591f034bb13e07571`  
		Last Modified: Wed, 31 Aug 2016 21:09:48 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36922a31d2ce8ee1902ee1c519b035ad3d98f6d68b0b739592cc597bf0e505f`  
		Last Modified: Wed, 31 Aug 2016 21:09:48 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-alpine`

```console
$ docker pull maven@sha256:aa471c4b227a4fdd20ddb30b690d0bb383951371e49c626015a3520af884242c
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61922321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3277efdcd5a1a470a2b67edd7d8cf7e41b9f4321431c0b3c4d38f313caee4c33`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 30 Aug 2016 19:55:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:55:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 04:49:24 GMT
RUN apk add --no-cache curl tar bash
# Wed, 31 Aug 2016 04:49:24 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 04:49:24 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 04:49:25 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 04:49:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 04:49:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 04:49:26 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 04:49:27 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 04:49:27 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 04:49:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 04:49:28 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f0d61cd0d229546b1e33b0c92036ad3f35b42dd2c9a945aeaf67f84684ce26`  
		Last Modified: Tue, 30 Aug 2016 21:56:07 GMT  
		Size: 49.3 MB (49325330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0973e1692b3386eea97dfbb0d29ff4fffe499f41f77295d6ae982e7b3be12a4d`  
		Last Modified: Wed, 31 Aug 2016 21:09:49 GMT  
		Size: 1.7 MB (1686596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47cc4c80728515a820f0bf2f2b46d95afe62a3e6b9147ccdb10afb458f9f344`  
		Last Modified: Wed, 31 Aug 2016 21:09:49 GMT  
		Size: 8.6 MB (8598842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e344ff1ea65115dece12e7ea0821f5f563e5644db256be591f034bb13e07571`  
		Last Modified: Wed, 31 Aug 2016 21:09:48 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36922a31d2ce8ee1902ee1c519b035ad3d98f6d68b0b739592cc597bf0e505f`  
		Last Modified: Wed, 31 Aug 2016 21:09:48 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-alpine`

```console
$ docker pull maven@sha256:aa471c4b227a4fdd20ddb30b690d0bb383951371e49c626015a3520af884242c
```

-	Platforms:
	-	linux; amd64

### `maven:3-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61922321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3277efdcd5a1a470a2b67edd7d8cf7e41b9f4321431c0b3c4d38f313caee4c33`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 30 Aug 2016 19:55:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:55:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 04:49:24 GMT
RUN apk add --no-cache curl tar bash
# Wed, 31 Aug 2016 04:49:24 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 04:49:24 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 04:49:25 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 04:49:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 04:49:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 04:49:26 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 04:49:27 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 04:49:27 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 04:49:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 04:49:28 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f0d61cd0d229546b1e33b0c92036ad3f35b42dd2c9a945aeaf67f84684ce26`  
		Last Modified: Tue, 30 Aug 2016 21:56:07 GMT  
		Size: 49.3 MB (49325330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0973e1692b3386eea97dfbb0d29ff4fffe499f41f77295d6ae982e7b3be12a4d`  
		Last Modified: Wed, 31 Aug 2016 21:09:49 GMT  
		Size: 1.7 MB (1686596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47cc4c80728515a820f0bf2f2b46d95afe62a3e6b9147ccdb10afb458f9f344`  
		Last Modified: Wed, 31 Aug 2016 21:09:49 GMT  
		Size: 8.6 MB (8598842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e344ff1ea65115dece12e7ea0821f5f563e5644db256be591f034bb13e07571`  
		Last Modified: Wed, 31 Aug 2016 21:09:48 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36922a31d2ce8ee1902ee1c519b035ad3d98f6d68b0b739592cc597bf0e505f`  
		Last Modified: Wed, 31 Aug 2016 21:09:48 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:alpine`

```console
$ docker pull maven@sha256:aa471c4b227a4fdd20ddb30b690d0bb383951371e49c626015a3520af884242c
```

-	Platforms:
	-	linux; amd64

### `maven:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61922321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3277efdcd5a1a470a2b67edd7d8cf7e41b9f4321431c0b3c4d38f313caee4c33`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 30 Aug 2016 19:55:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:55:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 04:49:24 GMT
RUN apk add --no-cache curl tar bash
# Wed, 31 Aug 2016 04:49:24 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 04:49:24 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 04:49:25 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 04:49:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 04:49:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 04:49:26 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 04:49:27 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 04:49:27 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 04:49:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 04:49:28 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f0d61cd0d229546b1e33b0c92036ad3f35b42dd2c9a945aeaf67f84684ce26`  
		Last Modified: Tue, 30 Aug 2016 21:56:07 GMT  
		Size: 49.3 MB (49325330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0973e1692b3386eea97dfbb0d29ff4fffe499f41f77295d6ae982e7b3be12a4d`  
		Last Modified: Wed, 31 Aug 2016 21:09:49 GMT  
		Size: 1.7 MB (1686596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47cc4c80728515a820f0bf2f2b46d95afe62a3e6b9147ccdb10afb458f9f344`  
		Last Modified: Wed, 31 Aug 2016 21:09:49 GMT  
		Size: 8.6 MB (8598842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e344ff1ea65115dece12e7ea0821f5f563e5644db256be591f034bb13e07571`  
		Last Modified: Wed, 31 Aug 2016 21:09:48 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36922a31d2ce8ee1902ee1c519b035ad3d98f6d68b0b739592cc597bf0e505f`  
		Last Modified: Wed, 31 Aug 2016 21:09:48 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-8-onbuild-alpine`

```console
$ docker pull maven@sha256:4dad6b5f21f5cf8628dbb9ed10848a43c12fddd226711805e7de4fbf4e1ef271
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-8-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61922479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5715760078feafad6224401921fc1e93a314af539dc725aafd8813744afbf7b2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 30 Aug 2016 19:55:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:55:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 04:49:24 GMT
RUN apk add --no-cache curl tar bash
# Wed, 31 Aug 2016 04:49:24 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 04:49:24 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 04:49:25 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 04:49:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 04:49:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 04:49:26 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 04:49:27 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 04:49:27 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 04:49:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 04:49:28 GMT
CMD ["mvn"]
# Wed, 31 Aug 2016 04:49:29 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 04:49:29 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 04:49:29 GMT
ONBUILD ADD . /usr/src/app
# Wed, 31 Aug 2016 04:49:29 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f0d61cd0d229546b1e33b0c92036ad3f35b42dd2c9a945aeaf67f84684ce26`  
		Last Modified: Tue, 30 Aug 2016 21:56:07 GMT  
		Size: 49.3 MB (49325330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0973e1692b3386eea97dfbb0d29ff4fffe499f41f77295d6ae982e7b3be12a4d`  
		Last Modified: Wed, 31 Aug 2016 21:09:49 GMT  
		Size: 1.7 MB (1686596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47cc4c80728515a820f0bf2f2b46d95afe62a3e6b9147ccdb10afb458f9f344`  
		Last Modified: Wed, 31 Aug 2016 21:09:49 GMT  
		Size: 8.6 MB (8598842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e344ff1ea65115dece12e7ea0821f5f563e5644db256be591f034bb13e07571`  
		Last Modified: Wed, 31 Aug 2016 21:09:48 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36922a31d2ce8ee1902ee1c519b035ad3d98f6d68b0b739592cc597bf0e505f`  
		Last Modified: Wed, 31 Aug 2016 21:09:48 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2596c264b6f65c691f1d58366a0332cf0b2a1e102e3fffd05278d1af4a356c1a`  
		Last Modified: Wed, 31 Aug 2016 21:11:41 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-onbuild-alpine`

```console
$ docker pull maven@sha256:4dad6b5f21f5cf8628dbb9ed10848a43c12fddd226711805e7de4fbf4e1ef271
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61922479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5715760078feafad6224401921fc1e93a314af539dc725aafd8813744afbf7b2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 30 Aug 2016 19:55:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:55:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 04:49:24 GMT
RUN apk add --no-cache curl tar bash
# Wed, 31 Aug 2016 04:49:24 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 04:49:24 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 04:49:25 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 04:49:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 04:49:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 04:49:26 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 04:49:27 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 04:49:27 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 04:49:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 04:49:28 GMT
CMD ["mvn"]
# Wed, 31 Aug 2016 04:49:29 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 04:49:29 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 04:49:29 GMT
ONBUILD ADD . /usr/src/app
# Wed, 31 Aug 2016 04:49:29 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f0d61cd0d229546b1e33b0c92036ad3f35b42dd2c9a945aeaf67f84684ce26`  
		Last Modified: Tue, 30 Aug 2016 21:56:07 GMT  
		Size: 49.3 MB (49325330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0973e1692b3386eea97dfbb0d29ff4fffe499f41f77295d6ae982e7b3be12a4d`  
		Last Modified: Wed, 31 Aug 2016 21:09:49 GMT  
		Size: 1.7 MB (1686596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47cc4c80728515a820f0bf2f2b46d95afe62a3e6b9147ccdb10afb458f9f344`  
		Last Modified: Wed, 31 Aug 2016 21:09:49 GMT  
		Size: 8.6 MB (8598842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e344ff1ea65115dece12e7ea0821f5f563e5644db256be591f034bb13e07571`  
		Last Modified: Wed, 31 Aug 2016 21:09:48 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36922a31d2ce8ee1902ee1c519b035ad3d98f6d68b0b739592cc597bf0e505f`  
		Last Modified: Wed, 31 Aug 2016 21:09:48 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2596c264b6f65c691f1d58366a0332cf0b2a1e102e3fffd05278d1af4a356c1a`  
		Last Modified: Wed, 31 Aug 2016 21:11:41 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-8-onbuild-alpine`

```console
$ docker pull maven@sha256:4dad6b5f21f5cf8628dbb9ed10848a43c12fddd226711805e7de4fbf4e1ef271
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-8-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61922479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5715760078feafad6224401921fc1e93a314af539dc725aafd8813744afbf7b2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 30 Aug 2016 19:55:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:55:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 04:49:24 GMT
RUN apk add --no-cache curl tar bash
# Wed, 31 Aug 2016 04:49:24 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 04:49:24 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 04:49:25 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 04:49:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 04:49:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 04:49:26 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 04:49:27 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 04:49:27 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 04:49:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 04:49:28 GMT
CMD ["mvn"]
# Wed, 31 Aug 2016 04:49:29 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 04:49:29 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 04:49:29 GMT
ONBUILD ADD . /usr/src/app
# Wed, 31 Aug 2016 04:49:29 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f0d61cd0d229546b1e33b0c92036ad3f35b42dd2c9a945aeaf67f84684ce26`  
		Last Modified: Tue, 30 Aug 2016 21:56:07 GMT  
		Size: 49.3 MB (49325330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0973e1692b3386eea97dfbb0d29ff4fffe499f41f77295d6ae982e7b3be12a4d`  
		Last Modified: Wed, 31 Aug 2016 21:09:49 GMT  
		Size: 1.7 MB (1686596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47cc4c80728515a820f0bf2f2b46d95afe62a3e6b9147ccdb10afb458f9f344`  
		Last Modified: Wed, 31 Aug 2016 21:09:49 GMT  
		Size: 8.6 MB (8598842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e344ff1ea65115dece12e7ea0821f5f563e5644db256be591f034bb13e07571`  
		Last Modified: Wed, 31 Aug 2016 21:09:48 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36922a31d2ce8ee1902ee1c519b035ad3d98f6d68b0b739592cc597bf0e505f`  
		Last Modified: Wed, 31 Aug 2016 21:09:48 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2596c264b6f65c691f1d58366a0332cf0b2a1e102e3fffd05278d1af4a356c1a`  
		Last Modified: Wed, 31 Aug 2016 21:11:41 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-onbuild-alpine`

```console
$ docker pull maven@sha256:4dad6b5f21f5cf8628dbb9ed10848a43c12fddd226711805e7de4fbf4e1ef271
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61922479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5715760078feafad6224401921fc1e93a314af539dc725aafd8813744afbf7b2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 30 Aug 2016 19:55:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:55:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 04:49:24 GMT
RUN apk add --no-cache curl tar bash
# Wed, 31 Aug 2016 04:49:24 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 04:49:24 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 04:49:25 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 04:49:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 04:49:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 04:49:26 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 04:49:27 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 04:49:27 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 04:49:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 04:49:28 GMT
CMD ["mvn"]
# Wed, 31 Aug 2016 04:49:29 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 04:49:29 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 04:49:29 GMT
ONBUILD ADD . /usr/src/app
# Wed, 31 Aug 2016 04:49:29 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f0d61cd0d229546b1e33b0c92036ad3f35b42dd2c9a945aeaf67f84684ce26`  
		Last Modified: Tue, 30 Aug 2016 21:56:07 GMT  
		Size: 49.3 MB (49325330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0973e1692b3386eea97dfbb0d29ff4fffe499f41f77295d6ae982e7b3be12a4d`  
		Last Modified: Wed, 31 Aug 2016 21:09:49 GMT  
		Size: 1.7 MB (1686596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47cc4c80728515a820f0bf2f2b46d95afe62a3e6b9147ccdb10afb458f9f344`  
		Last Modified: Wed, 31 Aug 2016 21:09:49 GMT  
		Size: 8.6 MB (8598842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e344ff1ea65115dece12e7ea0821f5f563e5644db256be591f034bb13e07571`  
		Last Modified: Wed, 31 Aug 2016 21:09:48 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36922a31d2ce8ee1902ee1c519b035ad3d98f6d68b0b739592cc597bf0e505f`  
		Last Modified: Wed, 31 Aug 2016 21:09:48 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2596c264b6f65c691f1d58366a0332cf0b2a1e102e3fffd05278d1af4a356c1a`  
		Last Modified: Wed, 31 Aug 2016 21:11:41 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-onbuild-alpine`

```console
$ docker pull maven@sha256:4dad6b5f21f5cf8628dbb9ed10848a43c12fddd226711805e7de4fbf4e1ef271
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61922479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5715760078feafad6224401921fc1e93a314af539dc725aafd8813744afbf7b2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 30 Aug 2016 19:55:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:55:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 04:49:24 GMT
RUN apk add --no-cache curl tar bash
# Wed, 31 Aug 2016 04:49:24 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 04:49:24 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 04:49:25 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 04:49:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 04:49:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 04:49:26 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 04:49:27 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 04:49:27 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 04:49:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 04:49:28 GMT
CMD ["mvn"]
# Wed, 31 Aug 2016 04:49:29 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 04:49:29 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 04:49:29 GMT
ONBUILD ADD . /usr/src/app
# Wed, 31 Aug 2016 04:49:29 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f0d61cd0d229546b1e33b0c92036ad3f35b42dd2c9a945aeaf67f84684ce26`  
		Last Modified: Tue, 30 Aug 2016 21:56:07 GMT  
		Size: 49.3 MB (49325330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0973e1692b3386eea97dfbb0d29ff4fffe499f41f77295d6ae982e7b3be12a4d`  
		Last Modified: Wed, 31 Aug 2016 21:09:49 GMT  
		Size: 1.7 MB (1686596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47cc4c80728515a820f0bf2f2b46d95afe62a3e6b9147ccdb10afb458f9f344`  
		Last Modified: Wed, 31 Aug 2016 21:09:49 GMT  
		Size: 8.6 MB (8598842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e344ff1ea65115dece12e7ea0821f5f563e5644db256be591f034bb13e07571`  
		Last Modified: Wed, 31 Aug 2016 21:09:48 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36922a31d2ce8ee1902ee1c519b035ad3d98f6d68b0b739592cc597bf0e505f`  
		Last Modified: Wed, 31 Aug 2016 21:09:48 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2596c264b6f65c691f1d58366a0332cf0b2a1e102e3fffd05278d1af4a356c1a`  
		Last Modified: Wed, 31 Aug 2016 21:11:41 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-onbuild-alpine`

```console
$ docker pull maven@sha256:4dad6b5f21f5cf8628dbb9ed10848a43c12fddd226711805e7de4fbf4e1ef271
```

-	Platforms:
	-	linux; amd64

### `maven:3-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61922479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5715760078feafad6224401921fc1e93a314af539dc725aafd8813744afbf7b2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 30 Aug 2016 19:55:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:55:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 04:49:24 GMT
RUN apk add --no-cache curl tar bash
# Wed, 31 Aug 2016 04:49:24 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 04:49:24 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 04:49:25 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 04:49:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 04:49:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 04:49:26 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 04:49:27 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 04:49:27 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 04:49:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 04:49:28 GMT
CMD ["mvn"]
# Wed, 31 Aug 2016 04:49:29 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 04:49:29 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 04:49:29 GMT
ONBUILD ADD . /usr/src/app
# Wed, 31 Aug 2016 04:49:29 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f0d61cd0d229546b1e33b0c92036ad3f35b42dd2c9a945aeaf67f84684ce26`  
		Last Modified: Tue, 30 Aug 2016 21:56:07 GMT  
		Size: 49.3 MB (49325330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0973e1692b3386eea97dfbb0d29ff4fffe499f41f77295d6ae982e7b3be12a4d`  
		Last Modified: Wed, 31 Aug 2016 21:09:49 GMT  
		Size: 1.7 MB (1686596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47cc4c80728515a820f0bf2f2b46d95afe62a3e6b9147ccdb10afb458f9f344`  
		Last Modified: Wed, 31 Aug 2016 21:09:49 GMT  
		Size: 8.6 MB (8598842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e344ff1ea65115dece12e7ea0821f5f563e5644db256be591f034bb13e07571`  
		Last Modified: Wed, 31 Aug 2016 21:09:48 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36922a31d2ce8ee1902ee1c519b035ad3d98f6d68b0b739592cc597bf0e505f`  
		Last Modified: Wed, 31 Aug 2016 21:09:48 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2596c264b6f65c691f1d58366a0332cf0b2a1e102e3fffd05278d1af4a356c1a`  
		Last Modified: Wed, 31 Aug 2016 21:11:41 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:onbuild-alpine`

```console
$ docker pull maven@sha256:4dad6b5f21f5cf8628dbb9ed10848a43c12fddd226711805e7de4fbf4e1ef271
```

-	Platforms:
	-	linux; amd64

### `maven:onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61922479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5715760078feafad6224401921fc1e93a314af539dc725aafd8813744afbf7b2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 30 Aug 2016 19:55:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:55:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 04:49:24 GMT
RUN apk add --no-cache curl tar bash
# Wed, 31 Aug 2016 04:49:24 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 04:49:24 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 04:49:25 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 04:49:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 04:49:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 04:49:26 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 04:49:27 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 04:49:27 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 04:49:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 04:49:28 GMT
CMD ["mvn"]
# Wed, 31 Aug 2016 04:49:29 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 04:49:29 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 04:49:29 GMT
ONBUILD ADD . /usr/src/app
# Wed, 31 Aug 2016 04:49:29 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f0d61cd0d229546b1e33b0c92036ad3f35b42dd2c9a945aeaf67f84684ce26`  
		Last Modified: Tue, 30 Aug 2016 21:56:07 GMT  
		Size: 49.3 MB (49325330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0973e1692b3386eea97dfbb0d29ff4fffe499f41f77295d6ae982e7b3be12a4d`  
		Last Modified: Wed, 31 Aug 2016 21:09:49 GMT  
		Size: 1.7 MB (1686596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47cc4c80728515a820f0bf2f2b46d95afe62a3e6b9147ccdb10afb458f9f344`  
		Last Modified: Wed, 31 Aug 2016 21:09:49 GMT  
		Size: 8.6 MB (8598842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e344ff1ea65115dece12e7ea0821f5f563e5644db256be591f034bb13e07571`  
		Last Modified: Wed, 31 Aug 2016 21:09:48 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36922a31d2ce8ee1902ee1c519b035ad3d98f6d68b0b739592cc597bf0e505f`  
		Last Modified: Wed, 31 Aug 2016 21:09:48 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2596c264b6f65c691f1d58366a0332cf0b2a1e102e3fffd05278d1af4a356c1a`  
		Last Modified: Wed, 31 Aug 2016 21:11:41 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-9`

```console
$ docker pull maven@sha256:1a4c88502113547c449cf7a6b9f31f390429c88671dacb3b3d99d1e9a9c351a6
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.1 MB (248086845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46859d9a0d5bda7b938e9c313b5379381ab6ca7c0c38c646d662628ad58ec679`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:05 GMT
ADD file:cde9313f179951bdf9a85569736d1720e757e4b3710e422228ba66a1789469a9 in / 
# Tue, 30 Aug 2016 21:01:05 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:53:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:54:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:56 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 31 Aug 2016 17:16:56 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Wed, 31 Aug 2016 17:16:57 GMT
ENV JAVA_VERSION=9~b133
# Wed, 31 Aug 2016 17:16:58 GMT
ENV JAVA_DEBIAN_VERSION=9~b133-1
# Wed, 31 Aug 2016 17:17:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 21:06:15 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 21:06:15 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 21:06:19 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 21:06:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 21:06:19 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 21:06:20 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 21:06:20 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 21:06:20 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 21:06:21 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 21:06:21 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f45860c16bdb654da5c2c7bea335dcb2db33cf95ace30c719175aef1a0d41fbb`  
		Last Modified: Tue, 30 Aug 2016 21:03:28 GMT  
		Size: 42.5 MB (42455191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af28bbafd0e3620fa7da5fba49de724bc4c40d71bee92937c0e52f24d3e1eb9b`  
		Last Modified: Tue, 30 Aug 2016 22:01:19 GMT  
		Size: 20.5 MB (20547306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469d6b6129b0efb9c583749806287b09e55305db0d5a394bebf242b9be3b0d13`  
		Last Modified: Tue, 30 Aug 2016 22:01:37 GMT  
		Size: 48.1 MB (48089667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e9a7208ad8b35f80cc0dbc210327b873d2d3e316f8ef1e65cad78759aac631`  
		Last Modified: Wed, 31 Aug 2016 17:31:37 GMT  
		Size: 592.0 KB (591960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b155245e34ebe588c54045dfac4190425d1f8680b38f90341a086d86308b8f`  
		Last Modified: Wed, 31 Aug 2016 17:31:35 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce7db45669479028025bf0f725a7ef6ae754d637f9d5fa68fa5bb1073ce7d8d`  
		Last Modified: Wed, 31 Aug 2016 17:31:35 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f335ec81c971b7744f9270fc849ce848d9ad254a4a7861de10f2dda2328945f`  
		Last Modified: Wed, 31 Aug 2016 17:32:06 GMT  
		Size: 127.8 MB (127802367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6237b083c126950351429821f642895e04a6d12aca13ec111cbcd6a9c41fac4`  
		Last Modified: Wed, 31 Aug 2016 21:06:28 GMT  
		Size: 8.6 MB (8598851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30555558d1b3ddca0d126b855c32b89aa5b4b947a911bf65586a3b144d05060a`  
		Last Modified: Wed, 31 Aug 2016 21:06:28 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d69c06445d3c9ec60cefe210f169929795116fdafb2991be6a61721841fc4e5`  
		Last Modified: Wed, 31 Aug 2016 21:06:27 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-9`

```console
$ docker pull maven@sha256:1a4c88502113547c449cf7a6b9f31f390429c88671dacb3b3d99d1e9a9c351a6
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.1 MB (248086845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46859d9a0d5bda7b938e9c313b5379381ab6ca7c0c38c646d662628ad58ec679`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:05 GMT
ADD file:cde9313f179951bdf9a85569736d1720e757e4b3710e422228ba66a1789469a9 in / 
# Tue, 30 Aug 2016 21:01:05 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:53:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:54:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:56 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 31 Aug 2016 17:16:56 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Wed, 31 Aug 2016 17:16:57 GMT
ENV JAVA_VERSION=9~b133
# Wed, 31 Aug 2016 17:16:58 GMT
ENV JAVA_DEBIAN_VERSION=9~b133-1
# Wed, 31 Aug 2016 17:17:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 21:06:15 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 21:06:15 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 21:06:19 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 21:06:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 21:06:19 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 21:06:20 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 21:06:20 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 21:06:20 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 21:06:21 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 21:06:21 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f45860c16bdb654da5c2c7bea335dcb2db33cf95ace30c719175aef1a0d41fbb`  
		Last Modified: Tue, 30 Aug 2016 21:03:28 GMT  
		Size: 42.5 MB (42455191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af28bbafd0e3620fa7da5fba49de724bc4c40d71bee92937c0e52f24d3e1eb9b`  
		Last Modified: Tue, 30 Aug 2016 22:01:19 GMT  
		Size: 20.5 MB (20547306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469d6b6129b0efb9c583749806287b09e55305db0d5a394bebf242b9be3b0d13`  
		Last Modified: Tue, 30 Aug 2016 22:01:37 GMT  
		Size: 48.1 MB (48089667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e9a7208ad8b35f80cc0dbc210327b873d2d3e316f8ef1e65cad78759aac631`  
		Last Modified: Wed, 31 Aug 2016 17:31:37 GMT  
		Size: 592.0 KB (591960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b155245e34ebe588c54045dfac4190425d1f8680b38f90341a086d86308b8f`  
		Last Modified: Wed, 31 Aug 2016 17:31:35 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce7db45669479028025bf0f725a7ef6ae754d637f9d5fa68fa5bb1073ce7d8d`  
		Last Modified: Wed, 31 Aug 2016 17:31:35 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f335ec81c971b7744f9270fc849ce848d9ad254a4a7861de10f2dda2328945f`  
		Last Modified: Wed, 31 Aug 2016 17:32:06 GMT  
		Size: 127.8 MB (127802367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6237b083c126950351429821f642895e04a6d12aca13ec111cbcd6a9c41fac4`  
		Last Modified: Wed, 31 Aug 2016 21:06:28 GMT  
		Size: 8.6 MB (8598851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30555558d1b3ddca0d126b855c32b89aa5b4b947a911bf65586a3b144d05060a`  
		Last Modified: Wed, 31 Aug 2016 21:06:28 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d69c06445d3c9ec60cefe210f169929795116fdafb2991be6a61721841fc4e5`  
		Last Modified: Wed, 31 Aug 2016 21:06:27 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-9`

```console
$ docker pull maven@sha256:1a4c88502113547c449cf7a6b9f31f390429c88671dacb3b3d99d1e9a9c351a6
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.1 MB (248086845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46859d9a0d5bda7b938e9c313b5379381ab6ca7c0c38c646d662628ad58ec679`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:05 GMT
ADD file:cde9313f179951bdf9a85569736d1720e757e4b3710e422228ba66a1789469a9 in / 
# Tue, 30 Aug 2016 21:01:05 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:53:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:54:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:56 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 31 Aug 2016 17:16:56 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Wed, 31 Aug 2016 17:16:57 GMT
ENV JAVA_VERSION=9~b133
# Wed, 31 Aug 2016 17:16:58 GMT
ENV JAVA_DEBIAN_VERSION=9~b133-1
# Wed, 31 Aug 2016 17:17:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 21:06:15 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 21:06:15 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 21:06:19 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 21:06:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 21:06:19 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 21:06:20 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 21:06:20 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 21:06:20 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 21:06:21 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 21:06:21 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f45860c16bdb654da5c2c7bea335dcb2db33cf95ace30c719175aef1a0d41fbb`  
		Last Modified: Tue, 30 Aug 2016 21:03:28 GMT  
		Size: 42.5 MB (42455191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af28bbafd0e3620fa7da5fba49de724bc4c40d71bee92937c0e52f24d3e1eb9b`  
		Last Modified: Tue, 30 Aug 2016 22:01:19 GMT  
		Size: 20.5 MB (20547306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469d6b6129b0efb9c583749806287b09e55305db0d5a394bebf242b9be3b0d13`  
		Last Modified: Tue, 30 Aug 2016 22:01:37 GMT  
		Size: 48.1 MB (48089667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e9a7208ad8b35f80cc0dbc210327b873d2d3e316f8ef1e65cad78759aac631`  
		Last Modified: Wed, 31 Aug 2016 17:31:37 GMT  
		Size: 592.0 KB (591960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b155245e34ebe588c54045dfac4190425d1f8680b38f90341a086d86308b8f`  
		Last Modified: Wed, 31 Aug 2016 17:31:35 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce7db45669479028025bf0f725a7ef6ae754d637f9d5fa68fa5bb1073ce7d8d`  
		Last Modified: Wed, 31 Aug 2016 17:31:35 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f335ec81c971b7744f9270fc849ce848d9ad254a4a7861de10f2dda2328945f`  
		Last Modified: Wed, 31 Aug 2016 17:32:06 GMT  
		Size: 127.8 MB (127802367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6237b083c126950351429821f642895e04a6d12aca13ec111cbcd6a9c41fac4`  
		Last Modified: Wed, 31 Aug 2016 21:06:28 GMT  
		Size: 8.6 MB (8598851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30555558d1b3ddca0d126b855c32b89aa5b4b947a911bf65586a3b144d05060a`  
		Last Modified: Wed, 31 Aug 2016 21:06:28 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d69c06445d3c9ec60cefe210f169929795116fdafb2991be6a61721841fc4e5`  
		Last Modified: Wed, 31 Aug 2016 21:06:27 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-9-onbuild`

```console
$ docker pull maven@sha256:ece88ca00b954d07dd40460d9a69d99678c1edca190ab65b04bc40893d2a8fe5
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-9-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.1 MB (248087003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36595c25589e5bb5064401b3115085e51ef6bb64c98ad471e53858c85771ba8f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:05 GMT
ADD file:cde9313f179951bdf9a85569736d1720e757e4b3710e422228ba66a1789469a9 in / 
# Tue, 30 Aug 2016 21:01:05 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:53:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:54:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:56 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 31 Aug 2016 17:16:56 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Wed, 31 Aug 2016 17:16:57 GMT
ENV JAVA_VERSION=9~b133
# Wed, 31 Aug 2016 17:16:58 GMT
ENV JAVA_DEBIAN_VERSION=9~b133-1
# Wed, 31 Aug 2016 17:17:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 21:06:15 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 21:06:15 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 21:06:19 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 21:06:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 21:06:19 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 21:06:20 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 21:06:20 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 21:06:20 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 21:06:21 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 21:06:21 GMT
CMD ["mvn"]
# Wed, 31 Aug 2016 21:06:52 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 21:06:52 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 21:06:52 GMT
ONBUILD ADD . /usr/src/app
# Wed, 31 Aug 2016 21:06:52 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:f45860c16bdb654da5c2c7bea335dcb2db33cf95ace30c719175aef1a0d41fbb`  
		Last Modified: Tue, 30 Aug 2016 21:03:28 GMT  
		Size: 42.5 MB (42455191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af28bbafd0e3620fa7da5fba49de724bc4c40d71bee92937c0e52f24d3e1eb9b`  
		Last Modified: Tue, 30 Aug 2016 22:01:19 GMT  
		Size: 20.5 MB (20547306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469d6b6129b0efb9c583749806287b09e55305db0d5a394bebf242b9be3b0d13`  
		Last Modified: Tue, 30 Aug 2016 22:01:37 GMT  
		Size: 48.1 MB (48089667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e9a7208ad8b35f80cc0dbc210327b873d2d3e316f8ef1e65cad78759aac631`  
		Last Modified: Wed, 31 Aug 2016 17:31:37 GMT  
		Size: 592.0 KB (591960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b155245e34ebe588c54045dfac4190425d1f8680b38f90341a086d86308b8f`  
		Last Modified: Wed, 31 Aug 2016 17:31:35 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce7db45669479028025bf0f725a7ef6ae754d637f9d5fa68fa5bb1073ce7d8d`  
		Last Modified: Wed, 31 Aug 2016 17:31:35 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f335ec81c971b7744f9270fc849ce848d9ad254a4a7861de10f2dda2328945f`  
		Last Modified: Wed, 31 Aug 2016 17:32:06 GMT  
		Size: 127.8 MB (127802367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6237b083c126950351429821f642895e04a6d12aca13ec111cbcd6a9c41fac4`  
		Last Modified: Wed, 31 Aug 2016 21:06:28 GMT  
		Size: 8.6 MB (8598851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30555558d1b3ddca0d126b855c32b89aa5b4b947a911bf65586a3b144d05060a`  
		Last Modified: Wed, 31 Aug 2016 21:06:28 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d69c06445d3c9ec60cefe210f169929795116fdafb2991be6a61721841fc4e5`  
		Last Modified: Wed, 31 Aug 2016 21:06:27 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4ae2add6870ec26acc9ba67df2ac3dcbef50548a7f88d49b44f6293344fbc2b`  
		Last Modified: Wed, 31 Aug 2016 21:06:58 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-9-onbuild`

```console
$ docker pull maven@sha256:ece88ca00b954d07dd40460d9a69d99678c1edca190ab65b04bc40893d2a8fe5
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-9-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.1 MB (248087003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36595c25589e5bb5064401b3115085e51ef6bb64c98ad471e53858c85771ba8f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:05 GMT
ADD file:cde9313f179951bdf9a85569736d1720e757e4b3710e422228ba66a1789469a9 in / 
# Tue, 30 Aug 2016 21:01:05 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:53:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:54:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:56 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 31 Aug 2016 17:16:56 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Wed, 31 Aug 2016 17:16:57 GMT
ENV JAVA_VERSION=9~b133
# Wed, 31 Aug 2016 17:16:58 GMT
ENV JAVA_DEBIAN_VERSION=9~b133-1
# Wed, 31 Aug 2016 17:17:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 21:06:15 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 21:06:15 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 21:06:19 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 21:06:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 21:06:19 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 21:06:20 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 21:06:20 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 21:06:20 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 21:06:21 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 21:06:21 GMT
CMD ["mvn"]
# Wed, 31 Aug 2016 21:06:52 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 21:06:52 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 21:06:52 GMT
ONBUILD ADD . /usr/src/app
# Wed, 31 Aug 2016 21:06:52 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:f45860c16bdb654da5c2c7bea335dcb2db33cf95ace30c719175aef1a0d41fbb`  
		Last Modified: Tue, 30 Aug 2016 21:03:28 GMT  
		Size: 42.5 MB (42455191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af28bbafd0e3620fa7da5fba49de724bc4c40d71bee92937c0e52f24d3e1eb9b`  
		Last Modified: Tue, 30 Aug 2016 22:01:19 GMT  
		Size: 20.5 MB (20547306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469d6b6129b0efb9c583749806287b09e55305db0d5a394bebf242b9be3b0d13`  
		Last Modified: Tue, 30 Aug 2016 22:01:37 GMT  
		Size: 48.1 MB (48089667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e9a7208ad8b35f80cc0dbc210327b873d2d3e316f8ef1e65cad78759aac631`  
		Last Modified: Wed, 31 Aug 2016 17:31:37 GMT  
		Size: 592.0 KB (591960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b155245e34ebe588c54045dfac4190425d1f8680b38f90341a086d86308b8f`  
		Last Modified: Wed, 31 Aug 2016 17:31:35 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce7db45669479028025bf0f725a7ef6ae754d637f9d5fa68fa5bb1073ce7d8d`  
		Last Modified: Wed, 31 Aug 2016 17:31:35 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f335ec81c971b7744f9270fc849ce848d9ad254a4a7861de10f2dda2328945f`  
		Last Modified: Wed, 31 Aug 2016 17:32:06 GMT  
		Size: 127.8 MB (127802367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6237b083c126950351429821f642895e04a6d12aca13ec111cbcd6a9c41fac4`  
		Last Modified: Wed, 31 Aug 2016 21:06:28 GMT  
		Size: 8.6 MB (8598851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30555558d1b3ddca0d126b855c32b89aa5b4b947a911bf65586a3b144d05060a`  
		Last Modified: Wed, 31 Aug 2016 21:06:28 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d69c06445d3c9ec60cefe210f169929795116fdafb2991be6a61721841fc4e5`  
		Last Modified: Wed, 31 Aug 2016 21:06:27 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4ae2add6870ec26acc9ba67df2ac3dcbef50548a7f88d49b44f6293344fbc2b`  
		Last Modified: Wed, 31 Aug 2016 21:06:58 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-9-onbuild`

```console
$ docker pull maven@sha256:ece88ca00b954d07dd40460d9a69d99678c1edca190ab65b04bc40893d2a8fe5
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.1 MB (248087003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36595c25589e5bb5064401b3115085e51ef6bb64c98ad471e53858c85771ba8f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:05 GMT
ADD file:cde9313f179951bdf9a85569736d1720e757e4b3710e422228ba66a1789469a9 in / 
# Tue, 30 Aug 2016 21:01:05 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:53:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:54:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:16:56 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 31 Aug 2016 17:16:56 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:16:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:16:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Wed, 31 Aug 2016 17:16:57 GMT
ENV JAVA_VERSION=9~b133
# Wed, 31 Aug 2016 17:16:58 GMT
ENV JAVA_DEBIAN_VERSION=9~b133-1
# Wed, 31 Aug 2016 17:17:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 21:06:15 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 21:06:15 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 21:06:19 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 21:06:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 21:06:19 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 21:06:20 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 21:06:20 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 21:06:20 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 21:06:21 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 21:06:21 GMT
CMD ["mvn"]
# Wed, 31 Aug 2016 21:06:52 GMT
RUN mkdir -p /usr/src/app
# Wed, 31 Aug 2016 21:06:52 GMT
WORKDIR /usr/src/app
# Wed, 31 Aug 2016 21:06:52 GMT
ONBUILD ADD . /usr/src/app
# Wed, 31 Aug 2016 21:06:52 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:f45860c16bdb654da5c2c7bea335dcb2db33cf95ace30c719175aef1a0d41fbb`  
		Last Modified: Tue, 30 Aug 2016 21:03:28 GMT  
		Size: 42.5 MB (42455191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af28bbafd0e3620fa7da5fba49de724bc4c40d71bee92937c0e52f24d3e1eb9b`  
		Last Modified: Tue, 30 Aug 2016 22:01:19 GMT  
		Size: 20.5 MB (20547306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469d6b6129b0efb9c583749806287b09e55305db0d5a394bebf242b9be3b0d13`  
		Last Modified: Tue, 30 Aug 2016 22:01:37 GMT  
		Size: 48.1 MB (48089667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e9a7208ad8b35f80cc0dbc210327b873d2d3e316f8ef1e65cad78759aac631`  
		Last Modified: Wed, 31 Aug 2016 17:31:37 GMT  
		Size: 592.0 KB (591960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b155245e34ebe588c54045dfac4190425d1f8680b38f90341a086d86308b8f`  
		Last Modified: Wed, 31 Aug 2016 17:31:35 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce7db45669479028025bf0f725a7ef6ae754d637f9d5fa68fa5bb1073ce7d8d`  
		Last Modified: Wed, 31 Aug 2016 17:31:35 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f335ec81c971b7744f9270fc849ce848d9ad254a4a7861de10f2dda2328945f`  
		Last Modified: Wed, 31 Aug 2016 17:32:06 GMT  
		Size: 127.8 MB (127802367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6237b083c126950351429821f642895e04a6d12aca13ec111cbcd6a9c41fac4`  
		Last Modified: Wed, 31 Aug 2016 21:06:28 GMT  
		Size: 8.6 MB (8598851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30555558d1b3ddca0d126b855c32b89aa5b4b947a911bf65586a3b144d05060a`  
		Last Modified: Wed, 31 Aug 2016 21:06:28 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d69c06445d3c9ec60cefe210f169929795116fdafb2991be6a61721841fc4e5`  
		Last Modified: Wed, 31 Aug 2016 21:06:27 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4ae2add6870ec26acc9ba67df2ac3dcbef50548a7f88d49b44f6293344fbc2b`  
		Last Modified: Wed, 31 Aug 2016 21:06:58 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
