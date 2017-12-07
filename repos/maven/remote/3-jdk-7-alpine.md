## `maven:3-jdk-7-alpine`

```console
$ docker pull maven@sha256:3467607c15ab4cfb7e4fb3ef297630ece6b11ef37577cbd40add8b1186c6cd6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `maven:3-jdk-7-alpine` - linux; amd64

```console
$ docker pull maven@sha256:5d877671cd0d090afb10f70a24f66406a81cfbf0d4b066c8b46d29b83f9d4da4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90314337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c6f7123235a0de60a18d86c81c03cac7970e67776abc3a9c49102e5f84e334e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:42:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 05 Dec 2017 03:42:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 05 Dec 2017 03:42:46 GMT
ENV JAVA_VERSION=7u151
# Tue, 05 Dec 2017 03:42:46 GMT
ENV JAVA_ALPINE_VERSION=7.151.2.6.11-r0
# Tue, 05 Dec 2017 03:43:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:56:16 GMT
RUN apk add --no-cache curl tar bash
# Tue, 05 Dec 2017 04:56:17 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 05 Dec 2017 04:56:17 GMT
ARG USER_HOME_DIR=/root
# Tue, 05 Dec 2017 04:56:17 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 05 Dec 2017 04:56:17 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 05 Dec 2017 04:56:19 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 05 Dec 2017 04:56:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 05 Dec 2017 04:56:19 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Dec 2017 00:40:00 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Dec 2017 00:40:01 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 07 Dec 2017 00:40:01 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Dec 2017 00:40:01 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5176a718d97095c6e24a35aff7276746d1ef705923fe2c0e2775e0b312029e7`  
		Last Modified: Tue, 05 Dec 2017 03:44:30 GMT  
		Size: 77.4 MB (77404229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7532a59874b2ce65e99a0382eb6fb696a6ce3b3127c99c5de26cb913328f1f`  
		Last Modified: Tue, 05 Dec 2017 04:56:52 GMT  
		Size: 2.0 MB (1959986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afabf1cf91ed05096cbad2bbfec6e3c1508db633f0737282177a31b12149ea6`  
		Last Modified: Tue, 05 Dec 2017 04:56:49 GMT  
		Size: 8.9 MB (8883864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7dc1d140e5a0f2d13d01295a45b36c2702a397722496ea976b6a3439c31f6f1`  
		Last Modified: Thu, 07 Dec 2017 00:41:51 GMT  
		Size: 749.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb6cef39b2b7b870d644ad346b7c35674f6a61ca0124fb98d5b51edb4d7addc`  
		Last Modified: Thu, 07 Dec 2017 00:41:51 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-alpine` - linux; arm variant v6

```console
$ docker pull maven@sha256:154158e652f329225c5b8a6697025aba709ed53234e6531276694e2f27d9eb69
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.0 MB (80987137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e6d23bb4c041abd35c8fc4d72570744d7f4469b866345baf7ac517f869c2418`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 20:22:19 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 20:22:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 20:22:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 05 Dec 2017 20:22:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 05 Dec 2017 20:22:21 GMT
ENV JAVA_VERSION=7u151
# Tue, 05 Dec 2017 20:22:21 GMT
ENV JAVA_ALPINE_VERSION=7.151.2.6.11-r0
# Tue, 05 Dec 2017 20:22:48 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 20:40:40 GMT
RUN apk add --no-cache curl tar bash
# Tue, 05 Dec 2017 20:40:40 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 05 Dec 2017 20:40:40 GMT
ARG USER_HOME_DIR=/root
# Tue, 05 Dec 2017 20:40:40 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 05 Dec 2017 20:40:41 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 05 Dec 2017 20:40:43 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 05 Dec 2017 20:40:43 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 05 Dec 2017 20:40:43 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Dec 2017 05:20:36 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Dec 2017 05:20:36 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 07 Dec 2017 05:20:36 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Dec 2017 05:20:37 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75189a5714ff86ba3b00e4d0b8ca506eec4fe942b102e32758bc44952780f6a3`  
		Last Modified: Tue, 05 Dec 2017 20:23:43 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0255dde9a78c27c05d1a5207065779e11783a168cd555d6704023d99556eb27`  
		Last Modified: Tue, 05 Dec 2017 20:23:56 GMT  
		Size: 68.2 MB (68163669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e407beaf7c88121d6aee2c6ed5149ac7434c1e4e91f8f9077edf696670b39d`  
		Last Modified: Tue, 05 Dec 2017 20:40:56 GMT  
		Size: 1.9 MB (1899763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db904bec7d92a8240ce72308dd2e332badf8af90f122012f79d1529631e5216d`  
		Last Modified: Tue, 05 Dec 2017 20:40:56 GMT  
		Size: 8.9 MB (8883889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:345572e61d1c2da4266dd54b50f79e90efc11e82b8124adad15788b7ae3091dd`  
		Last Modified: Thu, 07 Dec 2017 05:20:57 GMT  
		Size: 747.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b570bac5d71f275125413a4761d88efa96d740a554520f654a9e24eaf99f596`  
		Last Modified: Thu, 07 Dec 2017 05:20:57 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:faae0499965ea8679f87e47dc3cf64c2cf998d45a497abb2e4327b8597428f57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88177060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea890bc8a4fb1b77c683e9dd9484e95017f5b0763f05217598d539dbb2c2d36e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 11:05:19 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 11:05:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 11:05:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 05 Dec 2017 11:05:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 05 Dec 2017 11:05:23 GMT
ENV JAVA_VERSION=7u151
# Tue, 05 Dec 2017 11:05:23 GMT
ENV JAVA_ALPINE_VERSION=7.151.2.6.11-r0
# Tue, 05 Dec 2017 11:06:14 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 11:37:04 GMT
RUN apk add --no-cache curl tar bash
# Tue, 05 Dec 2017 11:37:05 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 05 Dec 2017 11:37:06 GMT
ARG USER_HOME_DIR=/root
# Tue, 05 Dec 2017 11:37:06 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 05 Dec 2017 11:37:07 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 05 Dec 2017 11:37:13 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 05 Dec 2017 11:37:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 05 Dec 2017 11:37:15 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 05 Dec 2017 11:37:16 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 05 Dec 2017 11:37:17 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 05 Dec 2017 11:37:18 GMT
VOLUME [/root/.m2]
# Tue, 05 Dec 2017 11:37:19 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 05 Dec 2017 11:37:20 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4b770fee7695d8ca568c04817dd4e9d077997d617c75c75c6c47038c837df1`  
		Last Modified: Tue, 05 Dec 2017 11:12:04 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416413fec3fbf11f3e37e924a354ac977f1933f06f58afe41111736da2f4828d`  
		Last Modified: Tue, 05 Dec 2017 11:12:21 GMT  
		Size: 75.4 MB (75434547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b66dc4a6405d54c7df5c2f49f95a7ffeb9996f136638c46ebc4941e51a2061`  
		Last Modified: Tue, 05 Dec 2017 11:38:24 GMT  
		Size: 1.9 MB (1868294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab383488226a93d1d86f1b1a1b596394519f5b3b36ee5b1693ab3cf9faf61779`  
		Last Modified: Tue, 05 Dec 2017 11:38:25 GMT  
		Size: 8.9 MB (8883857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a230d2a08c2b0450d78ae05c2fed402ba54c7a3d2cef493016b83880ffd5222`  
		Last Modified: Tue, 05 Dec 2017 11:38:25 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2188cdc15646b1c28f6591f0798991d71c4ee5729478c198a4f2dcbc81dee166`  
		Last Modified: Tue, 05 Dec 2017 11:38:24 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-alpine` - linux; 386

```console
$ docker pull maven@sha256:0a12d11235782ca7b8cab19be61cd848278de78a8ebc9d408d688c2c0ee1de46
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93580851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa6f6e8cf057cecc79a1e5a92b31c310977af4acfd33a1ed1632d3a06cb96586`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 11:43:46 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 11:43:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 11:43:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 05 Dec 2017 11:43:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 05 Dec 2017 11:43:56 GMT
ENV JAVA_VERSION=7u151
# Tue, 05 Dec 2017 11:43:56 GMT
ENV JAVA_ALPINE_VERSION=7.151.2.6.11-r0
# Tue, 05 Dec 2017 11:44:54 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 12:12:44 GMT
RUN apk add --no-cache curl tar bash
# Tue, 05 Dec 2017 12:12:44 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 05 Dec 2017 12:12:45 GMT
ARG USER_HOME_DIR=/root
# Tue, 05 Dec 2017 12:12:45 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 05 Dec 2017 12:12:45 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 05 Dec 2017 12:12:47 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 05 Dec 2017 12:12:47 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 05 Dec 2017 12:12:47 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Dec 2017 02:46:16 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Dec 2017 02:46:16 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 07 Dec 2017 02:46:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Dec 2017 02:46:17 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c133e6dffdd21fda44fae785186d6f9e3a441bb7767286c2ed65a31208c03fe7`  
		Last Modified: Tue, 05 Dec 2017 11:49:43 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7fc0156be9dec989211fcd4e737ef573f97a48ee152a6290d0d12d9afaf2e2f`  
		Last Modified: Tue, 05 Dec 2017 11:50:37 GMT  
		Size: 80.5 MB (80495023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d529dedaa9c747ddcfd063a56c0da93db3115e0754248edfbdcc13eb0ec8a17`  
		Last Modified: Tue, 05 Dec 2017 12:13:18 GMT  
		Size: 2.1 MB (2074231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5a1602712baa6036ee3bf10564e9990c0e75a8459b9a2bbda2192b48791690`  
		Last Modified: Tue, 05 Dec 2017 12:13:18 GMT  
		Size: 8.9 MB (8883859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37df2794a13983460f5706dc794dcc436112a334104aad9e14874013c30f5070`  
		Last Modified: Thu, 07 Dec 2017 02:48:20 GMT  
		Size: 749.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751f73bb3f6c5c11aa15bfe315aa72ee9814aba60f42048d887a3dbb8abe5f33`  
		Last Modified: Thu, 07 Dec 2017 02:48:20 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-alpine` - linux; ppc64le

```console
$ docker pull maven@sha256:df7c627929ac62c92ba7b2246a4faf6bf7744460e7a6b8d68a257c84b1282bf3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82611127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:963ea15d3ac5f61d714a9ffa2a8fe1b3f8f7a0ecdac5d02994c7a5d20e592096`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 11:47:54 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 11:47:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 11:47:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 05 Dec 2017 11:48:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 05 Dec 2017 11:48:01 GMT
ENV JAVA_VERSION=7u151
# Tue, 05 Dec 2017 11:48:02 GMT
ENV JAVA_ALPINE_VERSION=7.151.2.6.11-r0
# Tue, 05 Dec 2017 11:48:55 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 12:10:17 GMT
RUN apk add --no-cache curl tar bash
# Tue, 05 Dec 2017 12:10:20 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 05 Dec 2017 12:10:22 GMT
ARG USER_HOME_DIR=/root
# Tue, 05 Dec 2017 12:10:25 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 05 Dec 2017 12:10:29 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 05 Dec 2017 12:10:37 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 05 Dec 2017 12:10:39 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 05 Dec 2017 12:10:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 05 Dec 2017 12:10:44 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 05 Dec 2017 12:10:46 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 05 Dec 2017 12:10:47 GMT
VOLUME [/root/.m2]
# Tue, 05 Dec 2017 12:10:49 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 05 Dec 2017 12:10:51 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d80117bba7af560896439d844c0f3998317292d41faacc0a842ce3dd7e14605`  
		Last Modified: Tue, 05 Dec 2017 11:51:04 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1061c72558b55c62bfb93a17e9c05869fb18ca7ae72cb680eda1102a80b13b6e`  
		Last Modified: Tue, 05 Dec 2017 11:51:24 GMT  
		Size: 69.7 MB (69681273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86fee279bab30424461ec1410581c0fcc21faf7fb0f84eb0ac3a42be66da8634`  
		Last Modified: Tue, 05 Dec 2017 12:11:42 GMT  
		Size: 2.0 MB (1963008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abf2fcf06a65400120c7bdccd5179ac2f1da1bd2045abf66f79119acb1762a7`  
		Last Modified: Tue, 05 Dec 2017 12:11:44 GMT  
		Size: 8.9 MB (8883873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374b52f4a7856cfaec13d668d3a0bd508021e61ad913abd51c10d1f91595c3a5`  
		Last Modified: Tue, 05 Dec 2017 12:11:40 GMT  
		Size: 733.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4f360e01150b5d0d26e0baae10634747e33fd5a8a7662f609d081a199a8c837`  
		Last Modified: Tue, 05 Dec 2017 12:11:40 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-alpine` - linux; s390x

```console
$ docker pull maven@sha256:529676617d4b131f8f1064404dfae22e7ca9cbb890a02ad55ebbc2d067854cae
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82868629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28252fca4865d4018a8dc483afe779b67dc95ad9874dfa616a65001c369d6b6c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 17:54:50 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 17:54:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 17:54:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 05 Dec 2017 17:54:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 05 Dec 2017 17:54:53 GMT
ENV JAVA_VERSION=7u151
# Tue, 05 Dec 2017 17:54:53 GMT
ENV JAVA_ALPINE_VERSION=7.151.2.6.11-r0
# Tue, 05 Dec 2017 17:55:40 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 18:16:54 GMT
RUN apk add --no-cache curl tar bash
# Tue, 05 Dec 2017 18:16:54 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 05 Dec 2017 18:16:54 GMT
ARG USER_HOME_DIR=/root
# Tue, 05 Dec 2017 18:16:55 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 05 Dec 2017 18:16:55 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 05 Dec 2017 18:17:00 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 05 Dec 2017 18:17:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 05 Dec 2017 18:17:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Dec 2017 04:07:49 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Dec 2017 04:07:49 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 07 Dec 2017 04:07:50 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Dec 2017 04:07:50 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320238e3e22d841c8337cb6f2d8b95f9c1ab000f2845efcd5bd977690210f427`  
		Last Modified: Tue, 05 Dec 2017 17:58:18 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f71969401ebfd29cbfcf3b4a230ad9279e59d89ae146e4953e07ebf1adf7dc6`  
		Last Modified: Tue, 05 Dec 2017 17:58:26 GMT  
		Size: 69.7 MB (69743443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e33b1cfa30396bb583f0dfd1237b087a3f5c01a89c7f3b6b63936733f7b95d0`  
		Last Modified: Tue, 05 Dec 2017 18:17:53 GMT  
		Size: 2.1 MB (2054566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7df94e00b7be5efcf2a4a0f6fae280af57c8f441b08ccbf8cd9f0d0634e51b`  
		Last Modified: Tue, 05 Dec 2017 18:17:53 GMT  
		Size: 8.9 MB (8883868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421debeab9ded1c4e7556c49dd9b2d1c7ce831b05401487bd37a5da722d51438`  
		Last Modified: Thu, 07 Dec 2017 04:09:42 GMT  
		Size: 748.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f9a8f825578ff755eee0a904c87ba6a465f632bb0681d24d9a35c1b71224a1`  
		Last Modified: Thu, 07 Dec 2017 04:09:41 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
