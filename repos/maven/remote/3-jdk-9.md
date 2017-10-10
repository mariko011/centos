## `maven:3-jdk-9`

```console
$ docker pull maven@sha256:8f35ae153505e516f2ad0e89515fa224bbc0810e13f8af0b4bd83d5e7dee8a79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `maven:3-jdk-9` - linux; amd64

```console
$ docker pull maven@sha256:01fa3e70f1b7f4f6c05f84320f4cfa0ab25fae86e56af17361f0c1d96347781b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.2 MB (404199010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b270364ca158399dd250c6084e215fe66728cb135e2f7521b3593d8541d750d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:20 GMT
ADD file:24ed5f5bb68abbeda1e34de4caa7be426978141c1664a5238107589d4038b5b0 in / 
# Wed, 13 Sep 2017 08:41:21 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:34:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:34:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:34:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:25:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:25:59 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:26:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:26:01 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:26:01 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 04:26:02 GMT
ENV JAVA_VERSION=9-b181
# Thu, 14 Sep 2017 04:26:02 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Thu, 14 Sep 2017 04:27:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:27:49 GMT
CMD ["jshell"]
# Thu, 14 Sep 2017 05:09:39 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 14 Sep 2017 05:09:40 GMT
ARG USER_HOME_DIR=/root
# Thu, 14 Sep 2017 05:09:40 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 14 Sep 2017 05:09:40 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 14 Sep 2017 05:09:42 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Thu, 14 Sep 2017 05:09:45 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 14 Sep 2017 05:09:46 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 14 Sep 2017 05:09:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 14 Sep 2017 05:09:46 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 14 Sep 2017 05:09:47 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 14 Sep 2017 05:09:47 GMT
VOLUME [/root/.m2]
# Thu, 14 Sep 2017 05:09:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 14 Sep 2017 05:09:48 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:82350343a6fef2218dcf962145f0ad627975bdd80329deb9ba552d2f787b0383`  
		Last Modified: Thu, 07 Sep 2017 23:14:32 GMT  
		Size: 47.8 MB (47753859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:477e069deac996dbb6609e7d33fd195256893b13fbc8d2ca163ef3219075241a`  
		Last Modified: Wed, 13 Sep 2017 12:55:34 GMT  
		Size: 8.6 MB (8550082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2369104e1f1899f031560bdc2ba86735241f6295cbd404f4f63ac0ff96fdd43`  
		Last Modified: Wed, 13 Sep 2017 12:55:34 GMT  
		Size: 9.8 MB (9842477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f49f83dfe2b0402c8bfe38a8e85880d872f9703f4b774a9b9a2a59f767f1a3c`  
		Last Modified: Wed, 13 Sep 2017 12:55:55 GMT  
		Size: 49.4 MB (49422139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24ce2c86454bf1cc4059982e2ddb153c39ae966a9796a20f944f5662bb5d0dc`  
		Last Modified: Thu, 14 Sep 2017 05:02:08 GMT  
		Size: 894.7 KB (894666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3198ec39e2543d5000edc9e1ee2638a08b1d83c5eda729fefefb6437ce193ad5`  
		Last Modified: Thu, 14 Sep 2017 05:02:07 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1317892d65ebad77135200ae5945e726f77a56f072cf2e9d5984c1cac7253917`  
		Last Modified: Thu, 14 Sep 2017 05:02:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ef56490c24c6e56a8a2edca6be4dc9532e63c0e915bce81a5ae0081758d0d0`  
		Last Modified: Thu, 14 Sep 2017 05:03:19 GMT  
		Size: 279.1 MB (279061274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4126166acf4e512cd39557d01fdae6057f9d6a99355df2723af858c7699e9ab`  
		Last Modified: Thu, 14 Sep 2017 05:13:57 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aea93ed7ac5f2c5eee0fcf3484bcb658e3ba0e6832bb043ef9f51f2347b0ffa`  
		Last Modified: Thu, 14 Sep 2017 05:13:57 GMT  
		Size: 8.7 MB (8672811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25fb36fead93b0fb826307e76ea5f8a0b13de227ef4fe526f66b4df7f35f932`  
		Last Modified: Thu, 14 Sep 2017 05:13:56 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0810866957434f14cf6a4e4b377ecb8a2cdb6e51ac8de89f15141c7b312de96d`  
		Last Modified: Thu, 14 Sep 2017 05:13:59 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; arm variant v5

```console
$ docker pull maven@sha256:9e0bfc613ce7e3c16619df09803de6328877395a4f6897f488698798d783d80e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.8 MB (371802724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e4b35c5f5a690e26815a3f056c1d91430f229b6abf7bc144fd2d4f6dc940165`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 27 Sep 2017 14:25:35 GMT
ADD file:fb7d9ba902b3a4eacc8db6bb7743fe86476c3f26a619da43c04ee6ad3d633f68 in / 
# Wed, 27 Sep 2017 14:25:35 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 14:50:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 14:50:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 14:51:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 15:22:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 15:22:51 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 15:22:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Sep 2017 15:22:52 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Sep 2017 15:22:52 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Sep 2017 15:22:52 GMT
ENV JAVA_VERSION=9-b181
# Wed, 27 Sep 2017 15:22:53 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Wed, 27 Sep 2017 15:24:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Sep 2017 15:24:29 GMT
CMD ["jshell"]
# Wed, 27 Sep 2017 16:11:26 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 27 Sep 2017 16:11:26 GMT
ARG USER_HOME_DIR=/root
# Wed, 27 Sep 2017 16:11:26 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 27 Sep 2017 16:11:27 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 27 Sep 2017 16:11:28 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Wed, 27 Sep 2017 16:11:30 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 27 Sep 2017 16:11:30 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 27 Sep 2017 16:11:31 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 27 Sep 2017 16:11:31 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 27 Sep 2017 16:11:31 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 27 Sep 2017 16:11:31 GMT
VOLUME [/root/.m2]
# Wed, 27 Sep 2017 16:11:32 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 27 Sep 2017 16:11:32 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d447b204d1715dbc31a6b6b7599eea164973e66a347eddd3dfbbf065b3c842b5`  
		Last Modified: Wed, 27 Sep 2017 14:30:12 GMT  
		Size: 46.2 MB (46234099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6bff4083b857b6654669d0d3ba67d1845858131a1c4654df9207c1b5b06b30`  
		Last Modified: Wed, 27 Sep 2017 15:03:08 GMT  
		Size: 7.7 MB (7736243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd9f9aba6421d25c366e18571370b8ef9fe16b440cc0e93555f9095c42ca9f6`  
		Last Modified: Wed, 27 Sep 2017 15:03:08 GMT  
		Size: 9.6 MB (9594665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5512aca249c1ba2147db53870819d032051c89c971c5d9c0fd2fb5f66164f741`  
		Last Modified: Wed, 27 Sep 2017 15:03:29 GMT  
		Size: 47.5 MB (47533636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd95576c75e772507509cf2cb2dcc91c9e30b71cf8cc6ae5308da46d6d93634`  
		Last Modified: Wed, 27 Sep 2017 15:34:20 GMT  
		Size: 887.8 KB (887820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff005a3ea94c5f201367dc597050f50218424fd2bdadc99d770bdb813d474d4`  
		Last Modified: Wed, 27 Sep 2017 15:34:20 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2d95429834cc67c3e682ca7ba33bdff686a37386f9792616b5a81d355ef74e`  
		Last Modified: Wed, 27 Sep 2017 15:34:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93d4d856c10816def91e5ec25a0de3aeefd2ff82bc554aec7e073c3be27ad87`  
		Last Modified: Wed, 27 Sep 2017 15:35:15 GMT  
		Size: 251.1 MB (251141697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf4aacd3c7bae7f836db6b5a996d18e9f89e88a5a59f454d9aa23f7b66133d6`  
		Last Modified: Wed, 27 Sep 2017 16:12:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f7fe26554e0dd0bc0bd1b5c1df0588c3f11cb847b7d247ae6e8f3a881753f4`  
		Last Modified: Wed, 27 Sep 2017 16:12:49 GMT  
		Size: 8.7 MB (8672867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d578e213d06a210b15d0b817ef215051393ca67cf974aee319f20b7cd071ff0`  
		Last Modified: Wed, 27 Sep 2017 16:12:47 GMT  
		Size: 733.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0b62ac90245414aa7b4a4d527a96ae1f22ea1393349c7a4373f3b3161a182b`  
		Last Modified: Wed, 27 Sep 2017 16:12:47 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; arm variant v7

```console
$ docker pull maven@sha256:c37c83b347dedb1fd9a15177156462663b1483c69d969f4e26f72ed5a947fd04
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.8 MB (366848152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5100351fa009a97a81b75ea4827b66f911597daeedd325703b1035df4bba3653`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:14 GMT
ADD file:8310e9969f49ad8da22c8531636a505f796ae2e5ab255104280bbe27bd312eb2 in / 
# Mon, 09 Oct 2017 21:44:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:21:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:21:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:21:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:08:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:08:36 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 23:08:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 23:08:38 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 23:08:38 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 23:08:42 GMT
ENV JAVA_VERSION=9-b181
# Mon, 09 Oct 2017 23:08:42 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Mon, 09 Oct 2017 23:10:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 09 Oct 2017 23:10:02 GMT
CMD ["jshell"]
# Tue, 10 Oct 2017 01:20:09 GMT
ARG MAVEN_VERSION=3.5.0
# Tue, 10 Oct 2017 01:20:10 GMT
ARG USER_HOME_DIR=/root
# Tue, 10 Oct 2017 01:20:10 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Tue, 10 Oct 2017 01:20:11 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Tue, 10 Oct 2017 01:20:13 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Tue, 10 Oct 2017 01:20:16 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 10 Oct 2017 01:20:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 10 Oct 2017 01:20:17 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 10 Oct 2017 01:20:18 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 10 Oct 2017 01:20:19 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 10 Oct 2017 01:20:20 GMT
VOLUME [/root/.m2]
# Tue, 10 Oct 2017 01:20:21 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 10 Oct 2017 01:20:21 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c73d8f8e11b2d23be25158f1c637fa52a156601fa88a99dae20e4e90c9f8094e`  
		Last Modified: Mon, 09 Oct 2017 21:50:57 GMT  
		Size: 44.2 MB (44221149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f095d6eb4fb7112eed5df1d4ec6df80dba73c8cf89cb23d2b882b20b26a990db`  
		Last Modified: Mon, 09 Oct 2017 22:32:26 GMT  
		Size: 7.6 MB (7565479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58bc97a5447d52b18ed72c0f57ee0282eabc3a90a66debb1556b65434b85175c`  
		Last Modified: Mon, 09 Oct 2017 22:32:26 GMT  
		Size: 8.8 MB (8801265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1bcc8fa3d023750ab32bd35b6f29adc68a4a6bd575347a8754f5da8efbe23f`  
		Last Modified: Mon, 09 Oct 2017 22:32:50 GMT  
		Size: 44.3 MB (44323758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c476c793439f0529ad31ddb8fc96933361c44a8c8f4c10aec7f74e4fd54c786`  
		Last Modified: Mon, 09 Oct 2017 23:26:04 GMT  
		Size: 869.6 KB (869603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5516e9d7693cafa826277e716a86b553d9005bc2e65f467b7e4b38cf0da03c0b`  
		Last Modified: Mon, 09 Oct 2017 23:26:03 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca2cfe7905dbd993bfbd2b16eb3b1d77d9f0a079f2822f546b5659bbafffd69`  
		Last Modified: Mon, 09 Oct 2017 23:26:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80fff120854120510cebcf84adced646fa254dd4b5fc15939d2b66cac385065`  
		Last Modified: Mon, 09 Oct 2017 23:26:55 GMT  
		Size: 252.4 MB (252392347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534241d0ab9fd8fe37dc50264f5289ca575a140f89215bcbaf1b7ea98c785003`  
		Last Modified: Tue, 10 Oct 2017 01:23:34 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102932bb4eb41af0ab0977a384e8d8d05c0a3df75ac9a9a97aa82f2e127c9ff4`  
		Last Modified: Tue, 10 Oct 2017 01:23:36 GMT  
		Size: 8.7 MB (8672858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e2f89662f6b1f97eb6d8fe16f83a0997074ff00ebd7881885e0a7bf385c1a2`  
		Last Modified: Tue, 10 Oct 2017 01:23:34 GMT  
		Size: 733.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da76be4dc24ebb8586d9a241896f175ba4061cfbea09d3f88450dbb704799ae`  
		Last Modified: Tue, 10 Oct 2017 01:23:34 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:fa9c63589aab9dfb4e12ba1f840e8cad3f9c0025e8d502cfbe4f7c622be953f8
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.1 MB (376127887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3714008347b85741cbca0f52828c2035c123be010897e7926e647b99bfd72bd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 08 Sep 2017 17:26:13 GMT
ADD file:07d58ee9d0f6dd60b5363a18ab4766f32f94d4aaed3a1d6d4ff5a2d274f030c2 in / 
# Fri, 08 Sep 2017 17:26:15 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:43:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:43:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 09:41:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 22:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 22:52:13 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 22:52:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 22:52:18 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 22:52:19 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 22:52:19 GMT
ENV JAVA_VERSION=9-b181
# Thu, 14 Sep 2017 22:52:20 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Thu, 14 Sep 2017 22:58:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 22:58:47 GMT
CMD ["jshell"]
# Fri, 15 Sep 2017 01:48:54 GMT
ARG MAVEN_VERSION=3.5.0
# Fri, 15 Sep 2017 01:48:55 GMT
ARG USER_HOME_DIR=/root
# Fri, 15 Sep 2017 01:48:56 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Fri, 15 Sep 2017 01:48:56 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Fri, 15 Sep 2017 01:48:58 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Fri, 15 Sep 2017 01:49:04 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 15 Sep 2017 01:49:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 15 Sep 2017 01:49:05 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 15 Sep 2017 01:49:06 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 15 Sep 2017 01:49:07 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 15 Sep 2017 01:49:07 GMT
VOLUME [/root/.m2]
# Fri, 15 Sep 2017 01:49:08 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 15 Sep 2017 01:49:09 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:40921cc3e39e34244dca67570f52afe382187c080dd1ffbb5a684332f50dfb0b`  
		Last Modified: Fri, 08 Sep 2017 17:38:43 GMT  
		Size: 45.5 MB (45456006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab25753b426e93de8898bc86b845e4a2c54f0e51ff39207233cefcb9698bd8a0`  
		Last Modified: Thu, 14 Sep 2017 22:02:58 GMT  
		Size: 7.7 MB (7718568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6a516f99a504113fb527ca9ce47078516bce9217fa901fec580920345e89ce`  
		Last Modified: Thu, 14 Sep 2017 22:02:58 GMT  
		Size: 9.6 MB (9564313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2133409062eaded5871a9010d756383d18df2f7167b1d99c7efa3b3b4a22742`  
		Last Modified: Thu, 14 Sep 2017 22:03:30 GMT  
		Size: 47.6 MB (47643117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbd9e98b4adcad17cc89e897df66b23eea611d884846bb4490d124cc6196ca4`  
		Last Modified: Thu, 14 Sep 2017 23:11:15 GMT  
		Size: 880.2 KB (880231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5afcc122bf09778ce1b23d714d6961835af06f2b1d80134a28426f02653f0c`  
		Last Modified: Thu, 14 Sep 2017 23:11:15 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faacef24c1c451b923ed07aa667435756bec65ff8bbacc6af22280cd5c80b64`  
		Last Modified: Thu, 14 Sep 2017 23:11:15 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:879c8701aac66ff1d7f9fa90a58109d77cdaa046b5e4ccbf5a7b371c013ff441`  
		Last Modified: Thu, 14 Sep 2017 23:12:21 GMT  
		Size: 256.2 MB (256191137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1d0ae3337f85523d91f91622529204760eece7fa5a92f65b57364bdd2f62a4`  
		Last Modified: Fri, 15 Sep 2017 01:52:00 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e369aa89e123a9422ea2bd41ecebacbb81cf1c4c1babf5177b96cb4e84d04c`  
		Last Modified: Fri, 15 Sep 2017 01:52:03 GMT  
		Size: 8.7 MB (8672817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f06d32ad8e4e72d43e51a48111a4f98521048eb2f393e4da46d8596c550c1002`  
		Last Modified: Fri, 15 Sep 2017 01:52:00 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39e16740b0adbcad96bd19ded2cc7e85af1462958e4912c6cd851ba9ccd4787`  
		Last Modified: Fri, 15 Sep 2017 01:52:00 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; 386

```console
$ docker pull maven@sha256:dee1d45d7d85139560f9e6f0df4d57fec8c6c2fd53bdf9077110d38e66441bcf
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.9 MB (413857376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:700a6dd48c6fed9e3f83bd49a8a188123cf9a0ddf93933807c3fe2f98f7a88c1`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:03 GMT
ADD file:e914d804cd8b6c794db616b0d7ff276be932d6365650fc16027e8f884ff5751a in / 
# Fri, 08 Sep 2017 13:19:03 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:58:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 23:10:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:42:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:42:27 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:42:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:42:28 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:42:29 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 23:42:29 GMT
ENV JAVA_VERSION=9-b181
# Tue, 12 Sep 2017 23:42:29 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 12 Sep 2017 23:44:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Sep 2017 23:44:01 GMT
CMD ["jshell"]
# Wed, 13 Sep 2017 21:45:45 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 21:45:45 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 21:45:46 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 21:45:46 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 21:45:47 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Wed, 13 Sep 2017 21:45:49 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 21:45:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 21:45:49 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 21:45:50 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 21:45:50 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 21:45:50 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 21:45:50 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 21:45:50 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:cc453eea7829cd3ac47b9e8510e4c25eef45f737546dec6b7dc2cacc93f2f875`  
		Last Modified: Fri, 08 Sep 2017 13:25:22 GMT  
		Size: 48.5 MB (48547718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11291bdfca353bac8763ab9feed3b42160962468af3c78227e6439d11e9a7277`  
		Last Modified: Sat, 09 Sep 2017 14:01:11 GMT  
		Size: 8.5 MB (8520228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d531e5d41a15891ee1491b7823261943ad527fdefe9166c5941f7fd96917c27`  
		Last Modified: Sat, 09 Sep 2017 14:01:11 GMT  
		Size: 10.1 MB (10147249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1dfc76b4817c0eab955ff1e26d9b649e9426d3c9a56791c73e2ac77157cecf`  
		Last Modified: Tue, 12 Sep 2017 23:20:55 GMT  
		Size: 51.2 MB (51214389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d1d15a350e884663d2c9975a502c4aa74afd9c168aca48368cb8627e088dcf`  
		Last Modified: Tue, 12 Sep 2017 23:47:36 GMT  
		Size: 902.8 KB (902781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be097d348916604bb8fe45ee53e991da8a34f78e16353dc74865e3a2401ae00`  
		Last Modified: Tue, 12 Sep 2017 23:47:36 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2ec77fff747b5cbe62a30d3b5ce78f9349acf4364742a6fecf10062c2fc778`  
		Last Modified: Tue, 12 Sep 2017 23:47:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d9d0cab954b246cfeb35aad6a2548e03c69f108d26ac8898437cbdc0f30988`  
		Last Modified: Tue, 12 Sep 2017 23:48:20 GMT  
		Size: 285.9 MB (285850490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e9eb85aadfd5092bcbbaf99316aff6808f141263c867a513864c10c3685063`  
		Last Modified: Wed, 13 Sep 2017 21:49:18 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caecfeead87aad3ac0212ba4866b5a955858798beacfb3d9302dca452b994445`  
		Last Modified: Wed, 13 Sep 2017 21:49:18 GMT  
		Size: 8.7 MB (8672823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9788d8fb80c2a23a4c832231fb12ad4f2f5048dcca3c8084edc4530ff98fc6`  
		Last Modified: Wed, 13 Sep 2017 21:49:18 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd4397a1b280d041cd99f460b3cbe9f646381114c10d1f806bda319cd828b91`  
		Last Modified: Wed, 13 Sep 2017 21:49:18 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; ppc64le

```console
$ docker pull maven@sha256:d0a5e030d18f8cdb6897ddb196bac651769792bed93621e7625d1875d9cabb93
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.7 MB (388714722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6463f619b45ed99f5a5823e42d73436d02a1a364fa92dc061fb89d987d8a340`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 08 Sep 2017 00:33:20 GMT
ADD file:819bded9731f1d65e9cc04b2c7f43a197ec4be8692da4708af0f87e7426351f3 in / 
# Fri, 08 Sep 2017 00:33:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:06:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:06:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 16:08:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 01:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 01:19:13 GMT
ENV LANG=C.UTF-8
# Fri, 15 Sep 2017 01:19:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 15 Sep 2017 01:19:24 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 15 Sep 2017 01:19:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 15 Sep 2017 01:19:29 GMT
ENV JAVA_VERSION=9-b181
# Fri, 15 Sep 2017 01:19:30 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Fri, 15 Sep 2017 01:30:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 15 Sep 2017 01:30:33 GMT
CMD ["jshell"]
# Fri, 15 Sep 2017 03:07:13 GMT
ARG MAVEN_VERSION=3.5.0
# Fri, 15 Sep 2017 03:07:16 GMT
ARG USER_HOME_DIR=/root
# Fri, 15 Sep 2017 03:07:19 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Fri, 15 Sep 2017 03:07:21 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Fri, 15 Sep 2017 03:07:27 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Fri, 15 Sep 2017 03:07:37 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 15 Sep 2017 03:07:39 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 15 Sep 2017 03:07:41 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 15 Sep 2017 03:07:43 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 15 Sep 2017 03:07:45 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 15 Sep 2017 03:07:47 GMT
VOLUME [/root/.m2]
# Fri, 15 Sep 2017 03:07:49 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 15 Sep 2017 03:07:52 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:2fab6b5610875e8a6c33bc4d56c825f356289185b055082d589665968ef0900c`  
		Last Modified: Fri, 08 Sep 2017 00:38:59 GMT  
		Size: 48.4 MB (48412021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7c2d0fb79a1104e22147e2364a797daa7dd139ad67e5b62e62304653e783a6`  
		Last Modified: Thu, 14 Sep 2017 22:22:30 GMT  
		Size: 8.0 MB (7976467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d65a92b732b401ccd8c040a8e7970e1019757e70e1e5ff31fedde7766b8e40`  
		Last Modified: Thu, 14 Sep 2017 22:22:30 GMT  
		Size: 10.1 MB (10071564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64052f4bf7d50027dafc55c6b08408ee69ce6c518a24f7ae01bf70c3b8157280`  
		Last Modified: Thu, 14 Sep 2017 22:22:58 GMT  
		Size: 52.0 MB (51982936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b875e729b289f6d75a75b187972f2273fd011365256928b9fc92967fe4feca`  
		Last Modified: Fri, 15 Sep 2017 01:47:36 GMT  
		Size: 889.6 KB (889580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5474026f7e2a2a0932fb15465ea3569d4bdc8a118277697f949b01eec9f56b88`  
		Last Modified: Fri, 15 Sep 2017 01:47:35 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b01dd70a5cf0659d21a27af6cb6fb95e167b1a7ca58e508215f6b398f8636015`  
		Last Modified: Fri, 15 Sep 2017 01:47:35 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b91d2d55a1a0dfbb1c5486cfd3a055cad742c6db1db0d2fead98d1ecfd4069`  
		Last Modified: Fri, 15 Sep 2017 01:48:38 GMT  
		Size: 260.7 MB (260707595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284741818717f5382e7bcdcc6a034c6e5e253625da8c55d5bb8f3689f981778e`  
		Last Modified: Fri, 15 Sep 2017 03:09:59 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c80e4ad281e8eaef3cc7d756bd26257913da596b66c6a345a353495ed8d34a`  
		Last Modified: Fri, 15 Sep 2017 03:10:01 GMT  
		Size: 8.7 MB (8672861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b538e31688634a390d07537b8738151bb472b6ff54c85d7d8878c1d3544f33`  
		Last Modified: Fri, 15 Sep 2017 03:09:59 GMT  
		Size: 733.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ace2c0e8ec22dfb85e7728a789b8f4d1e7c488d18d8b75244df483619ea3d64`  
		Last Modified: Fri, 15 Sep 2017 03:09:59 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; s390x

```console
$ docker pull maven@sha256:06cb3f3f18572efef0def30487f61e75e8521f12d851451527decc6de06c6ce6
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.9 MB (362856333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247f3bec5c4d22e76e7d80a942bbd9c61dddff41f1495cfa51e803fc55191419`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:27 GMT
ADD file:51898e1a12f3bbc77c696e9156d7bb51579dc530148ca78c00142c511a349de6 in / 
# Mon, 09 Oct 2017 21:43:27 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:13:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:13:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:13:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:55:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:55:02 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:55:03 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:55:03 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 22:55:03 GMT
ENV JAVA_VERSION=9-b181
# Mon, 09 Oct 2017 22:55:04 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Mon, 09 Oct 2017 22:56:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 09 Oct 2017 22:56:13 GMT
CMD ["jshell"]
# Tue, 10 Oct 2017 01:21:08 GMT
ARG MAVEN_VERSION=3.5.0
# Tue, 10 Oct 2017 01:21:08 GMT
ARG USER_HOME_DIR=/root
# Tue, 10 Oct 2017 01:21:08 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Tue, 10 Oct 2017 01:21:08 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Tue, 10 Oct 2017 01:21:09 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Tue, 10 Oct 2017 01:21:15 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 10 Oct 2017 01:21:15 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 10 Oct 2017 01:21:15 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 10 Oct 2017 01:21:16 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 10 Oct 2017 01:21:16 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 10 Oct 2017 01:21:16 GMT
VOLUME [/root/.m2]
# Tue, 10 Oct 2017 01:21:16 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 10 Oct 2017 01:21:16 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:387500139c6151d781fe62dbc679af96a9ac79dc2049d4b57d00beb6515f3617`  
		Last Modified: Mon, 09 Oct 2017 21:47:41 GMT  
		Size: 47.3 MB (47292875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2bf7517ce1b767b32d484c45cdbde2774795f97aa23cbd2ca4f9aa57e0907e`  
		Last Modified: Mon, 09 Oct 2017 22:20:45 GMT  
		Size: 8.1 MB (8093416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74288a4e0c7163fd8f413c3f39aea05d13784a92020bf38c86348ef9d2b76b67`  
		Last Modified: Mon, 09 Oct 2017 22:20:45 GMT  
		Size: 9.2 MB (9248587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8663142e0ef89070f5a65c954b4a8f8d3462eeceba26a23eb2af4ccfe2735a7a`  
		Last Modified: Mon, 09 Oct 2017 22:21:02 GMT  
		Size: 48.2 MB (48188280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b102511bc4f0a6054edb198e6dccbe8c304119c8161c4c225652cd44312da1`  
		Last Modified: Mon, 09 Oct 2017 23:03:28 GMT  
		Size: 904.6 KB (904609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be250bf56150c108ab32141cbdd9a4f29079f342275c6497c3769e053c6bba4`  
		Last Modified: Mon, 09 Oct 2017 23:03:28 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4238d1304f3c5c7f35999267c1c9357d3d6d55a0cd239e4f8e07962cd225e6`  
		Last Modified: Mon, 09 Oct 2017 23:03:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8754d66190ec9a25c7e95f12aa7dd45b6978bffcefa8b71064dbcc9f0d1d578c`  
		Last Modified: Mon, 09 Oct 2017 23:03:57 GMT  
		Size: 240.5 MB (240454052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da20f5a49afaf5cd2211283792ccd9adec64a99f2cc7f2fd22e437d74f62afb4`  
		Last Modified: Tue, 10 Oct 2017 01:23:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce028cc40473a40a23105dc8b1aebbf9c22f61200d3c7e22851260ed573b895e`  
		Last Modified: Tue, 10 Oct 2017 01:23:30 GMT  
		Size: 8.7 MB (8672818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bceb46fa26737c74c685ddc913d17a8bd2f1b4f53a68917e0bf36b295497464`  
		Last Modified: Tue, 10 Oct 2017 01:23:29 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0beeeff2b9ca7f879e23520130801eb3278380c6f39a5439bae7b21b45de8677`  
		Last Modified: Tue, 10 Oct 2017 01:23:29 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
