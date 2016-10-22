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
$ docker pull jenkins@sha256:d48b1c77a66c5f4c6be42d0cccea73ec75f1306ef23d5f220cb8477682da43c1
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.19.1` - linux; amd64

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

## `jenkins:2.7.4`

```console
$ docker pull jenkins@sha256:675380c0369141699bb84df81f52a6676f3a32486612d13f11a1c67e83228782
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.7.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.9 MB (312887576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94f809005f0ecf70de234654640db72dcf1895d7b546e2a7612c71c2c1ce37a5`
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
# Sat, 22 Oct 2016 06:29:07 GMT
RUN apt-get update && apt-get install -y git curl zip && rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 06:29:08 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Sat, 22 Oct 2016 06:29:08 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Sat, 22 Oct 2016 06:29:08 GMT
ARG user=jenkins
# Sat, 22 Oct 2016 06:29:09 GMT
ARG group=jenkins
# Sat, 22 Oct 2016 06:29:09 GMT
ARG uid=1000
# Sat, 22 Oct 2016 06:29:10 GMT
ARG gid=1000
# Sat, 22 Oct 2016 06:29:11 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Sat, 22 Oct 2016 06:29:12 GMT
VOLUME [/var/jenkins_home]
# Sat, 22 Oct 2016 06:29:13 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Sat, 22 Oct 2016 06:29:14 GMT
ENV TINI_VERSION=0.9.0
# Sat, 22 Oct 2016 06:29:14 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Sat, 22 Oct 2016 06:29:17 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Sat, 22 Oct 2016 06:29:18 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Sat, 22 Oct 2016 06:29:19 GMT
ARG JENKINS_VERSION
# Sat, 22 Oct 2016 06:29:20 GMT
ENV JENKINS_VERSION=2.7.4
# Sat, 22 Oct 2016 06:29:20 GMT
ARG JENKINS_SHA=07a2e3e4ace728fdbcc823f46068d2f8cc3cb97b
# Sat, 22 Oct 2016 06:29:21 GMT
ARG JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.4/jenkins-war-2.7.4.war
# Sat, 22 Oct 2016 06:29:26 GMT
# ARGS: JENKINS_SHA=07a2e3e4ace728fdbcc823f46068d2f8cc3cb97b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.4/jenkins-war-2.7.4.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Sat, 22 Oct 2016 06:29:27 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Sat, 22 Oct 2016 06:29:28 GMT
# ARGS: JENKINS_SHA=07a2e3e4ace728fdbcc823f46068d2f8cc3cb97b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.4/jenkins-war-2.7.4.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Sat, 22 Oct 2016 06:29:28 GMT
EXPOSE 8080/tcp
# Sat, 22 Oct 2016 06:29:29 GMT
EXPOSE 50000/tcp
# Sat, 22 Oct 2016 06:29:30 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Sat, 22 Oct 2016 06:29:30 GMT
USER [jenkins]
# Sat, 22 Oct 2016 06:29:31 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Sat, 22 Oct 2016 06:29:32 GMT
COPY file:fc94121cf01d6d05be390499fbde73a26d1cf59af88d4d29dab5e81024778028 in /usr/local/bin/jenkins.sh 
# Sat, 22 Oct 2016 06:29:32 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Sat, 22 Oct 2016 06:29:33 GMT
COPY file:902c50db7f531a8fe363c937a24f6474b4525ed70c2b3d807306d33d6d254a9d in /usr/local/bin/plugins.sh 
# Sat, 22 Oct 2016 06:29:34 GMT
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
	-	`sha256:0b020efa3d972801b9ac008ebf577d8a878023db036f116572305c369e5a5b69`  
		Last Modified: Sat, 22 Oct 2016 06:29:50 GMT  
		Size: 523.1 KB (523075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f390c284f1dbd3162056a6da0cff8b1bec77863ff19fd7bcc3e7f23a218e22c`  
		Last Modified: Sat, 22 Oct 2016 06:29:47 GMT  
		Size: 4.4 KB (4403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc23e986dfbc4fba308d2d1bedbbf7e3e4bd5417c8c31ba499975c682b718c3`  
		Last Modified: Sat, 22 Oct 2016 06:29:46 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e398873951cb2d73a5f5b718632b098d497a4be601a66e26d31453cf44e45af2`  
		Last Modified: Sat, 22 Oct 2016 06:29:47 GMT  
		Size: 337.2 KB (337238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3540a6c20de6eb167fa41ef60f59d326874212c31bdae17dbdbe69b0058975eb`  
		Last Modified: Sat, 22 Oct 2016 06:29:47 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9e241a3aefc6645d4806aff70c244027cabb6456f4e08a25630180c61ac1e0`  
		Last Modified: Sat, 22 Oct 2016 06:29:56 GMT  
		Size: 68.7 MB (68652372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0cfa3a40b379c1618f8aba5adcff5c73cb48802be777d55b4b95d7f77c9ed26`  
		Last Modified: Sat, 22 Oct 2016 06:29:44 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8048ccc64becb8be63915293fe156c42c750995a4ab1af959137ebe8963d966`  
		Last Modified: Sat, 22 Oct 2016 06:29:44 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a769e02e156e5f25130aa8816e0c04c84b8247eb46b900ed4925a5d90f51d018`  
		Last Modified: Sat, 22 Oct 2016 06:29:44 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94eb13fc95f7a0a898686a27047dcadaabbd7272e8992eba364e0bd9086c3b11`  
		Last Modified: Sat, 22 Oct 2016 06:29:43 GMT  
		Size: 1.5 KB (1501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1868f2d4b65c6f82960bf247e796f861748376871688103e7e0ee7f507c6ab6`  
		Last Modified: Sat, 22 Oct 2016 06:29:44 GMT  
		Size: 2.1 KB (2131 bytes)  
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
