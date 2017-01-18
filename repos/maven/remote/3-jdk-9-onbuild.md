## `maven:3-jdk-9-onbuild`

```console
$ docker pull maven@sha256:45b4aa8ee06d6e3dae612a20f2250acc51865eaffa0c1a11fbfbc692f0f26bb3
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271374805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88336f66c70ce3a8832dd896e9d5271792dbef044d2f35752136d311130c4e91`
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
# Tue, 17 Jan 2017 18:51:09 GMT
ENV JAVA_VERSION=9~b151
# Tue, 17 Jan 2017 18:51:09 GMT
ENV JAVA_DEBIAN_VERSION=9~b151-2
# Tue, 17 Jan 2017 18:51:44 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 18 Jan 2017 00:47:17 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 18 Jan 2017 00:47:17 GMT
ARG USER_HOME_DIR=/root
# Wed, 18 Jan 2017 00:47:21 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 18 Jan 2017 00:47:22 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 18 Jan 2017 00:47:22 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 18 Jan 2017 00:47:23 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 18 Jan 2017 00:47:23 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 18 Jan 2017 00:47:24 GMT
VOLUME [/root/.m2]
# Wed, 18 Jan 2017 00:47:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 18 Jan 2017 00:47:24 GMT
CMD ["mvn"]
# Wed, 18 Jan 2017 00:47:25 GMT
RUN mkdir -p /usr/src/app
# Wed, 18 Jan 2017 00:47:26 GMT
WORKDIR /usr/src/app
# Wed, 18 Jan 2017 00:47:26 GMT
ONBUILD ADD . /usr/src/app
# Wed, 18 Jan 2017 00:47:26 GMT
ONBUILD RUN mvn install
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
	-	`sha256:7501445acc0e1adfd0cfee0b00574ae092a38f9943c7d26f4ac02ea39e6f3f80`  
		Last Modified: Wed, 18 Jan 2017 06:24:21 GMT  
		Size: 145.1 MB (145068291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6602762054d40e8943edb98992bea817ec0784cbceed6dbeb8b55fc07502bf63`  
		Last Modified: Wed, 18 Jan 2017 08:44:28 GMT  
		Size: 8.6 MB (8598849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124233bfd1b1c8a8d61c72cb78b2df10e2a0dbe76f746aa49b1b0046fa310187`  
		Last Modified: Wed, 18 Jan 2017 08:44:27 GMT  
		Size: 693.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea16d8ee12a9a480894ed90f69ff777a468e0d2141369e7e8602ddd23ff27476`  
		Last Modified: Wed, 18 Jan 2017 08:44:26 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e45e73b253dcd73b5da861308cb699875be13ed84b74bc63dcd36dddc67759`  
		Last Modified: Wed, 18 Jan 2017 08:45:16 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
