<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jenkins`

-	[`jenkins:latest`](#jenkinslatest)
-	[`jenkins:2.32.1`](#jenkins2321)
-	[`jenkins:alpine`](#jenkinsalpine)
-	[`jenkins:2.32.1-alpine`](#jenkins2321-alpine)

## `jenkins:latest`

```console
$ docker pull jenkins@sha256:a71f0957979d360c80c1be258e9f5bb0de66a27ae072c4d1e49f569fc83538a9
```

-	Platforms:
	-	linux; amd64

### `jenkins:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.7 MB (313673052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e11ceb27c34e3cb01f0ebb0b7e957cebbe03782242917b6fc582961feea21bfb`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:54:12 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:54:12 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:54:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:54:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:54:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Dec 2016 16:41:40 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 16:41:40 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Mon, 19 Dec 2016 16:41:40 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Mon, 19 Dec 2016 16:41:41 GMT
ARG user=jenkins
# Mon, 19 Dec 2016 16:41:41 GMT
ARG group=jenkins
# Mon, 19 Dec 2016 16:41:41 GMT
ARG uid=1000
# Mon, 19 Dec 2016 16:41:41 GMT
ARG gid=1000
# Mon, 19 Dec 2016 16:41:42 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Mon, 19 Dec 2016 16:41:43 GMT
VOLUME [/var/jenkins_home]
# Mon, 19 Dec 2016 16:41:44 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Tue, 27 Dec 2016 17:50:41 GMT
ENV TINI_VERSION=0.13.1
# Tue, 27 Dec 2016 17:50:41 GMT
ENV TINI_SHA=0f78709a0e3c80e7c9119fdc32c2bc0f4cfc4cab
# Tue, 27 Dec 2016 17:50:44 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Tue, 27 Dec 2016 17:50:54 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Tue, 27 Dec 2016 17:50:54 GMT
ARG JENKINS_VERSION
# Tue, 27 Dec 2016 17:50:55 GMT
ENV JENKINS_VERSION=2.32.1
# Tue, 27 Dec 2016 17:50:55 GMT
ARG JENKINS_SHA=1b65dc498ba7ab1f5cce64200b920a8716d90834
# Tue, 27 Dec 2016 17:50:56 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.1/jenkins-war-2.32.1.war
# Tue, 27 Dec 2016 17:51:01 GMT
# ARGS: JENKINS_SHA=1b65dc498ba7ab1f5cce64200b920a8716d90834 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.1/jenkins-war-2.32.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Tue, 27 Dec 2016 17:51:09 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Tue, 27 Dec 2016 17:51:10 GMT
# ARGS: JENKINS_SHA=1b65dc498ba7ab1f5cce64200b920a8716d90834 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.1/jenkins-war-2.32.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Tue, 27 Dec 2016 17:51:11 GMT
EXPOSE 8080/tcp
# Tue, 27 Dec 2016 17:51:11 GMT
EXPOSE 50000/tcp
# Tue, 27 Dec 2016 17:51:12 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Tue, 27 Dec 2016 17:51:13 GMT
USER [jenkins]
# Tue, 27 Dec 2016 17:51:14 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Tue, 27 Dec 2016 17:51:14 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Tue, 27 Dec 2016 17:51:15 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Tue, 27 Dec 2016 17:51:16 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Tue, 27 Dec 2016 17:51:17 GMT
COPY file:2a6a3e16202b8dddab5edef50f712c16fe8f6980f5aea80c8c76b5db4f903913 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6944bfb7182c4b1f546a4bcd888d00bdb92bb016bde7d243af3712549534d9`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 593.4 KB (593384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3521f2f45ed2f586ef5e6423f3dc3f4e36f7460007c2827b827131d2254ecc44`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2f0d9b5f90c348276759c85fae2d52adae563fad53786e8e99862eb3aeab90`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cedcf6d25273f360503909554028b54a92d914805ed9d834cbe31e8ebfeb923`  
		Last Modified: Wed, 14 Dec 2016 03:12:30 GMT  
		Size: 130.1 MB (130108711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f99da7583d58b782d9a4c14ef448bf6f6771e15a7975a2450111ed0a34b381`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 284.2 KB (284180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b1a4e887f7e23a8e1779f5255c444b10f67f891ac9ad5ad4e70018891129a2d`  
		Last Modified: Mon, 19 Dec 2016 23:03:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec60c180ba4747a62ba06cb531a84da776b0da62b5eaeaeeacaad308633d65d5`  
		Last Modified: Mon, 19 Dec 2016 23:03:28 GMT  
		Size: 4.4 KB (4392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c5058508d7ea551e989ebf62885498e3e2bad406383c1299fa4da7688b4c89`  
		Last Modified: Mon, 19 Dec 2016 23:03:29 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f5f89b9fbcecad3892bce8d44bd46f473091836677cfac5fda4f1cdb250e02`  
		Last Modified: Tue, 27 Dec 2016 17:51:53 GMT  
		Size: 344.9 KB (344860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9de1ae7cbb67f67dabed9bbbcbd744640f086791049773d50c09ec31a766f1`  
		Last Modified: Tue, 27 Dec 2016 17:51:52 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9281b89f5bbbe778175043de6c1bcfa717770a49f32643da9fddaf0442ef3ed`  
		Last Modified: Tue, 27 Dec 2016 17:51:58 GMT  
		Size: 69.9 MB (69934807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b525bc7c3682495f78825ba6f44e264494a02731c2b3d3f8ddb5d4e44771e9`  
		Last Modified: Tue, 27 Dec 2016 17:51:50 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba52a961890821bbd6675468f3bae9c9e530ca5046d9ab1465dbfff21348b47`  
		Last Modified: Tue, 27 Dec 2016 17:51:49 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1902c30f85089956786c9a244b3490082cbc076c26b4d7602c02c748b15b5747`  
		Last Modified: Tue, 27 Dec 2016 17:51:50 GMT  
		Size: 822.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e732b3b72155f05dd8a2f90a4134c53e0adf6a76f3d3c79f51f51623861fc0`  
		Last Modified: Tue, 27 Dec 2016 17:51:49 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fae69e3ea0374eac5f5afb8aa9dd5d28e35d38ecd9e21e0470554909123df07`  
		Last Modified: Tue, 27 Dec 2016 17:51:50 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.32.1`

```console
$ docker pull jenkins@sha256:a71f0957979d360c80c1be258e9f5bb0de66a27ae072c4d1e49f569fc83538a9
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.32.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.7 MB (313673052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e11ceb27c34e3cb01f0ebb0b7e957cebbe03782242917b6fc582961feea21bfb`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:54:12 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:54:12 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:54:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:54:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:54:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Dec 2016 16:41:40 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 16:41:40 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Mon, 19 Dec 2016 16:41:40 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Mon, 19 Dec 2016 16:41:41 GMT
ARG user=jenkins
# Mon, 19 Dec 2016 16:41:41 GMT
ARG group=jenkins
# Mon, 19 Dec 2016 16:41:41 GMT
ARG uid=1000
# Mon, 19 Dec 2016 16:41:41 GMT
ARG gid=1000
# Mon, 19 Dec 2016 16:41:42 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Mon, 19 Dec 2016 16:41:43 GMT
VOLUME [/var/jenkins_home]
# Mon, 19 Dec 2016 16:41:44 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Tue, 27 Dec 2016 17:50:41 GMT
ENV TINI_VERSION=0.13.1
# Tue, 27 Dec 2016 17:50:41 GMT
ENV TINI_SHA=0f78709a0e3c80e7c9119fdc32c2bc0f4cfc4cab
# Tue, 27 Dec 2016 17:50:44 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Tue, 27 Dec 2016 17:50:54 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Tue, 27 Dec 2016 17:50:54 GMT
ARG JENKINS_VERSION
# Tue, 27 Dec 2016 17:50:55 GMT
ENV JENKINS_VERSION=2.32.1
# Tue, 27 Dec 2016 17:50:55 GMT
ARG JENKINS_SHA=1b65dc498ba7ab1f5cce64200b920a8716d90834
# Tue, 27 Dec 2016 17:50:56 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.1/jenkins-war-2.32.1.war
# Tue, 27 Dec 2016 17:51:01 GMT
# ARGS: JENKINS_SHA=1b65dc498ba7ab1f5cce64200b920a8716d90834 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.1/jenkins-war-2.32.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Tue, 27 Dec 2016 17:51:09 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Tue, 27 Dec 2016 17:51:10 GMT
# ARGS: JENKINS_SHA=1b65dc498ba7ab1f5cce64200b920a8716d90834 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.1/jenkins-war-2.32.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Tue, 27 Dec 2016 17:51:11 GMT
EXPOSE 8080/tcp
# Tue, 27 Dec 2016 17:51:11 GMT
EXPOSE 50000/tcp
# Tue, 27 Dec 2016 17:51:12 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Tue, 27 Dec 2016 17:51:13 GMT
USER [jenkins]
# Tue, 27 Dec 2016 17:51:14 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Tue, 27 Dec 2016 17:51:14 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Tue, 27 Dec 2016 17:51:15 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Tue, 27 Dec 2016 17:51:16 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Tue, 27 Dec 2016 17:51:17 GMT
COPY file:2a6a3e16202b8dddab5edef50f712c16fe8f6980f5aea80c8c76b5db4f903913 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6944bfb7182c4b1f546a4bcd888d00bdb92bb016bde7d243af3712549534d9`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 593.4 KB (593384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3521f2f45ed2f586ef5e6423f3dc3f4e36f7460007c2827b827131d2254ecc44`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2f0d9b5f90c348276759c85fae2d52adae563fad53786e8e99862eb3aeab90`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cedcf6d25273f360503909554028b54a92d914805ed9d834cbe31e8ebfeb923`  
		Last Modified: Wed, 14 Dec 2016 03:12:30 GMT  
		Size: 130.1 MB (130108711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f99da7583d58b782d9a4c14ef448bf6f6771e15a7975a2450111ed0a34b381`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 284.2 KB (284180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b1a4e887f7e23a8e1779f5255c444b10f67f891ac9ad5ad4e70018891129a2d`  
		Last Modified: Mon, 19 Dec 2016 23:03:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec60c180ba4747a62ba06cb531a84da776b0da62b5eaeaeeacaad308633d65d5`  
		Last Modified: Mon, 19 Dec 2016 23:03:28 GMT  
		Size: 4.4 KB (4392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c5058508d7ea551e989ebf62885498e3e2bad406383c1299fa4da7688b4c89`  
		Last Modified: Mon, 19 Dec 2016 23:03:29 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f5f89b9fbcecad3892bce8d44bd46f473091836677cfac5fda4f1cdb250e02`  
		Last Modified: Tue, 27 Dec 2016 17:51:53 GMT  
		Size: 344.9 KB (344860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9de1ae7cbb67f67dabed9bbbcbd744640f086791049773d50c09ec31a766f1`  
		Last Modified: Tue, 27 Dec 2016 17:51:52 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9281b89f5bbbe778175043de6c1bcfa717770a49f32643da9fddaf0442ef3ed`  
		Last Modified: Tue, 27 Dec 2016 17:51:58 GMT  
		Size: 69.9 MB (69934807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b525bc7c3682495f78825ba6f44e264494a02731c2b3d3f8ddb5d4e44771e9`  
		Last Modified: Tue, 27 Dec 2016 17:51:50 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba52a961890821bbd6675468f3bae9c9e530ca5046d9ab1465dbfff21348b47`  
		Last Modified: Tue, 27 Dec 2016 17:51:49 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1902c30f85089956786c9a244b3490082cbc076c26b4d7602c02c748b15b5747`  
		Last Modified: Tue, 27 Dec 2016 17:51:50 GMT  
		Size: 822.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e732b3b72155f05dd8a2f90a4134c53e0adf6a76f3d3c79f51f51623861fc0`  
		Last Modified: Tue, 27 Dec 2016 17:51:49 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fae69e3ea0374eac5f5afb8aa9dd5d28e35d38ecd9e21e0470554909123df07`  
		Last Modified: Tue, 27 Dec 2016 17:51:50 GMT  
		Size: 2.2 KB (2182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:alpine`

```console
$ docker pull jenkins@sha256:5b8975ed078d3ca23e0ccd0bac27606a6598b7164b79a938bf388ee70bfa7902
```

-	Platforms:
	-	linux; amd64

### `jenkins:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.2 MB (145214166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0c0a437b20246949ddb2f07f35ce02f002ee012c7f143b295ed0473108f6d9`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 27 Dec 2016 18:38:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:36 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:37 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:15:24 GMT
RUN apk add --no-cache git openssh-client curl unzip bash ttf-dejavu coreutils
# Tue, 27 Dec 2016 22:15:24 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Tue, 27 Dec 2016 22:15:25 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Tue, 27 Dec 2016 22:15:26 GMT
ARG user=jenkins
# Tue, 27 Dec 2016 22:15:26 GMT
ARG group=jenkins
# Tue, 27 Dec 2016 22:15:27 GMT
ARG uid=1000
# Tue, 27 Dec 2016 22:15:27 GMT
ARG gid=1000
# Tue, 27 Dec 2016 22:15:41 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN addgroup -g ${gid} ${group}     && adduser -h "$JENKINS_HOME" -u ${uid} -G ${group} -s /bin/bash -D ${user}
# Tue, 27 Dec 2016 22:15:41 GMT
VOLUME [/var/jenkins_home]
# Tue, 27 Dec 2016 22:15:42 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Tue, 27 Dec 2016 22:15:54 GMT
ENV TINI_VERSION=0.13.1
# Tue, 27 Dec 2016 22:15:54 GMT
ENV TINI_SHA=0f78709a0e3c80e7c9119fdc32c2bc0f4cfc4cab
# Tue, 27 Dec 2016 22:15:57 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Tue, 27 Dec 2016 22:15:58 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Tue, 27 Dec 2016 22:15:58 GMT
ARG JENKINS_VERSION
# Tue, 27 Dec 2016 22:15:59 GMT
ENV JENKINS_VERSION=2.32.1
# Tue, 27 Dec 2016 22:15:59 GMT
ARG JENKINS_SHA=1b65dc498ba7ab1f5cce64200b920a8716d90834
# Tue, 27 Dec 2016 22:16:00 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.1/jenkins-war-2.32.1.war
# Tue, 27 Dec 2016 22:16:06 GMT
# ARGS: JENKINS_SHA=1b65dc498ba7ab1f5cce64200b920a8716d90834 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.1/jenkins-war-2.32.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Tue, 27 Dec 2016 22:16:06 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Tue, 27 Dec 2016 22:16:07 GMT
# ARGS: JENKINS_SHA=1b65dc498ba7ab1f5cce64200b920a8716d90834 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.1/jenkins-war-2.32.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Tue, 27 Dec 2016 22:16:08 GMT
EXPOSE 8080/tcp
# Tue, 27 Dec 2016 22:16:08 GMT
EXPOSE 50000/tcp
# Tue, 27 Dec 2016 22:16:09 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Tue, 27 Dec 2016 22:16:09 GMT
USER [jenkins]
# Tue, 27 Dec 2016 22:16:10 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Tue, 27 Dec 2016 22:16:11 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Tue, 27 Dec 2016 22:16:11 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Tue, 27 Dec 2016 22:16:12 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Tue, 27 Dec 2016 22:16:12 GMT
COPY file:2a6a3e16202b8dddab5edef50f712c16fe8f6980f5aea80c8c76b5db4f903913 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b294f0e7874be262527ff531f370b2b61652d226fa8c51f9d6a0a46c4d71fdb5`  
		Last Modified: Tue, 27 Dec 2016 18:55:18 GMT  
		Size: 49.4 MB (49355643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c7a703a76aa6c147404452e145b8dff0faa9d71a71d3177c808958fe59d059`  
		Last Modified: Tue, 27 Dec 2016 22:44:37 GMT  
		Size: 23.3 MB (23257314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7834698adf9df129008d4416566ad4c895356e8ce0262db637a9ad233c7874`  
		Last Modified: Tue, 27 Dec 2016 22:44:28 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a70237562e31766cba3db3e715b229c9c15d31006f4012baad9f2800c9d92ed`  
		Last Modified: Tue, 27 Dec 2016 22:44:27 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6981ae9da387f66123143304a28424753610913952347fc5aa6e9403be452dfd`  
		Last Modified: Tue, 27 Dec 2016 22:44:27 GMT  
		Size: 344.9 KB (344859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1948a77ff7cc95ee3dedc6572faf20316004786a391d456fc805b69097c75f5d`  
		Last Modified: Tue, 27 Dec 2016 22:44:27 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb220f57d17868af5440c25f8ff500e4b9d3e0e74a2bc977c283dfb9e2b7f8d`  
		Last Modified: Tue, 27 Dec 2016 22:44:34 GMT  
		Size: 69.9 MB (69934806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0fbbc51c7aeaff2f33a384a1c6eff640e6b83d8ab792f76bb4d526a66715b31`  
		Last Modified: Tue, 27 Dec 2016 22:44:25 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9213c6063546c0ffc6feb00122ff40d183c6136e3faab6c5aaf92376ffe5a0`  
		Last Modified: Tue, 27 Dec 2016 22:44:26 GMT  
		Size: 1.4 KB (1417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0210dfc099bd81edc78819570958f2b9ebb3096a607cd26427f2f7f41cb5898`  
		Last Modified: Tue, 27 Dec 2016 22:44:25 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f19df3931622bf6ef7a3509037a01a5c109b65aa0b77204a8803bc1ef2ebdc9`  
		Last Modified: Tue, 27 Dec 2016 22:44:25 GMT  
		Size: 1.5 KB (1517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eee39234906eb3ac8323151beebf4e62280383e72ed2d25cd7be2c224e74ed5`  
		Last Modified: Tue, 27 Dec 2016 22:44:25 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.32.1-alpine`

```console
$ docker pull jenkins@sha256:5b8975ed078d3ca23e0ccd0bac27606a6598b7164b79a938bf388ee70bfa7902
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.32.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.2 MB (145214166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0c0a437b20246949ddb2f07f35ce02f002ee012c7f143b295ed0473108f6d9`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 27 Dec 2016 18:38:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:36 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:37 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:15:24 GMT
RUN apk add --no-cache git openssh-client curl unzip bash ttf-dejavu coreutils
# Tue, 27 Dec 2016 22:15:24 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Tue, 27 Dec 2016 22:15:25 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Tue, 27 Dec 2016 22:15:26 GMT
ARG user=jenkins
# Tue, 27 Dec 2016 22:15:26 GMT
ARG group=jenkins
# Tue, 27 Dec 2016 22:15:27 GMT
ARG uid=1000
# Tue, 27 Dec 2016 22:15:27 GMT
ARG gid=1000
# Tue, 27 Dec 2016 22:15:41 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN addgroup -g ${gid} ${group}     && adduser -h "$JENKINS_HOME" -u ${uid} -G ${group} -s /bin/bash -D ${user}
# Tue, 27 Dec 2016 22:15:41 GMT
VOLUME [/var/jenkins_home]
# Tue, 27 Dec 2016 22:15:42 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Tue, 27 Dec 2016 22:15:54 GMT
ENV TINI_VERSION=0.13.1
# Tue, 27 Dec 2016 22:15:54 GMT
ENV TINI_SHA=0f78709a0e3c80e7c9119fdc32c2bc0f4cfc4cab
# Tue, 27 Dec 2016 22:15:57 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Tue, 27 Dec 2016 22:15:58 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Tue, 27 Dec 2016 22:15:58 GMT
ARG JENKINS_VERSION
# Tue, 27 Dec 2016 22:15:59 GMT
ENV JENKINS_VERSION=2.32.1
# Tue, 27 Dec 2016 22:15:59 GMT
ARG JENKINS_SHA=1b65dc498ba7ab1f5cce64200b920a8716d90834
# Tue, 27 Dec 2016 22:16:00 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.1/jenkins-war-2.32.1.war
# Tue, 27 Dec 2016 22:16:06 GMT
# ARGS: JENKINS_SHA=1b65dc498ba7ab1f5cce64200b920a8716d90834 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.1/jenkins-war-2.32.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Tue, 27 Dec 2016 22:16:06 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Tue, 27 Dec 2016 22:16:07 GMT
# ARGS: JENKINS_SHA=1b65dc498ba7ab1f5cce64200b920a8716d90834 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.1/jenkins-war-2.32.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Tue, 27 Dec 2016 22:16:08 GMT
EXPOSE 8080/tcp
# Tue, 27 Dec 2016 22:16:08 GMT
EXPOSE 50000/tcp
# Tue, 27 Dec 2016 22:16:09 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Tue, 27 Dec 2016 22:16:09 GMT
USER [jenkins]
# Tue, 27 Dec 2016 22:16:10 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Tue, 27 Dec 2016 22:16:11 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Tue, 27 Dec 2016 22:16:11 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Tue, 27 Dec 2016 22:16:12 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Tue, 27 Dec 2016 22:16:12 GMT
COPY file:2a6a3e16202b8dddab5edef50f712c16fe8f6980f5aea80c8c76b5db4f903913 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b294f0e7874be262527ff531f370b2b61652d226fa8c51f9d6a0a46c4d71fdb5`  
		Last Modified: Tue, 27 Dec 2016 18:55:18 GMT  
		Size: 49.4 MB (49355643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c7a703a76aa6c147404452e145b8dff0faa9d71a71d3177c808958fe59d059`  
		Last Modified: Tue, 27 Dec 2016 22:44:37 GMT  
		Size: 23.3 MB (23257314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7834698adf9df129008d4416566ad4c895356e8ce0262db637a9ad233c7874`  
		Last Modified: Tue, 27 Dec 2016 22:44:28 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a70237562e31766cba3db3e715b229c9c15d31006f4012baad9f2800c9d92ed`  
		Last Modified: Tue, 27 Dec 2016 22:44:27 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6981ae9da387f66123143304a28424753610913952347fc5aa6e9403be452dfd`  
		Last Modified: Tue, 27 Dec 2016 22:44:27 GMT  
		Size: 344.9 KB (344859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1948a77ff7cc95ee3dedc6572faf20316004786a391d456fc805b69097c75f5d`  
		Last Modified: Tue, 27 Dec 2016 22:44:27 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb220f57d17868af5440c25f8ff500e4b9d3e0e74a2bc977c283dfb9e2b7f8d`  
		Last Modified: Tue, 27 Dec 2016 22:44:34 GMT  
		Size: 69.9 MB (69934806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0fbbc51c7aeaff2f33a384a1c6eff640e6b83d8ab792f76bb4d526a66715b31`  
		Last Modified: Tue, 27 Dec 2016 22:44:25 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9213c6063546c0ffc6feb00122ff40d183c6136e3faab6c5aaf92376ffe5a0`  
		Last Modified: Tue, 27 Dec 2016 22:44:26 GMT  
		Size: 1.4 KB (1417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0210dfc099bd81edc78819570958f2b9ebb3096a607cd26427f2f7f41cb5898`  
		Last Modified: Tue, 27 Dec 2016 22:44:25 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f19df3931622bf6ef7a3509037a01a5c109b65aa0b77204a8803bc1ef2ebdc9`  
		Last Modified: Tue, 27 Dec 2016 22:44:25 GMT  
		Size: 1.5 KB (1517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eee39234906eb3ac8323151beebf4e62280383e72ed2d25cd7be2c224e74ed5`  
		Last Modified: Tue, 27 Dec 2016 22:44:25 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
