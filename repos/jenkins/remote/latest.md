## `jenkins:latest`

```console
$ docker pull jenkins@sha256:2bfbdb2c2606a3fa036bd7c0392003cd5aeb45978cc7fa05ba14b0412b4e9a1c
```

-	Platforms:
	-	linux; amd64

### `jenkins:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.6 MB (313616124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee06af673de24b022706b046fa5520b1720334a2f1235a8b166a40ea800cfaa3`
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
# Tue, 07 Feb 2017 20:03:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:03:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:03:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:17 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:00:05 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Tue, 07 Feb 2017 21:00:05 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Tue, 07 Feb 2017 21:00:05 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Tue, 07 Feb 2017 21:00:06 GMT
ARG user=jenkins
# Tue, 07 Feb 2017 21:00:06 GMT
ARG group=jenkins
# Tue, 07 Feb 2017 21:00:07 GMT
ARG uid=1000
# Tue, 07 Feb 2017 21:00:07 GMT
ARG gid=1000
# Tue, 07 Feb 2017 21:00:09 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Tue, 07 Feb 2017 21:00:09 GMT
VOLUME [/var/jenkins_home]
# Tue, 07 Feb 2017 21:00:10 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Tue, 07 Feb 2017 21:00:11 GMT
ENV TINI_VERSION=0.13.2
# Tue, 07 Feb 2017 21:00:12 GMT
ENV TINI_SHA=afbf8de8a63ce8e4f18cb3f34dfdbbd354af68a1
# Tue, 07 Feb 2017 21:00:15 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Tue, 07 Feb 2017 21:00:16 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Tue, 07 Feb 2017 21:00:17 GMT
ARG JENKINS_VERSION
# Tue, 07 Feb 2017 21:00:17 GMT
ENV JENKINS_VERSION=2.32.2
# Tue, 07 Feb 2017 21:00:18 GMT
ARG JENKINS_SHA=f495a08733f69b1845fd2d9b3a46482adb6e6cee
# Tue, 07 Feb 2017 21:00:19 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.2/jenkins-war-2.32.2.war
# Tue, 07 Feb 2017 21:00:24 GMT
# ARGS: JENKINS_SHA=f495a08733f69b1845fd2d9b3a46482adb6e6cee JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.2/jenkins-war-2.32.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Tue, 07 Feb 2017 21:00:25 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Tue, 07 Feb 2017 21:00:26 GMT
# ARGS: JENKINS_SHA=f495a08733f69b1845fd2d9b3a46482adb6e6cee JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.2/jenkins-war-2.32.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Tue, 07 Feb 2017 21:00:27 GMT
EXPOSE 8080/tcp
# Tue, 07 Feb 2017 21:00:27 GMT
EXPOSE 50000/tcp
# Tue, 07 Feb 2017 21:00:28 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Tue, 07 Feb 2017 21:00:29 GMT
USER [jenkins]
# Tue, 07 Feb 2017 21:00:30 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Tue, 07 Feb 2017 21:00:30 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Tue, 07 Feb 2017 21:00:31 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Tue, 07 Feb 2017 21:00:32 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Tue, 07 Feb 2017 21:00:33 GMT
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
	-	`sha256:c39ff935bbe4714f7cc9638ee005342e6c447288e9eea2ed0f59fa07558f2362`  
		Last Modified: Tue, 07 Feb 2017 20:10:58 GMT  
		Size: 130.3 MB (130315361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e03296a7302dfafbdeffadb741ec495a2191c49ffc734a1b6366ff287bad5b5`  
		Last Modified: Tue, 07 Feb 2017 20:10:30 GMT  
		Size: 289.0 KB (289035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:401a900417177119b681e44746b4fb1c58b96f009fbceaab41dddfd3864982b7`  
		Last Modified: Tue, 07 Feb 2017 21:01:27 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24a58f3e7791cd18172bd98f1e482eaafd8299df4fd895815930bc4c377dc42`  
		Last Modified: Tue, 07 Feb 2017 21:01:24 GMT  
		Size: 4.4 KB (4394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f05866f4c9ac02ef5b3f9a594715eb80b551ed1089da46d549321a88e3fb955`  
		Last Modified: Tue, 07 Feb 2017 21:01:24 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194637a1b12cb198fab7d38ab80e6a3bc4e39ce2b9d73a2c0a3d5d7e95dad666`  
		Last Modified: Tue, 07 Feb 2017 21:01:24 GMT  
		Size: 344.9 KB (344859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5405da54999c6d13cf2b69a9f0b6a03d7f8b037aee9e42223cadd4373c92a64`  
		Last Modified: Tue, 07 Feb 2017 21:01:24 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c5531af30f950b68812ae0cbcdacc34eacad28a12656b8f4c1785c673c020d`  
		Last Modified: Tue, 07 Feb 2017 21:01:31 GMT  
		Size: 69.7 MB (69662674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61bd2df6e6a5be6979cb2c2603c53e33d4285128abf44842d25b7e91ab4de62`  
		Last Modified: Tue, 07 Feb 2017 21:01:21 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85969c669ffc7455c3906dda38b529e7cfdf6d6d5961bf032f682098fb5a7f21`  
		Last Modified: Tue, 07 Feb 2017 21:01:21 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22b8d2b56bae665bb29970dbd2e870da04bbf0c750ef92dad664fe39e83ef89`  
		Last Modified: Tue, 07 Feb 2017 21:01:21 GMT  
		Size: 822.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b90bc5b10cdf943b0b52a599666f827dd74828a2ad090d26c8b66463af78ed`  
		Last Modified: Tue, 07 Feb 2017 21:01:21 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:351c841a859870933752f0aed9a833eb039af76544edf21bee328aa6c6b6e5c8`  
		Last Modified: Tue, 07 Feb 2017 21:01:21 GMT  
		Size: 2.2 KB (2180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
