## `jenkins:latest`

```console
$ docker pull jenkins@sha256:0b30738583b105d6924158b18e246f94087f5f8c5c5149eda9d0cf75e682fa88
```

-	Platforms:
	-	linux; amd64

### `jenkins:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.3 MB (318322959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:559583270b4f47ae3ab4f69167f5a6f649c5aa2bf0ddb81d64c3ca28f7c800c8`
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
# Fri, 05 May 2017 22:27:38 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:27:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 May 2017 22:27:39 GMT
ENV JAVA_VERSION=8u121
# Fri, 05 May 2017 22:27:57 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Fri, 05 May 2017 22:27:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 05 May 2017 22:28:45 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 May 2017 22:28:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 May 2017 22:07:18 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 22:07:18 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Mon, 08 May 2017 22:07:19 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Mon, 08 May 2017 22:07:20 GMT
ARG user=jenkins
# Mon, 08 May 2017 22:07:20 GMT
ARG group=jenkins
# Mon, 08 May 2017 22:07:21 GMT
ARG uid=1000
# Mon, 08 May 2017 22:07:22 GMT
ARG gid=1000
# Mon, 08 May 2017 22:07:23 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Mon, 08 May 2017 22:07:24 GMT
VOLUME [/var/jenkins_home]
# Mon, 08 May 2017 22:07:26 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Mon, 08 May 2017 22:07:27 GMT
ENV TINI_VERSION=0.14.0
# Mon, 08 May 2017 22:07:28 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Mon, 08 May 2017 22:07:31 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Mon, 08 May 2017 22:07:32 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Mon, 08 May 2017 22:07:33 GMT
ARG JENKINS_VERSION
# Mon, 08 May 2017 22:07:34 GMT
ENV JENKINS_VERSION=2.46.2
# Mon, 08 May 2017 22:07:35 GMT
ARG JENKINS_SHA=aa7f243a4c84d3d6cfb99a218950b8f7b926af7aa2570b0e1707279d464472c7
# Mon, 08 May 2017 22:07:36 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.46.2/jenkins-war-2.46.2.war
# Mon, 08 May 2017 22:07:40 GMT
# ARGS: JENKINS_SHA=aa7f243a4c84d3d6cfb99a218950b8f7b926af7aa2570b0e1707279d464472c7 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.46.2/jenkins-war-2.46.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Mon, 08 May 2017 22:07:41 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Mon, 08 May 2017 22:07:43 GMT
# ARGS: JENKINS_SHA=aa7f243a4c84d3d6cfb99a218950b8f7b926af7aa2570b0e1707279d464472c7 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.46.2/jenkins-war-2.46.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Mon, 08 May 2017 22:07:44 GMT
EXPOSE 8080/tcp
# Mon, 08 May 2017 22:07:45 GMT
EXPOSE 50000/tcp
# Mon, 08 May 2017 22:07:46 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Mon, 08 May 2017 22:07:46 GMT
USER [jenkins]
# Mon, 08 May 2017 22:07:48 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Mon, 08 May 2017 22:07:49 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Mon, 08 May 2017 22:07:50 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Mon, 08 May 2017 22:07:51 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Mon, 08 May 2017 22:07:52 GMT
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
	-	`sha256:2b271bed4ca3b242f18f086d4ccf56b710445d94c11a7b74dfaef415d5de4603`  
		Last Modified: Fri, 05 May 2017 22:53:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e4d8ac7a5480d14a1a38b1afd8fd239a6fc205e13368c7bd6be7738f995212`  
		Last Modified: Fri, 05 May 2017 22:53:55 GMT  
		Size: 131.9 MB (131887898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45858d68b18da8beba6cb3582db59af65788dc4a5d90d8207c726a8c763ed381`  
		Last Modified: Fri, 05 May 2017 22:53:24 GMT  
		Size: 289.7 KB (289668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8b34fc81588b8c5caa0b3ebfa9e40623b886f49af065c6507a7063349d24ec`  
		Last Modified: Mon, 08 May 2017 22:08:58 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0c6884adec7754c7ca645dd5b009a8b1b2a3ce0d7e3cdc98d0b7407eefce69`  
		Last Modified: Mon, 08 May 2017 22:08:55 GMT  
		Size: 4.4 KB (4426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2216bbef0d1a922869bd4d060ef7eaf3eccae3d132f393674159c269ced2119`  
		Last Modified: Mon, 08 May 2017 22:08:56 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1149e56a10303d4a2783b61c913617250fb4d357fac20b634740fc6c26a7e95e`  
		Last Modified: Mon, 08 May 2017 22:08:55 GMT  
		Size: 354.8 KB (354771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a1fe13e1045987a827b289a699141ea5c6b9dbb338f32bc2170242e4c3b85a`  
		Last Modified: Mon, 08 May 2017 22:08:58 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8419d42d1d0ca87c25af722d39529eb046800d71b6de3c97088daacc33f24341`  
		Last Modified: Mon, 08 May 2017 22:08:59 GMT  
		Size: 70.1 MB (70131038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e521b677208217a58fade68d3dc23b6e5d895ec3ae0acc1f59e6707a62c5f4`  
		Last Modified: Mon, 08 May 2017 22:08:55 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0529ca380c6e76007d480dae00c6253e66478635c36e11a10eeb9901a03c1e22`  
		Last Modified: Mon, 08 May 2017 22:08:57 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe591e2f7fdea3716f66598692666b93fc74d39d80e5ae042549514472c201c`  
		Last Modified: Mon, 08 May 2017 22:08:55 GMT  
		Size: 819.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e325000f5ad4d4eb898cb8783b6226c1430e9b4bb3742de7c59164af6af06edc`  
		Last Modified: Mon, 08 May 2017 22:08:56 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6045fb1ad04ccf8d4c1421765a9bf230331d501f3e4de1a3f1d918f78182f0a5`  
		Last Modified: Mon, 08 May 2017 22:08:54 GMT  
		Size: 2.2 KB (2186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
