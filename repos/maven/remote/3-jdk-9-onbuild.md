## `maven:3-jdk-9-onbuild`

```console
$ docker pull maven@sha256:27c3e7c0850167cddfc2811d068600f699861d5bc61b465fb52a7b919c209d71
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254930493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a76dd83eeefa15d4b999b1babdd97da7d35a1771e7885f4522b9b57cd8879d9c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 07 Nov 2016 20:31:17 GMT
ADD file:4946b2fd6ad8f6dad8ce2007df355ffa80fbc0d560ac45600bc0305c812bc331 in / 
# Mon, 07 Nov 2016 20:31:17 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:28:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:29:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:54:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:54:38 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 08 Nov 2016 18:54:38 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 18:54:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 08 Nov 2016 18:54:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 08 Nov 2016 18:54:40 GMT
ENV JAVA_VERSION=9~b143
# Tue, 08 Nov 2016 18:54:40 GMT
ENV JAVA_DEBIAN_VERSION=9~b143-2
# Tue, 08 Nov 2016 18:55:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 10 Nov 2016 07:11:11 GMT
ARG MAVEN_VERSION=3.3.9
# Thu, 10 Nov 2016 07:11:11 GMT
ARG USER_HOME_DIR=/root
# Thu, 10 Nov 2016 07:11:14 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 10 Nov 2016 07:11:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 10 Nov 2016 07:11:15 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 10 Nov 2016 07:11:15 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 10 Nov 2016 07:11:16 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 10 Nov 2016 07:11:16 GMT
VOLUME [/root/.m2]
# Thu, 10 Nov 2016 07:11:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 10 Nov 2016 07:11:17 GMT
CMD ["mvn"]
# Thu, 10 Nov 2016 07:12:04 GMT
RUN mkdir -p /usr/src/app
# Thu, 10 Nov 2016 07:12:05 GMT
WORKDIR /usr/src/app
# Thu, 10 Nov 2016 07:12:05 GMT
ONBUILD ADD . /usr/src/app
# Thu, 10 Nov 2016 07:12:05 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:2c2697cc54a4087031e91659113de235e6bd969754303465add193727dc03fa6`  
		Last Modified: Mon, 07 Nov 2016 20:37:10 GMT  
		Size: 43.3 MB (43262401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b24aac71f904b1bd9a7a8823a0c8281406c9289c475d7231493950a1ba49f40`  
		Last Modified: Mon, 07 Nov 2016 23:00:27 GMT  
		Size: 20.7 MB (20701379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3514ff4b0f0d308024087f10c855ab7412915526a9bba7e3777b0c857e908493`  
		Last Modified: Mon, 07 Nov 2016 23:01:09 GMT  
		Size: 50.8 MB (50774782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24ab6c2095e0bb84448123a4fa0e15b8240a5bbc1229d146022725a63dd9896`  
		Last Modified: Tue, 08 Nov 2016 19:14:49 GMT  
		Size: 635.5 KB (635542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f06e8f012ab67aee2075e0e4dc0b50d25067c6982112822d498e4239ea7342c`  
		Last Modified: Tue, 08 Nov 2016 19:14:49 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ecc3023cb702682496563a3683d719fb6a3cd56d955cea13b376ba92ed0a7a`  
		Last Modified: Tue, 08 Nov 2016 19:14:48 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e579150d86bc1e06dda3fb1a0ceb14a169cb87ed66752a7451c8b84f319c55a3`  
		Last Modified: Tue, 08 Nov 2016 19:15:11 GMT  
		Size: 131.0 MB (130955887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d65a458076d58ed75e95882b4e7dcb3e816f01c1e6ad46fc2783306c179c381`  
		Last Modified: Thu, 10 Nov 2016 07:11:31 GMT  
		Size: 8.6 MB (8598850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf746a5b7eb558a2177a98fdad0254c8e3a086f6c271af2b026725b05348f980`  
		Last Modified: Thu, 10 Nov 2016 07:11:31 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04c49fc7fe4f4d850bdb8efada426c600060335da31458e062924874dbb1ee5`  
		Last Modified: Thu, 10 Nov 2016 07:11:29 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a82dde5d48e2e9ee976d7c1a845ca2cf2765ed980dd9b412697798dc4de3b05`  
		Last Modified: Thu, 10 Nov 2016 07:12:17 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
