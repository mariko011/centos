## `jenkins:latest`

```console
$ docker pull jenkins@sha256:900fb001b01ccc353a5e4f00f999f6634e8a65ff442e824228646b4c528fab24
```

-	Platforms:
	-	linux; amd64

### `jenkins:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.5 MB (365476318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee9567984278d1e1583c2ccdcf7346bfe3ef75904f4821f91a4c8b681bf8f6c`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 22:31:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:11:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:11:29 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:11:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:11:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:11:34 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 06 Jul 2017 23:11:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:11:35 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:11:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:10:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:10:42 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:32:09 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Sat, 22 Jul 2017 01:32:10 GMT
ARG user=jenkins
# Sat, 22 Jul 2017 01:32:10 GMT
ARG group=jenkins
# Sat, 22 Jul 2017 01:32:10 GMT
ARG uid=1000
# Sat, 22 Jul 2017 01:32:10 GMT
ARG gid=1000
# Sat, 22 Jul 2017 01:32:11 GMT
ARG http_port=8080
# Sat, 22 Jul 2017 01:32:11 GMT
ARG agent_port=50000
# Sat, 22 Jul 2017 01:32:11 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Sat, 22 Jul 2017 01:32:11 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Sat, 22 Jul 2017 01:32:12 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Sat, 22 Jul 2017 01:32:12 GMT
VOLUME [/var/jenkins_home]
# Sat, 22 Jul 2017 01:32:13 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Sat, 22 Jul 2017 01:32:13 GMT
ENV TINI_VERSION=0.14.0
# Sat, 22 Jul 2017 01:32:14 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Sat, 22 Jul 2017 01:32:16 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Sat, 22 Jul 2017 01:32:17 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Sat, 22 Jul 2017 01:32:17 GMT
ARG JENKINS_VERSION
# Sat, 22 Jul 2017 01:32:17 GMT
ENV JENKINS_VERSION=2.60.2
# Sat, 22 Jul 2017 01:32:17 GMT
ARG JENKINS_SHA=14d0788d89be82958a46965de039a55813f9727bd4d0592dc77905976483ba95
# Sat, 22 Jul 2017 01:32:18 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.2/jenkins-war-2.60.2.war
# Sat, 22 Jul 2017 01:32:22 GMT
# ARGS: JENKINS_SHA=14d0788d89be82958a46965de039a55813f9727bd4d0592dc77905976483ba95 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.2/jenkins-war-2.60.2.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Sat, 22 Jul 2017 01:32:22 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Sat, 22 Jul 2017 01:32:23 GMT
# ARGS: JENKINS_SHA=14d0788d89be82958a46965de039a55813f9727bd4d0592dc77905976483ba95 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.2/jenkins-war-2.60.2.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Sat, 22 Jul 2017 01:32:23 GMT
EXPOSE 8080/tcp
# Sat, 22 Jul 2017 01:32:24 GMT
EXPOSE 50000/tcp
# Sat, 22 Jul 2017 01:32:24 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Sat, 22 Jul 2017 01:32:24 GMT
USER [jenkins]
# Sat, 22 Jul 2017 01:32:24 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Sat, 22 Jul 2017 01:32:25 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Sat, 22 Jul 2017 01:32:25 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Sat, 22 Jul 2017 01:32:26 GMT
COPY file:9f0a7faf8951842e0f42c1a3f3bb54ff4ec5263064508077347c57376da68b46 in /usr/local/bin/plugins.sh 
# Sat, 22 Jul 2017 01:32:26 GMT
COPY file:753d5d2fe45666249deda1ab40e45bcc05bf72ad52b7fa5e7b979083dae2b26b in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de358416a758e4776153bd86b34fcaa0f31b577b335845b968646e61ac78bf4`  
		Last Modified: Thu, 06 Jul 2017 23:56:47 GMT  
		Size: 50.0 MB (50004119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4049b231edeab7c94920b61f8e95d5ae615893cf7ae7b9d28a670f5e47765ddf`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 660.4 KB (660432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6617c62c7c1089f445af30dda32df5c346c31019acf9077741422a3e4785a537`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa26fbcddb08b7bc5e7847d2cd1bfb54bd4674c892a483341f8d59911cb012c2`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf9eeaccdbef302badbe408271f44e78f77ace907ad645f50e01e0c877a09a16`  
		Last Modified: Fri, 21 Jul 2017 22:29:36 GMT  
		Size: 183.1 MB (183110408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0dbc643791b279d676519e037e59b3ba88b5e4579ab963a4d92fddb7b8017f`  
		Last Modified: Fri, 21 Jul 2017 22:28:52 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db3e3931d04f7c31c17f2f15a63e8e6e31d8d056bd90ef5e56091af8916a5e4`  
		Last Modified: Sat, 22 Jul 2017 02:17:07 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95f293c40da2a3d034334c99579ea95c40c04ad9f49c7381126f7cf508f1749`  
		Last Modified: Sat, 22 Jul 2017 02:17:07 GMT  
		Size: 4.2 KB (4159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7bcfb615fdbda8e7ef0159cf4cab756c69503c91ff96f8a4fb28fd32c01e25`  
		Last Modified: Sat, 22 Jul 2017 02:17:07 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375d929b2069008f5179dd0bcb94354ffb86b8c6a0afd83b3c4dc9c9e6c007ee`  
		Last Modified: Sat, 22 Jul 2017 02:17:07 GMT  
		Size: 354.8 KB (354800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc92271e1d38bab9ff9324fb35169f2d91153c2b3e16b40cf667ba5a8980894`  
		Last Modified: Sat, 22 Jul 2017 02:17:07 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3e776f6d9eb1075838dcfa56dde0085650e3dc6539904aefe3e068505df3ea`  
		Last Modified: Sat, 22 Jul 2017 02:17:21 GMT  
		Size: 70.4 MB (70402668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2826c0b72acd46bca1c86e902c4fef2bf069ef28d2e753869dc87ab5ec0ffaba`  
		Last Modified: Sat, 22 Jul 2017 02:17:05 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8f3cea45dde10d8285067398c6eba4ab51783546fec1fd06350c4dca112887`  
		Last Modified: Sat, 22 Jul 2017 02:17:05 GMT  
		Size: 1.4 KB (1434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e764f845769d0bfb9e48c878b24f4312b16ab2f38c1dd30325e8bdc582f1d60`  
		Last Modified: Sat, 22 Jul 2017 02:17:05 GMT  
		Size: 819.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c513f1b9e479d2cd4530bdf9438391b50f21f2789ecf671e5a41903fe846e2`  
		Last Modified: Sat, 22 Jul 2017 02:17:05 GMT  
		Size: 1.5 KB (1546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe51b54368ba2040fbaa01f518d4ada893fbc115af9db98f814236278a8072f`  
		Last Modified: Sat, 22 Jul 2017 02:17:05 GMT  
		Size: 2.6 KB (2574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
