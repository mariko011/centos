## `maven:3-jdk-8-slim`

```console
$ docker pull maven@sha256:ccc9ab054f4ce41f91d2e271a9a91ce29699ba3abb41fadec6ff62d64e1539c9
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

### `maven:3-jdk-8-slim` - linux; amd64

```console
$ docker pull maven@sha256:a9f473c230305e68dd9c53ff5d81f2d9869d3d08e51a7750147885a4385e0895
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103875828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f55381f96f7950955ddf511214762f2d42a020995b89c7ce590c10c5f5f21ebd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:48 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Wed, 13 Sep 2017 08:41:49 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 04:20:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:20:44 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:20:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:20:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:20:46 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 04:20:47 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:20:47 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:20:47 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:21:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:21:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 05:09:14 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 14 Sep 2017 05:09:14 GMT
ARG USER_HOME_DIR=/root
# Thu, 14 Sep 2017 05:09:14 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 14 Sep 2017 05:09:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 14 Sep 2017 05:09:30 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 05:09:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 14 Sep 2017 05:09:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 14 Sep 2017 05:09:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 14 Sep 2017 05:09:33 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 14 Sep 2017 05:09:34 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 14 Sep 2017 05:09:34 GMT
VOLUME [/root/.m2]
# Thu, 14 Sep 2017 05:09:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 14 Sep 2017 05:09:35 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d8ba8b5e37551f39a4820a9f38f315b21d8daf6796ad210864bda08500ef7e`  
		Last Modified: Thu, 14 Sep 2017 04:55:01 GMT  
		Size: 454.8 KB (454780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458aee9f5d86787e63b5f5deb9377bca749031cd1f98338e6bba5f1ff9388aad`  
		Last Modified: Thu, 14 Sep 2017 04:55:03 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:104608ca0bbb098f1aea34c5cf432ef22a0569fcf91678a5da4fafc4664d8a9e`  
		Last Modified: Thu, 14 Sep 2017 04:55:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56905202affde2754921e71f1a6104848913816ff659363a07b398d22645b6b2`  
		Last Modified: Thu, 14 Sep 2017 04:55:56 GMT  
		Size: 68.5 MB (68455054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69f1f5a671c358a06943254d5a35859da298dcf3fc849e18d69ef1955fec349`  
		Last Modified: Thu, 14 Sep 2017 04:55:02 GMT  
		Size: 272.1 KB (272099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec42b0586157e4a5e5a36bde057cd19e4e3aeea2a07985af0bd291d7b64e5e7`  
		Last Modified: Thu, 14 Sep 2017 05:13:16 GMT  
		Size: 3.5 MB (3531552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b55289fe3044caefe8cdc5b808d472d120b180f8dd5bd8be42f5d69314e77db7`  
		Last Modified: Thu, 14 Sep 2017 05:13:16 GMT  
		Size: 8.7 MB (8672811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0adba462cb4f09534cd7e2b43beb15ce97bcc04bf499694fe781cd8c4236f9`  
		Last Modified: Thu, 14 Sep 2017 05:13:14 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e321105ce9c4026e1a754bd58af09b7376f54d7431d15384f2626282a1cd24df`  
		Last Modified: Thu, 14 Sep 2017 05:13:16 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-slim` - linux; arm variant v5

```console
$ docker pull maven@sha256:45528359ff8d327847286db6ce1e0076eceebf34881a457cd8add9fd14dc3417
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.1 MB (90117471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60f96c2c6415ca229b93f3f019373fce1369fc4e917529566b1b12a8a728152f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 27 Sep 2017 14:26:23 GMT
ADD file:7a4f76115b8f87534c9bcd4a40386c07af5c7bfdb3429f22d53d07faa0de57da in / 
# Wed, 27 Sep 2017 14:26:24 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 15:19:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 15:19:56 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 15:19:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Sep 2017 15:19:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Sep 2017 15:19:58 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Sep 2017 15:19:58 GMT
ENV JAVA_VERSION=8u141
# Wed, 27 Sep 2017 15:19:58 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 27 Sep 2017 15:19:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Sep 2017 15:20:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Sep 2017 15:20:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Sep 2017 16:11:07 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 27 Sep 2017 16:11:07 GMT
ARG USER_HOME_DIR=/root
# Wed, 27 Sep 2017 16:11:07 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 27 Sep 2017 16:11:07 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 27 Sep 2017 16:11:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 16:11:20 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 27 Sep 2017 16:11:21 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 27 Sep 2017 16:11:21 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 27 Sep 2017 16:11:21 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 27 Sep 2017 16:11:21 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 27 Sep 2017 16:11:22 GMT
VOLUME [/root/.m2]
# Wed, 27 Sep 2017 16:11:22 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 27 Sep 2017 16:11:22 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:381007dd87dfe0605f5028d1cbdaf1a91af4382b434e22492e2a905394c12696`  
		Last Modified: Wed, 27 Sep 2017 14:31:37 GMT  
		Size: 21.2 MB (21163919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337f6297ed64c3f9cc10a44e2b2ada40db31b4acb2dfc99d42e5a7864996d744`  
		Last Modified: Wed, 27 Sep 2017 15:32:52 GMT  
		Size: 447.6 KB (447612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7ca5e7cd4a91ddd612d658cc3291a036b86144cc7f33928768c537b3191559`  
		Last Modified: Wed, 27 Sep 2017 15:32:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cfc0c87c5d8182e31eb4bd5adfa4e9d507e9320f0846cd559e4bef94f1ef8c3`  
		Last Modified: Wed, 27 Sep 2017 15:32:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b784f45355f3a6e9c928a619749f4c4c65d06bb49968a0976ce867a2c1dab85`  
		Last Modified: Wed, 27 Sep 2017 15:33:09 GMT  
		Size: 56.5 MB (56535428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c034d9545ccae4dbb860cfc68a1fd3c3cc52654e50657ae166567970ed48008`  
		Last Modified: Wed, 27 Sep 2017 15:32:52 GMT  
		Size: 272.2 KB (272190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80753c0aba0f4390e3aeca52ac168ce316e45ce03f08c492c9af73884415e04e`  
		Last Modified: Wed, 27 Sep 2017 16:12:36 GMT  
		Size: 3.0 MB (3023985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759a9092c3c53c70f58826d75ac79cb25b5143477243d5de38474a28ac181d82`  
		Last Modified: Wed, 27 Sep 2017 16:12:36 GMT  
		Size: 8.7 MB (8672862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb4660fbe96cd5d9ce536129668a58a0a80b01eb1b775867f52ecf34135656e`  
		Last Modified: Wed, 27 Sep 2017 16:12:35 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2fecceb0396235d59f2756f7a47195df7764267f80098a96f83c2cf41da327`  
		Last Modified: Wed, 27 Sep 2017 16:12:35 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-slim` - linux; arm variant v7

```console
$ docker pull maven@sha256:41aac54982c744eedc22420dfa4edd72eded7978a07d8dc8ea880f8549a88d70
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.0 MB (87030818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:210e35344463eea63ca855be90bc2eaef827e355ef47b114dcab1114d6ef5aa5`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:53 GMT
ADD file:c64f62f8baccded9d94037c0935c477d3dd18839a9c4e565679657d4c9df92c8 in / 
# Wed, 27 Sep 2017 04:14:53 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 05:23:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:23:54 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 05:23:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Sep 2017 05:23:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Sep 2017 05:23:58 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Sep 2017 05:23:58 GMT
ENV JAVA_VERSION=8u141
# Wed, 27 Sep 2017 05:23:58 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 27 Sep 2017 05:23:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Sep 2017 05:24:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Sep 2017 05:24:30 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Sep 2017 07:25:19 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 27 Sep 2017 07:25:19 GMT
ARG USER_HOME_DIR=/root
# Wed, 27 Sep 2017 07:25:20 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 27 Sep 2017 07:25:20 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 27 Sep 2017 07:25:27 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 07:25:29 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 27 Sep 2017 07:25:30 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 27 Sep 2017 07:25:30 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 27 Sep 2017 07:25:30 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 27 Sep 2017 07:25:31 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 27 Sep 2017 07:25:31 GMT
VOLUME [/root/.m2]
# Wed, 27 Sep 2017 07:25:31 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 27 Sep 2017 07:25:31 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f6b0b1de175bfd1f4139472dafaeed39d43c5c14f6f48f113c9053f9b7837ddf`  
		Last Modified: Wed, 27 Sep 2017 04:20:52 GMT  
		Size: 19.3 MB (19276815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ffbe37b22ee5b13080b926a7df7397ba901dab1d5310f4f6689afff274075cd`  
		Last Modified: Wed, 27 Sep 2017 05:38:10 GMT  
		Size: 430.5 KB (430532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbdc6568601efc84a052fddd28f8fce07f809f5a94b8732af5becd56932f56a`  
		Last Modified: Wed, 27 Sep 2017 05:38:10 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca569eaa928608a5c0371d3fbbafab066fda800202e4160d3a084e8b887bfb`  
		Last Modified: Wed, 27 Sep 2017 05:38:10 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aeea36652e2adc4fabdebe713f973eaeac25fe362ecd1b04eacb1541526a408`  
		Last Modified: Wed, 27 Sep 2017 05:38:24 GMT  
		Size: 55.5 MB (55498507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b01e4bd937cdc98aea88c911b2cac0c52beed7f24b4609ceef578fce74b45a`  
		Last Modified: Wed, 27 Sep 2017 05:38:10 GMT  
		Size: 272.2 KB (272180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f9b619ea1130c48475ba7c3d4f97862591bc73b7fb3014b2ebe5bfcd953979`  
		Last Modified: Wed, 27 Sep 2017 07:27:16 GMT  
		Size: 2.9 MB (2878421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4c3d5a6837abd3ca97af3ce5cdcb2b52bc87357bc0e01ee7769320118f179c`  
		Last Modified: Wed, 27 Sep 2017 07:27:16 GMT  
		Size: 8.7 MB (8672887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d47d789dd573ef305a42342cdf6f3f84bf57d7c1731de9c4919f1c58939fa5`  
		Last Modified: Wed, 27 Sep 2017 07:27:14 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af86935b66ed2a06f004977943ce81d8e7add2ced78c075a0194cb5eb1dfd90`  
		Last Modified: Wed, 27 Sep 2017 07:27:14 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-slim` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:01f71b61eef0ac3fdefc03583baee28dc712309b3690df6ce38778f2b36d1bc1
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (90972923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31f61b2d3773c034ac117e507e77bd6625a4b093d0290aa127d68e47bec7f266`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 08 Sep 2017 17:29:09 GMT
ADD file:16391f421551b998f1ff496c48dc67f34dd2003077158fd1af78a898ea367e1d in / 
# Fri, 08 Sep 2017 17:29:10 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 22:43:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 22:43:39 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 22:43:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 22:43:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 22:43:47 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 22:43:52 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 22:43:53 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 22:43:54 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 08 Sep 2017 22:45:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 22:45:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 17:39:00 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 17:39:00 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 17:39:01 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 17:39:02 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 17:39:29 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 17:39:34 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 17:39:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 17:39:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 17:39:36 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 17:39:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 17:39:37 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 17:39:38 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 17:39:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0bd6dbb95c7a219839ea8345519110bbccc30c113a72119bbd92c7fe2a3f1e78`  
		Last Modified: Fri, 08 Sep 2017 17:43:38 GMT  
		Size: 20.3 MB (20337273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078a76af68c1d60c07e33c4aa1e837762c3569646df60f4f0174d1ba83024863`  
		Last Modified: Fri, 08 Sep 2017 22:55:34 GMT  
		Size: 440.8 KB (440823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd72c893e09a1c2f500ced1a71839b1fdad41fd04c2281c322b582cd5526ffd`  
		Last Modified: Fri, 08 Sep 2017 22:55:32 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d70f76b5d186f9a22db9d33bfee65f9f6d00904a00959b2ec215d2392980133`  
		Last Modified: Fri, 08 Sep 2017 22:55:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5138efba7c13165402dd42568cdbc8dd5784f44cad84246839c7a9f8326d866d`  
		Last Modified: Fri, 08 Sep 2017 22:55:51 GMT  
		Size: 58.3 MB (58251218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a77eaad9cbc978cdf87d1ba427d2f905a1b9b374a26dd7b2d818629557e8b4`  
		Last Modified: Fri, 08 Sep 2017 22:55:33 GMT  
		Size: 272.1 KB (272133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d431db152476c887548e1d3249c0ff37a072158b9315eae387f51860b098ec65`  
		Last Modified: Wed, 13 Sep 2017 21:47:44 GMT  
		Size: 3.0 MB (2997185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c6c4cf586b9e00e888557565da164414ceb8882e785beba6893b927367da44`  
		Last Modified: Wed, 13 Sep 2017 21:47:44 GMT  
		Size: 8.7 MB (8672817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5fc757f0ead0383dac375b8b0b3913e459ce1f808974200b4fd57dad28a6314`  
		Last Modified: Wed, 13 Sep 2017 21:47:43 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af407f8da911713f63ac3fa5c3a89c1dd4fe1dc95f558e6fa89a7daf3762bde`  
		Last Modified: Wed, 13 Sep 2017 21:47:43 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-slim` - linux; 386

```console
$ docker pull maven@sha256:167d41ceb640b6220ecea2a733d18c5536ca47f59e0171c228b7af696906b2c7
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.7 MB (103678619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9176e017abae9c1c48ec906b6927454fdb90948d88ecbf2d3b4abed41fb80c12`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:57 GMT
ADD file:637a2d4ad21512f6aa9863626de3b678f1aff76377357d7e15fc6a381ec94689 in / 
# Fri, 08 Sep 2017 13:19:57 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:15:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 15:15:43 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 15:15:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 15:15:44 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 15:15:44 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 15:15:44 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 15:15:45 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 15:15:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 08 Sep 2017 15:16:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 15:16:24 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 21:45:23 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 21:45:23 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 21:45:23 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 21:45:23 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 21:45:39 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 21:45:40 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 21:45:41 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 21:45:41 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 21:45:41 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 21:45:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 21:45:42 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 21:45:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 21:45:42 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:2f5ca21e3ce4be74a6720d0866b1c95e310ae9d9494d9e5155a3633cd5cd62cd`  
		Last Modified: Fri, 08 Sep 2017 13:27:56 GMT  
		Size: 23.1 MB (23125784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3954117579cf63aa6d4f437298814195581d13005972e2fed6070cd434379007`  
		Last Modified: Fri, 08 Sep 2017 15:32:27 GMT  
		Size: 463.4 KB (463422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38f125eaf7c3f7dfbe1993cc361c45586d0ed10c0cf968f5e3681e7568932c8`  
		Last Modified: Fri, 08 Sep 2017 15:32:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef71936cc7c95e2d4cf2866feac6aa8d4be9a94cc45c35797d093391e00ca696`  
		Last Modified: Fri, 08 Sep 2017 15:32:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae98f3e4788b9631dd947899886866a6adaad60317ffd8e0605fc2a80f01ccf`  
		Last Modified: Fri, 08 Sep 2017 15:32:42 GMT  
		Size: 67.7 MB (67699776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422fc5dced716e8660cde9571c77feb246f0930932225b10554d46b443d73fd2`  
		Last Modified: Fri, 08 Sep 2017 15:32:27 GMT  
		Size: 272.1 KB (272088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb7dd4a4d5dad86fee9c463b89b6306dcb09e9b444f307005a69e4d5630abf9`  
		Last Modified: Wed, 13 Sep 2017 21:48:37 GMT  
		Size: 3.4 MB (3443257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cfeedc610da6c7c24901bad552974e134239ac3d76bbb10a561f5488537c718`  
		Last Modified: Wed, 13 Sep 2017 21:48:38 GMT  
		Size: 8.7 MB (8672818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081535b6d0278b538a0a7445bf4e4b64bfaaaf2aac0402631d874bf66697e801`  
		Last Modified: Wed, 13 Sep 2017 21:48:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf09f8281aaf1edfeb9b9b33f742e7b104e1128bd8e24b8b7edc9b53f564f73`  
		Last Modified: Wed, 13 Sep 2017 21:48:36 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-slim` - linux; ppc64le

```console
$ docker pull maven@sha256:66f9cfec38187792e6c58f9d012ef466d7267a8bc7df9bda0c96b68fcfe6cfae
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.0 MB (93987208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54d1ad4dccd4de3524d86388070af614afc6e3f969c59d24c59238c4f4a34c31`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:22 GMT
ADD file:1422f50e4e998477f6c3b2fcee6853da10eb8bca7926ec70e494ff485f6284d7 in / 
# Fri, 08 Sep 2017 00:34:22 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:26:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:26:30 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 01:26:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 01:26:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 01:26:31 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 01:26:31 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 01:26:32 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 01:26:32 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 08 Sep 2017 01:27:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 01:27:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 21:47:14 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 21:47:15 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 21:47:17 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 21:47:19 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 21:48:15 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 21:48:20 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 21:48:22 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 21:48:24 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 21:48:25 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 21:48:27 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 21:48:29 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 21:48:32 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 21:48:33 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7ff7f6fdf12a09feca6f75b5d90b860059bdccf4185a9dab7c2c5b9e6e90123a`  
		Last Modified: Fri, 08 Sep 2017 00:41:42 GMT  
		Size: 22.7 MB (22746060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee90978362d08c4e770b183283933846b88fbddcbd1d24fd3c54f27666128c68`  
		Last Modified: Fri, 08 Sep 2017 01:30:23 GMT  
		Size: 449.7 KB (449687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ddf0608c4e5036b59bfb654bb8aca9329c0686cb0087c08b8c478689a2bd75`  
		Last Modified: Fri, 08 Sep 2017 01:30:23 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0f1724ac87b8200685750f493d25f1c1b6f8ee427c651522ede69275fa6aa0`  
		Last Modified: Fri, 08 Sep 2017 01:30:22 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c69ee6a1dc0dd1421b6d81a919b1309eccd850e2b2daf4d48ecd9822bc4bac5`  
		Last Modified: Fri, 08 Sep 2017 01:30:36 GMT  
		Size: 58.6 MB (58635516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1efeee050e152c674500adfe8600d1be59098187379d3c56e001280df2bb4bd`  
		Last Modified: Fri, 08 Sep 2017 01:30:23 GMT  
		Size: 272.1 KB (272051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7c8e899dae5c4e2ea9a2eb2d323b34473dcd8ed60c17c459d851d9df9139b99`  
		Last Modified: Wed, 13 Sep 2017 21:57:33 GMT  
		Size: 3.2 MB (3209548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e7dad6abbf257511f93a6dad9dcae76297c26f19239951d9a5775023089b97`  
		Last Modified: Wed, 13 Sep 2017 21:57:34 GMT  
		Size: 8.7 MB (8672873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150278caf8dd184ed06f372ce2c12f11bd8d9942dcf8b16c366d679ebf8f20cb`  
		Last Modified: Wed, 13 Sep 2017 21:57:32 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744ff196c78d11198c325fcfd32d1d6f75dcdf4946fc57b887a5ebda481d3b98`  
		Last Modified: Wed, 13 Sep 2017 21:57:32 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-slim` - linux; s390x

```console
$ docker pull maven@sha256:78fd246910be1aace610ae41f2aa1eaf9f60865454682e778daeff94b93230e8
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92666370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92f976e41fc2c0e0c20bfa66ad4dc169ee349f027b26c3ea4c1fd93156eddd0d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 08 Sep 2017 05:23:00 GMT
ADD file:9b074cf37adfa815e3a6b300f8652eb77a06cfeea3f74fd021795cff318ca2ce in / 
# Fri, 08 Sep 2017 05:23:00 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:54:38 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 05:54:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 05:54:39 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 05:54:39 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 05:54:40 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 05:54:40 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 05:54:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 08 Sep 2017 05:55:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 05:55:07 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 17:27:28 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 17:27:28 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 17:27:29 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 17:27:29 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 17:27:38 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 17:27:43 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 17:27:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 17:27:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 17:27:44 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 17:27:44 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 17:27:45 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 17:27:45 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 17:27:45 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4a3a3449ff754d3a7e8f189d020e507ff2cb0fd172b4240ca2d1d78e2d65d544`  
		Last Modified: Fri, 08 Sep 2017 05:27:12 GMT  
		Size: 22.3 MB (22338151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984604f91630f68bf964efc6b7ee81bdfc5e658eccab951a9d82766fcfd2654d`  
		Last Modified: Fri, 08 Sep 2017 05:57:48 GMT  
		Size: 465.7 KB (465658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ebfa99eb5f14cb91aed3e670278b9d95b5536fc45ff6d74e57b5bf7cd7d0f4`  
		Last Modified: Fri, 08 Sep 2017 05:57:47 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87774056e9b494cacbace94fface85556e22250f46e7912778fbaf2034ad52f`  
		Last Modified: Fri, 08 Sep 2017 05:57:48 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5260ff16062808f8ce9db2e3902406a9beaf81d77a8163735134329fd74a5a0`  
		Last Modified: Fri, 08 Sep 2017 05:58:16 GMT  
		Size: 57.6 MB (57597842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbe36359522eb17a587b8b2f4ae17a0f3b470a18dfad34c65e07d190d721ecd2`  
		Last Modified: Fri, 08 Sep 2017 05:57:47 GMT  
		Size: 272.2 KB (272158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ecc4268b4ab95500cc57cedf80b8ee5feb2dc6ce603c83cd0784c2616f661a`  
		Last Modified: Wed, 13 Sep 2017 21:45:26 GMT  
		Size: 3.3 MB (3318272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e18b48dd91a63707197fcf38cebfcd483dd7b838f8da10d300d21d4b3ee577b4`  
		Last Modified: Wed, 13 Sep 2017 21:45:27 GMT  
		Size: 8.7 MB (8672814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c5ad379a2508950f1a12b59cd72180c5d3ba0472a7e0fd359db74d7feeed21`  
		Last Modified: Wed, 13 Sep 2017 21:45:25 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a0d58a7545d3d37257ba000168c9cf53f7c007dbb031a5a30bb884741cb328`  
		Last Modified: Wed, 13 Sep 2017 21:45:26 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
