## `maven:3-jdk-9-slim`

```console
$ docker pull maven@sha256:259087275c2d209403b4d50d9572e3e52581126a9f656009c907dbb4434b4712
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9-slim` - linux; amd64

```console
$ docker pull maven@sha256:00cc668f139a6d4116e5cf605d6950329aef0c919de6c639eac1760968d8139b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.7 MB (193690774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:629b66ea1155404dc7bfcba092d8b709e70a3185df11e10c32119359515dd382`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:32:38 GMT
ADD file:4f5c99023af857b40a8bb5ef610e4fc8a4ab4bcec326fcffddd3c18162eb5a90 in / 
# Mon, 09 Oct 2017 21:32:38 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:53:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:53:13 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:53:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:53:14 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:53:14 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:53:15 GMT
ENV JAVA_VERSION=9-b181
# Tue, 10 Oct 2017 00:53:15 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 10 Oct 2017 00:53:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:53:56 GMT
CMD ["jshell"]
# Mon, 30 Oct 2017 20:06:05 GMT
ARG MAVEN_VERSION=3.5.2
# Mon, 30 Oct 2017 20:06:05 GMT
ARG USER_HOME_DIR=/root
# Mon, 30 Oct 2017 20:06:05 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Mon, 30 Oct 2017 20:06:05 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Mon, 30 Oct 2017 20:06:14 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Mon, 30 Oct 2017 20:06:15 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Mon, 30 Oct 2017 20:06:16 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 30 Oct 2017 20:06:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 30 Oct 2017 20:06:17 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 30 Oct 2017 20:06:17 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 30 Oct 2017 20:06:17 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 30 Oct 2017 20:06:18 GMT
VOLUME [/root/.m2]
# Mon, 30 Oct 2017 20:06:18 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 30 Oct 2017 20:06:18 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3f84388a33351f025313af89e330691da0d2d0f7309fa0d0f6cbb15e0160473d`  
		Last Modified: Mon, 09 Oct 2017 21:40:21 GMT  
		Size: 24.9 MB (24897397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af7807a0ec32711dd39dcdd82043f6ae89e4b101f7105e75f29c0a6ecd9b132`  
		Last Modified: Tue, 10 Oct 2017 01:28:41 GMT  
		Size: 460.4 KB (460389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d580f15c0bb3bdb994dfaefd68e8459d5901df7fc39b4bd6a4b758786f8225`  
		Last Modified: Tue, 10 Oct 2017 01:28:41 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a3b03fc984224fd6836153e97c1a8d632351cacc82689281efaf1a82b3ca5e`  
		Last Modified: Tue, 10 Oct 2017 01:28:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08022c1872b4ef17d20fe930d6f53e90993fd1ab2c2b1a28e9c22605b1a74337`  
		Last Modified: Tue, 10 Oct 2017 01:29:07 GMT  
		Size: 156.4 MB (156431089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3fbd877f3a6a771f4e1bf7f45c99e70764b4dd442216301a834da325efbe6d8`  
		Last Modified: Mon, 30 Oct 2017 20:11:48 GMT  
		Size: 3.0 MB (3016380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0090119f114d69caceca34a30bee904b7bfea023b323db961032bae3df06700`  
		Last Modified: Mon, 30 Oct 2017 20:11:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d00c9713949870c20e5c7192f88cd46d0e5d917722ffa93d39bcf3011a0eba1`  
		Last Modified: Mon, 30 Oct 2017 20:11:49 GMT  
		Size: 8.9 MB (8883823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e370173ed8b238659ffcb5d9a1a861d182448e5a7eb2043d691f4b2731236084`  
		Last Modified: Mon, 30 Oct 2017 20:11:47 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be67e0842da2e759e84aca01ccc09ef65e4f7ab299294cfe5abea3e8f07d5808`  
		Last Modified: Mon, 30 Oct 2017 20:11:47 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
