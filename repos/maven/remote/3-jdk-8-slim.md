## `maven:3-jdk-8-slim`

```console
$ docker pull maven@sha256:0373d4e896bafc2b1a45e4b516a815dc407414c695ad2f880985e105a84a786c
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.7 MB (103687918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:879b3ecf02870603803f0c7baeb7b1641a81daae7072942f242038cc2f5fb0cf`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:56:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:56:40 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:56:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:56:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:56:42 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 08:56:42 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:56:42 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:56:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 08 Sep 2017 08:57:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 08:57:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 17:53:56 GMT
ARG MAVEN_VERSION=3.5.0
# Mon, 11 Sep 2017 17:53:56 GMT
ARG USER_HOME_DIR=/root
# Mon, 11 Sep 2017 17:53:57 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Mon, 11 Sep 2017 17:53:57 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Mon, 11 Sep 2017 17:54:11 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:54:13 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 11 Sep 2017 17:54:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 11 Sep 2017 17:54:14 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 11 Sep 2017 17:54:14 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 11 Sep 2017 17:54:15 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 11 Sep 2017 17:54:15 GMT
VOLUME [/root/.m2]
# Mon, 11 Sep 2017 17:54:15 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 11 Sep 2017 17:54:16 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea00d9930d41613090f3c1a19433ea355976ff7be686a2c3b5a457a7f4c72a5`  
		Last Modified: Sat, 09 Sep 2017 00:36:08 GMT  
		Size: 267.3 KB (267320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def04828dfb0ee9a02d7a2841031c5c5957cb0442bf8471fe72e71cdf182cfb1`  
		Last Modified: Sat, 09 Sep 2017 00:36:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97cb98f633da303c199faf9e12723cbfe38b65415935432911a4494bb0d8f2f`  
		Last Modified: Sat, 09 Sep 2017 00:36:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:212aa720df289e2251fd9227cdc0ba7a0442dae05e9a85019bc422c74f822d5f`  
		Last Modified: Sat, 09 Sep 2017 00:36:21 GMT  
		Size: 68.5 MB (68454940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe3f7320a87ad839b014fe2ae6fa1a186fd698410d51d261d4b924237359c30`  
		Last Modified: Sat, 09 Sep 2017 00:36:08 GMT  
		Size: 272.0 KB (272015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:673a4fbf22788cb32a76a2cf8e993728c10367367ddb33d8ebdfa70ba7a8d9ec`  
		Last Modified: Mon, 11 Sep 2017 18:04:51 GMT  
		Size: 3.5 MB (3531358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1d0dad6d33559ecf775be0823ac2d02bbdd537a54c28b2beb279fff8a3b711`  
		Last Modified: Mon, 11 Sep 2017 18:04:51 GMT  
		Size: 8.7 MB (8672777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1938215f914997d9404a622433b725ff6c16fd2050cb957c0f65156da136e466`  
		Last Modified: Mon, 11 Sep 2017 18:04:50 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d4cdf2b51437a6fbbdf1dcb490cb7fcf2b978c0155fdf49ca6bf60142f230a`  
		Last Modified: Mon, 11 Sep 2017 18:04:50 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
