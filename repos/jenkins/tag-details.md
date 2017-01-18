<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jenkins`

-	[`jenkins:latest`](#jenkinslatest)
-	[`jenkins:2.32.1`](#jenkins2321)
-	[`jenkins:alpine`](#jenkinsalpine)
-	[`jenkins:2.32.1-alpine`](#jenkins2321-alpine)

## `jenkins:latest`

```console
$ docker pull jenkins@sha256:5046434030be395ec977c98e11d8c16b950011afbe7950474a8dfbfa97f2f5b5
```

-	Platforms:
	-	linux; amd64

### `jenkins:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.7 MB (313675152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59d580851733ed1c29ef9afc36c0f0207480633b244b5daef32a5a1ea462969d`
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
# Wed, 18 Jan 2017 00:38:06 GMT
ENV TINI_VERSION=0.13.1
# Wed, 18 Jan 2017 00:38:07 GMT
ENV TINI_SHA=0f78709a0e3c80e7c9119fdc32c2bc0f4cfc4cab
# Wed, 18 Jan 2017 00:38:10 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Wed, 18 Jan 2017 00:38:10 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Wed, 18 Jan 2017 00:38:11 GMT
ARG JENKINS_VERSION
# Wed, 18 Jan 2017 00:38:11 GMT
ENV JENKINS_VERSION=2.32.1
# Wed, 18 Jan 2017 00:38:12 GMT
ARG JENKINS_SHA=1b65dc498ba7ab1f5cce64200b920a8716d90834
# Wed, 18 Jan 2017 00:38:12 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.1/jenkins-war-2.32.1.war
# Wed, 18 Jan 2017 00:38:18 GMT
# ARGS: JENKINS_SHA=1b65dc498ba7ab1f5cce64200b920a8716d90834 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.1/jenkins-war-2.32.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Wed, 18 Jan 2017 00:38:18 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Wed, 18 Jan 2017 00:38:19 GMT
# ARGS: JENKINS_SHA=1b65dc498ba7ab1f5cce64200b920a8716d90834 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.1/jenkins-war-2.32.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Wed, 18 Jan 2017 00:38:20 GMT
EXPOSE 8080/tcp
# Wed, 18 Jan 2017 00:38:20 GMT
EXPOSE 50000/tcp
# Wed, 18 Jan 2017 00:38:20 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Wed, 18 Jan 2017 00:38:21 GMT
USER [jenkins]
# Wed, 18 Jan 2017 00:38:22 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Wed, 18 Jan 2017 00:38:22 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Wed, 18 Jan 2017 00:38:23 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Wed, 18 Jan 2017 00:38:23 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Wed, 18 Jan 2017 00:38:24 GMT
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
	-	`sha256:ac9c391338875be33b9297fc465381365b12ea941fb78e65900276cee3684e76`  
		Last Modified: Wed, 18 Jan 2017 08:23:32 GMT  
		Size: 344.9 KB (344862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e75457f9bfe87e8747e564b08f4d3a2d5921613364546db147add9bb87e4f290`  
		Last Modified: Wed, 18 Jan 2017 08:23:31 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7f4cf742a81729ac3207e08804778f631d74059e40d76fdf57f9fe07ffcf8d`  
		Last Modified: Wed, 18 Jan 2017 08:23:55 GMT  
		Size: 69.9 MB (69934802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cff2b7a540fffb4c01e1027e1b49ae0e1d884ada90931e79f89f90db5d193e`  
		Last Modified: Wed, 18 Jan 2017 08:23:28 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b9cd9b179e4ad8e0682677446860d6aa29157b39c31d9ea0f1f4ca47899636`  
		Last Modified: Wed, 18 Jan 2017 08:23:29 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1f366ac9d688485b36913956484efb5bcccb7688fea7a00717576dd369582e`  
		Last Modified: Wed, 18 Jan 2017 08:23:28 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b54d9fb0ac9472acd24520dea1aa0d95d8a147980ec9b94672b34bcae8b957`  
		Last Modified: Wed, 18 Jan 2017 08:23:29 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa09c141497c9bae4334cbfa5f0a4dada592fa893af7d544ab649c20e8ff9a95`  
		Last Modified: Wed, 18 Jan 2017 08:23:29 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.32.1`

```console
$ docker pull jenkins@sha256:5046434030be395ec977c98e11d8c16b950011afbe7950474a8dfbfa97f2f5b5
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.32.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.7 MB (313675152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59d580851733ed1c29ef9afc36c0f0207480633b244b5daef32a5a1ea462969d`
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
# Wed, 18 Jan 2017 00:38:06 GMT
ENV TINI_VERSION=0.13.1
# Wed, 18 Jan 2017 00:38:07 GMT
ENV TINI_SHA=0f78709a0e3c80e7c9119fdc32c2bc0f4cfc4cab
# Wed, 18 Jan 2017 00:38:10 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Wed, 18 Jan 2017 00:38:10 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Wed, 18 Jan 2017 00:38:11 GMT
ARG JENKINS_VERSION
# Wed, 18 Jan 2017 00:38:11 GMT
ENV JENKINS_VERSION=2.32.1
# Wed, 18 Jan 2017 00:38:12 GMT
ARG JENKINS_SHA=1b65dc498ba7ab1f5cce64200b920a8716d90834
# Wed, 18 Jan 2017 00:38:12 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.1/jenkins-war-2.32.1.war
# Wed, 18 Jan 2017 00:38:18 GMT
# ARGS: JENKINS_SHA=1b65dc498ba7ab1f5cce64200b920a8716d90834 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.1/jenkins-war-2.32.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Wed, 18 Jan 2017 00:38:18 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Wed, 18 Jan 2017 00:38:19 GMT
# ARGS: JENKINS_SHA=1b65dc498ba7ab1f5cce64200b920a8716d90834 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.1/jenkins-war-2.32.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Wed, 18 Jan 2017 00:38:20 GMT
EXPOSE 8080/tcp
# Wed, 18 Jan 2017 00:38:20 GMT
EXPOSE 50000/tcp
# Wed, 18 Jan 2017 00:38:20 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Wed, 18 Jan 2017 00:38:21 GMT
USER [jenkins]
# Wed, 18 Jan 2017 00:38:22 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Wed, 18 Jan 2017 00:38:22 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Wed, 18 Jan 2017 00:38:23 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Wed, 18 Jan 2017 00:38:23 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Wed, 18 Jan 2017 00:38:24 GMT
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
	-	`sha256:ac9c391338875be33b9297fc465381365b12ea941fb78e65900276cee3684e76`  
		Last Modified: Wed, 18 Jan 2017 08:23:32 GMT  
		Size: 344.9 KB (344862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e75457f9bfe87e8747e564b08f4d3a2d5921613364546db147add9bb87e4f290`  
		Last Modified: Wed, 18 Jan 2017 08:23:31 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7f4cf742a81729ac3207e08804778f631d74059e40d76fdf57f9fe07ffcf8d`  
		Last Modified: Wed, 18 Jan 2017 08:23:55 GMT  
		Size: 69.9 MB (69934802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cff2b7a540fffb4c01e1027e1b49ae0e1d884ada90931e79f89f90db5d193e`  
		Last Modified: Wed, 18 Jan 2017 08:23:28 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b9cd9b179e4ad8e0682677446860d6aa29157b39c31d9ea0f1f4ca47899636`  
		Last Modified: Wed, 18 Jan 2017 08:23:29 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1f366ac9d688485b36913956484efb5bcccb7688fea7a00717576dd369582e`  
		Last Modified: Wed, 18 Jan 2017 08:23:28 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b54d9fb0ac9472acd24520dea1aa0d95d8a147980ec9b94672b34bcae8b957`  
		Last Modified: Wed, 18 Jan 2017 08:23:29 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa09c141497c9bae4334cbfa5f0a4dada592fa893af7d544ab649c20e8ff9a95`  
		Last Modified: Wed, 18 Jan 2017 08:23:29 GMT  
		Size: 2.2 KB (2178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:alpine`

```console
$ docker pull jenkins@sha256:5b8975ed078d3ca23e0ccd0bac27606a6598b7164b79a938bf388ee70bfa7902
```

-	Platforms:
	-	linux; amd64

### `jenkins:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.2 MB (145214166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0c0a437b20246949ddb2f07f35ce02f002ee012c7f143b295ed0473108f6d9`
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
# Tue, 27 Dec 2016 22:15:54 GMT
ENV TINI_VERSION=0.13.1
# Tue, 27 Dec 2016 22:15:54 GMT
ENV TINI_SHA=0f78709a0e3c80e7c9119fdc32c2bc0f4cfc4cab
# Tue, 27 Dec 2016 22:15:57 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Tue, 27 Dec 2016 22:15:58 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Tue, 27 Dec 2016 22:15:58 GMT
ARG JENKINS_VERSION
# Tue, 27 Dec 2016 22:15:59 GMT
ENV JENKINS_VERSION=2.32.1
# Tue, 27 Dec 2016 22:15:59 GMT
ARG JENKINS_SHA=1b65dc498ba7ab1f5cce64200b920a8716d90834
# Tue, 27 Dec 2016 22:16:00 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.1/jenkins-war-2.32.1.war
# Tue, 27 Dec 2016 22:16:06 GMT
# ARGS: JENKINS_SHA=1b65dc498ba7ab1f5cce64200b920a8716d90834 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.1/jenkins-war-2.32.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Tue, 27 Dec 2016 22:16:06 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Tue, 27 Dec 2016 22:16:07 GMT
# ARGS: JENKINS_SHA=1b65dc498ba7ab1f5cce64200b920a8716d90834 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.1/jenkins-war-2.32.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Tue, 27 Dec 2016 22:16:08 GMT
EXPOSE 8080/tcp
# Tue, 27 Dec 2016 22:16:08 GMT
EXPOSE 50000/tcp
# Tue, 27 Dec 2016 22:16:09 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Tue, 27 Dec 2016 22:16:09 GMT
USER [jenkins]
# Tue, 27 Dec 2016 22:16:10 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Tue, 27 Dec 2016 22:16:11 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Tue, 27 Dec 2016 22:16:11 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Tue, 27 Dec 2016 22:16:12 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Tue, 27 Dec 2016 22:16:12 GMT
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
	-	`sha256:6981ae9da387f66123143304a28424753610913952347fc5aa6e9403be452dfd`  
		Last Modified: Tue, 27 Dec 2016 22:44:27 GMT  
		Size: 344.9 KB (344859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1948a77ff7cc95ee3dedc6572faf20316004786a391d456fc805b69097c75f5d`  
		Last Modified: Tue, 27 Dec 2016 22:44:27 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb220f57d17868af5440c25f8ff500e4b9d3e0e74a2bc977c283dfb9e2b7f8d`  
		Last Modified: Tue, 27 Dec 2016 22:44:34 GMT  
		Size: 69.9 MB (69934806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0fbbc51c7aeaff2f33a384a1c6eff640e6b83d8ab792f76bb4d526a66715b31`  
		Last Modified: Tue, 27 Dec 2016 22:44:25 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9213c6063546c0ffc6feb00122ff40d183c6136e3faab6c5aaf92376ffe5a0`  
		Last Modified: Tue, 27 Dec 2016 22:44:26 GMT  
		Size: 1.4 KB (1417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0210dfc099bd81edc78819570958f2b9ebb3096a607cd26427f2f7f41cb5898`  
		Last Modified: Tue, 27 Dec 2016 22:44:25 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f19df3931622bf6ef7a3509037a01a5c109b65aa0b77204a8803bc1ef2ebdc9`  
		Last Modified: Tue, 27 Dec 2016 22:44:25 GMT  
		Size: 1.5 KB (1517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eee39234906eb3ac8323151beebf4e62280383e72ed2d25cd7be2c224e74ed5`  
		Last Modified: Tue, 27 Dec 2016 22:44:25 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.32.1-alpine`

```console
$ docker pull jenkins@sha256:5b8975ed078d3ca23e0ccd0bac27606a6598b7164b79a938bf388ee70bfa7902
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.32.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.2 MB (145214166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0c0a437b20246949ddb2f07f35ce02f002ee012c7f143b295ed0473108f6d9`
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
# Tue, 27 Dec 2016 22:15:54 GMT
ENV TINI_VERSION=0.13.1
# Tue, 27 Dec 2016 22:15:54 GMT
ENV TINI_SHA=0f78709a0e3c80e7c9119fdc32c2bc0f4cfc4cab
# Tue, 27 Dec 2016 22:15:57 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Tue, 27 Dec 2016 22:15:58 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Tue, 27 Dec 2016 22:15:58 GMT
ARG JENKINS_VERSION
# Tue, 27 Dec 2016 22:15:59 GMT
ENV JENKINS_VERSION=2.32.1
# Tue, 27 Dec 2016 22:15:59 GMT
ARG JENKINS_SHA=1b65dc498ba7ab1f5cce64200b920a8716d90834
# Tue, 27 Dec 2016 22:16:00 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.1/jenkins-war-2.32.1.war
# Tue, 27 Dec 2016 22:16:06 GMT
# ARGS: JENKINS_SHA=1b65dc498ba7ab1f5cce64200b920a8716d90834 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.1/jenkins-war-2.32.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Tue, 27 Dec 2016 22:16:06 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Tue, 27 Dec 2016 22:16:07 GMT
# ARGS: JENKINS_SHA=1b65dc498ba7ab1f5cce64200b920a8716d90834 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.1/jenkins-war-2.32.1.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Tue, 27 Dec 2016 22:16:08 GMT
EXPOSE 8080/tcp
# Tue, 27 Dec 2016 22:16:08 GMT
EXPOSE 50000/tcp
# Tue, 27 Dec 2016 22:16:09 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Tue, 27 Dec 2016 22:16:09 GMT
USER [jenkins]
# Tue, 27 Dec 2016 22:16:10 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Tue, 27 Dec 2016 22:16:11 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Tue, 27 Dec 2016 22:16:11 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Tue, 27 Dec 2016 22:16:12 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Tue, 27 Dec 2016 22:16:12 GMT
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
	-	`sha256:6981ae9da387f66123143304a28424753610913952347fc5aa6e9403be452dfd`  
		Last Modified: Tue, 27 Dec 2016 22:44:27 GMT  
		Size: 344.9 KB (344859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1948a77ff7cc95ee3dedc6572faf20316004786a391d456fc805b69097c75f5d`  
		Last Modified: Tue, 27 Dec 2016 22:44:27 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb220f57d17868af5440c25f8ff500e4b9d3e0e74a2bc977c283dfb9e2b7f8d`  
		Last Modified: Tue, 27 Dec 2016 22:44:34 GMT  
		Size: 69.9 MB (69934806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0fbbc51c7aeaff2f33a384a1c6eff640e6b83d8ab792f76bb4d526a66715b31`  
		Last Modified: Tue, 27 Dec 2016 22:44:25 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9213c6063546c0ffc6feb00122ff40d183c6136e3faab6c5aaf92376ffe5a0`  
		Last Modified: Tue, 27 Dec 2016 22:44:26 GMT  
		Size: 1.4 KB (1417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0210dfc099bd81edc78819570958f2b9ebb3096a607cd26427f2f7f41cb5898`  
		Last Modified: Tue, 27 Dec 2016 22:44:25 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f19df3931622bf6ef7a3509037a01a5c109b65aa0b77204a8803bc1ef2ebdc9`  
		Last Modified: Tue, 27 Dec 2016 22:44:25 GMT  
		Size: 1.5 KB (1517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eee39234906eb3ac8323151beebf4e62280383e72ed2d25cd7be2c224e74ed5`  
		Last Modified: Tue, 27 Dec 2016 22:44:25 GMT  
		Size: 2.2 KB (2175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
