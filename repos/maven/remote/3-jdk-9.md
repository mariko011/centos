## `maven:3-jdk-9`

```console
$ docker pull maven@sha256:a72b0b62af526dafe4953be6a4f691ec5778d417b0369295d611fb52a640d67a
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 MB (255841421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b8714ce5f6db1974b799dd95b81a00193f4e53aaaeeb3b367e4f63351af7abe`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 18:09:05 GMT
ADD file:38fc3f9aecc8de28ee67c48e4f26a9dd74b238023b7f92c19da2f642b9d0fc14 in / 
# Fri, 23 Sep 2016 18:09:06 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:39:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:39:18 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 23 Sep 2016 19:39:18 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:39:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:39:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Mon, 10 Oct 2016 23:14:13 GMT
ENV JAVA_VERSION=9~b139
# Mon, 10 Oct 2016 23:14:13 GMT
ENV JAVA_DEBIAN_VERSION=9~b139-1
# Mon, 10 Oct 2016 23:14:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 11 Oct 2016 20:17:42 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 11 Oct 2016 20:17:42 GMT
ARG USER_HOME_DIR=/root
# Tue, 11 Oct 2016 20:17:44 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 11 Oct 2016 20:17:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 11 Oct 2016 20:17:45 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 11 Oct 2016 20:17:45 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 11 Oct 2016 20:17:46 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 11 Oct 2016 20:17:46 GMT
VOLUME [/root/.m2]
# Tue, 11 Oct 2016 20:17:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 11 Oct 2016 20:17:47 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8d7c8b969090899eedb896dfcdfc11e08596be2a94b1ae77609086ede354ab53`  
		Last Modified: Fri, 23 Sep 2016 18:11:54 GMT  
		Size: 43.1 MB (43149672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cf27ef20a0d684a2f113fab4b3cf58cdb4b5e3ec312e688e979add4df4d9cb`  
		Last Modified: Fri, 23 Sep 2016 18:27:26 GMT  
		Size: 20.6 MB (20558939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d346a7dd355fc6b042ab875c346181e3a59830f2c0a2961b7512dfc171eb8950`  
		Last Modified: Fri, 23 Sep 2016 18:28:16 GMT  
		Size: 52.3 MB (52334181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61c0ce2aaf48ece0d079535a6ae3a75d760f88be32e826f39042b07a2fd4d95`  
		Last Modified: Fri, 23 Sep 2016 19:40:05 GMT  
		Size: 592.5 KB (592473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d454d9b918097dbfabf38bbb570310a8e69aae04066af9025a14f1970956918`  
		Last Modified: Fri, 23 Sep 2016 19:40:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6698e2f319714131e15680242720372f8ebc7da860484cc00e21f2bb0d9e3ad`  
		Last Modified: Fri, 23 Sep 2016 19:40:03 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fec70b88aabb3b349a16f0b3d7fa4b8d63ff33a80f5f9fbcb6bb4ebf1acef6d`  
		Last Modified: Mon, 10 Oct 2016 23:26:13 GMT  
		Size: 130.6 MB (130605792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e18c6f49b53f5099990cf48dd2a831d8137bfa49dd978330fdbbc26bea7c0b34`  
		Last Modified: Tue, 11 Oct 2016 20:17:58 GMT  
		Size: 8.6 MB (8598860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8810e16a7900f27ab19dfa81e38faa365e81474f464a10807bf51b33ea5468f7`  
		Last Modified: Tue, 11 Oct 2016 20:17:55 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7204018d3c735718a04d21bf8780d889b6d878fbe335453b6be1121ca678865b`  
		Last Modified: Tue, 11 Oct 2016 20:17:55 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
