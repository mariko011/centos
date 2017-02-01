## `jenkins:latest`

```console
$ docker pull jenkins@sha256:42bd6dcae1179aab85331ea8bfb8cc044fca3036cfdb3ac9b2dcd17b344136b4
```

-	Platforms:
	-	linux; amd64

### `jenkins:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.4 MB (313403021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c26a772f07422ab8775511a82d929bc48d277692b2d1b0db137cf2e0c2b0f6b`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:48 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:51:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 17 Jan 2017 00:51:50 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:51:50 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:51:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:52:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:52:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 18 Jan 2017 00:38:01 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 00:38:01 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Wed, 18 Jan 2017 00:38:02 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Wed, 18 Jan 2017 00:38:02 GMT
ARG user=jenkins
# Wed, 18 Jan 2017 00:38:03 GMT
ARG group=jenkins
# Wed, 18 Jan 2017 00:38:03 GMT
ARG uid=1000
# Wed, 18 Jan 2017 00:38:03 GMT
ARG gid=1000
# Wed, 18 Jan 2017 00:38:04 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Wed, 18 Jan 2017 00:38:05 GMT
VOLUME [/var/jenkins_home]
# Wed, 18 Jan 2017 00:38:06 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Wed, 01 Feb 2017 16:42:08 GMT
ENV TINI_VERSION=0.13.2
# Wed, 01 Feb 2017 16:42:09 GMT
ENV TINI_SHA=afbf8de8a63ce8e4f18cb3f34dfdbbd354af68a1
# Wed, 01 Feb 2017 16:42:11 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Wed, 01 Feb 2017 16:42:12 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Wed, 01 Feb 2017 16:42:12 GMT
ARG JENKINS_VERSION
# Wed, 01 Feb 2017 16:42:13 GMT
ENV JENKINS_VERSION=2.32.2
# Wed, 01 Feb 2017 16:42:13 GMT
ARG JENKINS_SHA=f495a08733f69b1845fd2d9b3a46482adb6e6cee
# Wed, 01 Feb 2017 16:42:13 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.2/jenkins-war-2.32.2.war
# Wed, 01 Feb 2017 16:42:19 GMT
# ARGS: JENKINS_SHA=f495a08733f69b1845fd2d9b3a46482adb6e6cee JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.2/jenkins-war-2.32.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Wed, 01 Feb 2017 16:42:19 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Wed, 01 Feb 2017 16:42:20 GMT
# ARGS: JENKINS_SHA=f495a08733f69b1845fd2d9b3a46482adb6e6cee JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.2/jenkins-war-2.32.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Wed, 01 Feb 2017 16:42:20 GMT
EXPOSE 8080/tcp
# Wed, 01 Feb 2017 16:42:21 GMT
EXPOSE 50000/tcp
# Wed, 01 Feb 2017 16:42:21 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Wed, 01 Feb 2017 16:42:21 GMT
USER [jenkins]
# Wed, 01 Feb 2017 16:42:22 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Wed, 01 Feb 2017 16:42:22 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Wed, 01 Feb 2017 16:42:23 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Wed, 01 Feb 2017 16:42:23 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Wed, 01 Feb 2017 16:42:24 GMT
COPY file:2a6a3e16202b8dddab5edef50f712c16fe8f6980f5aea80c8c76b5db4f903913 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f73de8f0d2ef292f58b004d67bc6e9ee779dcfaff7ebb3964649d4787b872`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f7af24ed9cf47597dd6cf9963bb3e9109c963f0135e869a9e9b4999fdc12a3`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e2d6393f32abb1de7c9395c04c822ceb2287383d5a90998f7bd8dbfd43d48c`  
		Last Modified: Tue, 17 Jan 2017 21:42:23 GMT  
		Size: 130.1 MB (130102252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9cdec9c7f337940f7d872274353b66e118412cbfd433c711361bcf7922aea4`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 289.0 KB (289048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e750d14101864a0d9c12a7462b3a48123db17c63c433474c7014ae867c72d3`  
		Last Modified: Wed, 18 Jan 2017 08:23:34 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fd58b8cd8d87ee002b6d85ce7c6eac8d9efeb5e6b3f389509253a183aa8cfb`  
		Last Modified: Wed, 18 Jan 2017 08:23:33 GMT  
		Size: 4.4 KB (4390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131f10cb86f293efcd1dbadf7e305df6faef8eaf0ccb160867d9e9747a2499c`  
		Last Modified: Wed, 18 Jan 2017 08:23:32 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ce44995e7b9f8b349f97c7e68a067bcdec3d81d037e66d2eb76b33d9d7b2b7`  
		Last Modified: Wed, 01 Feb 2017 16:42:58 GMT  
		Size: 344.9 KB (344860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eafd6b9e351ff1a9fe497d14291a69a5b21ac984b958c6670aaa3b85bf3806dc`  
		Last Modified: Wed, 01 Feb 2017 16:42:58 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf03ee72dc635bedbb05a52b32650d15e4ef7c9bf6e489f00a420588be35d84`  
		Last Modified: Wed, 01 Feb 2017 16:43:03 GMT  
		Size: 69.7 MB (69662676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586e8d298499ac56e52ef24d54cc1d641c3766632a0e64100b8108a6f12bee0b`  
		Last Modified: Wed, 01 Feb 2017 16:42:56 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e5ed25ba89c103b1070caa64a15bf153924d193d90858bc6641dcef4708995`  
		Last Modified: Wed, 01 Feb 2017 16:42:55 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442cd5492f8387e0a1f60eae7148de7d51051902dd1d943f5041de2d9e25a6da`  
		Last Modified: Wed, 01 Feb 2017 16:42:55 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9250bf355d9fd5e83ab681540fa4f0d6f9c2a6f7fd239ba1c705f9a343d797`  
		Last Modified: Wed, 01 Feb 2017 16:42:55 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b2e2e0aab2fb7d568e70b6bc4fbb5fd3691aa86415959c4454878a59121374`  
		Last Modified: Wed, 01 Feb 2017 16:42:55 GMT  
		Size: 2.2 KB (2177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
