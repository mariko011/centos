## `maven:3-jdk-7-alpine`

```console
$ docker pull maven@sha256:925ea7407922c39e1bdcbef4af6566518a99ed01a0e9c7a095662193e9a54420
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-alpine` - linux; amd64

```console
$ docker pull maven@sha256:41d0382b0b71e9f7c77aa1699c8872622ec7b0d138869f406cde0d065a3bffc3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.9 MB (89906070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9a4f2b5e04b552a803a8103f486a49a301e841c297291874e8da5542c25b420`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:25:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Thu, 26 Oct 2017 01:25:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 26 Oct 2017 01:25:23 GMT
ENV JAVA_VERSION=7u131
# Thu, 26 Oct 2017 01:25:23 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Thu, 26 Oct 2017 01:25:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 04:39:36 GMT
RUN apk add --no-cache curl tar bash
# Thu, 26 Oct 2017 04:39:36 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 26 Oct 2017 04:39:36 GMT
ARG USER_HOME_DIR=/root
# Thu, 26 Oct 2017 04:39:37 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 26 Oct 2017 04:39:37 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 26 Oct 2017 04:39:38 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 26 Oct 2017 04:39:38 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 26 Oct 2017 04:39:39 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 26 Oct 2017 04:39:39 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 26 Oct 2017 04:39:39 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 26 Oct 2017 04:39:39 GMT
VOLUME [/root/.m2]
# Thu, 26 Oct 2017 04:39:40 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 26 Oct 2017 04:39:40 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9bad3d1103405a7208b47bb984d20827de9a886b5c52b6b99f6c6e5963cc1b`  
		Last Modified: Thu, 26 Oct 2017 01:30:02 GMT  
		Size: 77.4 MB (77432967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a0754d5d0ada7afd134607629597e7313bc52084a66413f3f382ffd1324e9f`  
		Last Modified: Thu, 26 Oct 2017 04:40:51 GMT  
		Size: 1.8 MB (1807573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589e4f39f0e7b6d12c96b569d62c3f0ae46fb2bf31baf1f0b7482aa52f939908`  
		Last Modified: Thu, 26 Oct 2017 04:40:52 GMT  
		Size: 8.7 MB (8672769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64cb2eb1a9f8522e90ecb3ffac4c21f661d6848ed2393875a57a1f514eb73754`  
		Last Modified: Thu, 26 Oct 2017 04:40:50 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7174ef7ae0a17933077d4edc76e7526969d45d45a60ef923bbcc7468c6491b`  
		Last Modified: Thu, 26 Oct 2017 04:40:50 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
