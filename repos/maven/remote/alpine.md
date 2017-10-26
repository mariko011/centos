## `maven:alpine`

```console
$ docker pull maven@sha256:c4c0f4b442d110b344f1ff759b945be03734596f76f7b164b567edabd8841594
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:alpine` - linux; amd64

```console
$ docker pull maven@sha256:013625dbbeab94365f4b1ff9b4f76b6ed078bb6faf4b00ae3ae987d296cd9cb6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.5 MB (82490726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67d11473f554f1f193bbf361e81847063b2759d92e9ee42cbca1b07dee7982be`
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
# Thu, 26 Oct 2017 01:28:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 26 Oct 2017 01:28:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:28:49 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:28:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:28:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 04:39:53 GMT
RUN apk add --no-cache curl tar bash
# Thu, 26 Oct 2017 04:39:54 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 26 Oct 2017 04:39:54 GMT
ARG USER_HOME_DIR=/root
# Thu, 26 Oct 2017 04:39:54 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 26 Oct 2017 04:39:54 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 26 Oct 2017 04:39:55 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 26 Oct 2017 04:39:56 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 26 Oct 2017 04:39:56 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 26 Oct 2017 04:39:56 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 26 Oct 2017 04:39:56 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 26 Oct 2017 04:39:57 GMT
VOLUME [/root/.m2]
# Thu, 26 Oct 2017 04:39:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 26 Oct 2017 04:39:57 GMT
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
	-	`sha256:6e753bb2ec6763bd6c1b08b811ddca7327ded09593b37abd28e72898742f3f6b`  
		Last Modified: Thu, 26 Oct 2017 01:31:29 GMT  
		Size: 70.1 MB (70053816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ea6e0113f4e80595d678bb5449cd9165bd7b0d580fbcc4bfb1fd614fd52353`  
		Last Modified: Thu, 26 Oct 2017 04:41:26 GMT  
		Size: 1.8 MB (1771374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace0d91c026de783b02fd57bfc47087f2421dd15871062310849ca54630f26c2`  
		Last Modified: Thu, 26 Oct 2017 04:41:27 GMT  
		Size: 8.7 MB (8672781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a5d216d8d5d4d2865c890de23ef68854bb2928e6c04497d84882e2293ef8bd0`  
		Last Modified: Thu, 26 Oct 2017 04:41:25 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf6b634b77415131d1faac0b332c20b0562f4c5295fdb9cc3026ffbe1dc64aa`  
		Last Modified: Thu, 26 Oct 2017 04:41:25 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
