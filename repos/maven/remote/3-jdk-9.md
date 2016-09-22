## `maven:3-jdk-9`

```console
$ docker pull maven@sha256:0b027a18d1c53677463abef6bdb127c0f500cc227bd6d4808126a6bfe7b2a3bb
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.5 MB (249549615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c46bd15ae0184322f6fe84dd8615df029f471156f5df734a370c74990b8eb383`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:55 GMT
ADD file:e1f71b04b8aa93bcaa59d04d2b86b5bbbb572eda80ef31b43328c5702ce3bc6d in / 
# Mon, 19 Sep 2016 17:42:55 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:48:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:48:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:33:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:33:16 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 20 Sep 2016 16:33:16 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 16:33:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 16:33:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Wed, 21 Sep 2016 22:50:39 GMT
ENV JAVA_VERSION=9~b136
# Wed, 21 Sep 2016 22:50:39 GMT
ENV JAVA_DEBIAN_VERSION=9~b136-1
# Wed, 21 Sep 2016 22:51:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 22 Sep 2016 18:47:22 GMT
ARG MAVEN_VERSION=3.3.9
# Thu, 22 Sep 2016 18:47:22 GMT
ARG USER_HOME_DIR=/root
# Thu, 22 Sep 2016 18:47:25 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 22 Sep 2016 18:47:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 22 Sep 2016 18:47:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 22 Sep 2016 18:47:26 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 22 Sep 2016 18:47:27 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 22 Sep 2016 18:47:27 GMT
VOLUME [/root/.m2]
# Thu, 22 Sep 2016 18:47:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 22 Sep 2016 18:47:28 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:dca6e68f53db97e624204489d149932fd6643c0f737cef6a6531dc870e2b9c3c`  
		Last Modified: Mon, 19 Sep 2016 17:46:11 GMT  
		Size: 43.2 MB (43235728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af28ad81fae6afb462f86ef33bee9f301f34dd27a9192d84c69ec4475910959`  
		Last Modified: Mon, 19 Sep 2016 17:56:58 GMT  
		Size: 20.5 MB (20547434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31ce8ad11f45073f98732e601865e622119d48c24143f59e42d698a917aa178`  
		Last Modified: Mon, 19 Sep 2016 17:57:43 GMT  
		Size: 48.1 MB (48091540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54f7b66ffeb2fd568f54b66df8a5e59b824bcdf4fd6d409c42aed5ce58f22b5`  
		Last Modified: Wed, 21 Sep 2016 23:03:01 GMT  
		Size: 592.0 KB (591989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60007241da331080df2ab2d1585529cba25db533a07fdf788fd039d94af8c09b`  
		Last Modified: Wed, 21 Sep 2016 23:03:00 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c084b3829034ffb61439ba4caba74e8844366c5d9033028966198a7bbf9e1a71`  
		Last Modified: Wed, 21 Sep 2016 23:03:01 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0021855c7b5af792ba397a9d9aeee3e265aa13e3e99b1091db2e1a8a493af76f`  
		Last Modified: Wed, 21 Sep 2016 23:03:20 GMT  
		Size: 128.5 MB (128482565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0349be0a257a996512c9289736fec6a1181bfa9c9cf85243a85b5389267023b5`  
		Last Modified: Thu, 22 Sep 2016 18:47:37 GMT  
		Size: 8.6 MB (8598859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589c5ae2600f859dbfc2262fc78e0703db257a9abd985e3e45db723bdfa5029b`  
		Last Modified: Thu, 22 Sep 2016 18:47:35 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f81d80984f2f3c0337bab0e9f9776c1ebeaa463715e4f0108baba15b360d59`  
		Last Modified: Thu, 22 Sep 2016 18:47:36 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
