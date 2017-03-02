## `maven:3-jdk-7-onbuild`

```console
$ docker pull maven@sha256:d6a7e43fd146232464ce14d06ef947b3c3c2e7bca2aa5df16ae6afc0daeab2a6
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261066586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34298d8504789e8cf2fc3899339684d39191100265105e86c0f4b222dda655c2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 01 Mar 2017 16:05:40 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 01 Mar 2017 16:05:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 01 Mar 2017 16:05:43 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 01 Mar 2017 16:05:43 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 01 Mar 2017 16:05:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 01 Mar 2017 16:06:00 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 01 Mar 2017 16:06:01 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 01 Mar 2017 16:06:01 GMT
VOLUME [/root/.m2]
# Wed, 01 Mar 2017 16:06:02 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 01 Mar 2017 16:06:02 GMT
CMD ["mvn"]
# Wed, 01 Mar 2017 16:06:18 GMT
RUN mkdir -p /usr/src/app
# Wed, 01 Mar 2017 16:06:19 GMT
WORKDIR /usr/src/app
# Wed, 01 Mar 2017 16:06:19 GMT
ONBUILD ADD . /usr/src/app
# Wed, 01 Mar 2017 16:06:20 GMT
ONBUILD RUN mvn install
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
	-	`sha256:5c3af85694c55cce4bc5b41abb6bad61088e5813706bf11b3eb40c6e47fbe1e2`  
		Last Modified: Thu, 02 Mar 2017 05:57:34 GMT  
		Size: 8.6 MB (8598841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f140cd91aa34ebb11c65b5e175a84e99d5bc3f1ff14832175689c6ae44138d84`  
		Last Modified: Thu, 02 Mar 2017 05:57:31 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d353cae8098ae97da6391f68fba876e6cf589f90a3c884afd99f568a68425ac`  
		Last Modified: Thu, 02 Mar 2017 05:57:29 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018d251002153307ddf9a0f956a0c27cd3443f604283a98a60d53b134b7bc792`  
		Last Modified: Thu, 02 Mar 2017 05:58:33 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
