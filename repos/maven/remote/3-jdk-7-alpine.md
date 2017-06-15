## `maven:3-jdk-7-alpine`

```console
$ docker pull maven@sha256:c4f866061bf5d8e1cdd56d84d1286eb462f99056f6f90389fb840f644c581e89
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.9 MB (89867063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e92ee464801a1b9f63c33fe96befb0ab6ed4350735d2bb86fe5b3b84c5aa154`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Thu, 01 Jun 2017 16:58:46 GMT
ENV LANG=C.UTF-8
# Thu, 01 Jun 2017 16:58:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 01 Jun 2017 16:58:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Thu, 01 Jun 2017 16:58:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 01 Jun 2017 16:58:49 GMT
ENV JAVA_VERSION=7u131
# Thu, 01 Jun 2017 16:58:50 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Thu, 01 Jun 2017 16:59:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 14 Jun 2017 00:25:01 GMT
RUN apk add --no-cache curl tar bash
# Wed, 14 Jun 2017 00:25:23 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 14 Jun 2017 00:25:24 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Jun 2017 00:25:25 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 14 Jun 2017 00:25:26 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 14 Jun 2017 00:25:28 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 14 Jun 2017 00:25:29 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 14 Jun 2017 00:25:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Jun 2017 16:54:27 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Jun 2017 16:54:28 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Jun 2017 16:54:29 GMT
VOLUME [/root/.m2]
# Thu, 15 Jun 2017 16:54:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Jun 2017 16:54:31 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bb7a1c6ee7ae261bc9a503b112a715153b44524eaf20763357e3c4b1b32983`  
		Last Modified: Thu, 01 Jun 2017 17:04:59 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48844f08c2029e8a0a7e637a0b861a54d395c8e81cecc9214c9c85ab5f2654f4`  
		Last Modified: Thu, 01 Jun 2017 17:05:11 GMT  
		Size: 77.4 MB (77431116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea32cd1303896e1c6ad36cfad612472df6051cc1c5c5bc1c9fb07520893d0199`  
		Last Modified: Wed, 14 Jun 2017 14:26:28 GMT  
		Size: 1.8 MB (1771786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ff058b2968752a190f9ce4e154bdaf7b472f7563b790dec4288e288955e103`  
		Last Modified: Wed, 14 Jun 2017 14:26:27 GMT  
		Size: 8.7 MB (8672761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f366323ae0f65655d9fca5a0e381e485c1f27f019d8d50e9943d06ff1e2f92b3`  
		Last Modified: Thu, 15 Jun 2017 16:57:54 GMT  
		Size: 718.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bcc968c8988a6fb94e00bbb9684b937a19d283703f6b39bcbd21bdd331f0b09`  
		Last Modified: Thu, 15 Jun 2017 16:57:54 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
