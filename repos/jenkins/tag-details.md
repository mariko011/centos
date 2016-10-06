<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jenkins`

-	[`jenkins:latest`](#jenkinslatest)
-	[`jenkins:2.7.4`](#jenkins274)
-	[`jenkins:alpine`](#jenkinsalpine)
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

## `jenkins:2.7.4`

```console
$ docker pull jenkins@sha256:0c171d912438d2218ae9bea3974a91d2a41e8729b76cfdaedf771ee4d21a262d
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.7.4` - linux; amd64

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

## `jenkins:2.7.4-alpine`

```console
$ docker pull jenkins@sha256:ca8a49cd2761ef830e8ec5cb6661f97d3538682d2b661991b07c08807a4bb9ce
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.7.4-alpine` - linux; amd64

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
