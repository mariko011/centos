## `maven:3-jdk-9`

```console
$ docker pull maven@sha256:76f668934e89e7278d9585ec491870cc3fde333c090505c4009765b537190e4f
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271616771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce3667734b829d6166331c4061625f55107411b54717790cbe0b34867bd1d0f6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Jan 2017 20:37:19 GMT
ADD file:9d5e2a376a3a1005ec449a01b6afb4a2f264284d88861474541467b835a7edfc in / 
# Mon, 16 Jan 2017 20:37:27 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:01:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:53:29 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 17 Jan 2017 00:53:30 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:53:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:53:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 07 Feb 2017 20:04:44 GMT
ENV JAVA_VERSION=9~b155
# Tue, 07 Feb 2017 20:04:44 GMT
ENV JAVA_DEBIAN_VERSION=9~b155-1
# Tue, 07 Feb 2017 20:05:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 21:33:20 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 07 Feb 2017 21:33:20 GMT
ARG USER_HOME_DIR=/root
# Tue, 07 Feb 2017 21:33:23 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 07 Feb 2017 21:33:24 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 07 Feb 2017 21:33:24 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 07 Feb 2017 21:33:25 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 07 Feb 2017 21:33:26 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 07 Feb 2017 21:33:26 GMT
VOLUME [/root/.m2]
# Tue, 07 Feb 2017 21:33:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 07 Feb 2017 21:33:27 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f6add9a5d611457943cd08d9e4e8160a51728a916702da8ece8704c13f50a720`  
		Last Modified: Mon, 16 Jan 2017 20:47:37 GMT  
		Size: 44.0 MB (43955096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e0ea68a9faf406529a8f73151a10a1a6bfd6ccb993721627f30e36001892e5`  
		Last Modified: Tue, 17 Jan 2017 00:21:18 GMT  
		Size: 23.1 MB (23078867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f71ae9ffad2ee14617f1f7b5f26c6773f07c814544b94d172feb3a9afa19758`  
		Last Modified: Tue, 17 Jan 2017 00:22:10 GMT  
		Size: 50.0 MB (50022229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62c0d008417308de1a3260177cbd1e10a682ea9f3a61174a3d79501785bc8d4`  
		Last Modified: Wed, 18 Jan 2017 06:23:57 GMT  
		Size: 649.8 KB (649821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc0f9a7fc7d3389b9a4b257f7f98708c2b0dba5eaa4c7acbf6727df89d0afe1`  
		Last Modified: Wed, 18 Jan 2017 06:23:56 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce797e1c405b5124fe52d0063d4689e3c509212bde8fcb4b3ad80ba2d11084e`  
		Last Modified: Wed, 18 Jan 2017 06:23:57 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09a7df1f08e49b203964a8c09d7450c044a5c9e8f42d2e227e1f8c270e72d3d`  
		Last Modified: Tue, 07 Feb 2017 20:16:14 GMT  
		Size: 145.3 MB (145310406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f9f32fa7871b08d249e81ea61a2d93a56eaba42964d29eca937aa4d6e41260`  
		Last Modified: Tue, 07 Feb 2017 21:44:17 GMT  
		Size: 8.6 MB (8598858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ea0c9f47507d7db883b3fbe6bb4e4bf04d69567aa1a9f23f53ea9edac2e7e5`  
		Last Modified: Tue, 07 Feb 2017 21:44:15 GMT  
		Size: 692.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7db3fd9dd84bd318223fb0491c62830b9c09667ea59c5f6153802d44ebf8ca`  
		Last Modified: Tue, 07 Feb 2017 21:44:15 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
