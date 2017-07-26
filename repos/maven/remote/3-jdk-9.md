## `maven:3-jdk-9`

```console
$ docker pull maven@sha256:367e43ca971e938a4acd30999fa898eba0b886360eae857097d3ff0080951ebe
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.4 MB (277427868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8408a407d104d9994ae9c37371f9a609db16b7d29568dc9d1a87e7c6008342b2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:22 GMT
ADD file:366ed17a0f83cce653d5f267000d2766de9f465b087c3c17d9c865f1ac7dc8b3 in / 
# Mon, 24 Jul 2017 16:52:23 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:26:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:26:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:26:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:12:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:12:46 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Mon, 24 Jul 2017 18:12:46 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:12:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:12:48 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:12:48 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 24 Jul 2017 18:12:48 GMT
ENV JAVA_VERSION=9-b179
# Wed, 26 Jul 2017 06:54:34 GMT
ENV JAVA_DEBIAN_VERSION=9~b179-2
# Wed, 26 Jul 2017 06:55:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 16:20:28 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 26 Jul 2017 16:20:28 GMT
ARG USER_HOME_DIR=/root
# Wed, 26 Jul 2017 16:20:29 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 26 Jul 2017 16:20:29 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 26 Jul 2017 16:20:30 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-amd64/conf
# Wed, 26 Jul 2017 16:20:32 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 26 Jul 2017 16:20:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 26 Jul 2017 16:20:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 26 Jul 2017 16:20:35 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 26 Jul 2017 16:20:35 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 26 Jul 2017 16:20:36 GMT
VOLUME [/root/.m2]
# Wed, 26 Jul 2017 16:20:36 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 26 Jul 2017 16:20:36 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b5499bef70c58635bb757692533c72902e2ab8d155d0eafc76cda92862472a27`  
		Last Modified: Mon, 24 Jul 2017 16:57:55 GMT  
		Size: 48.4 MB (48430926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0aefbd8335b097f9758dad16852743f38a1b601f9f9d0cf4bf8b6ce09f3463e`  
		Last Modified: Mon, 24 Jul 2017 17:34:42 GMT  
		Size: 8.6 MB (8552452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c86784c73eaf7a56381d588b8a6ea2213fa0b23467fd7e1479f9c995d7beebb`  
		Last Modified: Mon, 24 Jul 2017 17:34:41 GMT  
		Size: 4.4 MB (4423274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3308601cadb7d11e4054dedaefd3e59f08ff3bc195a5a027be7569112a9fd6c6`  
		Last Modified: Mon, 24 Jul 2017 17:35:06 GMT  
		Size: 51.2 MB (51230680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89af2b318efbca7a65be369d55e8497d44621f717a7c2d65d3248d08fd7744d8`  
		Last Modified: Mon, 24 Jul 2017 18:25:33 GMT  
		Size: 659.8 KB (659823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09a214cca9dc143fd9683ff5585614e97c6a8fd3762f45d9671b21acb2aff82`  
		Last Modified: Mon, 24 Jul 2017 18:25:32 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302c8618907d1c22c9fecf462f7beb6fdfba2f60783a3ac90c3b26658ec563f6`  
		Last Modified: Mon, 24 Jul 2017 18:25:32 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b833e9c4d2ef1db9842a6399a18079eda8870f8afffc00c51ca381962d71189`  
		Last Modified: Mon, 24 Jul 2017 18:25:33 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46affb52601bf2d602f49761d9a83053e62f6201fa526e2f282536e562445e39`  
		Last Modified: Wed, 26 Jul 2017 07:03:15 GMT  
		Size: 155.5 MB (155456067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0058fb4141f058859949fb45c7b7a9ebdf5df1b89b80aa510062322f1a8b503e`  
		Last Modified: Wed, 26 Jul 2017 16:22:29 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c02dcb19d6199b59fa849cfc5adbd3958801cc57baf479ca6cd04d3352d951`  
		Last Modified: Wed, 26 Jul 2017 16:22:30 GMT  
		Size: 8.7 MB (8672772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370e4ed005ab2af2a14d477ff36ecbb6f25c63a423c2080e2c132377bd2850ae`  
		Last Modified: Wed, 26 Jul 2017 16:22:29 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c26644810ff8b42853da631dd5361711e157045d898973d92070b683063a061`  
		Last Modified: Wed, 26 Jul 2017 16:22:29 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
