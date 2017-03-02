<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jenkins`

-	[`jenkins:latest`](#jenkinslatest)
-	[`jenkins:2.32.2`](#jenkins2322)
-	[`jenkins:alpine`](#jenkinsalpine)
-	[`jenkins:2.32.2-alpine`](#jenkins2322-alpine)

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

## `jenkins:2.32.2`

```console
$ docker pull jenkins@sha256:0e2a8355402da97d1fdf720ec38a5313a17ba4db400173b8431084fd74bc7157
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.32.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.6 MB (313617949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9d793566c619b1a43c1aecd08865c82ed6523b0425ff9d19852bbf15e1b4c2`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:41:18 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 15:41:18 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Wed, 01 Mar 2017 15:41:18 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Wed, 01 Mar 2017 15:41:19 GMT
ARG user=jenkins
# Wed, 01 Mar 2017 15:41:19 GMT
ARG group=jenkins
# Wed, 01 Mar 2017 15:41:19 GMT
ARG uid=1000
# Wed, 01 Mar 2017 15:41:20 GMT
ARG gid=1000
# Wed, 01 Mar 2017 15:41:21 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Wed, 01 Mar 2017 15:41:21 GMT
VOLUME [/var/jenkins_home]
# Wed, 01 Mar 2017 15:41:22 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Wed, 01 Mar 2017 15:41:22 GMT
ENV TINI_VERSION=0.13.2
# Wed, 01 Mar 2017 15:41:23 GMT
ENV TINI_SHA=afbf8de8a63ce8e4f18cb3f34dfdbbd354af68a1
# Wed, 01 Mar 2017 15:41:26 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Wed, 01 Mar 2017 15:41:26 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Wed, 01 Mar 2017 15:41:27 GMT
ARG JENKINS_VERSION
# Wed, 01 Mar 2017 15:41:27 GMT
ENV JENKINS_VERSION=2.32.2
# Wed, 01 Mar 2017 15:41:27 GMT
ARG JENKINS_SHA=f495a08733f69b1845fd2d9b3a46482adb6e6cee
# Wed, 01 Mar 2017 15:41:28 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.2/jenkins-war-2.32.2.war
# Wed, 01 Mar 2017 15:41:32 GMT
# ARGS: JENKINS_SHA=f495a08733f69b1845fd2d9b3a46482adb6e6cee JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.2/jenkins-war-2.32.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Wed, 01 Mar 2017 15:41:33 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Wed, 01 Mar 2017 15:41:34 GMT
# ARGS: JENKINS_SHA=f495a08733f69b1845fd2d9b3a46482adb6e6cee JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.2/jenkins-war-2.32.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Wed, 01 Mar 2017 15:41:34 GMT
EXPOSE 8080/tcp
# Wed, 01 Mar 2017 15:41:35 GMT
EXPOSE 50000/tcp
# Wed, 01 Mar 2017 15:41:35 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Wed, 01 Mar 2017 15:41:35 GMT
USER [jenkins]
# Wed, 01 Mar 2017 15:41:36 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Wed, 01 Mar 2017 15:41:36 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Wed, 01 Mar 2017 15:41:37 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Wed, 01 Mar 2017 15:41:37 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Wed, 01 Mar 2017 15:41:38 GMT
COPY file:2a6a3e16202b8dddab5edef50f712c16fe8f6980f5aea80c8c76b5db4f903913 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905dd12814afb3c5f905cbc6747c7b1baa4241b2a36aabaf50030463dc0dbc31`  
		Last Modified: Thu, 02 Mar 2017 05:33:58 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577fa41f97731dd4402882014dc67c9c103dec9e0839fb29134f3f4b491dab08`  
		Last Modified: Thu, 02 Mar 2017 05:33:59 GMT  
		Size: 4.4 KB (4388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35af31e72ed14f4e3bbfeb9eb195ae43af7a43c66261aa34d79d087ee642ea6a`  
		Last Modified: Thu, 02 Mar 2017 05:33:57 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7ad8d62dc6ff86e0b953817923f3a27e1fbc89bd005dc827d7199615ae7ee8`  
		Last Modified: Thu, 02 Mar 2017 05:33:58 GMT  
		Size: 344.9 KB (344861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19ef7a79b0a88c0a690ad93a9ef772a00628229bddf41ddb99e69f60c7ecf51`  
		Last Modified: Thu, 02 Mar 2017 05:33:56 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67c1fd0897d51f66690f39d64923a412a8e11064c294e58fa1c7d91ce56d634`  
		Last Modified: Thu, 02 Mar 2017 05:34:07 GMT  
		Size: 69.7 MB (69662676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d02b56ec4a7c647e26df653ffb60a0359388b946ac08bdc9fd58f555bf52fe`  
		Last Modified: Thu, 02 Mar 2017 05:33:51 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a928660f75ca7016988b48e9466ee6c4ffbc45993b5e9c37ed691f77930d3de`  
		Last Modified: Thu, 02 Mar 2017 05:33:48 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b8e8ce8ca13899e84be7a4b8dc6d7502db482300a5d1f4af4fc96007cc4a71`  
		Last Modified: Thu, 02 Mar 2017 05:33:49 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa659061890188f9e820a483a4d85b4596a4f02264466e575c31f434d8df0498`  
		Last Modified: Thu, 02 Mar 2017 05:33:49 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3bc9b5fb623c1fcf9dba70d7a84c498a709bed1044f46d965a50c35c33bf13`  
		Last Modified: Thu, 02 Mar 2017 05:33:51 GMT  
		Size: 2.2 KB (2180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:alpine`

```console
$ docker pull jenkins@sha256:b5d03bf0a3c0066457ac3b30bb51038260b2450cec6eb40d88d3179ef4fbde67
```

-	Platforms:
	-	linux; amd64

### `jenkins:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144942010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c85cea31123263dd8dcb6288839acac24707e17c777f2b1c14ba50e5bba65497`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 27 Dec 2016 18:38:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:36 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:37 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:15:24 GMT
RUN apk add --no-cache git openssh-client curl unzip bash ttf-dejavu coreutils
# Tue, 27 Dec 2016 22:15:24 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Tue, 27 Dec 2016 22:15:25 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Tue, 27 Dec 2016 22:15:26 GMT
ARG user=jenkins
# Tue, 27 Dec 2016 22:15:26 GMT
ARG group=jenkins
# Tue, 27 Dec 2016 22:15:27 GMT
ARG uid=1000
# Tue, 27 Dec 2016 22:15:27 GMT
ARG gid=1000
# Tue, 27 Dec 2016 22:15:41 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN addgroup -g ${gid} ${group}     && adduser -h "$JENKINS_HOME" -u ${uid} -G ${group} -s /bin/bash -D ${user}
# Tue, 27 Dec 2016 22:15:41 GMT
VOLUME [/var/jenkins_home]
# Tue, 27 Dec 2016 22:15:42 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Wed, 01 Feb 2017 16:42:25 GMT
ENV TINI_VERSION=0.13.2
# Wed, 01 Feb 2017 16:42:25 GMT
ENV TINI_SHA=afbf8de8a63ce8e4f18cb3f34dfdbbd354af68a1
# Wed, 01 Feb 2017 16:42:27 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Wed, 01 Feb 2017 16:42:28 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Wed, 01 Feb 2017 16:42:28 GMT
ARG JENKINS_VERSION
# Wed, 01 Feb 2017 16:42:28 GMT
ENV JENKINS_VERSION=2.32.2
# Wed, 01 Feb 2017 16:42:29 GMT
ARG JENKINS_SHA=f495a08733f69b1845fd2d9b3a46482adb6e6cee
# Wed, 01 Feb 2017 16:42:29 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.2/jenkins-war-2.32.2.war
# Wed, 01 Feb 2017 16:42:34 GMT
# ARGS: JENKINS_SHA=f495a08733f69b1845fd2d9b3a46482adb6e6cee JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.2/jenkins-war-2.32.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Wed, 01 Feb 2017 16:42:34 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Wed, 01 Feb 2017 16:42:35 GMT
# ARGS: JENKINS_SHA=f495a08733f69b1845fd2d9b3a46482adb6e6cee JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.2/jenkins-war-2.32.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Wed, 01 Feb 2017 16:42:35 GMT
EXPOSE 8080/tcp
# Wed, 01 Feb 2017 16:42:36 GMT
EXPOSE 50000/tcp
# Wed, 01 Feb 2017 16:42:36 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Wed, 01 Feb 2017 16:42:36 GMT
USER [jenkins]
# Wed, 01 Feb 2017 16:42:37 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Wed, 01 Feb 2017 16:42:37 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Wed, 01 Feb 2017 16:42:37 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Wed, 01 Feb 2017 16:42:38 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Wed, 01 Feb 2017 16:42:38 GMT
COPY file:2a6a3e16202b8dddab5edef50f712c16fe8f6980f5aea80c8c76b5db4f903913 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b294f0e7874be262527ff531f370b2b61652d226fa8c51f9d6a0a46c4d71fdb5`  
		Last Modified: Tue, 27 Dec 2016 18:55:18 GMT  
		Size: 49.4 MB (49355643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c7a703a76aa6c147404452e145b8dff0faa9d71a71d3177c808958fe59d059`  
		Last Modified: Tue, 27 Dec 2016 22:44:37 GMT  
		Size: 23.3 MB (23257314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7834698adf9df129008d4416566ad4c895356e8ce0262db637a9ad233c7874`  
		Last Modified: Tue, 27 Dec 2016 22:44:28 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a70237562e31766cba3db3e715b229c9c15d31006f4012baad9f2800c9d92ed`  
		Last Modified: Tue, 27 Dec 2016 22:44:27 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ba75ce472a0a9ec7bd405f6f39f26a7d67d92250633e246982833f58896b12`  
		Last Modified: Wed, 01 Feb 2017 16:43:45 GMT  
		Size: 344.9 KB (344860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b4532ac2e6397b257a5fa15deae8c139d8afdeb66611fda42e6e2b8c696a32`  
		Last Modified: Wed, 01 Feb 2017 16:43:43 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791d1b1d2b395d810a87172bbaf6bd74c771d87eb8eb987c1d4c8300f0853170`  
		Last Modified: Wed, 01 Feb 2017 16:43:49 GMT  
		Size: 69.7 MB (69662676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9710106ff6c2f60a5058e99c109c428ec47a5a461d41d31dbede917f8e6d756`  
		Last Modified: Wed, 01 Feb 2017 16:43:40 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f723141443be2db0bc50033b9d56390aba9d39d72adbe93d2af84129fbae41b`  
		Last Modified: Wed, 01 Feb 2017 16:43:40 GMT  
		Size: 1.4 KB (1413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24420d8264914affed2dcc594717e5de230b4125df832772b3f504c8e25a5b44`  
		Last Modified: Wed, 01 Feb 2017 16:43:40 GMT  
		Size: 810.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89b599f1449a92970fbd7d64672698d9e69b88ce7afa2b770d417aa47ef51b6`  
		Last Modified: Wed, 01 Feb 2017 16:43:40 GMT  
		Size: 1.5 KB (1512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d0d806532acc45087abad955acbe9834ab8a461e6b9f632f7e4cdda8bd76dc`  
		Last Modified: Wed, 01 Feb 2017 16:43:40 GMT  
		Size: 2.2 KB (2169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.32.2-alpine`

```console
$ docker pull jenkins@sha256:b5d03bf0a3c0066457ac3b30bb51038260b2450cec6eb40d88d3179ef4fbde67
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.32.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144942010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c85cea31123263dd8dcb6288839acac24707e17c777f2b1c14ba50e5bba65497`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 27 Dec 2016 18:38:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:36 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:37 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:15:24 GMT
RUN apk add --no-cache git openssh-client curl unzip bash ttf-dejavu coreutils
# Tue, 27 Dec 2016 22:15:24 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Tue, 27 Dec 2016 22:15:25 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Tue, 27 Dec 2016 22:15:26 GMT
ARG user=jenkins
# Tue, 27 Dec 2016 22:15:26 GMT
ARG group=jenkins
# Tue, 27 Dec 2016 22:15:27 GMT
ARG uid=1000
# Tue, 27 Dec 2016 22:15:27 GMT
ARG gid=1000
# Tue, 27 Dec 2016 22:15:41 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN addgroup -g ${gid} ${group}     && adduser -h "$JENKINS_HOME" -u ${uid} -G ${group} -s /bin/bash -D ${user}
# Tue, 27 Dec 2016 22:15:41 GMT
VOLUME [/var/jenkins_home]
# Tue, 27 Dec 2016 22:15:42 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Wed, 01 Feb 2017 16:42:25 GMT
ENV TINI_VERSION=0.13.2
# Wed, 01 Feb 2017 16:42:25 GMT
ENV TINI_SHA=afbf8de8a63ce8e4f18cb3f34dfdbbd354af68a1
# Wed, 01 Feb 2017 16:42:27 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Wed, 01 Feb 2017 16:42:28 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Wed, 01 Feb 2017 16:42:28 GMT
ARG JENKINS_VERSION
# Wed, 01 Feb 2017 16:42:28 GMT
ENV JENKINS_VERSION=2.32.2
# Wed, 01 Feb 2017 16:42:29 GMT
ARG JENKINS_SHA=f495a08733f69b1845fd2d9b3a46482adb6e6cee
# Wed, 01 Feb 2017 16:42:29 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.2/jenkins-war-2.32.2.war
# Wed, 01 Feb 2017 16:42:34 GMT
# ARGS: JENKINS_SHA=f495a08733f69b1845fd2d9b3a46482adb6e6cee JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.2/jenkins-war-2.32.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Wed, 01 Feb 2017 16:42:34 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Wed, 01 Feb 2017 16:42:35 GMT
# ARGS: JENKINS_SHA=f495a08733f69b1845fd2d9b3a46482adb6e6cee JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.2/jenkins-war-2.32.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Wed, 01 Feb 2017 16:42:35 GMT
EXPOSE 8080/tcp
# Wed, 01 Feb 2017 16:42:36 GMT
EXPOSE 50000/tcp
# Wed, 01 Feb 2017 16:42:36 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Wed, 01 Feb 2017 16:42:36 GMT
USER [jenkins]
# Wed, 01 Feb 2017 16:42:37 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Wed, 01 Feb 2017 16:42:37 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Wed, 01 Feb 2017 16:42:37 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Wed, 01 Feb 2017 16:42:38 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Wed, 01 Feb 2017 16:42:38 GMT
COPY file:2a6a3e16202b8dddab5edef50f712c16fe8f6980f5aea80c8c76b5db4f903913 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b294f0e7874be262527ff531f370b2b61652d226fa8c51f9d6a0a46c4d71fdb5`  
		Last Modified: Tue, 27 Dec 2016 18:55:18 GMT  
		Size: 49.4 MB (49355643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c7a703a76aa6c147404452e145b8dff0faa9d71a71d3177c808958fe59d059`  
		Last Modified: Tue, 27 Dec 2016 22:44:37 GMT  
		Size: 23.3 MB (23257314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7834698adf9df129008d4416566ad4c895356e8ce0262db637a9ad233c7874`  
		Last Modified: Tue, 27 Dec 2016 22:44:28 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a70237562e31766cba3db3e715b229c9c15d31006f4012baad9f2800c9d92ed`  
		Last Modified: Tue, 27 Dec 2016 22:44:27 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ba75ce472a0a9ec7bd405f6f39f26a7d67d92250633e246982833f58896b12`  
		Last Modified: Wed, 01 Feb 2017 16:43:45 GMT  
		Size: 344.9 KB (344860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b4532ac2e6397b257a5fa15deae8c139d8afdeb66611fda42e6e2b8c696a32`  
		Last Modified: Wed, 01 Feb 2017 16:43:43 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791d1b1d2b395d810a87172bbaf6bd74c771d87eb8eb987c1d4c8300f0853170`  
		Last Modified: Wed, 01 Feb 2017 16:43:49 GMT  
		Size: 69.7 MB (69662676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9710106ff6c2f60a5058e99c109c428ec47a5a461d41d31dbede917f8e6d756`  
		Last Modified: Wed, 01 Feb 2017 16:43:40 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f723141443be2db0bc50033b9d56390aba9d39d72adbe93d2af84129fbae41b`  
		Last Modified: Wed, 01 Feb 2017 16:43:40 GMT  
		Size: 1.4 KB (1413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24420d8264914affed2dcc594717e5de230b4125df832772b3f504c8e25a5b44`  
		Last Modified: Wed, 01 Feb 2017 16:43:40 GMT  
		Size: 810.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89b599f1449a92970fbd7d64672698d9e69b88ce7afa2b770d417aa47ef51b6`  
		Last Modified: Wed, 01 Feb 2017 16:43:40 GMT  
		Size: 1.5 KB (1512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d0d806532acc45087abad955acbe9834ab8a461e6b9f632f7e4cdda8bd76dc`  
		Last Modified: Wed, 01 Feb 2017 16:43:40 GMT  
		Size: 2.2 KB (2169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
