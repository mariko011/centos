## `maven:3-jdk-7-onbuild`

```console
$ docker pull maven@sha256:d1dbf17f7eac77cc9fa00b5a99fd3ffbe1e44d2f059415073dc408b050babe81
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261064597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6646f88f86728d4122caa2274577426beb7b59b1863e11ecae46cd6beef25e35`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:52 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:49:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:49:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Wed, 08 Feb 2017 22:15:43 GMT
ENV JAVA_VERSION=7u121
# Wed, 08 Feb 2017 22:15:43 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 08 Feb 2017 22:16:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 08 Feb 2017 23:20:42 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 08 Feb 2017 23:20:43 GMT
ARG USER_HOME_DIR=/root
# Wed, 08 Feb 2017 23:20:45 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 08 Feb 2017 23:20:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 08 Feb 2017 23:20:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 08 Feb 2017 23:20:46 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 08 Feb 2017 23:20:47 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 08 Feb 2017 23:20:48 GMT
VOLUME [/root/.m2]
# Wed, 08 Feb 2017 23:20:48 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 08 Feb 2017 23:20:49 GMT
CMD ["mvn"]
# Wed, 08 Feb 2017 23:20:51 GMT
RUN mkdir -p /usr/src/app
# Wed, 08 Feb 2017 23:20:51 GMT
WORKDIR /usr/src/app
# Wed, 08 Feb 2017 23:20:52 GMT
ONBUILD ADD . /usr/src/app
# Wed, 08 Feb 2017 23:20:52 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b144b1d5b09e72e8e108a39bb1586e607c7ade5c637df2b8ba46108cb0ae8f`  
		Last Modified: Wed, 18 Jan 2017 05:20:49 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c87eea6d613426a3f8614e95fe1e8ebbf7e58168271f8dd10983a7bb24ed6ae`  
		Last Modified: Wed, 08 Feb 2017 22:19:46 GMT  
		Size: 139.5 MB (139472105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ac1df5437e175b18bc48ae7ae96d5fdcaa3e572459feef6f3a77c23a712685`  
		Last Modified: Wed, 08 Feb 2017 23:21:15 GMT  
		Size: 8.6 MB (8598846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e4412f1bd09768602e8b7b249e5a8e2ca57759edcaafceb6aff69cea33885b`  
		Last Modified: Wed, 08 Feb 2017 23:21:14 GMT  
		Size: 693.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda670ff6e578b14af1a66c6e02eee2bc3216bb9ce04dcefd0eef8c8da0ac4db`  
		Last Modified: Wed, 08 Feb 2017 23:21:14 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c30ddb5d831f1c5f7dcb711bf06ad03a96049c539c0422ec17bbd3f41458ea3`  
		Last Modified: Wed, 08 Feb 2017 23:22:53 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
