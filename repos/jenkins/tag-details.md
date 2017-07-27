<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jenkins`

-	[`jenkins:latest`](#jenkinslatest)
-	[`jenkins:2.60.2`](#jenkins2602)
-	[`jenkins:alpine`](#jenkinsalpine)
-	[`jenkins:2.60.2-alpine`](#jenkins2602-alpine)

## `jenkins:latest`

```console
$ docker pull jenkins@sha256:5fa799942acb415aa8d59ee49ee25b488d79f4b23b6281f01e28a51f1bde6cbb
```

-	Platforms:
	-	linux; amd64

### `jenkins:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.0 MB (366049459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:808f0889a6d3770f66860640f668d9e540948f0bd8457da25dd5b1054030153e`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:51 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:09:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:32:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:33:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:33:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 18:25:14 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 18:25:15 GMT
ARG user=jenkins
# Thu, 27 Jul 2017 18:25:15 GMT
ARG group=jenkins
# Thu, 27 Jul 2017 18:25:15 GMT
ARG uid=1000
# Thu, 27 Jul 2017 18:25:15 GMT
ARG gid=1000
# Thu, 27 Jul 2017 18:25:15 GMT
ARG http_port=8080
# Thu, 27 Jul 2017 18:25:16 GMT
ARG agent_port=50000
# Thu, 27 Jul 2017 18:25:16 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Thu, 27 Jul 2017 18:25:16 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Thu, 27 Jul 2017 18:25:17 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Thu, 27 Jul 2017 18:25:17 GMT
VOLUME [/var/jenkins_home]
# Thu, 27 Jul 2017 18:25:18 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Thu, 27 Jul 2017 18:25:18 GMT
ENV TINI_VERSION=0.14.0
# Thu, 27 Jul 2017 18:25:18 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Thu, 27 Jul 2017 18:25:21 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Thu, 27 Jul 2017 18:25:21 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Thu, 27 Jul 2017 18:25:22 GMT
ARG JENKINS_VERSION
# Thu, 27 Jul 2017 18:25:22 GMT
ENV JENKINS_VERSION=2.60.2
# Thu, 27 Jul 2017 18:25:22 GMT
ARG JENKINS_SHA=14d0788d89be82958a46965de039a55813f9727bd4d0592dc77905976483ba95
# Thu, 27 Jul 2017 18:25:23 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.2/jenkins-war-2.60.2.war
# Thu, 27 Jul 2017 18:25:26 GMT
# ARGS: JENKINS_SHA=14d0788d89be82958a46965de039a55813f9727bd4d0592dc77905976483ba95 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.2/jenkins-war-2.60.2.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Thu, 27 Jul 2017 18:25:27 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Thu, 27 Jul 2017 18:25:27 GMT
# ARGS: JENKINS_SHA=14d0788d89be82958a46965de039a55813f9727bd4d0592dc77905976483ba95 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.2/jenkins-war-2.60.2.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Thu, 27 Jul 2017 18:25:28 GMT
EXPOSE 8080/tcp
# Thu, 27 Jul 2017 18:25:28 GMT
EXPOSE 50000/tcp
# Thu, 27 Jul 2017 18:25:28 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Thu, 27 Jul 2017 18:25:29 GMT
USER [jenkins]
# Thu, 27 Jul 2017 18:25:29 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Thu, 27 Jul 2017 18:25:29 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Thu, 27 Jul 2017 18:25:30 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Thu, 27 Jul 2017 18:25:30 GMT
COPY file:9f0a7faf8951842e0f42c1a3f3bb54ff4ec5263064508077347c57376da68b46 in /usr/local/bin/plugins.sh 
# Thu, 27 Jul 2017 18:25:31 GMT
COPY file:753d5d2fe45666249deda1ab40e45bcc05bf72ad52b7fa5e7b979083dae2b26b in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eaa20184e60073d2705ab636fb92b4428dfc503b858b423608dba26d628c99`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 660.5 KB (660458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a8522e2399427c6c6d4cb5748e3c9ea39188af728386b37ffa3719b60a08a0`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ba9d7befcada9c3bfe28fe046ee3ddf551dbcd0fe29a620071c07f49afc2e9`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635bf5037831b9d348a557e32db9ca3c918de37880ff495a93d232ca111c7dba`  
		Last Modified: Wed, 26 Jul 2017 20:37:36 GMT  
		Size: 183.7 MB (183682145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1236c277f1c5f5d26d97dca2662375f8b807e82196737c10ee54219109a86b0`  
		Last Modified: Wed, 26 Jul 2017 20:37:10 GMT  
		Size: 272.0 KB (271991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303ec27b76042c154abf6846cda3756a43c5a3324a5995dbd692c731718d299d`  
		Last Modified: Thu, 27 Jul 2017 18:25:40 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e1cac82c21db614dab96c0084913b8e6bde1f808ec3543b285fa2bab2f748a0`  
		Last Modified: Thu, 27 Jul 2017 18:25:39 GMT  
		Size: 4.2 KB (4157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440e935975fbe568d145a381545c92cecb124517fffa33641432b72c01e1c36c`  
		Last Modified: Thu, 27 Jul 2017 18:25:38 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba1ade64a5d2d177ffa0cea868fafddac7e7bc6a2502756eea2f981c976332b`  
		Last Modified: Thu, 27 Jul 2017 18:25:38 GMT  
		Size: 354.8 KB (354798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57938a9f516be2fb7b92da864a08b30b8f0b573a4c8ad3f9676442baeb6aa28a`  
		Last Modified: Thu, 27 Jul 2017 18:25:38 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982ff86ad3f192033ac193cea44157ae2724b20ac4714e879a80d436d5e8adda`  
		Last Modified: Thu, 27 Jul 2017 18:25:42 GMT  
		Size: 70.4 MB (70402671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40827cc30d17150f337bdcdc977ee2fb00e28d3ec1c5c4cfa3cd05ece641ca18`  
		Last Modified: Thu, 27 Jul 2017 18:25:37 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246ab91e549c5420daddc5a14f12e06b7fe551dcdb732a178f07b7156605adc2`  
		Last Modified: Thu, 27 Jul 2017 18:25:36 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23acef68f5f700f8977ff1f7b5ea7f2d870a293d32f468cef70e476db8bbc2b3`  
		Last Modified: Thu, 27 Jul 2017 18:25:36 GMT  
		Size: 819.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc15b917d650d964593e3eb74623144be32a13b78957632f613e97a7d1fc485`  
		Last Modified: Thu, 27 Jul 2017 18:25:36 GMT  
		Size: 1.5 KB (1544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a836f6aaf8adeaaed1e8469482a7d895f923c318c465269bfc03f67f02998f`  
		Last Modified: Thu, 27 Jul 2017 18:25:36 GMT  
		Size: 2.6 KB (2573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.60.2`

```console
$ docker pull jenkins@sha256:5fa799942acb415aa8d59ee49ee25b488d79f4b23b6281f01e28a51f1bde6cbb
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.60.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.0 MB (366049459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:808f0889a6d3770f66860640f668d9e540948f0bd8457da25dd5b1054030153e`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:51 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:09:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:32:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:33:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:33:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 18:25:14 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Thu, 27 Jul 2017 18:25:15 GMT
ARG user=jenkins
# Thu, 27 Jul 2017 18:25:15 GMT
ARG group=jenkins
# Thu, 27 Jul 2017 18:25:15 GMT
ARG uid=1000
# Thu, 27 Jul 2017 18:25:15 GMT
ARG gid=1000
# Thu, 27 Jul 2017 18:25:15 GMT
ARG http_port=8080
# Thu, 27 Jul 2017 18:25:16 GMT
ARG agent_port=50000
# Thu, 27 Jul 2017 18:25:16 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Thu, 27 Jul 2017 18:25:16 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Thu, 27 Jul 2017 18:25:17 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Thu, 27 Jul 2017 18:25:17 GMT
VOLUME [/var/jenkins_home]
# Thu, 27 Jul 2017 18:25:18 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Thu, 27 Jul 2017 18:25:18 GMT
ENV TINI_VERSION=0.14.0
# Thu, 27 Jul 2017 18:25:18 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Thu, 27 Jul 2017 18:25:21 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Thu, 27 Jul 2017 18:25:21 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Thu, 27 Jul 2017 18:25:22 GMT
ARG JENKINS_VERSION
# Thu, 27 Jul 2017 18:25:22 GMT
ENV JENKINS_VERSION=2.60.2
# Thu, 27 Jul 2017 18:25:22 GMT
ARG JENKINS_SHA=14d0788d89be82958a46965de039a55813f9727bd4d0592dc77905976483ba95
# Thu, 27 Jul 2017 18:25:23 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.2/jenkins-war-2.60.2.war
# Thu, 27 Jul 2017 18:25:26 GMT
# ARGS: JENKINS_SHA=14d0788d89be82958a46965de039a55813f9727bd4d0592dc77905976483ba95 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.2/jenkins-war-2.60.2.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Thu, 27 Jul 2017 18:25:27 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Thu, 27 Jul 2017 18:25:27 GMT
# ARGS: JENKINS_SHA=14d0788d89be82958a46965de039a55813f9727bd4d0592dc77905976483ba95 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.2/jenkins-war-2.60.2.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Thu, 27 Jul 2017 18:25:28 GMT
EXPOSE 8080/tcp
# Thu, 27 Jul 2017 18:25:28 GMT
EXPOSE 50000/tcp
# Thu, 27 Jul 2017 18:25:28 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Thu, 27 Jul 2017 18:25:29 GMT
USER [jenkins]
# Thu, 27 Jul 2017 18:25:29 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Thu, 27 Jul 2017 18:25:29 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Thu, 27 Jul 2017 18:25:30 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Thu, 27 Jul 2017 18:25:30 GMT
COPY file:9f0a7faf8951842e0f42c1a3f3bb54ff4ec5263064508077347c57376da68b46 in /usr/local/bin/plugins.sh 
# Thu, 27 Jul 2017 18:25:31 GMT
COPY file:753d5d2fe45666249deda1ab40e45bcc05bf72ad52b7fa5e7b979083dae2b26b in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eaa20184e60073d2705ab636fb92b4428dfc503b858b423608dba26d628c99`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 660.5 KB (660458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a8522e2399427c6c6d4cb5748e3c9ea39188af728386b37ffa3719b60a08a0`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ba9d7befcada9c3bfe28fe046ee3ddf551dbcd0fe29a620071c07f49afc2e9`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635bf5037831b9d348a557e32db9ca3c918de37880ff495a93d232ca111c7dba`  
		Last Modified: Wed, 26 Jul 2017 20:37:36 GMT  
		Size: 183.7 MB (183682145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1236c277f1c5f5d26d97dca2662375f8b807e82196737c10ee54219109a86b0`  
		Last Modified: Wed, 26 Jul 2017 20:37:10 GMT  
		Size: 272.0 KB (271991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303ec27b76042c154abf6846cda3756a43c5a3324a5995dbd692c731718d299d`  
		Last Modified: Thu, 27 Jul 2017 18:25:40 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e1cac82c21db614dab96c0084913b8e6bde1f808ec3543b285fa2bab2f748a0`  
		Last Modified: Thu, 27 Jul 2017 18:25:39 GMT  
		Size: 4.2 KB (4157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440e935975fbe568d145a381545c92cecb124517fffa33641432b72c01e1c36c`  
		Last Modified: Thu, 27 Jul 2017 18:25:38 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba1ade64a5d2d177ffa0cea868fafddac7e7bc6a2502756eea2f981c976332b`  
		Last Modified: Thu, 27 Jul 2017 18:25:38 GMT  
		Size: 354.8 KB (354798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57938a9f516be2fb7b92da864a08b30b8f0b573a4c8ad3f9676442baeb6aa28a`  
		Last Modified: Thu, 27 Jul 2017 18:25:38 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982ff86ad3f192033ac193cea44157ae2724b20ac4714e879a80d436d5e8adda`  
		Last Modified: Thu, 27 Jul 2017 18:25:42 GMT  
		Size: 70.4 MB (70402671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40827cc30d17150f337bdcdc977ee2fb00e28d3ec1c5c4cfa3cd05ece641ca18`  
		Last Modified: Thu, 27 Jul 2017 18:25:37 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246ab91e549c5420daddc5a14f12e06b7fe551dcdb732a178f07b7156605adc2`  
		Last Modified: Thu, 27 Jul 2017 18:25:36 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23acef68f5f700f8977ff1f7b5ea7f2d870a293d32f468cef70e476db8bbc2b3`  
		Last Modified: Thu, 27 Jul 2017 18:25:36 GMT  
		Size: 819.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc15b917d650d964593e3eb74623144be32a13b78957632f613e97a7d1fc485`  
		Last Modified: Thu, 27 Jul 2017 18:25:36 GMT  
		Size: 1.5 KB (1544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a836f6aaf8adeaaed1e8469482a7d895f923c318c465269bfc03f67f02998f`  
		Last Modified: Thu, 27 Jul 2017 18:25:36 GMT  
		Size: 2.6 KB (2573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:alpine`

```console
$ docker pull jenkins@sha256:80ce98e4582c2cc7803c190e58d995116614518842e1363eb59dd7334e1e5ccd
```

-	Platforms:
	-	linux; amd64

### `jenkins:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (167987464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5fbb5f031fcdaa8c1b71f55d22496b1890f4b26a21b33988409ddd3617e5f7f`
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
# Thu, 20 Jul 2017 19:02:06 GMT
ENV JENKINS_VERSION=2.60.2
# Thu, 20 Jul 2017 19:02:07 GMT
ARG JENKINS_SHA=14d0788d89be82958a46965de039a55813f9727bd4d0592dc77905976483ba95
# Thu, 20 Jul 2017 19:02:07 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.2/jenkins-war-2.60.2.war
# Thu, 20 Jul 2017 19:02:12 GMT
# ARGS: JENKINS_SHA=14d0788d89be82958a46965de039a55813f9727bd4d0592dc77905976483ba95 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.2/jenkins-war-2.60.2.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Thu, 20 Jul 2017 19:02:12 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Thu, 20 Jul 2017 19:02:13 GMT
# ARGS: JENKINS_SHA=14d0788d89be82958a46965de039a55813f9727bd4d0592dc77905976483ba95 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.2/jenkins-war-2.60.2.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Thu, 20 Jul 2017 19:02:14 GMT
EXPOSE 8080/tcp
# Thu, 20 Jul 2017 19:02:14 GMT
EXPOSE 50000/tcp
# Thu, 20 Jul 2017 19:02:15 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Thu, 20 Jul 2017 19:02:15 GMT
USER [jenkins]
# Thu, 20 Jul 2017 19:02:16 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Thu, 20 Jul 2017 19:02:17 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Thu, 20 Jul 2017 19:02:17 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Thu, 20 Jul 2017 19:02:18 GMT
COPY file:9f0a7faf8951842e0f42c1a3f3bb54ff4ec5263064508077347c57376da68b46 in /usr/local/bin/plugins.sh 
# Thu, 20 Jul 2017 19:02:19 GMT
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
	-	`sha256:c36d0234bd0ab906ff1245bc229be1b1f2380a0d935eec4242e9a3b6a7697f50`  
		Last Modified: Thu, 20 Jul 2017 19:03:17 GMT  
		Size: 70.4 MB (70402668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bd7f69ae56be1f366b54cdef457691133ce2d3ac37993a54d357cbb2eeab217`  
		Last Modified: Thu, 20 Jul 2017 19:03:12 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:101e7200553d9cfac0a5aad6822c3c23f1a5af201f24b05ca81c7b6a2fa251ab`  
		Last Modified: Thu, 20 Jul 2017 19:03:11 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97dff63e01269379427be42cab45114b6741d61e9f70f039e4dad64d1b691673`  
		Last Modified: Thu, 20 Jul 2017 19:03:12 GMT  
		Size: 808.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07767379aeacdca7e90905e2f94c0e0940a7c0791f3dad6b9fb64e00fb67c29`  
		Last Modified: Thu, 20 Jul 2017 19:03:11 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94396240a840f8dfa8849d092ca5fd11d1528ee2e982f2278a20f45d1f87c860`  
		Last Modified: Thu, 20 Jul 2017 19:03:11 GMT  
		Size: 2.6 KB (2562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.60.2-alpine`

```console
$ docker pull jenkins@sha256:80ce98e4582c2cc7803c190e58d995116614518842e1363eb59dd7334e1e5ccd
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.60.2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (167987464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5fbb5f031fcdaa8c1b71f55d22496b1890f4b26a21b33988409ddd3617e5f7f`
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
# Thu, 20 Jul 2017 19:02:06 GMT
ENV JENKINS_VERSION=2.60.2
# Thu, 20 Jul 2017 19:02:07 GMT
ARG JENKINS_SHA=14d0788d89be82958a46965de039a55813f9727bd4d0592dc77905976483ba95
# Thu, 20 Jul 2017 19:02:07 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.2/jenkins-war-2.60.2.war
# Thu, 20 Jul 2017 19:02:12 GMT
# ARGS: JENKINS_SHA=14d0788d89be82958a46965de039a55813f9727bd4d0592dc77905976483ba95 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.2/jenkins-war-2.60.2.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Thu, 20 Jul 2017 19:02:12 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Thu, 20 Jul 2017 19:02:13 GMT
# ARGS: JENKINS_SHA=14d0788d89be82958a46965de039a55813f9727bd4d0592dc77905976483ba95 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.2/jenkins-war-2.60.2.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Thu, 20 Jul 2017 19:02:14 GMT
EXPOSE 8080/tcp
# Thu, 20 Jul 2017 19:02:14 GMT
EXPOSE 50000/tcp
# Thu, 20 Jul 2017 19:02:15 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Thu, 20 Jul 2017 19:02:15 GMT
USER [jenkins]
# Thu, 20 Jul 2017 19:02:16 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Thu, 20 Jul 2017 19:02:17 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Thu, 20 Jul 2017 19:02:17 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Thu, 20 Jul 2017 19:02:18 GMT
COPY file:9f0a7faf8951842e0f42c1a3f3bb54ff4ec5263064508077347c57376da68b46 in /usr/local/bin/plugins.sh 
# Thu, 20 Jul 2017 19:02:19 GMT
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
	-	`sha256:c36d0234bd0ab906ff1245bc229be1b1f2380a0d935eec4242e9a3b6a7697f50`  
		Last Modified: Thu, 20 Jul 2017 19:03:17 GMT  
		Size: 70.4 MB (70402668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bd7f69ae56be1f366b54cdef457691133ce2d3ac37993a54d357cbb2eeab217`  
		Last Modified: Thu, 20 Jul 2017 19:03:12 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:101e7200553d9cfac0a5aad6822c3c23f1a5af201f24b05ca81c7b6a2fa251ab`  
		Last Modified: Thu, 20 Jul 2017 19:03:11 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97dff63e01269379427be42cab45114b6741d61e9f70f039e4dad64d1b691673`  
		Last Modified: Thu, 20 Jul 2017 19:03:12 GMT  
		Size: 808.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07767379aeacdca7e90905e2f94c0e0940a7c0791f3dad6b9fb64e00fb67c29`  
		Last Modified: Thu, 20 Jul 2017 19:03:11 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94396240a840f8dfa8849d092ca5fd11d1528ee2e982f2278a20f45d1f87c860`  
		Last Modified: Thu, 20 Jul 2017 19:03:11 GMT  
		Size: 2.6 KB (2562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
