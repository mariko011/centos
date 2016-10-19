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
