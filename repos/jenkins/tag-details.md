<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jenkins`

-	[`jenkins:latest`](#jenkinslatest)
-	[`jenkins:2.19.2`](#jenkins2192)
-	[`jenkins:alpine`](#jenkinsalpine)
-	[`jenkins:2.19.2-alpine`](#jenkins2192-alpine)

## `jenkins:latest`

```console
$ docker pull jenkins@sha256:2050baa1159270bf26deb572f4c0a6afa7661585d4c8be68cf597a20b76ca053
```

-	Platforms:
	-	linux; amd64

### `jenkins:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.3 MB (313258850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a52f07bd5bfe33acc21f4a8b326c86e82eab7eab3d67f8c5ca9f7226a44f4eb9`
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
# Tue, 08 Nov 2016 18:50:27 GMT
ENV JENKINS_VERSION=2.19.2
# Tue, 08 Nov 2016 18:50:27 GMT
ARG JENKINS_SHA=32b8bd1a86d6d4a91889bd38fb665db4090db081
# Tue, 08 Nov 2016 18:50:28 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.2/jenkins-war-2.19.2.war
# Tue, 08 Nov 2016 18:50:35 GMT
# ARGS: JENKINS_SHA=32b8bd1a86d6d4a91889bd38fb665db4090db081 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.2/jenkins-war-2.19.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Tue, 08 Nov 2016 18:50:36 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Tue, 08 Nov 2016 18:50:37 GMT
# ARGS: JENKINS_SHA=32b8bd1a86d6d4a91889bd38fb665db4090db081 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.2/jenkins-war-2.19.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Tue, 08 Nov 2016 18:50:37 GMT
EXPOSE 8080/tcp
# Tue, 08 Nov 2016 18:50:38 GMT
EXPOSE 50000/tcp
# Tue, 08 Nov 2016 18:50:38 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Tue, 08 Nov 2016 18:50:39 GMT
USER [jenkins]
# Tue, 08 Nov 2016 18:50:40 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Tue, 08 Nov 2016 18:50:41 GMT
COPY file:7af8c0bd35066db9b0d029c9b74e72bf81420b1fd51ee55d2c28a26c36f829dd in /usr/local/bin/jenkins.sh 
# Tue, 08 Nov 2016 18:50:41 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Tue, 08 Nov 2016 18:50:42 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Tue, 08 Nov 2016 18:50:42 GMT
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
	-	`sha256:50cf75d60e0b487664b63b1a7aef58adb4c7926e12bfd830648ee96b48264ae5`  
		Last Modified: Tue, 08 Nov 2016 18:51:21 GMT  
		Size: 69.5 MB (69546161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13145ee6e1bd0a5a981823c87a3f0398d0083ffcffb92fa11184c1cb3ed54857`  
		Last Modified: Tue, 08 Nov 2016 18:51:07 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f2a8ab5ca8f7443f15289b41dee9df75ddbeb446f464a6584ca25ec6e28d82`  
		Last Modified: Tue, 08 Nov 2016 18:51:07 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5696cc5bce7774350eb365d81396eb8e27c8545484e70b350e64a502dd2844`  
		Last Modified: Tue, 08 Nov 2016 18:51:07 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2598a95030fa5084fe9127b11778cc9ae3f7db5819970e39b8e3b0a2264eb79d`  
		Last Modified: Tue, 08 Nov 2016 18:51:07 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796fa4b6b5bfc7e1518c57bd5872ac8463de557e05fe4ec929ed21a0301ae671`  
		Last Modified: Tue, 08 Nov 2016 18:51:08 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.19.2`

```console
$ docker pull jenkins@sha256:2050baa1159270bf26deb572f4c0a6afa7661585d4c8be68cf597a20b76ca053
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.19.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.3 MB (313258850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a52f07bd5bfe33acc21f4a8b326c86e82eab7eab3d67f8c5ca9f7226a44f4eb9`
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
# Tue, 08 Nov 2016 18:50:27 GMT
ENV JENKINS_VERSION=2.19.2
# Tue, 08 Nov 2016 18:50:27 GMT
ARG JENKINS_SHA=32b8bd1a86d6d4a91889bd38fb665db4090db081
# Tue, 08 Nov 2016 18:50:28 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.2/jenkins-war-2.19.2.war
# Tue, 08 Nov 2016 18:50:35 GMT
# ARGS: JENKINS_SHA=32b8bd1a86d6d4a91889bd38fb665db4090db081 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.2/jenkins-war-2.19.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Tue, 08 Nov 2016 18:50:36 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Tue, 08 Nov 2016 18:50:37 GMT
# ARGS: JENKINS_SHA=32b8bd1a86d6d4a91889bd38fb665db4090db081 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.2/jenkins-war-2.19.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Tue, 08 Nov 2016 18:50:37 GMT
EXPOSE 8080/tcp
# Tue, 08 Nov 2016 18:50:38 GMT
EXPOSE 50000/tcp
# Tue, 08 Nov 2016 18:50:38 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Tue, 08 Nov 2016 18:50:39 GMT
USER [jenkins]
# Tue, 08 Nov 2016 18:50:40 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Tue, 08 Nov 2016 18:50:41 GMT
COPY file:7af8c0bd35066db9b0d029c9b74e72bf81420b1fd51ee55d2c28a26c36f829dd in /usr/local/bin/jenkins.sh 
# Tue, 08 Nov 2016 18:50:41 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Tue, 08 Nov 2016 18:50:42 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Tue, 08 Nov 2016 18:50:42 GMT
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
	-	`sha256:50cf75d60e0b487664b63b1a7aef58adb4c7926e12bfd830648ee96b48264ae5`  
		Last Modified: Tue, 08 Nov 2016 18:51:21 GMT  
		Size: 69.5 MB (69546161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13145ee6e1bd0a5a981823c87a3f0398d0083ffcffb92fa11184c1cb3ed54857`  
		Last Modified: Tue, 08 Nov 2016 18:51:07 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f2a8ab5ca8f7443f15289b41dee9df75ddbeb446f464a6584ca25ec6e28d82`  
		Last Modified: Tue, 08 Nov 2016 18:51:07 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5696cc5bce7774350eb365d81396eb8e27c8545484e70b350e64a502dd2844`  
		Last Modified: Tue, 08 Nov 2016 18:51:07 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2598a95030fa5084fe9127b11778cc9ae3f7db5819970e39b8e3b0a2264eb79d`  
		Last Modified: Tue, 08 Nov 2016 18:51:07 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796fa4b6b5bfc7e1518c57bd5872ac8463de557e05fe4ec929ed21a0301ae671`  
		Last Modified: Tue, 08 Nov 2016 18:51:08 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:alpine`

```console
$ docker pull jenkins@sha256:4bb8c764e95b0fc939ab4d22f5d186d219479d01a7df47fcda98cb07fc69ec98
```

-	Platforms:
	-	linux; amd64

### `jenkins:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.8 MB (144791695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f81a3213231aa4d1850fc90ecc3bb2a2fa40d80ef21c34db293971a750b9e6f`
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
# Tue, 08 Nov 2016 18:50:43 GMT
ENV JENKINS_VERSION=2.19.2
# Tue, 08 Nov 2016 18:50:44 GMT
ARG JENKINS_SHA=32b8bd1a86d6d4a91889bd38fb665db4090db081
# Tue, 08 Nov 2016 18:50:44 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.2/jenkins-war-2.19.2.war
# Tue, 08 Nov 2016 18:50:50 GMT
# ARGS: JENKINS_SHA=32b8bd1a86d6d4a91889bd38fb665db4090db081 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.2/jenkins-war-2.19.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Tue, 08 Nov 2016 18:50:51 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Tue, 08 Nov 2016 18:50:52 GMT
# ARGS: JENKINS_SHA=32b8bd1a86d6d4a91889bd38fb665db4090db081 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.2/jenkins-war-2.19.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Tue, 08 Nov 2016 18:50:52 GMT
EXPOSE 8080/tcp
# Tue, 08 Nov 2016 18:50:52 GMT
EXPOSE 50000/tcp
# Tue, 08 Nov 2016 18:50:53 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Tue, 08 Nov 2016 18:50:53 GMT
USER [jenkins]
# Tue, 08 Nov 2016 18:50:53 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Tue, 08 Nov 2016 18:50:54 GMT
COPY file:7af8c0bd35066db9b0d029c9b74e72bf81420b1fd51ee55d2c28a26c36f829dd in /usr/local/bin/jenkins.sh 
# Tue, 08 Nov 2016 18:50:54 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Tue, 08 Nov 2016 18:50:55 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Tue, 08 Nov 2016 18:50:56 GMT
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
	-	`sha256:97afd02220b37314da4faacf8954160b1780e8f48b25a769b68d419dca9431d3`  
		Last Modified: Tue, 08 Nov 2016 18:52:05 GMT  
		Size: 69.5 MB (69546162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9026578194dc5eb141bde5e5b8ec44277892cae2881c9c835c610c97607cd329`  
		Last Modified: Tue, 08 Nov 2016 18:51:56 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5805b22f0d1192751429463758924bcf1321718ef7240ea95bb2f2628a03892d`  
		Last Modified: Tue, 08 Nov 2016 18:51:56 GMT  
		Size: 1.4 KB (1412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe5645cf79abc9e65c7543be4acb335486b1380874be10ecc2413cd890b502a`  
		Last Modified: Tue, 08 Nov 2016 18:51:56 GMT  
		Size: 811.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646a6df19d18aa21f31968465a809457651e58ef46043641500553a3c8c395d7`  
		Last Modified: Tue, 08 Nov 2016 18:51:56 GMT  
		Size: 1.5 KB (1512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fbf93a057c68b373447633c3db213aaad9ab0567124fdd5b6137de2dfae354`  
		Last Modified: Tue, 08 Nov 2016 18:51:57 GMT  
		Size: 2.2 KB (2166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.19.2-alpine`

```console
$ docker pull jenkins@sha256:4bb8c764e95b0fc939ab4d22f5d186d219479d01a7df47fcda98cb07fc69ec98
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.19.2-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.8 MB (144791695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f81a3213231aa4d1850fc90ecc3bb2a2fa40d80ef21c34db293971a750b9e6f`
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
# Tue, 08 Nov 2016 18:50:43 GMT
ENV JENKINS_VERSION=2.19.2
# Tue, 08 Nov 2016 18:50:44 GMT
ARG JENKINS_SHA=32b8bd1a86d6d4a91889bd38fb665db4090db081
# Tue, 08 Nov 2016 18:50:44 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.2/jenkins-war-2.19.2.war
# Tue, 08 Nov 2016 18:50:50 GMT
# ARGS: JENKINS_SHA=32b8bd1a86d6d4a91889bd38fb665db4090db081 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.2/jenkins-war-2.19.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Tue, 08 Nov 2016 18:50:51 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Tue, 08 Nov 2016 18:50:52 GMT
# ARGS: JENKINS_SHA=32b8bd1a86d6d4a91889bd38fb665db4090db081 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.2/jenkins-war-2.19.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Tue, 08 Nov 2016 18:50:52 GMT
EXPOSE 8080/tcp
# Tue, 08 Nov 2016 18:50:52 GMT
EXPOSE 50000/tcp
# Tue, 08 Nov 2016 18:50:53 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Tue, 08 Nov 2016 18:50:53 GMT
USER [jenkins]
# Tue, 08 Nov 2016 18:50:53 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Tue, 08 Nov 2016 18:50:54 GMT
COPY file:7af8c0bd35066db9b0d029c9b74e72bf81420b1fd51ee55d2c28a26c36f829dd in /usr/local/bin/jenkins.sh 
# Tue, 08 Nov 2016 18:50:54 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Tue, 08 Nov 2016 18:50:55 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Tue, 08 Nov 2016 18:50:56 GMT
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
	-	`sha256:97afd02220b37314da4faacf8954160b1780e8f48b25a769b68d419dca9431d3`  
		Last Modified: Tue, 08 Nov 2016 18:52:05 GMT  
		Size: 69.5 MB (69546162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9026578194dc5eb141bde5e5b8ec44277892cae2881c9c835c610c97607cd329`  
		Last Modified: Tue, 08 Nov 2016 18:51:56 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5805b22f0d1192751429463758924bcf1321718ef7240ea95bb2f2628a03892d`  
		Last Modified: Tue, 08 Nov 2016 18:51:56 GMT  
		Size: 1.4 KB (1412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe5645cf79abc9e65c7543be4acb335486b1380874be10ecc2413cd890b502a`  
		Last Modified: Tue, 08 Nov 2016 18:51:56 GMT  
		Size: 811.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646a6df19d18aa21f31968465a809457651e58ef46043641500553a3c8c395d7`  
		Last Modified: Tue, 08 Nov 2016 18:51:56 GMT  
		Size: 1.5 KB (1512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fbf93a057c68b373447633c3db213aaad9ab0567124fdd5b6137de2dfae354`  
		Last Modified: Tue, 08 Nov 2016 18:51:57 GMT  
		Size: 2.2 KB (2166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
