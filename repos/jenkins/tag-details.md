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
$ docker pull jenkins@sha256:0c171d912438d2218ae9bea3974a91d2a41e8729b76cfdaedf771ee4d21a262d
```

-	Platforms:
	-	linux; amd64

### `jenkins:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.2 MB (313221284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96931e4c66bdae9924b85bd9573c5c5e381b2f7d7d019fc37318c06d4219ebcc`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:34:26 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:34:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:34:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:34:28 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:34:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:35:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:35:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 06 Oct 2016 22:46:46 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Thu, 06 Oct 2016 22:46:46 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Thu, 06 Oct 2016 22:46:46 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Thu, 06 Oct 2016 22:46:47 GMT
ARG user=jenkins
# Thu, 06 Oct 2016 22:46:47 GMT
ARG group=jenkins
# Thu, 06 Oct 2016 22:46:47 GMT
ARG uid=1000
# Thu, 06 Oct 2016 22:46:47 GMT
ARG gid=1000
# Thu, 06 Oct 2016 22:46:48 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Thu, 06 Oct 2016 22:46:49 GMT
VOLUME [/var/jenkins_home]
# Thu, 06 Oct 2016 22:46:49 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Thu, 06 Oct 2016 22:46:50 GMT
ENV TINI_VERSION=0.9.0
# Thu, 06 Oct 2016 22:46:50 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Thu, 06 Oct 2016 22:46:53 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Thu, 06 Oct 2016 22:46:53 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Thu, 06 Oct 2016 22:46:54 GMT
ARG JENKINS_VERSION
# Thu, 06 Oct 2016 22:46:54 GMT
ENV JENKINS_VERSION=2.19.1
# Thu, 06 Oct 2016 22:46:54 GMT
ARG JENKINS_SHA=dc28b91e553c1cd42cc30bd75d0f651671e6de0b
# Thu, 06 Oct 2016 22:46:55 GMT
ARG JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.1/jenkins-war-2.19.1.war
# Thu, 06 Oct 2016 22:47:00 GMT
# ARGS: JENKINS_SHA=dc28b91e553c1cd42cc30bd75d0f651671e6de0b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.1/jenkins-war-2.19.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Thu, 06 Oct 2016 22:47:00 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Thu, 06 Oct 2016 22:47:01 GMT
# ARGS: JENKINS_SHA=dc28b91e553c1cd42cc30bd75d0f651671e6de0b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.1/jenkins-war-2.19.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Thu, 06 Oct 2016 22:47:01 GMT
EXPOSE 8080/tcp
# Thu, 06 Oct 2016 22:47:02 GMT
EXPOSE 50000/tcp
# Thu, 06 Oct 2016 22:47:02 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Thu, 06 Oct 2016 22:47:02 GMT
USER [jenkins]
# Thu, 06 Oct 2016 22:47:03 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Thu, 06 Oct 2016 22:47:03 GMT
COPY file:7af8c0bd35066db9b0d029c9b74e72bf81420b1fd51ee55d2c28a26c36f829dd in /usr/local/bin/jenkins.sh 
# Thu, 06 Oct 2016 22:47:04 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Thu, 06 Oct 2016 22:47:04 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Thu, 06 Oct 2016 22:47:05 GMT
COPY file:2a6a3e16202b8dddab5edef50f712c16fe8f6980f5aea80c8c76b5db4f903913 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b26cafa72d5c36eb885c0fa4d359dac87ce0ecbb1f8c8dbf8d7f17b4a7385c6`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f340301a2a0fd2ddb7dd16b2ea7e7319d473a865c7bc9f93aac4dfb5e9e3a665`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8512ca758302270e4f0a519f8afd1e4aaab0bbdb9f4bb369d93e3a547e53bf4`  
		Last Modified: Fri, 23 Sep 2016 19:36:13 GMT  
		Size: 130.1 MB (130074162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76b0eeb6b4da36f6af1f62ec8b07597883176035553ff18633821edfd3750ad`  
		Last Modified: Fri, 23 Sep 2016 19:35:43 GMT  
		Size: 284.2 KB (284191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44fcfef9040d205715e6f77aebf6c6104f9a383fed491499ab43c3e6e84174a`  
		Last Modified: Thu, 06 Oct 2016 22:47:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76126a05fd65e428e91e31b69ceaf433ec8d0cf1960b3ce52defdc75ea136232`  
		Last Modified: Thu, 06 Oct 2016 22:47:37 GMT  
		Size: 4.4 KB (4386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7abcfe8efa385031eafd52a4a6760c4b244ac265f31c8e368a22349fbd80dc4`  
		Last Modified: Thu, 06 Oct 2016 22:47:37 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95471b08ade7c8b07a24b08cf69e7e705f7614664b269c0de35a0f0b35559e7c`  
		Last Modified: Thu, 06 Oct 2016 22:47:37 GMT  
		Size: 337.2 KB (337236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d4aa55e97e1839618094bfbd43ed4a3a1f59280a5fec29752d146a1253c6e72`  
		Last Modified: Thu, 06 Oct 2016 22:47:36 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eecee90c10ea8d90640400c8e073e694fdf0ac3dac67c74b60a9a8b9b16d86c`  
		Last Modified: Thu, 06 Oct 2016 22:47:45 GMT  
		Size: 69.5 MB (69542137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea27bdc070306a71bd41685ed0e306967a19d0764fbae3646dcbc209bc0150a`  
		Last Modified: Thu, 06 Oct 2016 22:47:33 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78629a6ee074db4529ac0421ca288a2f32038032e87ead02bb47773b63be4b8f`  
		Last Modified: Thu, 06 Oct 2016 22:47:34 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266b86daa9ec4d906da32a11dac2fee04f9273f97a43284ce176c4db3e9026b8`  
		Last Modified: Thu, 06 Oct 2016 22:47:33 GMT  
		Size: 818.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d3f4079bbde4fffa27c888a4f0a13f4dedb4e600bcada2c1a98b18f69babf7c`  
		Last Modified: Thu, 06 Oct 2016 22:47:33 GMT  
		Size: 1.5 KB (1521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6041d3c8b8aed8dc3ea9be1da7a596308f4c84b7e50def1bc4772f6e25644b1`  
		Last Modified: Thu, 06 Oct 2016 22:47:33 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.19.1`

```console
$ docker pull jenkins@sha256:0c171d912438d2218ae9bea3974a91d2a41e8729b76cfdaedf771ee4d21a262d
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.19.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.2 MB (313221284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96931e4c66bdae9924b85bd9573c5c5e381b2f7d7d019fc37318c06d4219ebcc`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:34:26 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:34:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:34:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:34:28 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:34:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:35:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:35:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 06 Oct 2016 22:46:46 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Thu, 06 Oct 2016 22:46:46 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Thu, 06 Oct 2016 22:46:46 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Thu, 06 Oct 2016 22:46:47 GMT
ARG user=jenkins
# Thu, 06 Oct 2016 22:46:47 GMT
ARG group=jenkins
# Thu, 06 Oct 2016 22:46:47 GMT
ARG uid=1000
# Thu, 06 Oct 2016 22:46:47 GMT
ARG gid=1000
# Thu, 06 Oct 2016 22:46:48 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Thu, 06 Oct 2016 22:46:49 GMT
VOLUME [/var/jenkins_home]
# Thu, 06 Oct 2016 22:46:49 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Thu, 06 Oct 2016 22:46:50 GMT
ENV TINI_VERSION=0.9.0
# Thu, 06 Oct 2016 22:46:50 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Thu, 06 Oct 2016 22:46:53 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Thu, 06 Oct 2016 22:46:53 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Thu, 06 Oct 2016 22:46:54 GMT
ARG JENKINS_VERSION
# Thu, 06 Oct 2016 22:46:54 GMT
ENV JENKINS_VERSION=2.19.1
# Thu, 06 Oct 2016 22:46:54 GMT
ARG JENKINS_SHA=dc28b91e553c1cd42cc30bd75d0f651671e6de0b
# Thu, 06 Oct 2016 22:46:55 GMT
ARG JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.1/jenkins-war-2.19.1.war
# Thu, 06 Oct 2016 22:47:00 GMT
# ARGS: JENKINS_SHA=dc28b91e553c1cd42cc30bd75d0f651671e6de0b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.1/jenkins-war-2.19.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Thu, 06 Oct 2016 22:47:00 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Thu, 06 Oct 2016 22:47:01 GMT
# ARGS: JENKINS_SHA=dc28b91e553c1cd42cc30bd75d0f651671e6de0b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.1/jenkins-war-2.19.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Thu, 06 Oct 2016 22:47:01 GMT
EXPOSE 8080/tcp
# Thu, 06 Oct 2016 22:47:02 GMT
EXPOSE 50000/tcp
# Thu, 06 Oct 2016 22:47:02 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Thu, 06 Oct 2016 22:47:02 GMT
USER [jenkins]
# Thu, 06 Oct 2016 22:47:03 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Thu, 06 Oct 2016 22:47:03 GMT
COPY file:7af8c0bd35066db9b0d029c9b74e72bf81420b1fd51ee55d2c28a26c36f829dd in /usr/local/bin/jenkins.sh 
# Thu, 06 Oct 2016 22:47:04 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Thu, 06 Oct 2016 22:47:04 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Thu, 06 Oct 2016 22:47:05 GMT
COPY file:2a6a3e16202b8dddab5edef50f712c16fe8f6980f5aea80c8c76b5db4f903913 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b26cafa72d5c36eb885c0fa4d359dac87ce0ecbb1f8c8dbf8d7f17b4a7385c6`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f340301a2a0fd2ddb7dd16b2ea7e7319d473a865c7bc9f93aac4dfb5e9e3a665`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8512ca758302270e4f0a519f8afd1e4aaab0bbdb9f4bb369d93e3a547e53bf4`  
		Last Modified: Fri, 23 Sep 2016 19:36:13 GMT  
		Size: 130.1 MB (130074162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76b0eeb6b4da36f6af1f62ec8b07597883176035553ff18633821edfd3750ad`  
		Last Modified: Fri, 23 Sep 2016 19:35:43 GMT  
		Size: 284.2 KB (284191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44fcfef9040d205715e6f77aebf6c6104f9a383fed491499ab43c3e6e84174a`  
		Last Modified: Thu, 06 Oct 2016 22:47:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76126a05fd65e428e91e31b69ceaf433ec8d0cf1960b3ce52defdc75ea136232`  
		Last Modified: Thu, 06 Oct 2016 22:47:37 GMT  
		Size: 4.4 KB (4386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7abcfe8efa385031eafd52a4a6760c4b244ac265f31c8e368a22349fbd80dc4`  
		Last Modified: Thu, 06 Oct 2016 22:47:37 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95471b08ade7c8b07a24b08cf69e7e705f7614664b269c0de35a0f0b35559e7c`  
		Last Modified: Thu, 06 Oct 2016 22:47:37 GMT  
		Size: 337.2 KB (337236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d4aa55e97e1839618094bfbd43ed4a3a1f59280a5fec29752d146a1253c6e72`  
		Last Modified: Thu, 06 Oct 2016 22:47:36 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eecee90c10ea8d90640400c8e073e694fdf0ac3dac67c74b60a9a8b9b16d86c`  
		Last Modified: Thu, 06 Oct 2016 22:47:45 GMT  
		Size: 69.5 MB (69542137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea27bdc070306a71bd41685ed0e306967a19d0764fbae3646dcbc209bc0150a`  
		Last Modified: Thu, 06 Oct 2016 22:47:33 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78629a6ee074db4529ac0421ca288a2f32038032e87ead02bb47773b63be4b8f`  
		Last Modified: Thu, 06 Oct 2016 22:47:34 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266b86daa9ec4d906da32a11dac2fee04f9273f97a43284ce176c4db3e9026b8`  
		Last Modified: Thu, 06 Oct 2016 22:47:33 GMT  
		Size: 818.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d3f4079bbde4fffa27c888a4f0a13f4dedb4e600bcada2c1a98b18f69babf7c`  
		Last Modified: Thu, 06 Oct 2016 22:47:33 GMT  
		Size: 1.5 KB (1521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6041d3c8b8aed8dc3ea9be1da7a596308f4c84b7e50def1bc4772f6e25644b1`  
		Last Modified: Thu, 06 Oct 2016 22:47:33 GMT  
		Size: 2.2 KB (2176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.7.4`

```console
$ docker pull jenkins@sha256:27820dd51c84b18003ae4b7b15c6d3f5dd208af88a66fcd55f668c11314e9f96
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.7.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.9 MB (312854260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:865c4db528ff4d83e8ecd08944d3a5585a714a1bf65afc3f54bfb32fcb1c57c1`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:34:26 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:34:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:34:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:34:28 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:34:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:35:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:35:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 03:50:57 GMT
RUN apt-get update && apt-get install -y git curl zip && rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 03:50:58 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Sat, 24 Sep 2016 03:50:58 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Sat, 24 Sep 2016 03:50:58 GMT
ARG user=jenkins
# Sat, 24 Sep 2016 03:50:59 GMT
ARG group=jenkins
# Sat, 24 Sep 2016 03:50:59 GMT
ARG uid=1000
# Sat, 24 Sep 2016 03:50:59 GMT
ARG gid=1000
# Sat, 24 Sep 2016 03:51:00 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Sat, 24 Sep 2016 03:51:01 GMT
VOLUME [/var/jenkins_home]
# Sat, 24 Sep 2016 03:51:02 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Sat, 24 Sep 2016 03:51:02 GMT
ENV TINI_VERSION=0.9.0
# Sat, 24 Sep 2016 03:51:03 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Sat, 24 Sep 2016 03:51:06 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Sat, 24 Sep 2016 03:51:06 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Sat, 24 Sep 2016 03:51:07 GMT
ARG JENKINS_VERSION
# Sat, 24 Sep 2016 03:51:07 GMT
ENV JENKINS_VERSION=2.7.4
# Sat, 24 Sep 2016 03:51:08 GMT
ARG JENKINS_SHA=07a2e3e4ace728fdbcc823f46068d2f8cc3cb97b
# Sat, 24 Sep 2016 03:51:08 GMT
ARG JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.4/jenkins-war-2.7.4.war
# Sat, 24 Sep 2016 03:51:13 GMT
# ARGS: JENKINS_SHA=07a2e3e4ace728fdbcc823f46068d2f8cc3cb97b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.4/jenkins-war-2.7.4.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Sat, 24 Sep 2016 03:51:14 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Sat, 24 Sep 2016 03:51:15 GMT
# ARGS: JENKINS_SHA=07a2e3e4ace728fdbcc823f46068d2f8cc3cb97b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.4/jenkins-war-2.7.4.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Sat, 24 Sep 2016 03:51:15 GMT
EXPOSE 8080/tcp
# Sat, 24 Sep 2016 03:51:16 GMT
EXPOSE 50000/tcp
# Sat, 24 Sep 2016 03:51:16 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Sat, 24 Sep 2016 03:51:17 GMT
USER [jenkins]
# Sat, 24 Sep 2016 03:51:17 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Sat, 24 Sep 2016 03:51:18 GMT
COPY file:fc94121cf01d6d05be390499fbde73a26d1cf59af88d4d29dab5e81024778028 in /usr/local/bin/jenkins.sh 
# Sat, 24 Sep 2016 03:51:18 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Sat, 24 Sep 2016 03:51:19 GMT
COPY file:902c50db7f531a8fe363c937a24f6474b4525ed70c2b3d807306d33d6d254a9d in /usr/local/bin/plugins.sh 
# Sat, 24 Sep 2016 03:51:20 GMT
COPY file:c9cb5b680a6dd3e26901cca8c795d5aacfe8ff25d6bfc2e19624e203933efea7 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b26cafa72d5c36eb885c0fa4d359dac87ce0ecbb1f8c8dbf8d7f17b4a7385c6`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f340301a2a0fd2ddb7dd16b2ea7e7319d473a865c7bc9f93aac4dfb5e9e3a665`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8512ca758302270e4f0a519f8afd1e4aaab0bbdb9f4bb369d93e3a547e53bf4`  
		Last Modified: Fri, 23 Sep 2016 19:36:13 GMT  
		Size: 130.1 MB (130074162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76b0eeb6b4da36f6af1f62ec8b07597883176035553ff18633821edfd3750ad`  
		Last Modified: Fri, 23 Sep 2016 19:35:43 GMT  
		Size: 284.2 KB (284191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3006d37224a412a066fbede174967c4bda38708e1fce9475923c14e58c5aff`  
		Last Modified: Sat, 24 Sep 2016 03:51:34 GMT  
		Size: 523.1 KB (523135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ff00dc0e4271555e58e653f006679d165b5d1cb3f6b73cf2ca0aeda6887830`  
		Last Modified: Sat, 24 Sep 2016 03:51:33 GMT  
		Size: 4.4 KB (4390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d4b7b9d6e603a84da9a44f573537bf4474b64eda604cdaed39e2af3974d6f6`  
		Last Modified: Sat, 24 Sep 2016 03:51:31 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cfdf921064ae05316b756f5418ed2324ef8089f477e68c6318078435beb18e`  
		Last Modified: Sat, 24 Sep 2016 03:51:31 GMT  
		Size: 337.2 KB (337237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40bfe64a18ed93355bd6150ec8c718dee152c2318161a05a9a7dacae49d69386`  
		Last Modified: Sat, 24 Sep 2016 03:51:30 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5edeed12b6b98671e9d38c28cb3488554b460b5cf50dec96495dcd8102653cc5`  
		Last Modified: Sat, 24 Sep 2016 03:51:38 GMT  
		Size: 68.7 MB (68652372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2bc7d49cb7268f790efd5b4af1b27e412e3c0479df13483246db53044a2de7`  
		Last Modified: Sat, 24 Sep 2016 03:51:28 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979d862d32a2b3221514d5d0bd642fa946e0d41eb7b4b700de818630d192549e`  
		Last Modified: Sat, 24 Sep 2016 03:51:28 GMT  
		Size: 1.4 KB (1421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4f6028d1bcc872f6ad89f5632a99707b4cffb79bd50e12d41b7cfc8073dce0`  
		Last Modified: Sat, 24 Sep 2016 03:51:27 GMT  
		Size: 641.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a73375f5728ac9ae2b393e79a58607a3136448975aaed4ddcca1788ab929566`  
		Last Modified: Sat, 24 Sep 2016 03:51:29 GMT  
		Size: 1.5 KB (1501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90e6b75bbcfaeb598f020635737dd1cbb2f65d1d5afeda4d839ebcff927ce6f`  
		Last Modified: Sat, 24 Sep 2016 03:51:29 GMT  
		Size: 2.1 KB (2131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:alpine`

```console
$ docker pull jenkins@sha256:ca8a49cd2761ef830e8ec5cb6661f97d3538682d2b661991b07c08807a4bb9ce
```

-	Platforms:
	-	linux; amd64

### `jenkins:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.8 MB (144784904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93a4637d9b28d7282ba18cc7a7202b043f4b4ed6030d6fde3f4b08b9c175e6bf`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:05:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 23 Sep 2016 17:05:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:05:18 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 06 Oct 2016 22:47:08 GMT
RUN apk add --no-cache git openssh-client curl unzip bash ttf-dejavu coreutils
# Thu, 06 Oct 2016 22:47:09 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Thu, 06 Oct 2016 22:47:09 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Thu, 06 Oct 2016 22:47:09 GMT
ARG user=jenkins
# Thu, 06 Oct 2016 22:47:09 GMT
ARG group=jenkins
# Thu, 06 Oct 2016 22:47:10 GMT
ARG uid=1000
# Thu, 06 Oct 2016 22:47:10 GMT
ARG gid=1000
# Thu, 06 Oct 2016 22:47:11 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN addgroup -g ${gid} ${group}     && adduser -h "$JENKINS_HOME" -u ${uid} -G ${group} -s /bin/bash -D ${user}
# Thu, 06 Oct 2016 22:47:11 GMT
VOLUME [/var/jenkins_home]
# Thu, 06 Oct 2016 22:47:12 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Thu, 06 Oct 2016 22:47:12 GMT
ENV TINI_VERSION=0.9.0
# Thu, 06 Oct 2016 22:47:12 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Thu, 06 Oct 2016 22:47:15 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Thu, 06 Oct 2016 22:47:15 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Thu, 06 Oct 2016 22:47:15 GMT
ARG JENKINS_VERSION
# Thu, 06 Oct 2016 22:47:16 GMT
ENV JENKINS_VERSION=2.19.1
# Thu, 06 Oct 2016 22:47:16 GMT
ARG JENKINS_SHA=dc28b91e553c1cd42cc30bd75d0f651671e6de0b
# Thu, 06 Oct 2016 22:47:16 GMT
ARG JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.1/jenkins-war-2.19.1.war
# Thu, 06 Oct 2016 22:47:21 GMT
# ARGS: JENKINS_SHA=dc28b91e553c1cd42cc30bd75d0f651671e6de0b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.1/jenkins-war-2.19.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Thu, 06 Oct 2016 22:47:21 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Thu, 06 Oct 2016 22:47:22 GMT
# ARGS: JENKINS_SHA=dc28b91e553c1cd42cc30bd75d0f651671e6de0b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.1/jenkins-war-2.19.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Thu, 06 Oct 2016 22:47:22 GMT
EXPOSE 8080/tcp
# Thu, 06 Oct 2016 22:47:22 GMT
EXPOSE 50000/tcp
# Thu, 06 Oct 2016 22:47:23 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Thu, 06 Oct 2016 22:47:23 GMT
USER [jenkins]
# Thu, 06 Oct 2016 22:47:23 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Thu, 06 Oct 2016 22:47:23 GMT
COPY file:7af8c0bd35066db9b0d029c9b74e72bf81420b1fd51ee55d2c28a26c36f829dd in /usr/local/bin/jenkins.sh 
# Thu, 06 Oct 2016 22:47:24 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Thu, 06 Oct 2016 22:47:24 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Thu, 06 Oct 2016 22:47:25 GMT
COPY file:2a6a3e16202b8dddab5edef50f712c16fe8f6980f5aea80c8c76b5db4f903913 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9536b9909f79d52b70efe60abe868e66019b131e7618f3498475b236a756e2ad`  
		Last Modified: Fri, 23 Sep 2016 17:05:37 GMT  
		Size: 49.3 MB (49325354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0853926e77502ef090154955367d10a1c87ddea0a8377fe2de9118219b39f5`  
		Last Modified: Thu, 06 Oct 2016 22:48:24 GMT  
		Size: 23.3 MB (23258817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f78855269ecfd7d23ddaaf43e3966a3f026389c7410cb36fe92161f4432a98`  
		Last Modified: Thu, 06 Oct 2016 22:48:16 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d8adda9954ca30d53ecfbf51f0d9b6332b60b121f3e77d15bddfa18b353138e`  
		Last Modified: Thu, 06 Oct 2016 22:48:16 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3576633c9cfa414d6b56deafe6fdea1fd560f4e0a4d671dabc02751c1dd495b6`  
		Last Modified: Thu, 06 Oct 2016 22:48:16 GMT  
		Size: 337.2 KB (337238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ea82d4f8dad62f8f5c74a4adba3b83b0e97a680ce46fc520387920a3e2ecf8`  
		Last Modified: Thu, 06 Oct 2016 22:48:17 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af225c76358c2a4215a5b70c0965ce57b67c066308c6b6690f20a7829f40a7c3`  
		Last Modified: Thu, 06 Oct 2016 22:48:24 GMT  
		Size: 69.5 MB (69542138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49491f852fc2fe8f6275f89cf9a2b7b073eab3d7c2cb97ec7e17a920f235cd68`  
		Last Modified: Thu, 06 Oct 2016 22:48:13 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24144859ebf75ebc61cd8ef98d6ff7653283212f26891c50347418cd9dd9981d`  
		Last Modified: Thu, 06 Oct 2016 22:48:13 GMT  
		Size: 1.4 KB (1411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560a222fd07b0335d65c01100a21308623eda2c35ce6108276b77ecde0793661`  
		Last Modified: Thu, 06 Oct 2016 22:48:13 GMT  
		Size: 809.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06283338229dc59fe924757a4270c7e3cf51cd5327eb9113b6a6f3df38b021e6`  
		Last Modified: Thu, 06 Oct 2016 22:48:13 GMT  
		Size: 1.5 KB (1514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3522b8ae79cad2f036b59b9053e4ac6265ac5171aac1ce3ac64c192baef4cd9`  
		Last Modified: Thu, 06 Oct 2016 22:48:13 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.19.1-alpine`

```console
$ docker pull jenkins@sha256:ca8a49cd2761ef830e8ec5cb6661f97d3538682d2b661991b07c08807a4bb9ce
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.19.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.8 MB (144784904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93a4637d9b28d7282ba18cc7a7202b043f4b4ed6030d6fde3f4b08b9c175e6bf`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:05:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 23 Sep 2016 17:05:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:05:18 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 06 Oct 2016 22:47:08 GMT
RUN apk add --no-cache git openssh-client curl unzip bash ttf-dejavu coreutils
# Thu, 06 Oct 2016 22:47:09 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Thu, 06 Oct 2016 22:47:09 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Thu, 06 Oct 2016 22:47:09 GMT
ARG user=jenkins
# Thu, 06 Oct 2016 22:47:09 GMT
ARG group=jenkins
# Thu, 06 Oct 2016 22:47:10 GMT
ARG uid=1000
# Thu, 06 Oct 2016 22:47:10 GMT
ARG gid=1000
# Thu, 06 Oct 2016 22:47:11 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN addgroup -g ${gid} ${group}     && adduser -h "$JENKINS_HOME" -u ${uid} -G ${group} -s /bin/bash -D ${user}
# Thu, 06 Oct 2016 22:47:11 GMT
VOLUME [/var/jenkins_home]
# Thu, 06 Oct 2016 22:47:12 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Thu, 06 Oct 2016 22:47:12 GMT
ENV TINI_VERSION=0.9.0
# Thu, 06 Oct 2016 22:47:12 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Thu, 06 Oct 2016 22:47:15 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Thu, 06 Oct 2016 22:47:15 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Thu, 06 Oct 2016 22:47:15 GMT
ARG JENKINS_VERSION
# Thu, 06 Oct 2016 22:47:16 GMT
ENV JENKINS_VERSION=2.19.1
# Thu, 06 Oct 2016 22:47:16 GMT
ARG JENKINS_SHA=dc28b91e553c1cd42cc30bd75d0f651671e6de0b
# Thu, 06 Oct 2016 22:47:16 GMT
ARG JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.1/jenkins-war-2.19.1.war
# Thu, 06 Oct 2016 22:47:21 GMT
# ARGS: JENKINS_SHA=dc28b91e553c1cd42cc30bd75d0f651671e6de0b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.1/jenkins-war-2.19.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Thu, 06 Oct 2016 22:47:21 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Thu, 06 Oct 2016 22:47:22 GMT
# ARGS: JENKINS_SHA=dc28b91e553c1cd42cc30bd75d0f651671e6de0b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.1/jenkins-war-2.19.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Thu, 06 Oct 2016 22:47:22 GMT
EXPOSE 8080/tcp
# Thu, 06 Oct 2016 22:47:22 GMT
EXPOSE 50000/tcp
# Thu, 06 Oct 2016 22:47:23 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Thu, 06 Oct 2016 22:47:23 GMT
USER [jenkins]
# Thu, 06 Oct 2016 22:47:23 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Thu, 06 Oct 2016 22:47:23 GMT
COPY file:7af8c0bd35066db9b0d029c9b74e72bf81420b1fd51ee55d2c28a26c36f829dd in /usr/local/bin/jenkins.sh 
# Thu, 06 Oct 2016 22:47:24 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Thu, 06 Oct 2016 22:47:24 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Thu, 06 Oct 2016 22:47:25 GMT
COPY file:2a6a3e16202b8dddab5edef50f712c16fe8f6980f5aea80c8c76b5db4f903913 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9536b9909f79d52b70efe60abe868e66019b131e7618f3498475b236a756e2ad`  
		Last Modified: Fri, 23 Sep 2016 17:05:37 GMT  
		Size: 49.3 MB (49325354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0853926e77502ef090154955367d10a1c87ddea0a8377fe2de9118219b39f5`  
		Last Modified: Thu, 06 Oct 2016 22:48:24 GMT  
		Size: 23.3 MB (23258817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f78855269ecfd7d23ddaaf43e3966a3f026389c7410cb36fe92161f4432a98`  
		Last Modified: Thu, 06 Oct 2016 22:48:16 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d8adda9954ca30d53ecfbf51f0d9b6332b60b121f3e77d15bddfa18b353138e`  
		Last Modified: Thu, 06 Oct 2016 22:48:16 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3576633c9cfa414d6b56deafe6fdea1fd560f4e0a4d671dabc02751c1dd495b6`  
		Last Modified: Thu, 06 Oct 2016 22:48:16 GMT  
		Size: 337.2 KB (337238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ea82d4f8dad62f8f5c74a4adba3b83b0e97a680ce46fc520387920a3e2ecf8`  
		Last Modified: Thu, 06 Oct 2016 22:48:17 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af225c76358c2a4215a5b70c0965ce57b67c066308c6b6690f20a7829f40a7c3`  
		Last Modified: Thu, 06 Oct 2016 22:48:24 GMT  
		Size: 69.5 MB (69542138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49491f852fc2fe8f6275f89cf9a2b7b073eab3d7c2cb97ec7e17a920f235cd68`  
		Last Modified: Thu, 06 Oct 2016 22:48:13 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24144859ebf75ebc61cd8ef98d6ff7653283212f26891c50347418cd9dd9981d`  
		Last Modified: Thu, 06 Oct 2016 22:48:13 GMT  
		Size: 1.4 KB (1411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560a222fd07b0335d65c01100a21308623eda2c35ce6108276b77ecde0793661`  
		Last Modified: Thu, 06 Oct 2016 22:48:13 GMT  
		Size: 809.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06283338229dc59fe924757a4270c7e3cf51cd5327eb9113b6a6f3df38b021e6`  
		Last Modified: Thu, 06 Oct 2016 22:48:13 GMT  
		Size: 1.5 KB (1514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3522b8ae79cad2f036b59b9053e4ac6265ac5171aac1ce3ac64c192baef4cd9`  
		Last Modified: Thu, 06 Oct 2016 22:48:13 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.7.4-alpine`

```console
$ docker pull jenkins@sha256:c9252f5c8e202ca8bdc2800997c7c10a6155e0dce67d969dc6d6235c2a2cce71
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.7.4-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144097424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7281ecb27b979500082bef4985abaf7dfc743d213a9bc21cfbb2fd2aca1977f2`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:05:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 23 Sep 2016 17:05:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:05:18 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:51:27 GMT
RUN apk add --no-cache git openssh-client curl zip unzip bash ttf-dejavu coreutils
# Fri, 23 Sep 2016 18:51:27 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Fri, 23 Sep 2016 18:51:27 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Fri, 23 Sep 2016 18:51:28 GMT
ARG user=jenkins
# Fri, 23 Sep 2016 18:51:28 GMT
ARG group=jenkins
# Fri, 23 Sep 2016 18:51:29 GMT
ARG uid=1000
# Fri, 23 Sep 2016 18:51:29 GMT
ARG gid=1000
# Fri, 23 Sep 2016 18:51:31 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN addgroup -g ${gid} ${group}     && adduser -h "$JENKINS_HOME" -u ${uid} -G ${group} -s /bin/bash -D ${user}
# Fri, 23 Sep 2016 18:51:31 GMT
VOLUME [/var/jenkins_home]
# Fri, 23 Sep 2016 18:51:32 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Fri, 23 Sep 2016 18:51:33 GMT
ENV TINI_VERSION=0.9.0
# Fri, 23 Sep 2016 18:51:33 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Fri, 23 Sep 2016 18:51:36 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Fri, 23 Sep 2016 18:51:37 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Fri, 23 Sep 2016 18:51:37 GMT
ARG JENKINS_VERSION
# Fri, 23 Sep 2016 18:51:37 GMT
ENV JENKINS_VERSION=2.7.4
# Fri, 23 Sep 2016 18:51:38 GMT
ARG JENKINS_SHA=07a2e3e4ace728fdbcc823f46068d2f8cc3cb97b
# Fri, 23 Sep 2016 18:51:38 GMT
ARG JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.4/jenkins-war-2.7.4.war
# Fri, 23 Sep 2016 18:51:44 GMT
# ARGS: JENKINS_SHA=07a2e3e4ace728fdbcc823f46068d2f8cc3cb97b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.4/jenkins-war-2.7.4.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Fri, 23 Sep 2016 18:51:44 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Fri, 23 Sep 2016 18:51:46 GMT
# ARGS: JENKINS_SHA=07a2e3e4ace728fdbcc823f46068d2f8cc3cb97b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.4/jenkins-war-2.7.4.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Fri, 23 Sep 2016 18:51:46 GMT
EXPOSE 8080/tcp
# Fri, 23 Sep 2016 18:51:46 GMT
EXPOSE 50000/tcp
# Fri, 23 Sep 2016 18:51:47 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Fri, 23 Sep 2016 18:51:47 GMT
USER [jenkins]
# Fri, 23 Sep 2016 18:51:48 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Fri, 23 Sep 2016 18:51:49 GMT
COPY file:fc94121cf01d6d05be390499fbde73a26d1cf59af88d4d29dab5e81024778028 in /usr/local/bin/jenkins.sh 
# Fri, 23 Sep 2016 18:51:49 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Fri, 23 Sep 2016 18:51:50 GMT
COPY file:902c50db7f531a8fe363c937a24f6474b4525ed70c2b3d807306d33d6d254a9d in /usr/local/bin/plugins.sh 
# Fri, 23 Sep 2016 18:51:50 GMT
COPY file:c9cb5b680a6dd3e26901cca8c795d5aacfe8ff25d6bfc2e19624e203933efea7 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9536b9909f79d52b70efe60abe868e66019b131e7618f3498475b236a756e2ad`  
		Last Modified: Fri, 23 Sep 2016 17:05:37 GMT  
		Size: 49.3 MB (49325354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb05a826f85514b9cc1374bd6d6283fcd3f0187b22c47f9d43453336676513e`  
		Last Modified: Fri, 23 Sep 2016 18:52:14 GMT  
		Size: 23.5 MB (23461346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a942b86455c71e14cdd87a700dfb5972676cd9924ca45959448349df2e747339`  
		Last Modified: Fri, 23 Sep 2016 18:52:05 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698895b5a486a22b3a5d7685c3b1e93114fea0162d217ff5949ee4499a4f2b13`  
		Last Modified: Fri, 23 Sep 2016 18:52:03 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f608d71c0b8c45cfcb748bcb0769293bf1732ca9ca3fd2fcbef92735954d04b9`  
		Last Modified: Fri, 23 Sep 2016 18:52:03 GMT  
		Size: 337.2 KB (337238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb78415c6d6cf72f01f60cf3934136aa3912ef1f969dd0cee3a0b9bcf1eb978`  
		Last Modified: Fri, 23 Sep 2016 18:52:02 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b2fe170902b79bb27151e6ef273b9c81f507abbf13ae394fbc2707b4041585`  
		Last Modified: Fri, 23 Sep 2016 18:52:09 GMT  
		Size: 68.7 MB (68652375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ef9ba9b6dda9b22a08f2a72bf479363b23176a986a3a3be59538d3a63d4587`  
		Last Modified: Fri, 23 Sep 2016 18:52:00 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36cbe135af38ac90eba24bbac6128d14cfab1ca7aecc05f9f68bbac401fbfd34`  
		Last Modified: Fri, 23 Sep 2016 18:52:00 GMT  
		Size: 1.4 KB (1413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42f84363f9a4929bcb8a2dde1f5ce48dc4494b78fd4d704431ec37aff394580`  
		Last Modified: Fri, 23 Sep 2016 18:51:59 GMT  
		Size: 632.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aae2d88978b46947fe177dbe84549ea8d263a25863826fe9595b8b455246d37`  
		Last Modified: Fri, 23 Sep 2016 18:52:02 GMT  
		Size: 1.5 KB (1491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9a7929a790f96332355ec89ddca259b17fee3c92ea8414df5a80524f78cb5f`  
		Last Modified: Fri, 23 Sep 2016 18:51:59 GMT  
		Size: 2.1 KB (2125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
