<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jenkins`

-	[`jenkins:latest`](#jenkinslatest)
-	[`jenkins:2.60.1`](#jenkins2601)
-	[`jenkins:alpine`](#jenkinsalpine)
-	[`jenkins:2.60.1-alpine`](#jenkins2601-alpine)

## `jenkins:latest`

```console
$ docker pull jenkins@sha256:a45535b55a3ba70f3d986b9fb2365b2104ed59e580f55ec8196335d2542a72e4
```

-	Platforms:
	-	linux; amd64

### `jenkins:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.1 MB (306123611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b4d4d677a2614a4cf67501e119985b89db93ef2fbc4f95d85a3aa2d0ba4e304`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 01:52:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:41:22 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:41:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:41:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:41:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:41:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:41:27 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:41:28 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:41:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:42:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:42:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 14:07:02 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 14:07:03 GMT
ARG user=jenkins
# Fri, 23 Jun 2017 14:07:03 GMT
ARG group=jenkins
# Fri, 23 Jun 2017 14:07:04 GMT
ARG uid=1000
# Fri, 23 Jun 2017 14:07:05 GMT
ARG gid=1000
# Fri, 23 Jun 2017 14:07:06 GMT
ARG http_port=8080
# Fri, 23 Jun 2017 14:07:06 GMT
ARG agent_port=50000
# Fri, 23 Jun 2017 14:07:07 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Fri, 23 Jun 2017 14:07:08 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Fri, 23 Jun 2017 14:07:10 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Fri, 23 Jun 2017 14:07:11 GMT
VOLUME [/var/jenkins_home]
# Fri, 23 Jun 2017 14:07:12 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Fri, 23 Jun 2017 14:07:13 GMT
ENV TINI_VERSION=0.14.0
# Fri, 23 Jun 2017 14:07:14 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Fri, 23 Jun 2017 14:07:18 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Fri, 23 Jun 2017 14:07:19 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Fri, 23 Jun 2017 14:07:20 GMT
ARG JENKINS_VERSION
# Fri, 23 Jun 2017 14:07:21 GMT
ENV JENKINS_VERSION=2.60.1
# Fri, 23 Jun 2017 14:07:22 GMT
ARG JENKINS_SHA=34fde424dde0e050738f5ad1e316d54f741c237bd380bd663a07f96147bb1390
# Fri, 23 Jun 2017 14:07:23 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.1/jenkins-war-2.60.1.war
# Fri, 23 Jun 2017 14:07:28 GMT
# ARGS: JENKINS_SHA=34fde424dde0e050738f5ad1e316d54f741c237bd380bd663a07f96147bb1390 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.1/jenkins-war-2.60.1.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Fri, 23 Jun 2017 14:07:28 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Fri, 23 Jun 2017 14:07:30 GMT
# ARGS: JENKINS_SHA=34fde424dde0e050738f5ad1e316d54f741c237bd380bd663a07f96147bb1390 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.1/jenkins-war-2.60.1.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Fri, 23 Jun 2017 14:07:31 GMT
EXPOSE 8080/tcp
# Fri, 23 Jun 2017 14:07:32 GMT
EXPOSE 50000/tcp
# Fri, 23 Jun 2017 14:07:33 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Fri, 23 Jun 2017 14:07:34 GMT
USER [jenkins]
# Fri, 23 Jun 2017 14:07:35 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Fri, 23 Jun 2017 14:07:37 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Fri, 23 Jun 2017 14:07:38 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Fri, 23 Jun 2017 14:07:39 GMT
COPY file:9f0a7faf8951842e0f42c1a3f3bb54ff4ec5263064508077347c57376da68b46 in /usr/local/bin/plugins.sh 
# Fri, 23 Jun 2017 14:07:40 GMT
COPY file:753d5d2fe45666249deda1ab40e45bcc05bf72ad52b7fa5e7b979083dae2b26b in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd20aef2091895544e1f428c076d83267e49462e9c8ce7b19516940fa360f818`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 594.4 KB (594399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45121f36b267f144e4eb0fcf5eb9d7f9cdfa042a932e7f21644e2180afa1ec2`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ab37d060419095173bd9b57d4e21d2c1b353f23e11241371508d59d43639c8`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c611b2838da4d4cfad18b4e414d5c40d1bc9c1c54c1b4733a2245a1e71c379`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3c1f5610321e9bff27d7b8f01668ffce08f7519c724137c76aaebf911b9879`  
		Last Modified: Fri, 23 Jun 2017 14:09:26 GMT  
		Size: 119.4 MB (119365066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463554ba15a0ea914e9827ef50734bcdba3dd7fbf525b26b67f8528032bf2c4a`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 289.7 KB (289653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c0024e58d988752262e7ed9c3ee9e4b9df9ddf87c66d6f051671dd8a9a297e`  
		Last Modified: Fri, 23 Jun 2017 14:08:59 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1152fd8864eb5612966ac7f61b4b04ec2edba31bdb0469c868d6275b09cf5b40`  
		Last Modified: Fri, 23 Jun 2017 14:08:58 GMT  
		Size: 4.4 KB (4425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a46bd5f39398abc75e633facdebfe8a698ac9e3771dfb9f7a82518830a33cdb6`  
		Last Modified: Fri, 23 Jun 2017 14:08:58 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3587e81ff587528ef83df140a6db2fa4f56eda9fcb1b922831115718245bed`  
		Last Modified: Fri, 23 Jun 2017 14:08:58 GMT  
		Size: 354.8 KB (354776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbd6888a8c4267c8dec6e8eb91f8c9805ba59164527d573cb3b9cc385878f280`  
		Last Modified: Fri, 23 Jun 2017 14:08:58 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d025b8e5fa6c336867e5412709299a22bac6cf0c98aaea58b116d2b8b34b91fc`  
		Last Modified: Fri, 23 Jun 2017 14:09:04 GMT  
		Size: 70.4 MB (70400701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c44a26f382e0180aa1255c7b361ff16c0ef2d2b10949bbe3711baaa54ab757`  
		Last Modified: Fri, 23 Jun 2017 14:08:55 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd8c8cbf95bffd0ac496464a2f254052d6f1afac678654cad298797e6fa802f`  
		Last Modified: Fri, 23 Jun 2017 14:08:56 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba06125aa285423216c5b275f2e87284fedb2c5741f132fad2d0328ae93ddf33`  
		Last Modified: Fri, 23 Jun 2017 14:08:55 GMT  
		Size: 818.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feb2a97af7b5a6e8e9496fef5358a3080eb1201fa628042b513899acf7936d17`  
		Last Modified: Fri, 23 Jun 2017 14:08:55 GMT  
		Size: 1.5 KB (1543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f7b946d414a91aaef96fe21ead91ac8bb9d65224b7c9d68a9182b33a85ed00`  
		Last Modified: Fri, 23 Jun 2017 14:08:55 GMT  
		Size: 2.6 KB (2572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.60.1`

```console
$ docker pull jenkins@sha256:a45535b55a3ba70f3d986b9fb2365b2104ed59e580f55ec8196335d2542a72e4
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.60.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.1 MB (306123611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b4d4d677a2614a4cf67501e119985b89db93ef2fbc4f95d85a3aa2d0ba4e304`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 01:52:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:41:22 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:41:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:41:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:41:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:41:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:41:27 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:41:28 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:41:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:42:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:42:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 14:07:02 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 14:07:03 GMT
ARG user=jenkins
# Fri, 23 Jun 2017 14:07:03 GMT
ARG group=jenkins
# Fri, 23 Jun 2017 14:07:04 GMT
ARG uid=1000
# Fri, 23 Jun 2017 14:07:05 GMT
ARG gid=1000
# Fri, 23 Jun 2017 14:07:06 GMT
ARG http_port=8080
# Fri, 23 Jun 2017 14:07:06 GMT
ARG agent_port=50000
# Fri, 23 Jun 2017 14:07:07 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Fri, 23 Jun 2017 14:07:08 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Fri, 23 Jun 2017 14:07:10 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Fri, 23 Jun 2017 14:07:11 GMT
VOLUME [/var/jenkins_home]
# Fri, 23 Jun 2017 14:07:12 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Fri, 23 Jun 2017 14:07:13 GMT
ENV TINI_VERSION=0.14.0
# Fri, 23 Jun 2017 14:07:14 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Fri, 23 Jun 2017 14:07:18 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Fri, 23 Jun 2017 14:07:19 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Fri, 23 Jun 2017 14:07:20 GMT
ARG JENKINS_VERSION
# Fri, 23 Jun 2017 14:07:21 GMT
ENV JENKINS_VERSION=2.60.1
# Fri, 23 Jun 2017 14:07:22 GMT
ARG JENKINS_SHA=34fde424dde0e050738f5ad1e316d54f741c237bd380bd663a07f96147bb1390
# Fri, 23 Jun 2017 14:07:23 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.1/jenkins-war-2.60.1.war
# Fri, 23 Jun 2017 14:07:28 GMT
# ARGS: JENKINS_SHA=34fde424dde0e050738f5ad1e316d54f741c237bd380bd663a07f96147bb1390 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.1/jenkins-war-2.60.1.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Fri, 23 Jun 2017 14:07:28 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Fri, 23 Jun 2017 14:07:30 GMT
# ARGS: JENKINS_SHA=34fde424dde0e050738f5ad1e316d54f741c237bd380bd663a07f96147bb1390 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.1/jenkins-war-2.60.1.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Fri, 23 Jun 2017 14:07:31 GMT
EXPOSE 8080/tcp
# Fri, 23 Jun 2017 14:07:32 GMT
EXPOSE 50000/tcp
# Fri, 23 Jun 2017 14:07:33 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Fri, 23 Jun 2017 14:07:34 GMT
USER [jenkins]
# Fri, 23 Jun 2017 14:07:35 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Fri, 23 Jun 2017 14:07:37 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Fri, 23 Jun 2017 14:07:38 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Fri, 23 Jun 2017 14:07:39 GMT
COPY file:9f0a7faf8951842e0f42c1a3f3bb54ff4ec5263064508077347c57376da68b46 in /usr/local/bin/plugins.sh 
# Fri, 23 Jun 2017 14:07:40 GMT
COPY file:753d5d2fe45666249deda1ab40e45bcc05bf72ad52b7fa5e7b979083dae2b26b in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd20aef2091895544e1f428c076d83267e49462e9c8ce7b19516940fa360f818`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 594.4 KB (594399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45121f36b267f144e4eb0fcf5eb9d7f9cdfa042a932e7f21644e2180afa1ec2`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ab37d060419095173bd9b57d4e21d2c1b353f23e11241371508d59d43639c8`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c611b2838da4d4cfad18b4e414d5c40d1bc9c1c54c1b4733a2245a1e71c379`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3c1f5610321e9bff27d7b8f01668ffce08f7519c724137c76aaebf911b9879`  
		Last Modified: Fri, 23 Jun 2017 14:09:26 GMT  
		Size: 119.4 MB (119365066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463554ba15a0ea914e9827ef50734bcdba3dd7fbf525b26b67f8528032bf2c4a`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 289.7 KB (289653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c0024e58d988752262e7ed9c3ee9e4b9df9ddf87c66d6f051671dd8a9a297e`  
		Last Modified: Fri, 23 Jun 2017 14:08:59 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1152fd8864eb5612966ac7f61b4b04ec2edba31bdb0469c868d6275b09cf5b40`  
		Last Modified: Fri, 23 Jun 2017 14:08:58 GMT  
		Size: 4.4 KB (4425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a46bd5f39398abc75e633facdebfe8a698ac9e3771dfb9f7a82518830a33cdb6`  
		Last Modified: Fri, 23 Jun 2017 14:08:58 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3587e81ff587528ef83df140a6db2fa4f56eda9fcb1b922831115718245bed`  
		Last Modified: Fri, 23 Jun 2017 14:08:58 GMT  
		Size: 354.8 KB (354776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbd6888a8c4267c8dec6e8eb91f8c9805ba59164527d573cb3b9cc385878f280`  
		Last Modified: Fri, 23 Jun 2017 14:08:58 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d025b8e5fa6c336867e5412709299a22bac6cf0c98aaea58b116d2b8b34b91fc`  
		Last Modified: Fri, 23 Jun 2017 14:09:04 GMT  
		Size: 70.4 MB (70400701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c44a26f382e0180aa1255c7b361ff16c0ef2d2b10949bbe3711baaa54ab757`  
		Last Modified: Fri, 23 Jun 2017 14:08:55 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd8c8cbf95bffd0ac496464a2f254052d6f1afac678654cad298797e6fa802f`  
		Last Modified: Fri, 23 Jun 2017 14:08:56 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba06125aa285423216c5b275f2e87284fedb2c5741f132fad2d0328ae93ddf33`  
		Last Modified: Fri, 23 Jun 2017 14:08:55 GMT  
		Size: 818.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feb2a97af7b5a6e8e9496fef5358a3080eb1201fa628042b513899acf7936d17`  
		Last Modified: Fri, 23 Jun 2017 14:08:55 GMT  
		Size: 1.5 KB (1543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f7b946d414a91aaef96fe21ead91ac8bb9d65224b7c9d68a9182b33a85ed00`  
		Last Modified: Fri, 23 Jun 2017 14:08:55 GMT  
		Size: 2.6 KB (2572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:alpine`

```console
$ docker pull jenkins@sha256:f0b700ba008a25b6eabb9e3ebd01fec75392306ce6b06c54590b02410d951b02
```

-	Platforms:
	-	linux; amd64

### `jenkins:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (167985501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc4f25450f46b6470b24462de0e7173e9259e751460d936d7a124ee8966b2343`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 04:38:34 GMT
RUN apk add --no-cache git openssh-client curl unzip bash ttf-dejavu coreutils
# Thu, 15 Jun 2017 16:49:03 GMT
ARG user=jenkins
# Thu, 15 Jun 2017 16:49:04 GMT
ARG group=jenkins
# Thu, 15 Jun 2017 16:49:05 GMT
ARG uid=1000
# Thu, 15 Jun 2017 16:49:06 GMT
ARG gid=1000
# Thu, 15 Jun 2017 16:49:07 GMT
ARG http_port=8080
# Thu, 15 Jun 2017 16:49:08 GMT
ARG agent_port=50000
# Thu, 15 Jun 2017 16:49:08 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Thu, 15 Jun 2017 16:49:09 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Thu, 15 Jun 2017 16:49:11 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN addgroup -g ${gid} ${group}     && adduser -h "$JENKINS_HOME" -u ${uid} -G ${group} -s /bin/bash -D ${user}
# Thu, 15 Jun 2017 16:49:12 GMT
VOLUME [/var/jenkins_home]
# Thu, 15 Jun 2017 16:49:14 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Thu, 15 Jun 2017 16:49:14 GMT
ENV TINI_VERSION=0.14.0
# Thu, 15 Jun 2017 16:49:15 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Thu, 15 Jun 2017 16:49:18 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Thu, 15 Jun 2017 16:49:20 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Thu, 15 Jun 2017 16:49:21 GMT
ARG JENKINS_VERSION
# Fri, 23 Jun 2017 14:08:06 GMT
ENV JENKINS_VERSION=2.60.1
# Fri, 23 Jun 2017 14:08:07 GMT
ARG JENKINS_SHA=34fde424dde0e050738f5ad1e316d54f741c237bd380bd663a07f96147bb1390
# Fri, 23 Jun 2017 14:08:08 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.1/jenkins-war-2.60.1.war
# Fri, 23 Jun 2017 14:08:13 GMT
# ARGS: JENKINS_SHA=34fde424dde0e050738f5ad1e316d54f741c237bd380bd663a07f96147bb1390 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.1/jenkins-war-2.60.1.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Fri, 23 Jun 2017 14:08:13 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Fri, 23 Jun 2017 14:08:15 GMT
# ARGS: JENKINS_SHA=34fde424dde0e050738f5ad1e316d54f741c237bd380bd663a07f96147bb1390 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.1/jenkins-war-2.60.1.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Fri, 23 Jun 2017 14:08:16 GMT
EXPOSE 8080/tcp
# Fri, 23 Jun 2017 14:08:17 GMT
EXPOSE 50000/tcp
# Fri, 23 Jun 2017 14:08:18 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Fri, 23 Jun 2017 14:08:19 GMT
USER [jenkins]
# Fri, 23 Jun 2017 14:08:20 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Fri, 23 Jun 2017 14:08:21 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Fri, 23 Jun 2017 14:08:22 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Fri, 23 Jun 2017 14:08:24 GMT
COPY file:9f0a7faf8951842e0f42c1a3f3bb54ff4ec5263064508077347c57376da68b46 in /usr/local/bin/plugins.sh 
# Fri, 23 Jun 2017 14:08:26 GMT
COPY file:753d5d2fe45666249deda1ab40e45bcc05bf72ad52b7fa5e7b979083dae2b26b in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560053ce286fa157f89c834cc9b583d034a6ca90f5bb39587dfbb11c7f95f62e`  
		Last Modified: Sat, 13 May 2017 16:22:08 GMT  
		Size: 25.2 MB (25249125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9028ac84d1484a293be1dc80c85dbd8c97d458b3a20eaac4c587da64d78c5b`  
		Last Modified: Thu, 15 Jun 2017 16:51:12 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f8d13edf28e7b799486a3f41f1da71a09e033fb4b61ebbba8c0ccd035c627e`  
		Last Modified: Thu, 15 Jun 2017 16:51:12 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b13b2e6630a87aee78be5363b51462f4d90447ceea777b78b30e1b641a642d`  
		Last Modified: Thu, 15 Jun 2017 16:51:13 GMT  
		Size: 354.8 KB (354775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e24e6d4e5288f7ecc5047c8f6e8b53a96fc037300bb482a4a3186509b5d7e31`  
		Last Modified: Thu, 15 Jun 2017 16:51:11 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff441b4d070b90c34d78eb5f3900f562903e19a4db53e2ef790b6e053bb18f24`  
		Last Modified: Fri, 23 Jun 2017 14:10:35 GMT  
		Size: 70.4 MB (70400701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d08a9ab9f0b3c6715e42fa0caf9df7fcf282d837fd3ef6d12ada7c672680a47e`  
		Last Modified: Fri, 23 Jun 2017 14:10:29 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c940157df523950b8bbd7096b1a1c57bc9415aaf5c656cecda8aa6ef21e93a0`  
		Last Modified: Fri, 23 Jun 2017 14:10:29 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d3e1523b49b9fcd6ae759694a937afe866a59b4aaff59183419b8ebea578c4`  
		Last Modified: Fri, 23 Jun 2017 14:10:29 GMT  
		Size: 806.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167b1e13afb3dbffeffa866dc5c3c1a9081cf69bf698528b3ae1e3065c6d638c`  
		Last Modified: Fri, 23 Jun 2017 14:10:30 GMT  
		Size: 1.5 KB (1536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ce5fe614858fa231264149cfb68a8fa7420418b21df6487ae1ebb396e98395`  
		Last Modified: Fri, 23 Jun 2017 14:10:29 GMT  
		Size: 2.6 KB (2564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.60.1-alpine`

```console
$ docker pull jenkins@sha256:f0b700ba008a25b6eabb9e3ebd01fec75392306ce6b06c54590b02410d951b02
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.60.1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (167985501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc4f25450f46b6470b24462de0e7173e9259e751460d936d7a124ee8966b2343`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 04:38:34 GMT
RUN apk add --no-cache git openssh-client curl unzip bash ttf-dejavu coreutils
# Thu, 15 Jun 2017 16:49:03 GMT
ARG user=jenkins
# Thu, 15 Jun 2017 16:49:04 GMT
ARG group=jenkins
# Thu, 15 Jun 2017 16:49:05 GMT
ARG uid=1000
# Thu, 15 Jun 2017 16:49:06 GMT
ARG gid=1000
# Thu, 15 Jun 2017 16:49:07 GMT
ARG http_port=8080
# Thu, 15 Jun 2017 16:49:08 GMT
ARG agent_port=50000
# Thu, 15 Jun 2017 16:49:08 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Thu, 15 Jun 2017 16:49:09 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Thu, 15 Jun 2017 16:49:11 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN addgroup -g ${gid} ${group}     && adduser -h "$JENKINS_HOME" -u ${uid} -G ${group} -s /bin/bash -D ${user}
# Thu, 15 Jun 2017 16:49:12 GMT
VOLUME [/var/jenkins_home]
# Thu, 15 Jun 2017 16:49:14 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Thu, 15 Jun 2017 16:49:14 GMT
ENV TINI_VERSION=0.14.0
# Thu, 15 Jun 2017 16:49:15 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Thu, 15 Jun 2017 16:49:18 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Thu, 15 Jun 2017 16:49:20 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Thu, 15 Jun 2017 16:49:21 GMT
ARG JENKINS_VERSION
# Fri, 23 Jun 2017 14:08:06 GMT
ENV JENKINS_VERSION=2.60.1
# Fri, 23 Jun 2017 14:08:07 GMT
ARG JENKINS_SHA=34fde424dde0e050738f5ad1e316d54f741c237bd380bd663a07f96147bb1390
# Fri, 23 Jun 2017 14:08:08 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.1/jenkins-war-2.60.1.war
# Fri, 23 Jun 2017 14:08:13 GMT
# ARGS: JENKINS_SHA=34fde424dde0e050738f5ad1e316d54f741c237bd380bd663a07f96147bb1390 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.1/jenkins-war-2.60.1.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Fri, 23 Jun 2017 14:08:13 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Fri, 23 Jun 2017 14:08:15 GMT
# ARGS: JENKINS_SHA=34fde424dde0e050738f5ad1e316d54f741c237bd380bd663a07f96147bb1390 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.1/jenkins-war-2.60.1.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Fri, 23 Jun 2017 14:08:16 GMT
EXPOSE 8080/tcp
# Fri, 23 Jun 2017 14:08:17 GMT
EXPOSE 50000/tcp
# Fri, 23 Jun 2017 14:08:18 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Fri, 23 Jun 2017 14:08:19 GMT
USER [jenkins]
# Fri, 23 Jun 2017 14:08:20 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Fri, 23 Jun 2017 14:08:21 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Fri, 23 Jun 2017 14:08:22 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Fri, 23 Jun 2017 14:08:24 GMT
COPY file:9f0a7faf8951842e0f42c1a3f3bb54ff4ec5263064508077347c57376da68b46 in /usr/local/bin/plugins.sh 
# Fri, 23 Jun 2017 14:08:26 GMT
COPY file:753d5d2fe45666249deda1ab40e45bcc05bf72ad52b7fa5e7b979083dae2b26b in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560053ce286fa157f89c834cc9b583d034a6ca90f5bb39587dfbb11c7f95f62e`  
		Last Modified: Sat, 13 May 2017 16:22:08 GMT  
		Size: 25.2 MB (25249125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9028ac84d1484a293be1dc80c85dbd8c97d458b3a20eaac4c587da64d78c5b`  
		Last Modified: Thu, 15 Jun 2017 16:51:12 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f8d13edf28e7b799486a3f41f1da71a09e033fb4b61ebbba8c0ccd035c627e`  
		Last Modified: Thu, 15 Jun 2017 16:51:12 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b13b2e6630a87aee78be5363b51462f4d90447ceea777b78b30e1b641a642d`  
		Last Modified: Thu, 15 Jun 2017 16:51:13 GMT  
		Size: 354.8 KB (354775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e24e6d4e5288f7ecc5047c8f6e8b53a96fc037300bb482a4a3186509b5d7e31`  
		Last Modified: Thu, 15 Jun 2017 16:51:11 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff441b4d070b90c34d78eb5f3900f562903e19a4db53e2ef790b6e053bb18f24`  
		Last Modified: Fri, 23 Jun 2017 14:10:35 GMT  
		Size: 70.4 MB (70400701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d08a9ab9f0b3c6715e42fa0caf9df7fcf282d837fd3ef6d12ada7c672680a47e`  
		Last Modified: Fri, 23 Jun 2017 14:10:29 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c940157df523950b8bbd7096b1a1c57bc9415aaf5c656cecda8aa6ef21e93a0`  
		Last Modified: Fri, 23 Jun 2017 14:10:29 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d3e1523b49b9fcd6ae759694a937afe866a59b4aaff59183419b8ebea578c4`  
		Last Modified: Fri, 23 Jun 2017 14:10:29 GMT  
		Size: 806.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167b1e13afb3dbffeffa866dc5c3c1a9081cf69bf698528b3ae1e3065c6d638c`  
		Last Modified: Fri, 23 Jun 2017 14:10:30 GMT  
		Size: 1.5 KB (1536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ce5fe614858fa231264149cfb68a8fa7420418b21df6487ae1ebb396e98395`  
		Last Modified: Fri, 23 Jun 2017 14:10:29 GMT  
		Size: 2.6 KB (2564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
