## `maven:3-jdk-7-onbuild`

```console
$ docker pull maven@sha256:eaa6449191836d2ed6103b446a7c17a837c00a1f07d6adb246222ed80718b3dd
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265243507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1f40810c5104a2c2b55e2361a093af697ff6862c4cead4fcf9b50a45f179487`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:38:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:38:27 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:38:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:38:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Tue, 25 Apr 2017 00:38:30 GMT
ENV JAVA_VERSION=7u121
# Tue, 25 Apr 2017 00:38:31 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 26 Apr 2017 23:07:46 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 27 Apr 2017 01:29:13 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 27 Apr 2017 01:29:14 GMT
ARG USER_HOME_DIR=/root
# Thu, 27 Apr 2017 01:29:15 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 27 Apr 2017 01:29:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 27 Apr 2017 01:29:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 27 Apr 2017 01:29:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 27 Apr 2017 01:29:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 27 Apr 2017 01:29:21 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 27 Apr 2017 01:29:22 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 27 Apr 2017 01:29:22 GMT
VOLUME [/root/.m2]
# Thu, 27 Apr 2017 01:29:23 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 27 Apr 2017 01:29:24 GMT
CMD ["mvn"]
# Thu, 27 Apr 2017 01:29:43 GMT
RUN mkdir -p /usr/src/app
# Thu, 27 Apr 2017 01:29:43 GMT
WORKDIR /usr/src/app
# Thu, 27 Apr 2017 01:29:44 GMT
ONBUILD ADD . /usr/src/app
# Thu, 27 Apr 2017 01:29:45 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46c5b79125ec83395527f1cf86e8b3f5f4e2fc6bbf53d087b521e470afc46c6`  
		Last Modified: Tue, 25 Apr 2017 00:47:56 GMT  
		Size: 599.6 KB (599608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b88674293e9f71d3de3773708d6c1c0d9133768b642dfd49fdb533095ead5923`  
		Last Modified: Tue, 25 Apr 2017 00:47:56 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b1b3ab88c741ec5926f6739ed31bd7bb3fd696e671de0d63dbaa7ff87f4411`  
		Last Modified: Wed, 26 Apr 2017 23:15:40 GMT  
		Size: 140.9 MB (140921886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0339f475e80c6704c1ff2134c89276187b8bf944eb8e58d77ecd4f3013eae1e2`  
		Last Modified: Thu, 27 Apr 2017 01:31:48 GMT  
		Size: 8.7 MB (8672755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab109502a66b46de120119811f835a0a0d4e01abf4661c86652dd5d38058dad`  
		Last Modified: Thu, 27 Apr 2017 01:31:47 GMT  
		Size: 699.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d770772dccea97fb4c9b49052b278de3fad766ef43b2054132edfb504057e9a0`  
		Last Modified: Thu, 27 Apr 2017 01:31:47 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e3fbfe2f7c47697cf0858fee3557a93adcb4c1c7375ff652c15ea27ef64db6`  
		Last Modified: Thu, 27 Apr 2017 01:33:49 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
