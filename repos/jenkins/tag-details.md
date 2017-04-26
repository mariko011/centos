<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jenkins`

-	[`jenkins:latest`](#jenkinslatest)
-	[`jenkins:2.46.2`](#jenkins2462)
-	[`jenkins:alpine`](#jenkinsalpine)
-	[`jenkins:2.46.2-alpine`](#jenkins2462-alpine)

## `jenkins:latest`

```console
$ docker pull jenkins@sha256:f5218ea328d6d237ae7fa66bd8a79b23f44511b665deae003211d1d07e8cfde9
```

-	Platforms:
	-	linux; amd64

### `jenkins:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.3 MB (318310050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25063b420e58fcfcb5142760157ceff091407e96584f6f7ef2345fa1199f1c9f`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:38:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:41:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:41:08 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:41:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:41:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:41:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:42:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:42:20 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:36:22 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 10:36:23 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Tue, 25 Apr 2017 10:36:24 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Tue, 25 Apr 2017 10:36:24 GMT
ARG user=jenkins
# Tue, 25 Apr 2017 10:36:25 GMT
ARG group=jenkins
# Tue, 25 Apr 2017 10:36:25 GMT
ARG uid=1000
# Tue, 25 Apr 2017 10:36:26 GMT
ARG gid=1000
# Tue, 25 Apr 2017 10:36:27 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Tue, 25 Apr 2017 10:36:28 GMT
VOLUME [/var/jenkins_home]
# Tue, 25 Apr 2017 10:36:30 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Tue, 25 Apr 2017 10:36:30 GMT
ENV TINI_VERSION=0.14.0
# Tue, 25 Apr 2017 10:36:31 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Tue, 25 Apr 2017 10:36:34 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Tue, 25 Apr 2017 10:36:35 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Tue, 25 Apr 2017 10:36:36 GMT
ARG JENKINS_VERSION
# Wed, 26 Apr 2017 16:58:30 GMT
ENV JENKINS_VERSION=2.46.2
# Wed, 26 Apr 2017 16:58:31 GMT
ARG JENKINS_SHA=aa7f243a4c84d3d6cfb99a218950b8f7b926af7aa2570b0e1707279d464472c7
# Wed, 26 Apr 2017 16:58:31 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.46.2/jenkins-war-2.46.2.war
# Wed, 26 Apr 2017 16:58:37 GMT
# ARGS: JENKINS_SHA=aa7f243a4c84d3d6cfb99a218950b8f7b926af7aa2570b0e1707279d464472c7 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.46.2/jenkins-war-2.46.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Wed, 26 Apr 2017 16:58:50 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Wed, 26 Apr 2017 16:58:51 GMT
# ARGS: JENKINS_SHA=aa7f243a4c84d3d6cfb99a218950b8f7b926af7aa2570b0e1707279d464472c7 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.46.2/jenkins-war-2.46.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Wed, 26 Apr 2017 16:58:52 GMT
EXPOSE 8080/tcp
# Wed, 26 Apr 2017 16:59:09 GMT
EXPOSE 50000/tcp
# Wed, 26 Apr 2017 16:59:10 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Wed, 26 Apr 2017 16:59:11 GMT
USER [jenkins]
# Wed, 26 Apr 2017 16:59:12 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Wed, 26 Apr 2017 16:59:13 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Wed, 26 Apr 2017 16:59:14 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Wed, 26 Apr 2017 16:59:15 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Wed, 26 Apr 2017 16:59:17 GMT
COPY file:2a6a3e16202b8dddab5edef50f712c16fe8f6980f5aea80c8c76b5db4f903913 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46c5b79125ec83395527f1cf86e8b3f5f4e2fc6bbf53d087b521e470afc46c6`  
		Last Modified: Tue, 25 Apr 2017 00:47:56 GMT  
		Size: 599.6 KB (599608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d4cb7cc8bcb4f9a4cf2ccb6830338a99dd13262d8c4ae24f083d27de09d10d`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d273117faaf9aabd15756fc311cae3773768e2409158bd8a6e76cc5a3035913`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e9e110f314c1151aa0bc4b538eafd5bd53f1bdb1ca00356e1b9318ad1e171f`  
		Last Modified: Tue, 25 Apr 2017 00:52:23 GMT  
		Size: 131.9 MB (131875124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7082199c57eaf7b0105a9b93107b5bdc19526d0cdacc540f865817f06ad1050`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 289.6 KB (289642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78a9ae000b4d0b95f10527a11e4bfa1db9e24915358f6756d3cc96ea9fafb56`  
		Last Modified: Tue, 25 Apr 2017 14:33:12 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dafb4cdbd1d0baee6c1f241a1fd3519d6e2d10d0ea01bf4595b71d3de258a85`  
		Last Modified: Tue, 25 Apr 2017 14:33:11 GMT  
		Size: 4.4 KB (4421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d051da4840994120bcb77a458fa72b4509a4ab76597dccf88aaef8028cf0c300`  
		Last Modified: Tue, 25 Apr 2017 14:33:10 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9355f4d444067f473b67c74a99a894cbef9280c0b44fa92d3c475577af6bc4f9`  
		Last Modified: Tue, 25 Apr 2017 14:33:10 GMT  
		Size: 354.8 KB (354776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19608cd3d6397f855bfe5f3c911bfa1c955d4fc9f19c7d7e2b80447fe84afc55`  
		Last Modified: Tue, 25 Apr 2017 14:33:10 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0328da91553020177c0906c5647ff6005686d94c5e35aef06083736435b84d`  
		Last Modified: Wed, 26 Apr 2017 17:00:37 GMT  
		Size: 70.1 MB (70131047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ccfb64d95f5e11e4182447f1ae9252b75082df28b408b77895429b39b6a6e92`  
		Last Modified: Wed, 26 Apr 2017 17:00:31 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85c732f771d646ff0f1078a35e40a1316197c614c1e52f85c2df7aa49d12e51`  
		Last Modified: Wed, 26 Apr 2017 17:00:30 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88d4a4c70da12344dd30a090c70eea9670758f7e7c38dbfa56b08662cb42274a`  
		Last Modified: Wed, 26 Apr 2017 17:00:31 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4f82a8590326f9ceb4e139306167aa24b0f33876aceb7a520b11a4ca8a0a0f`  
		Last Modified: Wed, 26 Apr 2017 17:00:30 GMT  
		Size: 1.5 KB (1530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cd7bb35717d0f51ae929d0ca4a9a59f5e694beb1593b4a957403076d4b0a78`  
		Last Modified: Wed, 26 Apr 2017 17:00:30 GMT  
		Size: 2.2 KB (2184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.46.2`

```console
$ docker pull jenkins@sha256:f5218ea328d6d237ae7fa66bd8a79b23f44511b665deae003211d1d07e8cfde9
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.46.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.3 MB (318310050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25063b420e58fcfcb5142760157ceff091407e96584f6f7ef2345fa1199f1c9f`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:38:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:41:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:41:08 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:41:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:41:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:41:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:42:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:42:20 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:36:22 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 10:36:23 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Tue, 25 Apr 2017 10:36:24 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Tue, 25 Apr 2017 10:36:24 GMT
ARG user=jenkins
# Tue, 25 Apr 2017 10:36:25 GMT
ARG group=jenkins
# Tue, 25 Apr 2017 10:36:25 GMT
ARG uid=1000
# Tue, 25 Apr 2017 10:36:26 GMT
ARG gid=1000
# Tue, 25 Apr 2017 10:36:27 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Tue, 25 Apr 2017 10:36:28 GMT
VOLUME [/var/jenkins_home]
# Tue, 25 Apr 2017 10:36:30 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Tue, 25 Apr 2017 10:36:30 GMT
ENV TINI_VERSION=0.14.0
# Tue, 25 Apr 2017 10:36:31 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Tue, 25 Apr 2017 10:36:34 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Tue, 25 Apr 2017 10:36:35 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Tue, 25 Apr 2017 10:36:36 GMT
ARG JENKINS_VERSION
# Wed, 26 Apr 2017 16:58:30 GMT
ENV JENKINS_VERSION=2.46.2
# Wed, 26 Apr 2017 16:58:31 GMT
ARG JENKINS_SHA=aa7f243a4c84d3d6cfb99a218950b8f7b926af7aa2570b0e1707279d464472c7
# Wed, 26 Apr 2017 16:58:31 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.46.2/jenkins-war-2.46.2.war
# Wed, 26 Apr 2017 16:58:37 GMT
# ARGS: JENKINS_SHA=aa7f243a4c84d3d6cfb99a218950b8f7b926af7aa2570b0e1707279d464472c7 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.46.2/jenkins-war-2.46.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Wed, 26 Apr 2017 16:58:50 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Wed, 26 Apr 2017 16:58:51 GMT
# ARGS: JENKINS_SHA=aa7f243a4c84d3d6cfb99a218950b8f7b926af7aa2570b0e1707279d464472c7 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.46.2/jenkins-war-2.46.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Wed, 26 Apr 2017 16:58:52 GMT
EXPOSE 8080/tcp
# Wed, 26 Apr 2017 16:59:09 GMT
EXPOSE 50000/tcp
# Wed, 26 Apr 2017 16:59:10 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Wed, 26 Apr 2017 16:59:11 GMT
USER [jenkins]
# Wed, 26 Apr 2017 16:59:12 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Wed, 26 Apr 2017 16:59:13 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Wed, 26 Apr 2017 16:59:14 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Wed, 26 Apr 2017 16:59:15 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Wed, 26 Apr 2017 16:59:17 GMT
COPY file:2a6a3e16202b8dddab5edef50f712c16fe8f6980f5aea80c8c76b5db4f903913 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46c5b79125ec83395527f1cf86e8b3f5f4e2fc6bbf53d087b521e470afc46c6`  
		Last Modified: Tue, 25 Apr 2017 00:47:56 GMT  
		Size: 599.6 KB (599608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d4cb7cc8bcb4f9a4cf2ccb6830338a99dd13262d8c4ae24f083d27de09d10d`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d273117faaf9aabd15756fc311cae3773768e2409158bd8a6e76cc5a3035913`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e9e110f314c1151aa0bc4b538eafd5bd53f1bdb1ca00356e1b9318ad1e171f`  
		Last Modified: Tue, 25 Apr 2017 00:52:23 GMT  
		Size: 131.9 MB (131875124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7082199c57eaf7b0105a9b93107b5bdc19526d0cdacc540f865817f06ad1050`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 289.6 KB (289642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78a9ae000b4d0b95f10527a11e4bfa1db9e24915358f6756d3cc96ea9fafb56`  
		Last Modified: Tue, 25 Apr 2017 14:33:12 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dafb4cdbd1d0baee6c1f241a1fd3519d6e2d10d0ea01bf4595b71d3de258a85`  
		Last Modified: Tue, 25 Apr 2017 14:33:11 GMT  
		Size: 4.4 KB (4421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d051da4840994120bcb77a458fa72b4509a4ab76597dccf88aaef8028cf0c300`  
		Last Modified: Tue, 25 Apr 2017 14:33:10 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9355f4d444067f473b67c74a99a894cbef9280c0b44fa92d3c475577af6bc4f9`  
		Last Modified: Tue, 25 Apr 2017 14:33:10 GMT  
		Size: 354.8 KB (354776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19608cd3d6397f855bfe5f3c911bfa1c955d4fc9f19c7d7e2b80447fe84afc55`  
		Last Modified: Tue, 25 Apr 2017 14:33:10 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0328da91553020177c0906c5647ff6005686d94c5e35aef06083736435b84d`  
		Last Modified: Wed, 26 Apr 2017 17:00:37 GMT  
		Size: 70.1 MB (70131047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ccfb64d95f5e11e4182447f1ae9252b75082df28b408b77895429b39b6a6e92`  
		Last Modified: Wed, 26 Apr 2017 17:00:31 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85c732f771d646ff0f1078a35e40a1316197c614c1e52f85c2df7aa49d12e51`  
		Last Modified: Wed, 26 Apr 2017 17:00:30 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88d4a4c70da12344dd30a090c70eea9670758f7e7c38dbfa56b08662cb42274a`  
		Last Modified: Wed, 26 Apr 2017 17:00:31 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4f82a8590326f9ceb4e139306167aa24b0f33876aceb7a520b11a4ca8a0a0f`  
		Last Modified: Wed, 26 Apr 2017 17:00:30 GMT  
		Size: 1.5 KB (1530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cd7bb35717d0f51ae929d0ca4a9a59f5e694beb1593b4a957403076d4b0a78`  
		Last Modified: Wed, 26 Apr 2017 17:00:30 GMT  
		Size: 2.2 KB (2184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:alpine`

```console
$ docker pull jenkins@sha256:e8aa0ca4889569e6af9e7451498dc1cf8926c82b22210fc8bcad749a9835b324
```

-	Platforms:
	-	linux; amd64

### `jenkins:alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.5 MB (166530288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd51fe153a847a4fb791460da6fe3bf873190d02aef64678bbc763b721b17acf`
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
# Wed, 26 Apr 2017 16:59:36 GMT
ENV JENKINS_VERSION=2.46.2
# Wed, 26 Apr 2017 16:59:37 GMT
ARG JENKINS_SHA=aa7f243a4c84d3d6cfb99a218950b8f7b926af7aa2570b0e1707279d464472c7
# Wed, 26 Apr 2017 16:59:38 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.46.2/jenkins-war-2.46.2.war
# Wed, 26 Apr 2017 16:59:43 GMT
# ARGS: JENKINS_SHA=aa7f243a4c84d3d6cfb99a218950b8f7b926af7aa2570b0e1707279d464472c7 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.46.2/jenkins-war-2.46.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Wed, 26 Apr 2017 16:59:44 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Wed, 26 Apr 2017 17:00:02 GMT
# ARGS: JENKINS_SHA=aa7f243a4c84d3d6cfb99a218950b8f7b926af7aa2570b0e1707279d464472c7 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.46.2/jenkins-war-2.46.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Wed, 26 Apr 2017 17:00:03 GMT
EXPOSE 8080/tcp
# Wed, 26 Apr 2017 17:00:03 GMT
EXPOSE 50000/tcp
# Wed, 26 Apr 2017 17:00:04 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Wed, 26 Apr 2017 17:00:05 GMT
USER [jenkins]
# Wed, 26 Apr 2017 17:00:06 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Wed, 26 Apr 2017 17:00:07 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Wed, 26 Apr 2017 17:00:07 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Wed, 26 Apr 2017 17:00:08 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Wed, 26 Apr 2017 17:00:09 GMT
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
	-	`sha256:91e8153bcdfba0b99370082f8ae44c14e9b226b475e2ae416de6f8aeabb97bbb`  
		Last Modified: Wed, 26 Apr 2017 17:01:41 GMT  
		Size: 70.1 MB (70131047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a55831e847f9f66c470491c6fc10e00ae940f0c0ffc452f1fc29cc32561e246`  
		Last Modified: Wed, 26 Apr 2017 17:01:33 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee2dd13c08f949d2b3fb63fdffadff649647bd3eae2ad6d563749a68b37ae89`  
		Last Modified: Wed, 26 Apr 2017 17:01:33 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697e93115648590830eef886e3b9931db4d7554af42465345ca5896d42ca4e92`  
		Last Modified: Wed, 26 Apr 2017 17:01:33 GMT  
		Size: 811.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d660729b4c325d39e4af9fd9e459e1148af60ed4753d52d35d175f1867cf8ffb`  
		Last Modified: Wed, 26 Apr 2017 17:01:33 GMT  
		Size: 1.5 KB (1520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d642134062b33de3ed1cc67d9c991126c7f6c3c1578d243caf62be95bad96d64`  
		Last Modified: Wed, 26 Apr 2017 17:01:33 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.46.2-alpine`

```console
$ docker pull jenkins@sha256:e8aa0ca4889569e6af9e7451498dc1cf8926c82b22210fc8bcad749a9835b324
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.46.2-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.5 MB (166530288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd51fe153a847a4fb791460da6fe3bf873190d02aef64678bbc763b721b17acf`
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
# Wed, 26 Apr 2017 16:59:36 GMT
ENV JENKINS_VERSION=2.46.2
# Wed, 26 Apr 2017 16:59:37 GMT
ARG JENKINS_SHA=aa7f243a4c84d3d6cfb99a218950b8f7b926af7aa2570b0e1707279d464472c7
# Wed, 26 Apr 2017 16:59:38 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.46.2/jenkins-war-2.46.2.war
# Wed, 26 Apr 2017 16:59:43 GMT
# ARGS: JENKINS_SHA=aa7f243a4c84d3d6cfb99a218950b8f7b926af7aa2570b0e1707279d464472c7 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.46.2/jenkins-war-2.46.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Wed, 26 Apr 2017 16:59:44 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Wed, 26 Apr 2017 17:00:02 GMT
# ARGS: JENKINS_SHA=aa7f243a4c84d3d6cfb99a218950b8f7b926af7aa2570b0e1707279d464472c7 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.46.2/jenkins-war-2.46.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Wed, 26 Apr 2017 17:00:03 GMT
EXPOSE 8080/tcp
# Wed, 26 Apr 2017 17:00:03 GMT
EXPOSE 50000/tcp
# Wed, 26 Apr 2017 17:00:04 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Wed, 26 Apr 2017 17:00:05 GMT
USER [jenkins]
# Wed, 26 Apr 2017 17:00:06 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Wed, 26 Apr 2017 17:00:07 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Wed, 26 Apr 2017 17:00:07 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Wed, 26 Apr 2017 17:00:08 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Wed, 26 Apr 2017 17:00:09 GMT
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
	-	`sha256:91e8153bcdfba0b99370082f8ae44c14e9b226b475e2ae416de6f8aeabb97bbb`  
		Last Modified: Wed, 26 Apr 2017 17:01:41 GMT  
		Size: 70.1 MB (70131047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a55831e847f9f66c470491c6fc10e00ae940f0c0ffc452f1fc29cc32561e246`  
		Last Modified: Wed, 26 Apr 2017 17:01:33 GMT  
		Size: 431.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee2dd13c08f949d2b3fb63fdffadff649647bd3eae2ad6d563749a68b37ae89`  
		Last Modified: Wed, 26 Apr 2017 17:01:33 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697e93115648590830eef886e3b9931db4d7554af42465345ca5896d42ca4e92`  
		Last Modified: Wed, 26 Apr 2017 17:01:33 GMT  
		Size: 811.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d660729b4c325d39e4af9fd9e459e1148af60ed4753d52d35d175f1867cf8ffb`  
		Last Modified: Wed, 26 Apr 2017 17:01:33 GMT  
		Size: 1.5 KB (1520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d642134062b33de3ed1cc67d9c991126c7f6c3c1578d243caf62be95bad96d64`  
		Last Modified: Wed, 26 Apr 2017 17:01:33 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
