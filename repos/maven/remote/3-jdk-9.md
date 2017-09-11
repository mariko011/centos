## `maven:3-jdk-9`

```console
$ docker pull maven@sha256:a71ee600c61be6a35c02d65965f5bd0c5aa2b66a7cc4c238a9ef611a8950bec0
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.0 MB (400988462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ff62aa090d214d191859b174e62f43a38e4600fab0211cf8d96c271e79d47cc`
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
# Fri, 25 Aug 2017 21:04:37 GMT
ENV LANG=C.UTF-8
# Fri, 25 Aug 2017 21:04:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 25 Aug 2017 21:04:39 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 25 Aug 2017 21:04:40 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 25 Aug 2017 21:04:40 GMT
ENV JAVA_VERSION=9-b181
# Fri, 25 Aug 2017 21:04:40 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Sat, 09 Sep 2017 01:00:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 01:00:46 GMT
CMD ["jshell"]
# Mon, 11 Sep 2017 05:44:37 GMT
ARG MAVEN_VERSION=3.5.0
# Mon, 11 Sep 2017 05:44:38 GMT
ARG USER_HOME_DIR=/root
# Mon, 11 Sep 2017 05:44:38 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Mon, 11 Sep 2017 05:44:38 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Mon, 11 Sep 2017 05:44:40 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-amd64/conf
# Mon, 11 Sep 2017 05:44:43 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 11 Sep 2017 05:44:43 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 11 Sep 2017 05:44:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 11 Sep 2017 05:44:44 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 11 Sep 2017 05:44:45 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 11 Sep 2017 05:44:45 GMT
VOLUME [/root/.m2]
# Mon, 11 Sep 2017 05:44:45 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 11 Sep 2017 05:44:46 GMT
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
	-	`sha256:46023e7743d9c97a4d2638d6d0bc623660535b59140f203421fa17e03cccdca8`  
		Last Modified: Fri, 25 Aug 2017 21:13:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d47966cab2ec988d90699efdf6c2b7db48e83fb721f92461a5de0d68a18b7a`  
		Last Modified: Fri, 25 Aug 2017 21:13:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1e39ea93da80a4703baf292bcea3be30e12b8e0063e707a23a06030a9cc85d`  
		Last Modified: Sat, 09 Sep 2017 01:12:40 GMT  
		Size: 279.0 MB (279016864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52edad58738e0f78f64d4cc316c709b6f3d376c1abc48f07e89ab6f3c93e0791`  
		Last Modified: Mon, 11 Sep 2017 05:53:43 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae16cf5a869a84b56961f257a98293c2c75c9de526867dcb934edd72ee029c69`  
		Last Modified: Mon, 11 Sep 2017 05:53:44 GMT  
		Size: 8.7 MB (8672789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6085446862f200b9839dd1b0d344e6660e6b443722396a539b0a449e922be685`  
		Last Modified: Mon, 11 Sep 2017 05:53:44 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5235b9bee8f42a16d3353a5cbea13f270a56cdca578bdb86b2c54542ddc30e93`  
		Last Modified: Mon, 11 Sep 2017 05:53:43 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
