<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jenkins`

-	[`jenkins:latest`](#jenkinslatest)
-	[`jenkins:2.46.1`](#jenkins2461)
-	[`jenkins:alpine`](#jenkinsalpine)
-	[`jenkins:2.46.1-alpine`](#jenkins2461-alpine)

## `jenkins:latest`

```console
$ docker pull jenkins@sha256:c0cac51cbd3af8947e105ec15aa4bcdbf0bd267984d8e7be5663b5551bbc5f4b
```

-	Platforms:
	-	linux; amd64

### `jenkins:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.7 MB (312699982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04c1dd56a3d86c04272fbb66bdb1df5c2227b06769c80254c7678569acdf49b0`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:13:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:47:46 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:47:47 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:47:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:48:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 21 Mar 2017 22:48:05 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:48:05 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:48:06 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:49:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:49:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:13:27 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 21:13:27 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Wed, 22 Mar 2017 21:13:27 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Wed, 22 Mar 2017 21:13:28 GMT
ARG user=jenkins
# Wed, 22 Mar 2017 21:13:28 GMT
ARG group=jenkins
# Wed, 22 Mar 2017 21:13:29 GMT
ARG uid=1000
# Wed, 22 Mar 2017 21:13:29 GMT
ARG gid=1000
# Wed, 22 Mar 2017 21:13:30 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Wed, 22 Mar 2017 21:13:31 GMT
VOLUME [/var/jenkins_home]
# Wed, 22 Mar 2017 21:13:32 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Mon, 03 Apr 2017 17:22:56 GMT
ENV TINI_VERSION=0.14.0
# Mon, 03 Apr 2017 17:22:56 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Mon, 03 Apr 2017 17:23:00 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Mon, 03 Apr 2017 17:23:01 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Mon, 03 Apr 2017 17:23:02 GMT
ARG JENKINS_VERSION
# Mon, 03 Apr 2017 17:23:02 GMT
ENV JENKINS_VERSION=2.46.1
# Mon, 03 Apr 2017 17:23:03 GMT
ARG JENKINS_SHA=33a3f4d983c6188a332291e1d974afa0a2ee96a0ae3cb6dd4f2098086525f9f1
# Mon, 03 Apr 2017 17:23:04 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.46.1/jenkins-war-2.46.1.war
# Mon, 03 Apr 2017 17:23:09 GMT
# ARGS: JENKINS_SHA=33a3f4d983c6188a332291e1d974afa0a2ee96a0ae3cb6dd4f2098086525f9f1 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.46.1/jenkins-war-2.46.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Mon, 03 Apr 2017 17:23:09 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Mon, 03 Apr 2017 17:23:11 GMT
# ARGS: JENKINS_SHA=33a3f4d983c6188a332291e1d974afa0a2ee96a0ae3cb6dd4f2098086525f9f1 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.46.1/jenkins-war-2.46.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Mon, 03 Apr 2017 17:23:12 GMT
EXPOSE 8080/tcp
# Mon, 03 Apr 2017 17:23:12 GMT
EXPOSE 50000/tcp
# Mon, 03 Apr 2017 17:23:13 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Mon, 03 Apr 2017 17:23:14 GMT
USER [jenkins]
# Mon, 03 Apr 2017 17:23:15 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Mon, 03 Apr 2017 17:23:16 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Mon, 03 Apr 2017 17:23:16 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Mon, 03 Apr 2017 17:23:17 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Mon, 03 Apr 2017 17:23:18 GMT
COPY file:2a6a3e16202b8dddab5edef50f712c16fe8f6980f5aea80c8c76b5db4f903913 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61641c845ed10c60ee9ec652f04ed75c16c4defef698b5d8ce3162c275d85f1`  
		Last Modified: Wed, 22 Mar 2017 17:41:18 GMT  
		Size: 593.4 KB (593432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cce4cca5b76b6a22d24703b3337fd31d23a3e1d502918300f6c1fbf9a26bac58`  
		Last Modified: Wed, 22 Mar 2017 17:41:18 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6826227500b0c71a7f0f4f9f733dbee91bff2e153ae682e9586ec1d5e6e1d34f`  
		Last Modified: Wed, 22 Mar 2017 17:41:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03b117ffd91e23430bf3c72c8e1f84a2be955c1277ddb8b836f226b5be3a3fb`  
		Last Modified: Wed, 22 Mar 2017 17:41:55 GMT  
		Size: 130.4 MB (130386158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:821a1547b43512b5d418584e755787a6efabe608671646a24b1ea5b8cb3b2fbf`  
		Last Modified: Wed, 22 Mar 2017 17:41:14 GMT  
		Size: 289.1 KB (289053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a6de0834e7aeb800c1c6cf7801b17e4aed54b39502162909e1eed62899b3d1`  
		Last Modified: Fri, 24 Mar 2017 02:14:02 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:526712254168ba3ee97e13c17039d48b7b0775210f5f457cea396be900697d15`  
		Last Modified: Fri, 24 Mar 2017 02:14:01 GMT  
		Size: 4.4 KB (4401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a721548067e89e2f457e3b8b6eb582604ff33ad5fd1f3e5d591eb8c2f95a0b67`  
		Last Modified: Fri, 24 Mar 2017 02:14:00 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d481c856b92843104dceb900f95ca6c43caa197524a4abf219ae9ce38aa5d34`  
		Last Modified: Mon, 03 Apr 2017 17:24:04 GMT  
		Size: 344.9 KB (344858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5704c47b503fd1b5c13189b76dcdf55baefee417a8fd8c137d17cfaf3da9d900`  
		Last Modified: Mon, 03 Apr 2017 17:24:03 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c17b474abcc72083f473d55e9158addad9232812a5b2e6b63d688aa3ab7f4a7`  
		Last Modified: Mon, 03 Apr 2017 17:24:09 GMT  
		Size: 68.5 MB (68457724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9d8cf24d6e632702ee3915f8bd05ade5bf91b768d659538f11578799471ba0`  
		Last Modified: Mon, 03 Apr 2017 17:24:01 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63cb6d0c32770f6369203db809feff7a9f47ec7691b23a52f9b72c927a6cf26`  
		Last Modified: Mon, 03 Apr 2017 17:24:01 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f96434e2b4baef4a6515766240400569fbec1a1e81f14ad59c17dafeb64093`  
		Last Modified: Mon, 03 Apr 2017 17:24:01 GMT  
		Size: 822.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb87adb1c38f71a33a58becc2e9181fa95b33b1b87331ea5d4fcf7f961d5bcb8`  
		Last Modified: Mon, 03 Apr 2017 17:24:01 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f7e10beebfe34cd72d12bcd51d19519fdadb0e556fd39c3511ef2f28349877`  
		Last Modified: Mon, 03 Apr 2017 17:24:01 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.46.1`

```console
$ docker pull jenkins@sha256:c0cac51cbd3af8947e105ec15aa4bcdbf0bd267984d8e7be5663b5551bbc5f4b
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.46.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.7 MB (312699982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04c1dd56a3d86c04272fbb66bdb1df5c2227b06769c80254c7678569acdf49b0`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:13:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:47:46 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:47:47 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:47:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:48:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 21 Mar 2017 22:48:05 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:48:05 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:48:06 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:49:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:49:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:13:27 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 21:13:27 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Wed, 22 Mar 2017 21:13:27 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Wed, 22 Mar 2017 21:13:28 GMT
ARG user=jenkins
# Wed, 22 Mar 2017 21:13:28 GMT
ARG group=jenkins
# Wed, 22 Mar 2017 21:13:29 GMT
ARG uid=1000
# Wed, 22 Mar 2017 21:13:29 GMT
ARG gid=1000
# Wed, 22 Mar 2017 21:13:30 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Wed, 22 Mar 2017 21:13:31 GMT
VOLUME [/var/jenkins_home]
# Wed, 22 Mar 2017 21:13:32 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Mon, 03 Apr 2017 17:22:56 GMT
ENV TINI_VERSION=0.14.0
# Mon, 03 Apr 2017 17:22:56 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Mon, 03 Apr 2017 17:23:00 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Mon, 03 Apr 2017 17:23:01 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Mon, 03 Apr 2017 17:23:02 GMT
ARG JENKINS_VERSION
# Mon, 03 Apr 2017 17:23:02 GMT
ENV JENKINS_VERSION=2.46.1
# Mon, 03 Apr 2017 17:23:03 GMT
ARG JENKINS_SHA=33a3f4d983c6188a332291e1d974afa0a2ee96a0ae3cb6dd4f2098086525f9f1
# Mon, 03 Apr 2017 17:23:04 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.46.1/jenkins-war-2.46.1.war
# Mon, 03 Apr 2017 17:23:09 GMT
# ARGS: JENKINS_SHA=33a3f4d983c6188a332291e1d974afa0a2ee96a0ae3cb6dd4f2098086525f9f1 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.46.1/jenkins-war-2.46.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Mon, 03 Apr 2017 17:23:09 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Mon, 03 Apr 2017 17:23:11 GMT
# ARGS: JENKINS_SHA=33a3f4d983c6188a332291e1d974afa0a2ee96a0ae3cb6dd4f2098086525f9f1 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.46.1/jenkins-war-2.46.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Mon, 03 Apr 2017 17:23:12 GMT
EXPOSE 8080/tcp
# Mon, 03 Apr 2017 17:23:12 GMT
EXPOSE 50000/tcp
# Mon, 03 Apr 2017 17:23:13 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Mon, 03 Apr 2017 17:23:14 GMT
USER [jenkins]
# Mon, 03 Apr 2017 17:23:15 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Mon, 03 Apr 2017 17:23:16 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Mon, 03 Apr 2017 17:23:16 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Mon, 03 Apr 2017 17:23:17 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Mon, 03 Apr 2017 17:23:18 GMT
COPY file:2a6a3e16202b8dddab5edef50f712c16fe8f6980f5aea80c8c76b5db4f903913 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61641c845ed10c60ee9ec652f04ed75c16c4defef698b5d8ce3162c275d85f1`  
		Last Modified: Wed, 22 Mar 2017 17:41:18 GMT  
		Size: 593.4 KB (593432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cce4cca5b76b6a22d24703b3337fd31d23a3e1d502918300f6c1fbf9a26bac58`  
		Last Modified: Wed, 22 Mar 2017 17:41:18 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6826227500b0c71a7f0f4f9f733dbee91bff2e153ae682e9586ec1d5e6e1d34f`  
		Last Modified: Wed, 22 Mar 2017 17:41:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03b117ffd91e23430bf3c72c8e1f84a2be955c1277ddb8b836f226b5be3a3fb`  
		Last Modified: Wed, 22 Mar 2017 17:41:55 GMT  
		Size: 130.4 MB (130386158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:821a1547b43512b5d418584e755787a6efabe608671646a24b1ea5b8cb3b2fbf`  
		Last Modified: Wed, 22 Mar 2017 17:41:14 GMT  
		Size: 289.1 KB (289053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a6de0834e7aeb800c1c6cf7801b17e4aed54b39502162909e1eed62899b3d1`  
		Last Modified: Fri, 24 Mar 2017 02:14:02 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:526712254168ba3ee97e13c17039d48b7b0775210f5f457cea396be900697d15`  
		Last Modified: Fri, 24 Mar 2017 02:14:01 GMT  
		Size: 4.4 KB (4401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a721548067e89e2f457e3b8b6eb582604ff33ad5fd1f3e5d591eb8c2f95a0b67`  
		Last Modified: Fri, 24 Mar 2017 02:14:00 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d481c856b92843104dceb900f95ca6c43caa197524a4abf219ae9ce38aa5d34`  
		Last Modified: Mon, 03 Apr 2017 17:24:04 GMT  
		Size: 344.9 KB (344858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5704c47b503fd1b5c13189b76dcdf55baefee417a8fd8c137d17cfaf3da9d900`  
		Last Modified: Mon, 03 Apr 2017 17:24:03 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c17b474abcc72083f473d55e9158addad9232812a5b2e6b63d688aa3ab7f4a7`  
		Last Modified: Mon, 03 Apr 2017 17:24:09 GMT  
		Size: 68.5 MB (68457724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9d8cf24d6e632702ee3915f8bd05ade5bf91b768d659538f11578799471ba0`  
		Last Modified: Mon, 03 Apr 2017 17:24:01 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63cb6d0c32770f6369203db809feff7a9f47ec7691b23a52f9b72c927a6cf26`  
		Last Modified: Mon, 03 Apr 2017 17:24:01 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f96434e2b4baef4a6515766240400569fbec1a1e81f14ad59c17dafeb64093`  
		Last Modified: Mon, 03 Apr 2017 17:24:01 GMT  
		Size: 822.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb87adb1c38f71a33a58becc2e9181fa95b33b1b87331ea5d4fcf7f961d5bcb8`  
		Last Modified: Mon, 03 Apr 2017 17:24:01 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f7e10beebfe34cd72d12bcd51d19519fdadb0e556fd39c3511ef2f28349877`  
		Last Modified: Mon, 03 Apr 2017 17:24:01 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:alpine`

```console
$ docker pull jenkins@sha256:81b3b143fcaf3e798521e6a27483e96ce9371e0c8933e59a24cd87a91a2c9191
```

-	Platforms:
	-	linux; amd64

### `jenkins:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.9 MB (164856963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b3e911375dd1facad2814c139d63ac42131068b65e9df13f963419d839af157`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 07 Mar 2017 01:04:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 18:30:06 GMT
RUN apk add --no-cache git openssh-client curl unzip bash ttf-dejavu coreutils
# Tue, 07 Mar 2017 18:30:07 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Tue, 07 Mar 2017 18:30:08 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Tue, 07 Mar 2017 18:30:08 GMT
ARG user=jenkins
# Tue, 07 Mar 2017 18:30:09 GMT
ARG group=jenkins
# Tue, 07 Mar 2017 18:30:10 GMT
ARG uid=1000
# Tue, 07 Mar 2017 18:30:10 GMT
ARG gid=1000
# Tue, 07 Mar 2017 18:30:12 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN addgroup -g ${gid} ${group}     && adduser -h "$JENKINS_HOME" -u ${uid} -G ${group} -s /bin/bash -D ${user}
# Tue, 07 Mar 2017 18:30:12 GMT
VOLUME [/var/jenkins_home]
# Tue, 07 Mar 2017 18:30:13 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Mon, 03 Apr 2017 17:23:20 GMT
ENV TINI_VERSION=0.14.0
# Mon, 03 Apr 2017 17:23:20 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Mon, 03 Apr 2017 17:23:23 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Mon, 03 Apr 2017 17:23:24 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Mon, 03 Apr 2017 17:23:24 GMT
ARG JENKINS_VERSION
# Mon, 03 Apr 2017 17:23:25 GMT
ENV JENKINS_VERSION=2.46.1
# Mon, 03 Apr 2017 17:23:26 GMT
ARG JENKINS_SHA=33a3f4d983c6188a332291e1d974afa0a2ee96a0ae3cb6dd4f2098086525f9f1
# Mon, 03 Apr 2017 17:23:26 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.46.1/jenkins-war-2.46.1.war
# Mon, 03 Apr 2017 17:23:31 GMT
# ARGS: JENKINS_SHA=33a3f4d983c6188a332291e1d974afa0a2ee96a0ae3cb6dd4f2098086525f9f1 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.46.1/jenkins-war-2.46.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Mon, 03 Apr 2017 17:23:32 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Mon, 03 Apr 2017 17:23:33 GMT
# ARGS: JENKINS_SHA=33a3f4d983c6188a332291e1d974afa0a2ee96a0ae3cb6dd4f2098086525f9f1 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.46.1/jenkins-war-2.46.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Mon, 03 Apr 2017 17:23:34 GMT
EXPOSE 8080/tcp
# Mon, 03 Apr 2017 17:23:34 GMT
EXPOSE 50000/tcp
# Mon, 03 Apr 2017 17:23:35 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Mon, 03 Apr 2017 17:23:35 GMT
USER [jenkins]
# Mon, 03 Apr 2017 17:23:36 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Mon, 03 Apr 2017 17:23:37 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Mon, 03 Apr 2017 17:23:38 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Mon, 03 Apr 2017 17:23:39 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Mon, 03 Apr 2017 17:23:39 GMT
COPY file:2a6a3e16202b8dddab5edef50f712c16fe8f6980f5aea80c8c76b5db4f903913 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e00029ebfe30f96f53c89cd3c838b89876ee212cbb545e8ac5c70698c1818f1`  
		Last Modified: Tue, 07 Mar 2017 01:12:59 GMT  
		Size: 69.6 MB (69564916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1839d7896efa48fb1945d2f1bbd58124ca9bb796536442ee631733c0f2c0298b`  
		Last Modified: Tue, 07 Mar 2017 18:31:05 GMT  
		Size: 24.6 MB (24575751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750cfd608edc68af55e0dc5130f9e4113d6ab1b48c7d0dbc0987f7f44cf1bd39`  
		Last Modified: Tue, 07 Mar 2017 18:30:57 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235d8aedfa97c29f7b116a9505b040f623d1199641b07ea38aa2e1f222c8b9a6`  
		Last Modified: Tue, 07 Mar 2017 18:30:57 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2689a2e2e674428d140f9dc8bb043296bab4bfc40992832187e37e3f8edc97bc`  
		Last Modified: Mon, 03 Apr 2017 17:24:56 GMT  
		Size: 344.9 KB (344859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453b244504060f89f3ff1c648fca4a25e8d1c0c435b02d5c6722ce0796073cd9`  
		Last Modified: Mon, 03 Apr 2017 17:24:56 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1880dfef684d59bdd54259539ac429704c69413b2c4f79ac259776087778df08`  
		Last Modified: Mon, 03 Apr 2017 17:25:02 GMT  
		Size: 68.5 MB (68457748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c5169243bb3f471557abe6e3cd7cf119aa01d29952df995f34f4636eca31bd2`  
		Last Modified: Mon, 03 Apr 2017 17:24:54 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15697554042290da6898e26ed4d08a22aa0a4b363b1d5ed2fd8ab6bcc7d44b3b`  
		Last Modified: Mon, 03 Apr 2017 17:24:54 GMT  
		Size: 1.4 KB (1412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187f2153f10df924f608271812554dbe760f9c6287bcacb0242e2df19463a581`  
		Last Modified: Mon, 03 Apr 2017 17:24:54 GMT  
		Size: 812.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bf6208910cbc16615fa073b5e4b79aa05fa21575f11b746b572c5ff52ef332`  
		Last Modified: Mon, 03 Apr 2017 17:24:54 GMT  
		Size: 1.5 KB (1514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318999760129cb27fe18fa6a37ef9d828f1f79886bb5f9609e4efebf3253ad3f`  
		Last Modified: Mon, 03 Apr 2017 17:24:54 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.46.1-alpine`

```console
$ docker pull jenkins@sha256:81b3b143fcaf3e798521e6a27483e96ce9371e0c8933e59a24cd87a91a2c9191
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.46.1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.9 MB (164856963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b3e911375dd1facad2814c139d63ac42131068b65e9df13f963419d839af157`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 07 Mar 2017 01:04:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 18:30:06 GMT
RUN apk add --no-cache git openssh-client curl unzip bash ttf-dejavu coreutils
# Tue, 07 Mar 2017 18:30:07 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Tue, 07 Mar 2017 18:30:08 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Tue, 07 Mar 2017 18:30:08 GMT
ARG user=jenkins
# Tue, 07 Mar 2017 18:30:09 GMT
ARG group=jenkins
# Tue, 07 Mar 2017 18:30:10 GMT
ARG uid=1000
# Tue, 07 Mar 2017 18:30:10 GMT
ARG gid=1000
# Tue, 07 Mar 2017 18:30:12 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN addgroup -g ${gid} ${group}     && adduser -h "$JENKINS_HOME" -u ${uid} -G ${group} -s /bin/bash -D ${user}
# Tue, 07 Mar 2017 18:30:12 GMT
VOLUME [/var/jenkins_home]
# Tue, 07 Mar 2017 18:30:13 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Mon, 03 Apr 2017 17:23:20 GMT
ENV TINI_VERSION=0.14.0
# Mon, 03 Apr 2017 17:23:20 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Mon, 03 Apr 2017 17:23:23 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Mon, 03 Apr 2017 17:23:24 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Mon, 03 Apr 2017 17:23:24 GMT
ARG JENKINS_VERSION
# Mon, 03 Apr 2017 17:23:25 GMT
ENV JENKINS_VERSION=2.46.1
# Mon, 03 Apr 2017 17:23:26 GMT
ARG JENKINS_SHA=33a3f4d983c6188a332291e1d974afa0a2ee96a0ae3cb6dd4f2098086525f9f1
# Mon, 03 Apr 2017 17:23:26 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.46.1/jenkins-war-2.46.1.war
# Mon, 03 Apr 2017 17:23:31 GMT
# ARGS: JENKINS_SHA=33a3f4d983c6188a332291e1d974afa0a2ee96a0ae3cb6dd4f2098086525f9f1 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.46.1/jenkins-war-2.46.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Mon, 03 Apr 2017 17:23:32 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Mon, 03 Apr 2017 17:23:33 GMT
# ARGS: JENKINS_SHA=33a3f4d983c6188a332291e1d974afa0a2ee96a0ae3cb6dd4f2098086525f9f1 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.46.1/jenkins-war-2.46.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Mon, 03 Apr 2017 17:23:34 GMT
EXPOSE 8080/tcp
# Mon, 03 Apr 2017 17:23:34 GMT
EXPOSE 50000/tcp
# Mon, 03 Apr 2017 17:23:35 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Mon, 03 Apr 2017 17:23:35 GMT
USER [jenkins]
# Mon, 03 Apr 2017 17:23:36 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Mon, 03 Apr 2017 17:23:37 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Mon, 03 Apr 2017 17:23:38 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Mon, 03 Apr 2017 17:23:39 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Mon, 03 Apr 2017 17:23:39 GMT
COPY file:2a6a3e16202b8dddab5edef50f712c16fe8f6980f5aea80c8c76b5db4f903913 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e00029ebfe30f96f53c89cd3c838b89876ee212cbb545e8ac5c70698c1818f1`  
		Last Modified: Tue, 07 Mar 2017 01:12:59 GMT  
		Size: 69.6 MB (69564916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1839d7896efa48fb1945d2f1bbd58124ca9bb796536442ee631733c0f2c0298b`  
		Last Modified: Tue, 07 Mar 2017 18:31:05 GMT  
		Size: 24.6 MB (24575751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750cfd608edc68af55e0dc5130f9e4113d6ab1b48c7d0dbc0987f7f44cf1bd39`  
		Last Modified: Tue, 07 Mar 2017 18:30:57 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235d8aedfa97c29f7b116a9505b040f623d1199641b07ea38aa2e1f222c8b9a6`  
		Last Modified: Tue, 07 Mar 2017 18:30:57 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2689a2e2e674428d140f9dc8bb043296bab4bfc40992832187e37e3f8edc97bc`  
		Last Modified: Mon, 03 Apr 2017 17:24:56 GMT  
		Size: 344.9 KB (344859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453b244504060f89f3ff1c648fca4a25e8d1c0c435b02d5c6722ce0796073cd9`  
		Last Modified: Mon, 03 Apr 2017 17:24:56 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1880dfef684d59bdd54259539ac429704c69413b2c4f79ac259776087778df08`  
		Last Modified: Mon, 03 Apr 2017 17:25:02 GMT  
		Size: 68.5 MB (68457748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c5169243bb3f471557abe6e3cd7cf119aa01d29952df995f34f4636eca31bd2`  
		Last Modified: Mon, 03 Apr 2017 17:24:54 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15697554042290da6898e26ed4d08a22aa0a4b363b1d5ed2fd8ab6bcc7d44b3b`  
		Last Modified: Mon, 03 Apr 2017 17:24:54 GMT  
		Size: 1.4 KB (1412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187f2153f10df924f608271812554dbe760f9c6287bcacb0242e2df19463a581`  
		Last Modified: Mon, 03 Apr 2017 17:24:54 GMT  
		Size: 812.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bf6208910cbc16615fa073b5e4b79aa05fa21575f11b746b572c5ff52ef332`  
		Last Modified: Mon, 03 Apr 2017 17:24:54 GMT  
		Size: 1.5 KB (1514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318999760129cb27fe18fa6a37ef9d828f1f79886bb5f9609e4efebf3253ad3f`  
		Last Modified: Mon, 03 Apr 2017 17:24:54 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
