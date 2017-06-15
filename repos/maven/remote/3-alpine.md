## `maven:3-alpine`

```console
$ docker pull maven@sha256:90ad6e6ef5c83d18de61aa9adfa22e4c6019b3398a177596d722869d2a44111f
```

-	Platforms:
	-	linux; amd64

### `maven:3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82447184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc040281fd6f59ed2abe9d094f301229d3a2fc003292478c10736030983472cf`
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
# Thu, 01 Jun 2017 16:59:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 01 Jun 2017 16:59:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 01 Jun 2017 16:59:59 GMT
ENV JAVA_VERSION=8u131
# Thu, 01 Jun 2017 17:00:00 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r1
# Thu, 01 Jun 2017 17:00:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 14 Jun 2017 00:31:14 GMT
RUN apk add --no-cache curl tar bash
# Wed, 14 Jun 2017 00:31:37 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 14 Jun 2017 00:31:38 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Jun 2017 00:31:39 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 14 Jun 2017 00:31:39 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 14 Jun 2017 00:31:42 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 14 Jun 2017 00:32:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 14 Jun 2017 00:32:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Jun 2017 16:55:24 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Jun 2017 16:55:25 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Jun 2017 16:55:26 GMT
VOLUME [/root/.m2]
# Thu, 15 Jun 2017 16:55:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Jun 2017 16:55:28 GMT
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
	-	`sha256:06ec60720c7edfacf63a1b600f53b3f8fd79f794ff8825bb1806d48ac7ff6eee`  
		Last Modified: Thu, 01 Jun 2017 17:11:30 GMT  
		Size: 70.0 MB (70049880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8788e58d139b92282a86e60ee7b92009ec403fe59bac35d28b1da9059f665815`  
		Last Modified: Wed, 14 Jun 2017 14:38:36 GMT  
		Size: 1.7 MB (1733158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5453cfcd082bc3fda9291cb3405c0eef6b18b92dd9abcb13277f203753e263`  
		Last Modified: Wed, 14 Jun 2017 14:38:35 GMT  
		Size: 8.7 MB (8672746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85acba4150879ac46e5e5b261520fd885727fdd6bdc3942d01a358edc6415336`  
		Last Modified: Thu, 15 Jun 2017 17:02:16 GMT  
		Size: 718.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c11da1fa3470749ac7a5d80da3e371a00b47754e88fbc73f68c1f13a50357e`  
		Last Modified: Thu, 15 Jun 2017 17:02:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
