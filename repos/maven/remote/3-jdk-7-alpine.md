## `maven:3-jdk-7-alpine`

```console
$ docker pull maven@sha256:29631532af479c63d75772557f3eae2fa4d28a5172b4f6fcc1ba644a137b97af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-alpine` - linux; amd64

```console
$ docker pull maven@sha256:0858b0de299f733d97b704a03f555994a72a520f906d0b7547ef032e93a19101
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.9 MB (89872243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f3c7369638c2b25f7e55eb60c0f3be9971cacb3aff3e7ff021aa00376dc72d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:48:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 12 Sep 2017 23:48:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 12 Sep 2017 23:48:35 GMT
ENV JAVA_VERSION=7u131
# Tue, 12 Sep 2017 23:48:35 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Tue, 12 Sep 2017 23:48:45 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 01:46:44 GMT
RUN apk add --no-cache curl tar bash
# Wed, 13 Sep 2017 01:46:45 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:46:45 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:46:45 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:46:45 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:46:46 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 01:46:47 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 01:46:47 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 01:46:47 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 01:46:47 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 01:46:47 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 01:46:48 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 01:46:48 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0028340879864dcf160cb49baa12ba5fe473833c8e40da6f0b5325a378b1cd3`  
		Last Modified: Wed, 13 Sep 2017 00:01:56 GMT  
		Size: 77.4 MB (77433839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7feb47b2afa3ac9d5dedbdded72ba9997914a488af0b18fcae2c506a1bc41dd1`  
		Last Modified: Wed, 13 Sep 2017 01:49:18 GMT  
		Size: 1.8 MB (1773886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b4ae1e5bdf46d3b2abb4e328049795ebcc541061d2ef5ba61c5ae330ab682b`  
		Last Modified: Wed, 13 Sep 2017 01:49:18 GMT  
		Size: 8.7 MB (8672790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750c1a25b24add3f772f9f4446aae45d0296951f28a9b1e5dcccd9c373170f3b`  
		Last Modified: Wed, 13 Sep 2017 01:49:17 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fab2b8e523d4b41e12efc96293acd04e07785ebf8cdc69192be2a385808dd87`  
		Last Modified: Wed, 13 Sep 2017 01:49:17 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
