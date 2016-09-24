<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jenkins`

-	[`jenkins:latest`](#jenkinslatest)
-	[`jenkins:2.7.4`](#jenkins274)
-	[`jenkins:alpine`](#jenkinsalpine)
-	[`jenkins:2.7.4-alpine`](#jenkins274-alpine)

## `jenkins:latest`

```console
$ docker pull jenkins@sha256:076a882ef0c25604d3476990e76b0873035882541186e1805aef2636ba63d197
```

-	Platforms:
	-	linux; amd64

### `jenkins:latest` - linux; amd64

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

## `jenkins:2.7.4`

```console
$ docker pull jenkins@sha256:076a882ef0c25604d3476990e76b0873035882541186e1805aef2636ba63d197
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
$ docker pull jenkins@sha256:a07be7209970b27aed7aa7596c937b04f1416edc4d8a0e134eb5e4c92bbff472
```

-	Platforms:
	-	linux; amd64

### `jenkins:alpine` - linux; amd64

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

## `jenkins:2.7.4-alpine`

```console
$ docker pull jenkins@sha256:a07be7209970b27aed7aa7596c937b04f1416edc4d8a0e134eb5e4c92bbff472
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
