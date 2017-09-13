## `maven:3-jdk-9-slim`

```console
$ docker pull maven@sha256:c6944735f99b8ca4372aa6753c2d819c54eda9a170b97019060ba71668907717
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `maven:3-jdk-9-slim` - linux; amd64

```console
$ docker pull maven@sha256:9f6cff2e5ff15283edbba3b8174eb17a63c0edd4d9665b11c71b85b3ad2c2428
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.4 MB (193433250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfbf59a7ba2055000e5a5116ff5e18721073d4255fcf5955b334583a9e1cb386`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 07 Sep 2017 23:06:37 GMT
ADD file:45b6614e4cfe3201e7d003ca7c2dd680754d840d0d68f4aed1434387d3d7cb9f in / 
# Thu, 07 Sep 2017 23:06:37 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 23:56:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:56:09 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:56:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:56:10 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:56:11 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:56:11 GMT
ENV JAVA_VERSION=9-b181
# Tue, 12 Sep 2017 23:56:11 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 12 Sep 2017 23:56:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:56:55 GMT
CMD ["jshell"]
# Wed, 13 Sep 2017 01:47:54 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 01:47:55 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 01:47:55 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 01:47:55 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 01:48:05 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 21:44:05 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Wed, 13 Sep 2017 21:44:08 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 21:44:09 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 21:44:09 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 21:44:09 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 21:44:10 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 21:44:10 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 21:44:10 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 21:44:10 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7c204b2b587804ea4060342fa97e944155dfa82fa997c3668fa52b3af6c9d958`  
		Last Modified: Thu, 07 Sep 2017 23:15:14 GMT  
		Size: 24.9 MB (24881942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f67c3b2eb7a22e011d15cd84635c32080c4513cee65019c649ff4381a27a8aa`  
		Last Modified: Wed, 13 Sep 2017 00:08:38 GMT  
		Size: 461.0 KB (461005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0a82e2706ce5e16c9debb4ce1cc258e613455505290a0123b1c9094d17000e`  
		Last Modified: Wed, 13 Sep 2017 00:08:37 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f505cbb0d8ec7e9f3519dee48ca7a3ac5c8d85c68d5a95d018428974d1fb8c5`  
		Last Modified: Wed, 13 Sep 2017 00:08:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952c95a9b1359413fe1da2c296544014a76378d769fdabae95b779c6c5fe1a0b`  
		Last Modified: Wed, 13 Sep 2017 00:08:57 GMT  
		Size: 156.4 MB (156415083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10cef3e2547767b9e15eb8a0dbf9c8d349f0f6c54bd01298816fa4bbafb1d014`  
		Last Modified: Wed, 13 Sep 2017 01:51:28 GMT  
		Size: 3.0 MB (3000708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81889b50fc3ce773207228ac1174cda2d19c7292dde145638413c9b96ca7ed50`  
		Last Modified: Wed, 13 Sep 2017 21:45:03 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48147dbf3693cbc076ae7a70ef6647cfde31174a60f4d423062900cd50019eb5`  
		Last Modified: Wed, 13 Sep 2017 21:45:03 GMT  
		Size: 8.7 MB (8672813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5fad23e93d7cd0e44ac4815a973f94117dbc2c0f0d01f803ffa0480757888e`  
		Last Modified: Wed, 13 Sep 2017 21:45:02 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac5f5ca52027afe14c7566afe5da8094cb87a9cac4edaf790e117e6887750c2`  
		Last Modified: Wed, 13 Sep 2017 21:45:02 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9-slim` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:c182735c5361eeab659c784724b87390769dc064de58d9d93e873d0e20155f18
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.8 MB (172783962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:548409221f0fb40836bc9d4728fb42a0b00ecc4790c3998f73bdba32f20c09a3`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 08 Sep 2017 17:26:41 GMT
ADD file:7cce27d82405d7a3f39c369fde3e7b7511bfca1ffdb04673918e1de5aff383bd in / 
# Fri, 08 Sep 2017 17:26:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 22:47:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 22:47:58 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 22:48:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 22:48:04 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 22:48:04 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 22:48:05 GMT
ENV JAVA_VERSION=9-b181
# Fri, 08 Sep 2017 22:48:06 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Fri, 08 Sep 2017 22:50:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 22:50:12 GMT
CMD ["jshell"]
# Wed, 13 Sep 2017 21:44:12 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 21:44:12 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 21:44:13 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 21:44:13 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 21:44:38 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 21:44:39 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Wed, 13 Sep 2017 21:44:45 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 21:44:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 21:44:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 21:44:46 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 21:44:47 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 21:44:47 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 21:44:48 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 21:44:49 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e5868fb8dbe395628ad2da569e09fc6c1d0398612b14bfb6fb8b990ac3dee588`  
		Last Modified: Fri, 08 Sep 2017 17:39:55 GMT  
		Size: 22.7 MB (22653040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1568c8a5163c42b16c427043913ccc38aecf37a1c8b7f17fb654923657499fb0`  
		Last Modified: Fri, 08 Sep 2017 22:57:31 GMT  
		Size: 445.9 KB (445890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646029eff7c73c8ded8b484f8ba98c3613ba297039891dc7be3489d05d2e1568`  
		Last Modified: Fri, 08 Sep 2017 22:57:30 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cdd47da0aa30578ec7fb305a0d9d6232baf55c462162fa02ccf00e5fb913082`  
		Last Modified: Fri, 08 Sep 2017 22:57:30 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9dfd52e3e11c681c15fe1a61b9b13d6850eceec1e4e1243c3e598800907b23d`  
		Last Modified: Fri, 08 Sep 2017 22:58:01 GMT  
		Size: 138.5 MB (138514007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a8ad0f2199d830be1c260b75cb119bb0e4a0323c7bef0238fd4b1d2513b980`  
		Last Modified: Wed, 13 Sep 2017 21:49:24 GMT  
		Size: 2.5 MB (2496505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60fde988e3c3444ba484767c9facb4f5da104c812e8dbbcd1378edff6f7e38f4`  
		Last Modified: Wed, 13 Sep 2017 21:49:23 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e21781a0aa42e1a9361aa44d2a87481d0a93a6707e56941a23d73f75885ead66`  
		Last Modified: Wed, 13 Sep 2017 21:49:24 GMT  
		Size: 8.7 MB (8672818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a61528bac371774dd536323159d8d900f82417202c19c78c788165392225c9`  
		Last Modified: Wed, 13 Sep 2017 21:49:23 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475ea727567314532cd02fbbfdd53455ae3cb269879fdb41dc1552c7a5897bd3`  
		Last Modified: Wed, 13 Sep 2017 21:49:23 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9-slim` - linux; 386

```console
$ docker pull maven@sha256:72725bbef2d28a79c6e5d2cd974e6b9ed1952a0f84ac5182bc0d717536752f7d
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196704455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d00fb20d89614092d89364cd57e3cbbc31c0c47ebadeee12223a6f1be6290ed`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:11 GMT
ADD file:40d47d772ab0ee4d64b5cf6e5e9303e76a28ea856c50b3c991cf59025b9c982a in / 
# Fri, 08 Sep 2017 13:19:11 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:17:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 15:17:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 15:17:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 15:17:24 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 15:17:25 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 15:17:25 GMT
ENV JAVA_VERSION=9-b181
# Fri, 08 Sep 2017 15:17:25 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Fri, 08 Sep 2017 15:18:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 15:18:12 GMT
CMD ["jshell"]
# Wed, 13 Sep 2017 21:45:54 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 21:45:54 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 21:45:54 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 21:45:54 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 21:46:06 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 21:46:06 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Wed, 13 Sep 2017 21:46:08 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 21:46:08 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 21:46:08 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 21:46:09 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 21:46:09 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 21:46:09 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 21:46:09 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 21:46:09 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e9bde2030b151dec537b192bc227b6cb0145e8bb67785476b9bf44162ac12654`  
		Last Modified: Fri, 08 Sep 2017 13:25:56 GMT  
		Size: 25.6 MB (25615475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88019c368f75169ed89ac0e456f7b0a1a2a2ace631250323533bab7498e1e390`  
		Last Modified: Fri, 08 Sep 2017 15:37:16 GMT  
		Size: 469.6 KB (469577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad3524fb84f465ba1f928bcb893622d90b5a15ea9cd1716df95d607bb6d6e5d`  
		Last Modified: Fri, 08 Sep 2017 15:37:16 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0593a796a0996750eda0c8831117ba4ea40e858e1aa568c3001d6bf7bc4ca4ff`  
		Last Modified: Fri, 08 Sep 2017 15:37:16 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19805197036af448d06a183d54079133eb0a2ed9b9ea36fed6a90a4867d3659f`  
		Last Modified: Fri, 08 Sep 2017 15:37:44 GMT  
		Size: 159.0 MB (159035703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af39c60232cedc29a4f9f100b04b7c785e80a56ba44d9fc01ac44ee453f453f9`  
		Last Modified: Wed, 13 Sep 2017 21:49:42 GMT  
		Size: 2.9 MB (2909188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b431eb3a047945f1d7a709691460f45e01faa178f109903c5114d84caab8eb88`  
		Last Modified: Wed, 13 Sep 2017 21:49:42 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fee52e61bae64b193e59290c5cc7fbb4475916be913d088cca5d940fc4c589`  
		Last Modified: Wed, 13 Sep 2017 21:49:43 GMT  
		Size: 8.7 MB (8672823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a884653f152cd8b1db79665fd96a33c39df6438a3970a27662b928879b39933`  
		Last Modified: Wed, 13 Sep 2017 21:49:41 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6976f13ea36c0f5e83b1af5f5cf9c8d423ad23300d4b3bdf385268663c9821`  
		Last Modified: Wed, 13 Sep 2017 21:49:42 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9-slim` - linux; ppc64le

```console
$ docker pull maven@sha256:7f39bc0dd509c79c39b173538dde1a354ae315c192c2a2a2c2324fab5ecfdf70
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.2 MB (177178313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:101e5bf5e57ed9230ed76a40c35e5517fca0a1bd5eb3f8c641c9a01617d12954`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 08 Sep 2017 00:33:30 GMT
ADD file:d3451f01b15f70cdb3f80dd1014de1bb9b2d5e613c48ba06ec7dd32e0f5abb4c in / 
# Fri, 08 Sep 2017 00:33:31 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:27:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:27:43 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 01:27:44 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 01:27:45 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 01:27:45 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 01:27:45 GMT
ENV JAVA_VERSION=9-b181
# Fri, 08 Sep 2017 01:27:45 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Fri, 08 Sep 2017 01:28:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 01:28:25 GMT
CMD ["jshell"]
# Wed, 13 Sep 2017 21:49:17 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 21:49:18 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 21:49:20 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 21:49:22 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 21:50:14 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 21:50:19 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Wed, 13 Sep 2017 21:50:24 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 21:50:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 21:50:27 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 21:50:30 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 21:50:32 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 21:50:34 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 21:50:36 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 21:50:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f66bffb4be1df483e4472f05097734fab2e4f676dd632dfd6bb699d6361724ce`  
		Last Modified: Fri, 08 Sep 2017 00:39:34 GMT  
		Size: 25.6 MB (25569771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6149dceef38e929d517152933fd6ea8f50c0701ce92fa1d21c44d1d6deca2499`  
		Last Modified: Fri, 08 Sep 2017 01:31:48 GMT  
		Size: 455.8 KB (455783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7444e046322ee5b9bc2f19f22c872f4e2470d4ec753f6f9ea672f535d93dc0`  
		Last Modified: Fri, 08 Sep 2017 01:31:47 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb553745886e53655f7ac4d4d2d786e96b4568e55feb819db0654546dfeb79d`  
		Last Modified: Fri, 08 Sep 2017 01:31:47 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3c2ec9cdeb8bc893a7ddf5636993748c10a1757e3a1b7099a62cdc91f35137`  
		Last Modified: Fri, 08 Sep 2017 01:32:09 GMT  
		Size: 139.8 MB (139767303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a794c92c66fb111c74c239eca8dae8ba027cb8531c080b04b3e60f76def46221`  
		Last Modified: Wed, 13 Sep 2017 21:58:48 GMT  
		Size: 2.7 MB (2710863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ea9e214676afa2e1d901bb1c74bad9f4924cd1715794f7215ce57d64adfe414`  
		Last Modified: Wed, 13 Sep 2017 21:58:47 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d540fd2fb57cc338a0370948cb970167c10976e312655f35bb8b6c15c6439862`  
		Last Modified: Wed, 13 Sep 2017 21:58:48 GMT  
		Size: 8.7 MB (8672886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b1f388f8fe08dcf4d1cde407ae8d58a4b4d7c09778bc73c2ae066b1d922cb8`  
		Last Modified: Wed, 13 Sep 2017 21:58:47 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e7ef91ca77efd6f85924c60a7d919d8c0a55053f9af8d4650c5a5ab5f6586d`  
		Last Modified: Wed, 13 Sep 2017 21:58:47 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9-slim` - linux; s390x

```console
$ docker pull maven@sha256:b976f3ef0703f2be99d64a49d1cd4f3e04d7c1bf5a76fd5c54a9f6939d1b2487
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.1 MB (177104068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0383c59a5f9a6dfe34e7e6d864bcf3f06b58f93e9e4e0d34f7b602c6507eac87`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 08 Sep 2017 05:22:27 GMT
ADD file:d06ded297d4dee4ec19f41a08a1ebcc4d9b470fb1401e6fd693725984b002fc9 in / 
# Fri, 08 Sep 2017 05:22:27 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:55:47 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 05:55:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 05:55:48 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 05:55:48 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 05:55:48 GMT
ENV JAVA_VERSION=9-b181
# Fri, 08 Sep 2017 05:55:48 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Fri, 08 Sep 2017 05:56:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 05:56:27 GMT
CMD ["jshell"]
# Wed, 13 Sep 2017 21:43:48 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 21:43:49 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 21:43:49 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 21:43:49 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 21:44:00 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 21:44:01 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Wed, 13 Sep 2017 21:44:24 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 21:44:24 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 21:44:24 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 21:44:24 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 21:44:25 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 21:44:25 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 21:44:25 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 21:44:25 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:fd80618bdd9876fcdcc364cef7892a6a00cad4d53340bbb4aa1105b3a57b8687`  
		Last Modified: Fri, 08 Sep 2017 05:26:06 GMT  
		Size: 24.7 MB (24655923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1befb18804085dfcfbcff98854d9a15fa3b727c2ede98c6910907171de15b58b`  
		Last Modified: Fri, 08 Sep 2017 05:58:52 GMT  
		Size: 472.0 KB (471953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9909cfdb22f68df1d267fdbef5704b3cde51e57cfbf54cd50949b316325aac37`  
		Last Modified: Fri, 08 Sep 2017 05:58:51 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e634d4f56394284765d3054f19fe1e8ea00cc3fed4ed79cb878a43e7e44b193`  
		Last Modified: Fri, 08 Sep 2017 05:58:51 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e12e5208583fe26c747d54eef51362af3950860b3856b980a5ffb868d52c338`  
		Last Modified: Fri, 08 Sep 2017 05:59:07 GMT  
		Size: 140.5 MB (140530372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ccca6c06a5c32843e54f4a7c856537c02fd85daea44c887a0a04c438b846af`  
		Last Modified: Wed, 13 Sep 2017 21:45:56 GMT  
		Size: 2.8 MB (2771300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcc6ab12e049021a4e2de8f65a697e30f731ff3db5952e9ab352d94d3d6737e`  
		Last Modified: Wed, 13 Sep 2017 21:45:55 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53accf6c7d3cd720a5ff9e8af8b54f891c018af883fe2b45fd900ab5778a7ae`  
		Last Modified: Wed, 13 Sep 2017 21:45:57 GMT  
		Size: 8.7 MB (8672818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc478979cfe3eda31b5f343a6481190a5495c5f52c58b51364794f5878709fb7`  
		Last Modified: Wed, 13 Sep 2017 21:45:55 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320cdf342cf305db9eea977aee9a106ae67c0cdd4fa543eae25d12900731b8dd`  
		Last Modified: Wed, 13 Sep 2017 21:45:56 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
