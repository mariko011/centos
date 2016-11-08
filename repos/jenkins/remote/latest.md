## `jenkins:latest`

```console
$ docker pull jenkins@sha256:5b47f3325789f653eb1e9e37e5014c0891827ca439eb312a5e5deb465ec176bb
```

-	Platforms:
	-	linux; amd64

### `jenkins:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.3 MB (313265478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e7d1b9dc0c8527ff48581985bcb657e25917b8f278e7ec3659edb054b0421ad`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:50:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:52:55 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 08 Nov 2016 18:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 18:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 08 Nov 2016 18:52:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 08 Nov 2016 18:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 08 Nov 2016 18:53:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 08 Nov 2016 18:53:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 08 Nov 2016 21:55:31 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 21:55:32 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Tue, 08 Nov 2016 21:55:32 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Tue, 08 Nov 2016 21:55:32 GMT
ARG user=jenkins
# Tue, 08 Nov 2016 21:55:33 GMT
ARG group=jenkins
# Tue, 08 Nov 2016 21:55:33 GMT
ARG uid=1000
# Tue, 08 Nov 2016 21:55:33 GMT
ARG gid=1000
# Tue, 08 Nov 2016 21:55:35 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Tue, 08 Nov 2016 21:55:35 GMT
VOLUME [/var/jenkins_home]
# Tue, 08 Nov 2016 21:55:36 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Tue, 08 Nov 2016 21:55:37 GMT
ENV TINI_VERSION=0.9.0
# Tue, 08 Nov 2016 21:55:37 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Tue, 08 Nov 2016 21:55:41 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Tue, 08 Nov 2016 21:55:41 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Tue, 08 Nov 2016 21:55:42 GMT
ARG JENKINS_VERSION
# Tue, 08 Nov 2016 21:55:42 GMT
ENV JENKINS_VERSION=2.19.2
# Tue, 08 Nov 2016 21:55:43 GMT
ARG JENKINS_SHA=32b8bd1a86d6d4a91889bd38fb665db4090db081
# Tue, 08 Nov 2016 21:55:43 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.2/jenkins-war-2.19.2.war
# Tue, 08 Nov 2016 21:55:49 GMT
# ARGS: JENKINS_SHA=32b8bd1a86d6d4a91889bd38fb665db4090db081 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.2/jenkins-war-2.19.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Tue, 08 Nov 2016 21:55:49 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Tue, 08 Nov 2016 21:55:50 GMT
# ARGS: JENKINS_SHA=32b8bd1a86d6d4a91889bd38fb665db4090db081 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.2/jenkins-war-2.19.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Tue, 08 Nov 2016 21:55:51 GMT
EXPOSE 8080/tcp
# Tue, 08 Nov 2016 21:55:51 GMT
EXPOSE 50000/tcp
# Tue, 08 Nov 2016 21:55:52 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Tue, 08 Nov 2016 21:55:52 GMT
USER [jenkins]
# Tue, 08 Nov 2016 21:55:53 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Tue, 08 Nov 2016 21:55:53 GMT
COPY file:7af8c0bd35066db9b0d029c9b74e72bf81420b1fd51ee55d2c28a26c36f829dd in /usr/local/bin/jenkins.sh 
# Tue, 08 Nov 2016 21:55:54 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Tue, 08 Nov 2016 21:55:54 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Tue, 08 Nov 2016 21:55:55 GMT
COPY file:2a6a3e16202b8dddab5edef50f712c16fe8f6980f5aea80c8c76b5db4f903913 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690dbea0e4ca2996b70b102af3c4639bbd2f1b8fcbb2bf602a0a82f74d54bf51`  
		Last Modified: Tue, 08 Nov 2016 18:59:32 GMT  
		Size: 593.3 KB (593322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e401cdd6f18ec55ddebd090e4a39f0db17e1eb68f9db7e2233b1438f6f7dcf5`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58186ddf9a07069e7d41ba4c1d56d5c20ad55222483c80dd3425942952c3224`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49999ed55bc4d3fce78396b5fc5d7b50e35bd4355625be799b7da8cf71b91723`  
		Last Modified: Tue, 08 Nov 2016 19:06:55 GMT  
		Size: 130.1 MB (130108814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb40561aad8f0aaca0d47fd663fce6d8799737cecd64c0a12da5c670fa154b9e`  
		Last Modified: Tue, 08 Nov 2016 19:06:19 GMT  
		Size: 284.2 KB (284242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d6c67380213d2828af8d6845875b67e49e35ce3298d75b8b9c29fcdcea4e74`  
		Last Modified: Tue, 08 Nov 2016 21:56:12 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0b8330f56660508419043d959f5d59edb05ed09dd239c24f46b419f0517724`  
		Last Modified: Tue, 08 Nov 2016 21:56:12 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70da024820b814a92b3b791518b64482c760935a193244b553bba818973b8186`  
		Last Modified: Tue, 08 Nov 2016 21:56:10 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfce65c86419d1de25b7751373c5f0d3520a101b316ef1fcd157618ff9f0cc5c`  
		Last Modified: Tue, 08 Nov 2016 21:56:11 GMT  
		Size: 337.2 KB (337238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8025725f6c8d1341f4ccc7905e2739c864a77bd2108a395760fb236f825aed28`  
		Last Modified: Tue, 08 Nov 2016 21:56:09 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df0e4631faa947d060cc8acf0813c8d03b83ab3292f5cad73e461b6b7f9bec1`  
		Last Modified: Tue, 08 Nov 2016 21:56:16 GMT  
		Size: 69.5 MB (69546161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8f3d998b0fb5c6e0279a2cb29b9c8afcf250fa3e3bb091f3ce41666e2382ac`  
		Last Modified: Tue, 08 Nov 2016 21:56:09 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6e3d50d98e69db401a8b9f330f6153711e82c230e0e959463c06da25776cd1`  
		Last Modified: Tue, 08 Nov 2016 21:56:06 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4527f9931fa665ebe731197f767aa3755a7e0ab451d6a1556b6da3185f705e6c`  
		Last Modified: Tue, 08 Nov 2016 21:56:07 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22d8192502ab2aa794171ac37df981eb457f1029b840f875e7a21c0d1fbb2d9`  
		Last Modified: Tue, 08 Nov 2016 21:56:07 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6935568da18dd30ce5646fbee5be89f72d35bdedf681bf66605461d060c98887`  
		Last Modified: Tue, 08 Nov 2016 21:56:07 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
