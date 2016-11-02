<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jenkins`

-	[`jenkins:latest`](#jenkinslatest)
-	[`jenkins:2.19.1`](#jenkins2191)
-	[`jenkins:2.7.4`](#jenkins274)
-	[`jenkins:alpine`](#jenkinsalpine)
-	[`jenkins:2.19.1-alpine`](#jenkins2191-alpine)
-	[`jenkins:2.7.4-alpine`](#jenkins274-alpine)

## `jenkins:latest`

```console
$ docker pull jenkins@sha256:d48b1c77a66c5f4c6be42d0cccea73ec75f1306ef23d5f220cb8477682da43c1
```

-	Platforms:
	-	linux; amd64

### `jenkins:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.3 MB (313254678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bc67dd3e379446d3dfa994ace53fcee62a3c0c67e3212d33806e6e9fa1130cc`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:07:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:12:10 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 21 Oct 2016 20:12:11 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:12:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:12:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 21 Oct 2016 20:12:13 GMT
ENV JAVA_VERSION=8u102
# Fri, 21 Oct 2016 20:12:13 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 21 Oct 2016 20:12:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 21 Oct 2016 20:13:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Oct 2016 20:13:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Oct 2016 06:27:50 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 06:27:50 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Sat, 22 Oct 2016 06:27:51 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Sat, 22 Oct 2016 06:27:51 GMT
ARG user=jenkins
# Sat, 22 Oct 2016 06:27:51 GMT
ARG group=jenkins
# Sat, 22 Oct 2016 06:27:52 GMT
ARG uid=1000
# Sat, 22 Oct 2016 06:27:52 GMT
ARG gid=1000
# Sat, 22 Oct 2016 06:27:54 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Sat, 22 Oct 2016 06:27:54 GMT
VOLUME [/var/jenkins_home]
# Sat, 22 Oct 2016 06:27:55 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Sat, 22 Oct 2016 06:27:56 GMT
ENV TINI_VERSION=0.9.0
# Sat, 22 Oct 2016 06:27:57 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Sat, 22 Oct 2016 06:28:00 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Sat, 22 Oct 2016 06:28:01 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Sat, 22 Oct 2016 06:28:01 GMT
ARG JENKINS_VERSION
# Sat, 22 Oct 2016 06:28:02 GMT
ENV JENKINS_VERSION=2.19.1
# Sat, 22 Oct 2016 06:28:02 GMT
ARG JENKINS_SHA=dc28b91e553c1cd42cc30bd75d0f651671e6de0b
# Sat, 22 Oct 2016 06:28:03 GMT
ARG JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.1/jenkins-war-2.19.1.war
# Sat, 22 Oct 2016 06:28:09 GMT
# ARGS: JENKINS_SHA=dc28b91e553c1cd42cc30bd75d0f651671e6de0b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.1/jenkins-war-2.19.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Sat, 22 Oct 2016 06:28:10 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Sat, 22 Oct 2016 06:28:11 GMT
# ARGS: JENKINS_SHA=dc28b91e553c1cd42cc30bd75d0f651671e6de0b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.1/jenkins-war-2.19.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Sat, 22 Oct 2016 06:28:12 GMT
EXPOSE 8080/tcp
# Sat, 22 Oct 2016 06:28:12 GMT
EXPOSE 50000/tcp
# Sat, 22 Oct 2016 06:28:13 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Sat, 22 Oct 2016 06:28:14 GMT
USER [jenkins]
# Sat, 22 Oct 2016 06:28:14 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Sat, 22 Oct 2016 06:28:15 GMT
COPY file:7af8c0bd35066db9b0d029c9b74e72bf81420b1fd51ee55d2c28a26c36f829dd in /usr/local/bin/jenkins.sh 
# Sat, 22 Oct 2016 06:28:16 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Sat, 22 Oct 2016 06:28:16 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Sat, 22 Oct 2016 06:28:17 GMT
COPY file:2a6a3e16202b8dddab5edef50f712c16fe8f6980f5aea80c8c76b5db4f903913 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc4cdbc8d81addf57f4475aafb4d7c14f8b33b1f81338f292d019b52dab828d`  
		Last Modified: Fri, 21 Oct 2016 20:08:28 GMT  
		Size: 593.0 KB (593002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbb0894483a51f34474c923a88ef7038cb509d584f8048fdbaf09518d5b3737`  
		Last Modified: Fri, 21 Oct 2016 20:13:18 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343785c6e48e1e95c98308a513facd5e3ee23ab245f10e67a6271367d6dc67ef`  
		Last Modified: Fri, 21 Oct 2016 20:13:18 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80bc278f201eb43353bc396e8958e529c288a3ff484a328ddf58ede0a5f44fd1`  
		Last Modified: Fri, 21 Oct 2016 20:13:50 GMT  
		Size: 130.1 MB (130104036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc7493162d145324aed82c992e3d730dd85dc4aa9a48fe8a4128f18a03b03a3`  
		Last Modified: Fri, 21 Oct 2016 20:13:18 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61bb994d2838811c0be5732b8fa3d081981761344240cecdffc25f47c49f5a5`  
		Last Modified: Sat, 22 Oct 2016 06:28:35 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3df6c32bf22dc4b0d803e9c0e03e6657489c187bba21146de731d45d3b33b9`  
		Last Modified: Sat, 22 Oct 2016 06:28:31 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565e6529e2f6f7560a09fc8952e7f453ca817efb0ac431158d0bc59a7517bc22`  
		Last Modified: Sat, 22 Oct 2016 06:28:30 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f627c012e77178bb1194a648ff6e04526ffbec0d4b28aa139c37f94bc9cca0f`  
		Last Modified: Sat, 22 Oct 2016 06:28:30 GMT  
		Size: 337.2 KB (337239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a9f0d7036e389a243c8855064668566bec03a220a89ca9f4540954a11fc1a3`  
		Last Modified: Sat, 22 Oct 2016 06:28:30 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6132feab87bca85077472c5e681bf888984a6692a1c72e0597fb1b2178769164`  
		Last Modified: Sat, 22 Oct 2016 06:28:38 GMT  
		Size: 69.5 MB (69542141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f291dae2c28f0ad21be4ca773d0af20bf078b1f7af0d2d8fe7152ea3d7407a81`  
		Last Modified: Sat, 22 Oct 2016 06:28:27 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e941af2607f5442aa2d4c3b09710524f43986531ae529ba5d26a1afd1a5894`  
		Last Modified: Sat, 22 Oct 2016 06:28:27 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e012a21971f4253cc312dd1181b4f3f94cf816f497ce4d8e23b8c81d6998b0cf`  
		Last Modified: Sat, 22 Oct 2016 06:28:27 GMT  
		Size: 819.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b654f6b529a1b028df18b91b9e3fc4e0c8685202f0a0489c2c1f721b92170435`  
		Last Modified: Sat, 22 Oct 2016 06:28:27 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662249d63ca01c08b0d31bcf4387f39611137134e88d6a884cf393d8cd279791`  
		Last Modified: Sat, 22 Oct 2016 06:28:27 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.19.1`

```console
$ docker pull jenkins@sha256:ed88a89fd774d5898c37d1f04246b90dd2b98319a446a725ad3127397488e392
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.19.1` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.3 MB (313254819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55720d63e3285b2ce23316063259337c8550c28d459307cc910ae956b9fd5bac`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:07:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:53:46 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 31 Oct 2016 21:53:47 GMT
ENV LANG=C.UTF-8
# Mon, 31 Oct 2016 21:53:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 31 Oct 2016 21:53:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Mon, 31 Oct 2016 21:53:48 GMT
ENV JAVA_VERSION=8u102
# Mon, 31 Oct 2016 21:53:49 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Mon, 31 Oct 2016 21:53:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Mon, 31 Oct 2016 21:54:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 31 Oct 2016 21:55:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 01 Nov 2016 20:30:04 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 20:30:05 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Tue, 01 Nov 2016 20:30:05 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Tue, 01 Nov 2016 20:30:05 GMT
ARG user=jenkins
# Tue, 01 Nov 2016 20:30:06 GMT
ARG group=jenkins
# Tue, 01 Nov 2016 20:30:06 GMT
ARG uid=1000
# Tue, 01 Nov 2016 20:30:07 GMT
ARG gid=1000
# Tue, 01 Nov 2016 20:30:08 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Tue, 01 Nov 2016 20:30:08 GMT
VOLUME [/var/jenkins_home]
# Tue, 01 Nov 2016 20:30:09 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Tue, 01 Nov 2016 20:30:10 GMT
ENV TINI_VERSION=0.9.0
# Tue, 01 Nov 2016 20:30:10 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Tue, 01 Nov 2016 20:30:13 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Tue, 01 Nov 2016 20:30:14 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Tue, 01 Nov 2016 20:30:14 GMT
ARG JENKINS_VERSION
# Tue, 01 Nov 2016 20:30:15 GMT
ENV JENKINS_VERSION=2.19.1
# Tue, 01 Nov 2016 20:30:15 GMT
ARG JENKINS_SHA=dc28b91e553c1cd42cc30bd75d0f651671e6de0b
# Tue, 01 Nov 2016 20:30:16 GMT
ARG JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.1/jenkins-war-2.19.1.war
# Tue, 01 Nov 2016 20:30:21 GMT
# ARGS: JENKINS_SHA=dc28b91e553c1cd42cc30bd75d0f651671e6de0b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.1/jenkins-war-2.19.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Tue, 01 Nov 2016 20:30:21 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Tue, 01 Nov 2016 20:30:22 GMT
# ARGS: JENKINS_SHA=dc28b91e553c1cd42cc30bd75d0f651671e6de0b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.1/jenkins-war-2.19.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Tue, 01 Nov 2016 20:30:23 GMT
EXPOSE 8080/tcp
# Tue, 01 Nov 2016 20:30:23 GMT
EXPOSE 50000/tcp
# Tue, 01 Nov 2016 20:30:24 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Tue, 01 Nov 2016 20:30:24 GMT
USER [jenkins]
# Tue, 01 Nov 2016 20:30:25 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Tue, 01 Nov 2016 20:30:26 GMT
COPY file:7af8c0bd35066db9b0d029c9b74e72bf81420b1fd51ee55d2c28a26c36f829dd in /usr/local/bin/jenkins.sh 
# Tue, 01 Nov 2016 20:30:26 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Tue, 01 Nov 2016 20:30:27 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Tue, 01 Nov 2016 20:30:28 GMT
COPY file:2a6a3e16202b8dddab5edef50f712c16fe8f6980f5aea80c8c76b5db4f903913 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc4cdbc8d81addf57f4475aafb4d7c14f8b33b1f81338f292d019b52dab828d`  
		Last Modified: Fri, 21 Oct 2016 20:08:28 GMT  
		Size: 593.0 KB (593002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c6fc3e9968f5b8fb198a1ea206d24c695ca2ba720f3c60465eb766378eb661`  
		Last Modified: Tue, 01 Nov 2016 05:34:59 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfa8d5153bb17cb57f744591779c9cae37e3ce60ef7f251a06de8a52b4a5dc4`  
		Last Modified: Tue, 01 Nov 2016 05:34:59 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05bc8d0fffcad18701b038c987358882834e50c5f8880d80e596b1b53a10452b`  
		Last Modified: Tue, 01 Nov 2016 05:35:36 GMT  
		Size: 130.1 MB (130104197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1266a2a7ecbe81ae03360bc3e8bf9300175665db11e6d02fa7be79d485b530e`  
		Last Modified: Tue, 01 Nov 2016 05:34:58 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:500a4c89bfdd5c941fc15ba7dbd1b2d824d452ff2f500f8c461a5dfacf40638f`  
		Last Modified: Tue, 01 Nov 2016 20:30:45 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81908e885bb81a1520a62e5a6c0e4fcbed73654df4bb5f5e20be1d13e6dbcd95`  
		Last Modified: Tue, 01 Nov 2016 20:30:42 GMT  
		Size: 4.4 KB (4395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb4df1a440333d070ff95db2567118aa1318a084ef73c35e201dab2326926b3`  
		Last Modified: Tue, 01 Nov 2016 20:30:42 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cf508b0033d3087b452baf8e100dfd31ea862d16d4599c42d1494fb821b36b`  
		Last Modified: Tue, 01 Nov 2016 20:30:42 GMT  
		Size: 337.2 KB (337236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cfbae318ffe1f814143392a0bd85e68b85e40c74fd3c6bf839907910dbba757`  
		Last Modified: Tue, 01 Nov 2016 20:30:41 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d3c2b2f66589de256ffeceda0df2a59d34d34be034a8b6414571a1a8e85b43d`  
		Last Modified: Tue, 01 Nov 2016 20:30:47 GMT  
		Size: 69.5 MB (69542135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485b713d03ffc56faa716effb21104da79a3cc5bcbd4d8e703710d7fe798844c`  
		Last Modified: Tue, 01 Nov 2016 20:30:38 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2cbbeb4c01592d267e8e6d0c318cf473f277ce57a5aadf40655229b8bc28944`  
		Last Modified: Tue, 01 Nov 2016 20:30:39 GMT  
		Size: 1.4 KB (1421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e076a218a80cf19cb4da3fda23902ab7212c5461d21c8acc29db221f8e6dfbae`  
		Last Modified: Tue, 01 Nov 2016 20:30:38 GMT  
		Size: 819.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe914e4cec916d71ab4340b2a432fdf3fd26946fb3d8e0b0fb848b8fad03154`  
		Last Modified: Tue, 01 Nov 2016 20:30:39 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755133f83251df5ca869b04084282480c11af7f319e331475c457d994187a615`  
		Last Modified: Tue, 01 Nov 2016 20:30:39 GMT  
		Size: 2.2 KB (2177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.7.4`

```console
$ docker pull jenkins@sha256:2b9f72b4be8a4c493bb481a194542813f6c33f34ade893e6147231b8c0c1f3e3
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.7.4` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.9 MB (312887725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08122ee1bea50599cfc8d70d3f9a169da6ddca4785bd017921b48d2e53f3e230`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:07:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:53:46 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 31 Oct 2016 21:53:47 GMT
ENV LANG=C.UTF-8
# Mon, 31 Oct 2016 21:53:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 31 Oct 2016 21:53:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Mon, 31 Oct 2016 21:53:48 GMT
ENV JAVA_VERSION=8u102
# Mon, 31 Oct 2016 21:53:49 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Mon, 31 Oct 2016 21:53:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Mon, 31 Oct 2016 21:54:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 31 Oct 2016 21:55:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 01 Nov 2016 20:31:41 GMT
RUN apt-get update && apt-get install -y git curl zip && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 20:31:41 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Tue, 01 Nov 2016 20:31:42 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Tue, 01 Nov 2016 20:31:42 GMT
ARG user=jenkins
# Tue, 01 Nov 2016 20:31:43 GMT
ARG group=jenkins
# Tue, 01 Nov 2016 20:31:43 GMT
ARG uid=1000
# Tue, 01 Nov 2016 20:31:43 GMT
ARG gid=1000
# Tue, 01 Nov 2016 20:31:44 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Tue, 01 Nov 2016 20:31:45 GMT
VOLUME [/var/jenkins_home]
# Tue, 01 Nov 2016 20:31:46 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Tue, 01 Nov 2016 20:31:46 GMT
ENV TINI_VERSION=0.9.0
# Tue, 01 Nov 2016 20:31:47 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Tue, 01 Nov 2016 20:31:50 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Tue, 01 Nov 2016 20:31:51 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Tue, 01 Nov 2016 20:31:51 GMT
ARG JENKINS_VERSION
# Tue, 01 Nov 2016 20:31:52 GMT
ENV JENKINS_VERSION=2.7.4
# Tue, 01 Nov 2016 20:31:52 GMT
ARG JENKINS_SHA=07a2e3e4ace728fdbcc823f46068d2f8cc3cb97b
# Tue, 01 Nov 2016 20:31:53 GMT
ARG JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.4/jenkins-war-2.7.4.war
# Tue, 01 Nov 2016 20:31:58 GMT
# ARGS: JENKINS_SHA=07a2e3e4ace728fdbcc823f46068d2f8cc3cb97b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.4/jenkins-war-2.7.4.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Tue, 01 Nov 2016 20:31:59 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Tue, 01 Nov 2016 20:32:00 GMT
# ARGS: JENKINS_SHA=07a2e3e4ace728fdbcc823f46068d2f8cc3cb97b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.4/jenkins-war-2.7.4.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Tue, 01 Nov 2016 20:32:00 GMT
EXPOSE 8080/tcp
# Tue, 01 Nov 2016 20:32:01 GMT
EXPOSE 50000/tcp
# Tue, 01 Nov 2016 20:32:01 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Tue, 01 Nov 2016 20:32:02 GMT
USER [jenkins]
# Tue, 01 Nov 2016 20:32:02 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Tue, 01 Nov 2016 20:32:03 GMT
COPY file:fc94121cf01d6d05be390499fbde73a26d1cf59af88d4d29dab5e81024778028 in /usr/local/bin/jenkins.sh 
# Tue, 01 Nov 2016 20:32:04 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Tue, 01 Nov 2016 20:32:04 GMT
COPY file:902c50db7f531a8fe363c937a24f6474b4525ed70c2b3d807306d33d6d254a9d in /usr/local/bin/plugins.sh 
# Tue, 01 Nov 2016 20:32:05 GMT
COPY file:c9cb5b680a6dd3e26901cca8c795d5aacfe8ff25d6bfc2e19624e203933efea7 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc4cdbc8d81addf57f4475aafb4d7c14f8b33b1f81338f292d019b52dab828d`  
		Last Modified: Fri, 21 Oct 2016 20:08:28 GMT  
		Size: 593.0 KB (593002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c6fc3e9968f5b8fb198a1ea206d24c695ca2ba720f3c60465eb766378eb661`  
		Last Modified: Tue, 01 Nov 2016 05:34:59 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfa8d5153bb17cb57f744591779c9cae37e3ce60ef7f251a06de8a52b4a5dc4`  
		Last Modified: Tue, 01 Nov 2016 05:34:59 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05bc8d0fffcad18701b038c987358882834e50c5f8880d80e596b1b53a10452b`  
		Last Modified: Tue, 01 Nov 2016 05:35:36 GMT  
		Size: 130.1 MB (130104197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1266a2a7ecbe81ae03360bc3e8bf9300175665db11e6d02fa7be79d485b530e`  
		Last Modified: Tue, 01 Nov 2016 05:34:58 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed1feb9d1442ca21e663838621f4945d1d20a21ea1b4aa9ba887eb2636d55d4`  
		Last Modified: Tue, 01 Nov 2016 20:32:23 GMT  
		Size: 523.1 KB (523069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8805ae6b39b6e20fc2e98640b285cb5230c9e8ceffa4089c9d39ef792fbab9fa`  
		Last Modified: Tue, 01 Nov 2016 20:32:22 GMT  
		Size: 4.4 KB (4394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0f1e929afcef1c784eda77a4133506df903dcc993db9b9879690ae19a73772`  
		Last Modified: Tue, 01 Nov 2016 20:32:21 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7391b587cf00d836a63d0effecf6480a2d3cc357f0f14ba240e3f483a14481`  
		Last Modified: Tue, 01 Nov 2016 20:32:20 GMT  
		Size: 337.2 KB (337239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29252d05681d70961c02b95250edf03d14de1525c0b7fcc5b97cecf902a664ed`  
		Last Modified: Tue, 01 Nov 2016 20:32:19 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211819ba7a76cf52e522c52dfa8b0e2a3adb1088d2272ba3730865d0c9f4e187`  
		Last Modified: Tue, 01 Nov 2016 20:32:26 GMT  
		Size: 68.7 MB (68652376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a56abfd14e7cb1f8299e51dbe08e54c1444b9111e9bf59c99a6bfbb6927f1d`  
		Last Modified: Tue, 01 Nov 2016 20:32:17 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:245ab500a84ded2294394d530d839ce8120a0cde7577c3da8b540ccf12809070`  
		Last Modified: Tue, 01 Nov 2016 20:32:17 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273542adf912d4c8f99006b6d280b827cd676978328d7aa2297f9ea6d5ff58a2`  
		Last Modified: Tue, 01 Nov 2016 20:32:16 GMT  
		Size: 640.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f487a38817eece87280d9c876b24c0806bde86823fb62df0db3b7349e51412d`  
		Last Modified: Tue, 01 Nov 2016 20:32:16 GMT  
		Size: 1.5 KB (1502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6050467ea865a26413a55bb02bc228584b49bb0402dba4c5a26213763f73677f`  
		Last Modified: Tue, 01 Nov 2016 20:32:16 GMT  
		Size: 2.1 KB (2132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:alpine`

```console
$ docker pull jenkins@sha256:55919053c59c8d523ff7ab70276f157b9283c08b3dc7b52e123953f8f69c0fd6
```

-	Platforms:
	-	linux; amd64

### `jenkins:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.8 MB (144787671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dc286d9eb13a4b84a39861107f13f98b17fc92e940603b3988cfe6528d14582`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 18 Oct 2016 20:40:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Oct 2016 20:40:26 GMT
ENV JAVA_VERSION=8u92
# Tue, 18 Oct 2016 20:40:26 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 18 Oct 2016 20:40:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 19 Oct 2016 00:41:48 GMT
RUN apk add --no-cache git openssh-client curl unzip bash ttf-dejavu coreutils
# Wed, 19 Oct 2016 00:41:48 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Wed, 19 Oct 2016 00:41:49 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Wed, 19 Oct 2016 00:41:49 GMT
ARG user=jenkins
# Wed, 19 Oct 2016 00:41:49 GMT
ARG group=jenkins
# Wed, 19 Oct 2016 00:41:50 GMT
ARG uid=1000
# Wed, 19 Oct 2016 00:41:50 GMT
ARG gid=1000
# Wed, 19 Oct 2016 00:41:51 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN addgroup -g ${gid} ${group}     && adduser -h "$JENKINS_HOME" -u ${uid} -G ${group} -s /bin/bash -D ${user}
# Wed, 19 Oct 2016 00:41:52 GMT
VOLUME [/var/jenkins_home]
# Wed, 19 Oct 2016 00:41:53 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Wed, 19 Oct 2016 00:41:53 GMT
ENV TINI_VERSION=0.9.0
# Wed, 19 Oct 2016 00:41:54 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Wed, 19 Oct 2016 00:41:56 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Wed, 19 Oct 2016 00:41:57 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Wed, 19 Oct 2016 00:41:57 GMT
ARG JENKINS_VERSION
# Wed, 19 Oct 2016 00:41:57 GMT
ENV JENKINS_VERSION=2.19.1
# Wed, 19 Oct 2016 00:41:58 GMT
ARG JENKINS_SHA=dc28b91e553c1cd42cc30bd75d0f651671e6de0b
# Wed, 19 Oct 2016 00:41:58 GMT
ARG JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.1/jenkins-war-2.19.1.war
# Wed, 19 Oct 2016 00:42:04 GMT
# ARGS: JENKINS_SHA=dc28b91e553c1cd42cc30bd75d0f651671e6de0b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.1/jenkins-war-2.19.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Wed, 19 Oct 2016 00:42:04 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Wed, 19 Oct 2016 00:42:05 GMT
# ARGS: JENKINS_SHA=dc28b91e553c1cd42cc30bd75d0f651671e6de0b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.1/jenkins-war-2.19.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Wed, 19 Oct 2016 00:42:06 GMT
EXPOSE 8080/tcp
# Wed, 19 Oct 2016 00:42:06 GMT
EXPOSE 50000/tcp
# Wed, 19 Oct 2016 00:42:06 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Wed, 19 Oct 2016 00:42:07 GMT
USER [jenkins]
# Wed, 19 Oct 2016 00:42:07 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Wed, 19 Oct 2016 00:42:08 GMT
COPY file:7af8c0bd35066db9b0d029c9b74e72bf81420b1fd51ee55d2c28a26c36f829dd in /usr/local/bin/jenkins.sh 
# Wed, 19 Oct 2016 00:42:08 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Wed, 19 Oct 2016 00:42:09 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Wed, 19 Oct 2016 00:42:09 GMT
COPY file:2a6a3e16202b8dddab5edef50f712c16fe8f6980f5aea80c8c76b5db4f903913 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d438913956e1ea2320b12f24358a2b0822a0b3a09aa59d082151759f24486d3`  
		Last Modified: Tue, 18 Oct 2016 20:50:55 GMT  
		Size: 49.3 MB (49327784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5301598c5698656c415f7587ae7f2627dc1d50e88e07395a26013c7531497834`  
		Last Modified: Wed, 19 Oct 2016 00:42:31 GMT  
		Size: 23.3 MB (23259126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64174416d05945dbf7846c93b8b0b72ee5870502e881f2c107752bf5401e204d`  
		Last Modified: Wed, 19 Oct 2016 00:42:23 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f63f3573ef577258a0bea24e1793baa0592f1127ae3e7e1aa792ec6cf4d988`  
		Last Modified: Wed, 19 Oct 2016 00:42:21 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066fa30ec0f0476565e9eccd65877e1035930b11be8f4ce78bcbf32981c787af`  
		Last Modified: Wed, 19 Oct 2016 00:42:21 GMT  
		Size: 337.2 KB (337237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092c6474cccaf6396d9f30a8947cb62f83739bdf8551175b3c754582f8fb5cfd`  
		Last Modified: Wed, 19 Oct 2016 00:42:22 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d368e28ca18bf83cbd4223940a7daf0c9cd25976b763aae5ced53c8dbdd27d`  
		Last Modified: Wed, 19 Oct 2016 00:42:27 GMT  
		Size: 69.5 MB (69542136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1104798d07d0d76170a09d58cce53923d9976b568b27f5ff6a61aca54e16dad8`  
		Last Modified: Wed, 19 Oct 2016 00:42:19 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cf1c737c0d1149aed33f762e1dd07b0727a2236eda2b65fd0e9b3477cba2dd`  
		Last Modified: Wed, 19 Oct 2016 00:42:18 GMT  
		Size: 1.4 KB (1411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76aa5f9b621fbba0e6ec1de0dcabc2f9433b5c038c3145654c958cf06e615ed`  
		Last Modified: Wed, 19 Oct 2016 00:42:18 GMT  
		Size: 809.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e999b76fd2581d9e14e8dd1fe98b037c89cf3dad2787136bc2a5eaa0e613fb6a`  
		Last Modified: Wed, 19 Oct 2016 00:42:18 GMT  
		Size: 1.5 KB (1515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc554c1d76e09dddb87cea69ae7b55b59febbeb9abda5a8f3e88157b7830dc0`  
		Last Modified: Wed, 19 Oct 2016 00:42:19 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.19.1-alpine`

```console
$ docker pull jenkins@sha256:55919053c59c8d523ff7ab70276f157b9283c08b3dc7b52e123953f8f69c0fd6
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.19.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.8 MB (144787671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dc286d9eb13a4b84a39861107f13f98b17fc92e940603b3988cfe6528d14582`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 18 Oct 2016 20:40:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Oct 2016 20:40:26 GMT
ENV JAVA_VERSION=8u92
# Tue, 18 Oct 2016 20:40:26 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 18 Oct 2016 20:40:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 19 Oct 2016 00:41:48 GMT
RUN apk add --no-cache git openssh-client curl unzip bash ttf-dejavu coreutils
# Wed, 19 Oct 2016 00:41:48 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Wed, 19 Oct 2016 00:41:49 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Wed, 19 Oct 2016 00:41:49 GMT
ARG user=jenkins
# Wed, 19 Oct 2016 00:41:49 GMT
ARG group=jenkins
# Wed, 19 Oct 2016 00:41:50 GMT
ARG uid=1000
# Wed, 19 Oct 2016 00:41:50 GMT
ARG gid=1000
# Wed, 19 Oct 2016 00:41:51 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN addgroup -g ${gid} ${group}     && adduser -h "$JENKINS_HOME" -u ${uid} -G ${group} -s /bin/bash -D ${user}
# Wed, 19 Oct 2016 00:41:52 GMT
VOLUME [/var/jenkins_home]
# Wed, 19 Oct 2016 00:41:53 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Wed, 19 Oct 2016 00:41:53 GMT
ENV TINI_VERSION=0.9.0
# Wed, 19 Oct 2016 00:41:54 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Wed, 19 Oct 2016 00:41:56 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Wed, 19 Oct 2016 00:41:57 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Wed, 19 Oct 2016 00:41:57 GMT
ARG JENKINS_VERSION
# Wed, 19 Oct 2016 00:41:57 GMT
ENV JENKINS_VERSION=2.19.1
# Wed, 19 Oct 2016 00:41:58 GMT
ARG JENKINS_SHA=dc28b91e553c1cd42cc30bd75d0f651671e6de0b
# Wed, 19 Oct 2016 00:41:58 GMT
ARG JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.1/jenkins-war-2.19.1.war
# Wed, 19 Oct 2016 00:42:04 GMT
# ARGS: JENKINS_SHA=dc28b91e553c1cd42cc30bd75d0f651671e6de0b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.1/jenkins-war-2.19.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Wed, 19 Oct 2016 00:42:04 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Wed, 19 Oct 2016 00:42:05 GMT
# ARGS: JENKINS_SHA=dc28b91e553c1cd42cc30bd75d0f651671e6de0b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.1/jenkins-war-2.19.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Wed, 19 Oct 2016 00:42:06 GMT
EXPOSE 8080/tcp
# Wed, 19 Oct 2016 00:42:06 GMT
EXPOSE 50000/tcp
# Wed, 19 Oct 2016 00:42:06 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Wed, 19 Oct 2016 00:42:07 GMT
USER [jenkins]
# Wed, 19 Oct 2016 00:42:07 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Wed, 19 Oct 2016 00:42:08 GMT
COPY file:7af8c0bd35066db9b0d029c9b74e72bf81420b1fd51ee55d2c28a26c36f829dd in /usr/local/bin/jenkins.sh 
# Wed, 19 Oct 2016 00:42:08 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Wed, 19 Oct 2016 00:42:09 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Wed, 19 Oct 2016 00:42:09 GMT
COPY file:2a6a3e16202b8dddab5edef50f712c16fe8f6980f5aea80c8c76b5db4f903913 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d438913956e1ea2320b12f24358a2b0822a0b3a09aa59d082151759f24486d3`  
		Last Modified: Tue, 18 Oct 2016 20:50:55 GMT  
		Size: 49.3 MB (49327784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5301598c5698656c415f7587ae7f2627dc1d50e88e07395a26013c7531497834`  
		Last Modified: Wed, 19 Oct 2016 00:42:31 GMT  
		Size: 23.3 MB (23259126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64174416d05945dbf7846c93b8b0b72ee5870502e881f2c107752bf5401e204d`  
		Last Modified: Wed, 19 Oct 2016 00:42:23 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f63f3573ef577258a0bea24e1793baa0592f1127ae3e7e1aa792ec6cf4d988`  
		Last Modified: Wed, 19 Oct 2016 00:42:21 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066fa30ec0f0476565e9eccd65877e1035930b11be8f4ce78bcbf32981c787af`  
		Last Modified: Wed, 19 Oct 2016 00:42:21 GMT  
		Size: 337.2 KB (337237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092c6474cccaf6396d9f30a8947cb62f83739bdf8551175b3c754582f8fb5cfd`  
		Last Modified: Wed, 19 Oct 2016 00:42:22 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d368e28ca18bf83cbd4223940a7daf0c9cd25976b763aae5ced53c8dbdd27d`  
		Last Modified: Wed, 19 Oct 2016 00:42:27 GMT  
		Size: 69.5 MB (69542136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1104798d07d0d76170a09d58cce53923d9976b568b27f5ff6a61aca54e16dad8`  
		Last Modified: Wed, 19 Oct 2016 00:42:19 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cf1c737c0d1149aed33f762e1dd07b0727a2236eda2b65fd0e9b3477cba2dd`  
		Last Modified: Wed, 19 Oct 2016 00:42:18 GMT  
		Size: 1.4 KB (1411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76aa5f9b621fbba0e6ec1de0dcabc2f9433b5c038c3145654c958cf06e615ed`  
		Last Modified: Wed, 19 Oct 2016 00:42:18 GMT  
		Size: 809.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e999b76fd2581d9e14e8dd1fe98b037c89cf3dad2787136bc2a5eaa0e613fb6a`  
		Last Modified: Wed, 19 Oct 2016 00:42:18 GMT  
		Size: 1.5 KB (1515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc554c1d76e09dddb87cea69ae7b55b59febbeb9abda5a8f3e88157b7830dc0`  
		Last Modified: Wed, 19 Oct 2016 00:42:19 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.7.4-alpine`

```console
$ docker pull jenkins@sha256:51a77b7f748fa5cbaa1b1dd6443f501dc029dc5937395678a6f17f31112ef496
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.7.4-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144099505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1249fa9db3962c30e9ceb749d6ffc6dcedc9c5a31e85a57fb97f6f131bf57be`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 18 Oct 2016 20:40:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Oct 2016 20:40:26 GMT
ENV JAVA_VERSION=8u92
# Tue, 18 Oct 2016 20:40:26 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 18 Oct 2016 20:40:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 19 Oct 2016 00:42:54 GMT
RUN apk add --no-cache git openssh-client curl zip unzip bash ttf-dejavu coreutils
# Wed, 19 Oct 2016 00:42:55 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Wed, 19 Oct 2016 00:42:55 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Wed, 19 Oct 2016 00:42:56 GMT
ARG user=jenkins
# Wed, 19 Oct 2016 00:42:56 GMT
ARG group=jenkins
# Wed, 19 Oct 2016 00:42:56 GMT
ARG uid=1000
# Wed, 19 Oct 2016 00:42:57 GMT
ARG gid=1000
# Wed, 19 Oct 2016 00:42:58 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN addgroup -g ${gid} ${group}     && adduser -h "$JENKINS_HOME" -u ${uid} -G ${group} -s /bin/bash -D ${user}
# Wed, 19 Oct 2016 00:42:58 GMT
VOLUME [/var/jenkins_home]
# Wed, 19 Oct 2016 00:42:59 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Wed, 19 Oct 2016 00:43:00 GMT
ENV TINI_VERSION=0.9.0
# Wed, 19 Oct 2016 00:43:00 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Wed, 19 Oct 2016 00:43:02 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Wed, 19 Oct 2016 00:43:03 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Wed, 19 Oct 2016 00:43:03 GMT
ARG JENKINS_VERSION
# Wed, 19 Oct 2016 00:43:04 GMT
ENV JENKINS_VERSION=2.7.4
# Wed, 19 Oct 2016 00:43:04 GMT
ARG JENKINS_SHA=07a2e3e4ace728fdbcc823f46068d2f8cc3cb97b
# Wed, 19 Oct 2016 00:43:05 GMT
ARG JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.4/jenkins-war-2.7.4.war
# Wed, 19 Oct 2016 00:43:10 GMT
# ARGS: JENKINS_SHA=07a2e3e4ace728fdbcc823f46068d2f8cc3cb97b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.4/jenkins-war-2.7.4.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Wed, 19 Oct 2016 00:43:10 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Wed, 19 Oct 2016 00:43:11 GMT
# ARGS: JENKINS_SHA=07a2e3e4ace728fdbcc823f46068d2f8cc3cb97b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.4/jenkins-war-2.7.4.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Wed, 19 Oct 2016 00:43:12 GMT
EXPOSE 8080/tcp
# Wed, 19 Oct 2016 00:43:12 GMT
EXPOSE 50000/tcp
# Wed, 19 Oct 2016 00:43:12 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Wed, 19 Oct 2016 00:43:13 GMT
USER [jenkins]
# Wed, 19 Oct 2016 00:43:13 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Wed, 19 Oct 2016 00:43:14 GMT
COPY file:fc94121cf01d6d05be390499fbde73a26d1cf59af88d4d29dab5e81024778028 in /usr/local/bin/jenkins.sh 
# Wed, 19 Oct 2016 00:43:14 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Wed, 19 Oct 2016 00:43:15 GMT
COPY file:902c50db7f531a8fe363c937a24f6474b4525ed70c2b3d807306d33d6d254a9d in /usr/local/bin/plugins.sh 
# Wed, 19 Oct 2016 00:43:16 GMT
COPY file:c9cb5b680a6dd3e26901cca8c795d5aacfe8ff25d6bfc2e19624e203933efea7 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d438913956e1ea2320b12f24358a2b0822a0b3a09aa59d082151759f24486d3`  
		Last Modified: Tue, 18 Oct 2016 20:50:55 GMT  
		Size: 49.3 MB (49327784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf10d46967cf55444718eef9a8e6b6a2bd2f9c87f09918b2f45c8557f5b3d502`  
		Last Modified: Wed, 19 Oct 2016 00:43:36 GMT  
		Size: 23.5 MB (23460975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8de1ccf5ccfaf3fc9f1c0f3d81e8000f7e102411c7d17c52f9634a50750d90c`  
		Last Modified: Wed, 19 Oct 2016 00:43:28 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95929cab82e1e7e762098bc9b8576d6c14737af197a1fbac8ae565ffaa1dab0`  
		Last Modified: Wed, 19 Oct 2016 00:43:28 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92d3fcb465a747c39260417c71f9147c2994ac099ceff365728c264b6c444ef1`  
		Last Modified: Wed, 19 Oct 2016 00:43:28 GMT  
		Size: 337.2 KB (337237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febf63abcfef39028e49c7248c2b0d64ea05ffd0ef0f962e082c7fe928ae277f`  
		Last Modified: Wed, 19 Oct 2016 00:43:27 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c365b21445494f0b9c7bd79642a4e608bf288f6060a495f3f2ee5a2c2ff46f`  
		Last Modified: Wed, 19 Oct 2016 00:43:32 GMT  
		Size: 68.7 MB (68652370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864104ee65112279857fd2151f6599d8550f29653fd2540f557cacf559952898`  
		Last Modified: Wed, 19 Oct 2016 00:43:24 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e23e9b126aac81ee288fba306627a294d85bdf2eda61f967a1ea71732674c91`  
		Last Modified: Wed, 19 Oct 2016 00:43:26 GMT  
		Size: 1.4 KB (1414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9d69222d1786f195154b406bcb22c5ede99becb8a9a10fa30da4bd690b3dd2`  
		Last Modified: Wed, 19 Oct 2016 00:43:24 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae1ee2521c2a7013b48ec913bf7fe6f702aa71df28a83fb53c980eb365dbd26`  
		Last Modified: Wed, 19 Oct 2016 00:43:25 GMT  
		Size: 1.5 KB (1491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814af2584de2c4a2ac3e4a95682a9a40644ce86f59b20fd32adceba49ab05795`  
		Last Modified: Wed, 19 Oct 2016 00:43:25 GMT  
		Size: 2.1 KB (2123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
