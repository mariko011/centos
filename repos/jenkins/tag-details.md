<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jenkins`

-	[`jenkins:latest`](#jenkinslatest)
-	[`jenkins:2.60.2`](#jenkins2602)
-	[`jenkins:alpine`](#jenkinsalpine)
-	[`jenkins:2.60.2-alpine`](#jenkins2602-alpine)

## `jenkins:latest`

```console
$ docker pull jenkins@sha256:5d628badc50487581da2b4cb95a7589fe1d39922391e128f6a031273ad351b71
```

-	Platforms:
	-	linux; amd64

### `jenkins:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.0 MB (366046962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:112170efb091e6c02eac19703986e3c59ce11e86b826c1d70a4a4a73a333339b`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:55:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:55:13 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:55:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:55:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:55:15 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 08:55:16 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:55:16 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:55:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 08 Sep 2017 08:56:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 08:56:28 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 05:08:38 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 05:08:38 GMT
ARG user=jenkins
# Mon, 11 Sep 2017 05:08:38 GMT
ARG group=jenkins
# Mon, 11 Sep 2017 05:08:39 GMT
ARG uid=1000
# Mon, 11 Sep 2017 05:08:39 GMT
ARG gid=1000
# Mon, 11 Sep 2017 05:08:39 GMT
ARG http_port=8080
# Mon, 11 Sep 2017 05:08:40 GMT
ARG agent_port=50000
# Mon, 11 Sep 2017 05:08:40 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Mon, 11 Sep 2017 05:08:40 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Mon, 11 Sep 2017 05:08:41 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Mon, 11 Sep 2017 05:08:41 GMT
VOLUME [/var/jenkins_home]
# Mon, 11 Sep 2017 05:08:42 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Mon, 11 Sep 2017 05:08:43 GMT
ENV TINI_VERSION=0.14.0
# Mon, 11 Sep 2017 05:08:43 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Mon, 11 Sep 2017 05:08:46 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Mon, 11 Sep 2017 05:08:47 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Mon, 11 Sep 2017 05:08:47 GMT
ARG JENKINS_VERSION
# Mon, 11 Sep 2017 05:08:48 GMT
ENV JENKINS_VERSION=2.60.2
# Mon, 11 Sep 2017 05:08:48 GMT
ARG JENKINS_SHA=14d0788d89be82958a46965de039a55813f9727bd4d0592dc77905976483ba95
# Mon, 11 Sep 2017 05:08:49 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.2/jenkins-war-2.60.2.war
# Mon, 11 Sep 2017 05:08:54 GMT
# ARGS: JENKINS_SHA=14d0788d89be82958a46965de039a55813f9727bd4d0592dc77905976483ba95 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.2/jenkins-war-2.60.2.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Mon, 11 Sep 2017 05:08:54 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Mon, 11 Sep 2017 05:08:55 GMT
# ARGS: JENKINS_SHA=14d0788d89be82958a46965de039a55813f9727bd4d0592dc77905976483ba95 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.2/jenkins-war-2.60.2.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Mon, 11 Sep 2017 05:08:56 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 05:08:56 GMT
EXPOSE 50000/tcp
# Mon, 11 Sep 2017 05:08:57 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Mon, 11 Sep 2017 05:08:57 GMT
USER [jenkins]
# Mon, 11 Sep 2017 05:08:58 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Mon, 11 Sep 2017 05:08:58 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Mon, 11 Sep 2017 05:08:58 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Mon, 11 Sep 2017 05:08:59 GMT
COPY file:9f0a7faf8951842e0f42c1a3f3bb54ff4ec5263064508077347c57376da68b46 in /usr/local/bin/plugins.sh 
# Mon, 11 Sep 2017 05:09:00 GMT
COPY file:753d5d2fe45666249deda1ab40e45bcc05bf72ad52b7fa5e7b979083dae2b26b in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34a55a78629d1810896a463ad235a043bfb76771657326e7f12a5d6b5462711`  
		Last Modified: Sat, 09 Sep 2017 00:34:34 GMT  
		Size: 661.9 KB (661916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0608417860f2fbf351f5691f518ecedd1b5e0fbc6a09ff9df6fc4e9cbe1d617`  
		Last Modified: Sat, 09 Sep 2017 00:34:33 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ffb0683f1a94850d234bc16a57845dbbb8096706ac2f498cfa6227b5d34c88`  
		Last Modified: Sat, 09 Sep 2017 00:34:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ab86bd63bcf0ac2f592a1ea2e581af4508a5097bdfdde4a148d9c8ce57fbdf`  
		Last Modified: Sat, 09 Sep 2017 00:35:14 GMT  
		Size: 183.7 MB (183688010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e8d28e95f8e809aafb72c4c445a45bb7f3d1f388754776e7e3abc9cd144048`  
		Last Modified: Sat, 09 Sep 2017 00:34:34 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d6ad9f8a749ea4b8a11775a297da1d6fd4216d3f6c13e57c44ff4a8a5b8229`  
		Last Modified: Mon, 11 Sep 2017 05:09:13 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3caea7ba6c3e70b666dbd6008bb62249b42f4ff0470f587840acfa2004a5a55a`  
		Last Modified: Mon, 11 Sep 2017 05:09:12 GMT  
		Size: 4.2 KB (4159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cfd5fe294ab40e348ef3deccf419b1c89bc06d481d8e6dd3db0ef6476da129`  
		Last Modified: Mon, 11 Sep 2017 05:09:12 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1bd1db8a084be7ebedca190039a6392cbfeb78a937a9bc3d6095af9338a46fb`  
		Last Modified: Mon, 11 Sep 2017 05:09:12 GMT  
		Size: 354.8 KB (354775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0effb33601d65cdd1a68eec7cd4f44402ce390e8ecad286d87cadd83388a20a`  
		Last Modified: Mon, 11 Sep 2017 05:09:12 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304196f84feeeedbff064826d50fc5e6c7354620887b7eeb352b942abe92a98b`  
		Last Modified: Mon, 11 Sep 2017 05:09:16 GMT  
		Size: 70.4 MB (70402667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddc6878c5f095a84287005df3a80a80dadc0b46d4fa73a9a1dd946f06c98bed`  
		Last Modified: Mon, 11 Sep 2017 05:09:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2982263a84d482af53e3be0df7aee02cc4cf47a020013f5b728ed1bf989745`  
		Last Modified: Mon, 11 Sep 2017 05:09:09 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cbac31ea61762709240b2a2f5ecf01fd44bde8d7235e45f087192ed6231a352`  
		Last Modified: Mon, 11 Sep 2017 05:09:09 GMT  
		Size: 819.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f4de9f38ffc3d97fec74ec892efdf79fe1d21e0f9992a61dbfbd28f9937310`  
		Last Modified: Mon, 11 Sep 2017 05:09:09 GMT  
		Size: 1.5 KB (1546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82aa91ec83188f3a3913693b74d18e1bc4c95578ec9817884681b21b621367bb`  
		Last Modified: Mon, 11 Sep 2017 05:09:10 GMT  
		Size: 2.6 KB (2573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.60.2`

```console
$ docker pull jenkins@sha256:5d628badc50487581da2b4cb95a7589fe1d39922391e128f6a031273ad351b71
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.60.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.0 MB (366046962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:112170efb091e6c02eac19703986e3c59ce11e86b826c1d70a4a4a73a333339b`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:55:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:55:13 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:55:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:55:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:55:15 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 08:55:16 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:55:16 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:55:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 08 Sep 2017 08:56:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 08:56:28 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 05:08:38 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 05:08:38 GMT
ARG user=jenkins
# Mon, 11 Sep 2017 05:08:38 GMT
ARG group=jenkins
# Mon, 11 Sep 2017 05:08:39 GMT
ARG uid=1000
# Mon, 11 Sep 2017 05:08:39 GMT
ARG gid=1000
# Mon, 11 Sep 2017 05:08:39 GMT
ARG http_port=8080
# Mon, 11 Sep 2017 05:08:40 GMT
ARG agent_port=50000
# Mon, 11 Sep 2017 05:08:40 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Mon, 11 Sep 2017 05:08:40 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Mon, 11 Sep 2017 05:08:41 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Mon, 11 Sep 2017 05:08:41 GMT
VOLUME [/var/jenkins_home]
# Mon, 11 Sep 2017 05:08:42 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Mon, 11 Sep 2017 05:08:43 GMT
ENV TINI_VERSION=0.14.0
# Mon, 11 Sep 2017 05:08:43 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Mon, 11 Sep 2017 05:08:46 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Mon, 11 Sep 2017 05:08:47 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Mon, 11 Sep 2017 05:08:47 GMT
ARG JENKINS_VERSION
# Mon, 11 Sep 2017 05:08:48 GMT
ENV JENKINS_VERSION=2.60.2
# Mon, 11 Sep 2017 05:08:48 GMT
ARG JENKINS_SHA=14d0788d89be82958a46965de039a55813f9727bd4d0592dc77905976483ba95
# Mon, 11 Sep 2017 05:08:49 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.2/jenkins-war-2.60.2.war
# Mon, 11 Sep 2017 05:08:54 GMT
# ARGS: JENKINS_SHA=14d0788d89be82958a46965de039a55813f9727bd4d0592dc77905976483ba95 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.2/jenkins-war-2.60.2.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Mon, 11 Sep 2017 05:08:54 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Mon, 11 Sep 2017 05:08:55 GMT
# ARGS: JENKINS_SHA=14d0788d89be82958a46965de039a55813f9727bd4d0592dc77905976483ba95 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.2/jenkins-war-2.60.2.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Mon, 11 Sep 2017 05:08:56 GMT
EXPOSE 8080/tcp
# Mon, 11 Sep 2017 05:08:56 GMT
EXPOSE 50000/tcp
# Mon, 11 Sep 2017 05:08:57 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Mon, 11 Sep 2017 05:08:57 GMT
USER [jenkins]
# Mon, 11 Sep 2017 05:08:58 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Mon, 11 Sep 2017 05:08:58 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Mon, 11 Sep 2017 05:08:58 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Mon, 11 Sep 2017 05:08:59 GMT
COPY file:9f0a7faf8951842e0f42c1a3f3bb54ff4ec5263064508077347c57376da68b46 in /usr/local/bin/plugins.sh 
# Mon, 11 Sep 2017 05:09:00 GMT
COPY file:753d5d2fe45666249deda1ab40e45bcc05bf72ad52b7fa5e7b979083dae2b26b in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34a55a78629d1810896a463ad235a043bfb76771657326e7f12a5d6b5462711`  
		Last Modified: Sat, 09 Sep 2017 00:34:34 GMT  
		Size: 661.9 KB (661916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0608417860f2fbf351f5691f518ecedd1b5e0fbc6a09ff9df6fc4e9cbe1d617`  
		Last Modified: Sat, 09 Sep 2017 00:34:33 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ffb0683f1a94850d234bc16a57845dbbb8096706ac2f498cfa6227b5d34c88`  
		Last Modified: Sat, 09 Sep 2017 00:34:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ab86bd63bcf0ac2f592a1ea2e581af4508a5097bdfdde4a148d9c8ce57fbdf`  
		Last Modified: Sat, 09 Sep 2017 00:35:14 GMT  
		Size: 183.7 MB (183688010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e8d28e95f8e809aafb72c4c445a45bb7f3d1f388754776e7e3abc9cd144048`  
		Last Modified: Sat, 09 Sep 2017 00:34:34 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d6ad9f8a749ea4b8a11775a297da1d6fd4216d3f6c13e57c44ff4a8a5b8229`  
		Last Modified: Mon, 11 Sep 2017 05:09:13 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3caea7ba6c3e70b666dbd6008bb62249b42f4ff0470f587840acfa2004a5a55a`  
		Last Modified: Mon, 11 Sep 2017 05:09:12 GMT  
		Size: 4.2 KB (4159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cfd5fe294ab40e348ef3deccf419b1c89bc06d481d8e6dd3db0ef6476da129`  
		Last Modified: Mon, 11 Sep 2017 05:09:12 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1bd1db8a084be7ebedca190039a6392cbfeb78a937a9bc3d6095af9338a46fb`  
		Last Modified: Mon, 11 Sep 2017 05:09:12 GMT  
		Size: 354.8 KB (354775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0effb33601d65cdd1a68eec7cd4f44402ce390e8ecad286d87cadd83388a20a`  
		Last Modified: Mon, 11 Sep 2017 05:09:12 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304196f84feeeedbff064826d50fc5e6c7354620887b7eeb352b942abe92a98b`  
		Last Modified: Mon, 11 Sep 2017 05:09:16 GMT  
		Size: 70.4 MB (70402667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddc6878c5f095a84287005df3a80a80dadc0b46d4fa73a9a1dd946f06c98bed`  
		Last Modified: Mon, 11 Sep 2017 05:09:10 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2982263a84d482af53e3be0df7aee02cc4cf47a020013f5b728ed1bf989745`  
		Last Modified: Mon, 11 Sep 2017 05:09:09 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cbac31ea61762709240b2a2f5ecf01fd44bde8d7235e45f087192ed6231a352`  
		Last Modified: Mon, 11 Sep 2017 05:09:09 GMT  
		Size: 819.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f4de9f38ffc3d97fec74ec892efdf79fe1d21e0f9992a61dbfbd28f9937310`  
		Last Modified: Mon, 11 Sep 2017 05:09:09 GMT  
		Size: 1.5 KB (1546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82aa91ec83188f3a3913693b74d18e1bc4c95578ec9817884681b21b621367bb`  
		Last Modified: Mon, 11 Sep 2017 05:09:10 GMT  
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
