## `maven:3-jdk-7-slim`

```console
$ docker pull maven@sha256:68d1bceb74e4b573b2afa344ba30fa61e8f7af40357eff24ecd0cbff6464380b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-slim` - linux; amd64

```console
$ docker pull maven@sha256:df29f104a51b47b9d63971afdc483ea3d9cb72848947b8db2003c7596435bbeb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.7 MB (158742975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:048201bf639862a5b60eb212aaff12b8f49bdfe0735e0dbb3bb7080595ba2890`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 23:47:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:47:09 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:47:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:47:11 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:47:11 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:47:11 GMT
ENV JAVA_VERSION=7u151
# Tue, 12 Sep 2017 23:47:11 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 12 Sep 2017 23:48:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 13 Sep 2017 01:46:49 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:46:49 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:46:49 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:46:49 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:47:14 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 01:47:16 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:47:16 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:47:16 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:47:17 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:47:17 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:47:17 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:47:18 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:47:18 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76a1ddfd6a28fba225fe560f3276a3f7db172f0a958f8dc252f2abe0f73dc80`  
		Last Modified: Wed, 13 Sep 2017 00:01:08 GMT  
		Size: 463.7 KB (463713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c861e0899db75bf09298b235c83a72ccf4fd6425cad013d453c6be9e0d990de2`  
		Last Modified: Wed, 13 Sep 2017 00:01:08 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889b75b4dc674c5b0727738126a7aa9176ce9b44e1899712addce498f7a5dc75`  
		Last Modified: Wed, 13 Sep 2017 00:01:07 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38997aed7a6fe76eb28163c74c08d25653e9f3f410f8f590aa1fc7b365c829fb`  
		Last Modified: Wed, 13 Sep 2017 00:01:27 GMT  
		Size: 118.2 MB (118187292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7135e70887e547c7bc0c4d20fcdc236640564ffde557da8fc1ecc071c8ca98b`  
		Last Modified: Wed, 13 Sep 2017 01:49:32 GMT  
		Size: 1.3 MB (1304548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c9bf28bdb89c359bac9034706e0c7abe21ef0a895167e88966634925541afa`  
		Last Modified: Wed, 13 Sep 2017 01:49:33 GMT  
		Size: 8.7 MB (8672819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad0f7ad3e271e2a5f193e504da10e3f1fc1e8e27b5b301d1fa383ad22dd4f61`  
		Last Modified: Wed, 13 Sep 2017 01:49:32 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b26721c374d6ef49a7a2051405018773fa845cd56d531631ccb3efecac55e235`  
		Last Modified: Wed, 13 Sep 2017 01:49:32 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
