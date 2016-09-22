<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jenkins`

-	[`jenkins:latest`](#jenkinslatest)
-	[`jenkins:2.7.4`](#jenkins274)
-	[`jenkins:alpine`](#jenkinsalpine)
-	[`jenkins:2.7.4-alpine`](#jenkins274-alpine)

## `jenkins:latest`

```console
$ docker pull jenkins@sha256:3fe8bd3b7503a998a6a5584fe6c112e787da9c144d296ac98743dfc9d96fa74f
```

-	Platforms:
	-	linux; amd64

### `jenkins:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.9 MB (312854066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e650629b6b1a2a9231758fecf93aefb4e5dadd7cce7ae70e01e37b2c019eaeab`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 04:55:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:31:31 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 20 Sep 2016 16:31:32 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 16:31:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 16:31:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 20 Sep 2016 16:31:33 GMT
ENV JAVA_VERSION=8u102
# Tue, 20 Sep 2016 16:31:33 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 20 Sep 2016 16:31:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 20 Sep 2016 16:32:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:32:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Sep 2016 19:01:05 GMT
RUN apt-get update && apt-get install -y git curl zip && rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 19:01:06 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Tue, 20 Sep 2016 19:01:06 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Tue, 20 Sep 2016 19:01:06 GMT
ARG user=jenkins
# Tue, 20 Sep 2016 19:01:07 GMT
ARG group=jenkins
# Tue, 20 Sep 2016 19:01:07 GMT
ARG uid=1000
# Tue, 20 Sep 2016 19:01:07 GMT
ARG gid=1000
# Tue, 20 Sep 2016 19:01:08 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Tue, 20 Sep 2016 19:01:08 GMT
VOLUME [/var/jenkins_home]
# Tue, 20 Sep 2016 19:01:09 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Tue, 20 Sep 2016 19:01:10 GMT
ENV TINI_VERSION=0.9.0
# Tue, 20 Sep 2016 19:01:10 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Tue, 20 Sep 2016 19:01:13 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Tue, 20 Sep 2016 19:01:13 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Tue, 20 Sep 2016 19:01:14 GMT
ARG JENKINS_VERSION
# Tue, 20 Sep 2016 19:01:14 GMT
ENV JENKINS_VERSION=2.7.4
# Tue, 20 Sep 2016 19:01:14 GMT
ARG JENKINS_SHA=07a2e3e4ace728fdbcc823f46068d2f8cc3cb97b
# Tue, 20 Sep 2016 19:01:15 GMT
ARG JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.4/jenkins-war-2.7.4.war
# Tue, 20 Sep 2016 19:01:20 GMT
# ARGS: JENKINS_SHA=07a2e3e4ace728fdbcc823f46068d2f8cc3cb97b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.4/jenkins-war-2.7.4.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Tue, 20 Sep 2016 19:01:20 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Tue, 20 Sep 2016 19:01:21 GMT
# ARGS: JENKINS_SHA=07a2e3e4ace728fdbcc823f46068d2f8cc3cb97b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.4/jenkins-war-2.7.4.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Tue, 20 Sep 2016 19:01:22 GMT
EXPOSE 8080/tcp
# Tue, 20 Sep 2016 19:01:22 GMT
EXPOSE 50000/tcp
# Tue, 20 Sep 2016 19:01:22 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Tue, 20 Sep 2016 19:01:23 GMT
USER [jenkins]
# Tue, 20 Sep 2016 19:01:23 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Tue, 20 Sep 2016 19:01:24 GMT
COPY file:fc94121cf01d6d05be390499fbde73a26d1cf59af88d4d29dab5e81024778028 in /usr/local/bin/jenkins.sh 
# Tue, 20 Sep 2016 19:01:24 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Tue, 20 Sep 2016 19:01:25 GMT
COPY file:902c50db7f531a8fe363c937a24f6474b4525ed70c2b3d807306d33d6d254a9d in /usr/local/bin/plugins.sh 
# Tue, 20 Sep 2016 19:01:25 GMT
COPY file:c9cb5b680a6dd3e26901cca8c795d5aacfe8ff25d6bfc2e19624e203933efea7 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e9f9640562cf88eb4fbb29ff94d3c527e1abcaada715ce9b71011b7b9cdbc7`  
		Last Modified: Mon, 19 Sep 2016 17:55:02 GMT  
		Size: 42.5 MB (42496798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bb34190d78de660a5162c939bf1b690a7aa136c429d2aafac110d76b7bcad3`  
		Last Modified: Wed, 21 Sep 2016 16:59:32 GMT  
		Size: 592.9 KB (592910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c99c854a7534fbe1ce2ee13ec1522172b6b4fc8ef2c79ee47e4dc47bb9e6e3`  
		Last Modified: Wed, 21 Sep 2016 16:59:31 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8843ac35975edea0b8abf9c6c70819188a606fd845de4333631de18997b86081`  
		Last Modified: Wed, 21 Sep 2016 16:59:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba41c7e179c2b55e4a4cdd7c6e1b993932e4cbdd309860d169799d1f92e7610a`  
		Last Modified: Wed, 21 Sep 2016 17:00:06 GMT  
		Size: 130.1 MB (130073726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f56d642a190474a7297f62fe8ad3eb8a88a0094b558a47acc0fc2a10c1a7ab1`  
		Last Modified: Wed, 21 Sep 2016 16:59:29 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2192c748e219ecdc42c9139d515414eff858cb566e595cfc5fc56d8c1c083578`  
		Last Modified: Thu, 22 Sep 2016 18:21:12 GMT  
		Size: 523.1 KB (523052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a04fee424dcbf0074d4218ecd0c21382023c50f241ba32041054420e72667e0`  
		Last Modified: Thu, 22 Sep 2016 18:21:14 GMT  
		Size: 4.4 KB (4389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f4ca5a38a56a7d4ed26c001dbb69e3e7afb4290ddd209dcc128a4354364795`  
		Last Modified: Thu, 22 Sep 2016 18:21:08 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f0f80ccb6fd55729fddda7f1fed1db6858bc2b93c70c620ebfdf37202a5c15`  
		Last Modified: Thu, 22 Sep 2016 18:21:09 GMT  
		Size: 337.2 KB (337240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b1bd4ee2854689c717c0705f74e4f75fb6bfb61eda0507e4f30aa893fc43fa`  
		Last Modified: Thu, 22 Sep 2016 18:21:09 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1209adc7eaa42d3906a9f3962675aede7485e9385c35b354a25b79ff9a5d4384`  
		Last Modified: Thu, 22 Sep 2016 18:21:17 GMT  
		Size: 68.7 MB (68652373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8cc10591fc9d861ef684a94dd3151a2c43f7fbc085a0554bd1aa49c5a3fac0`  
		Last Modified: Thu, 22 Sep 2016 18:21:05 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ec38345a63808cb664fb040ca5db3fd8c94f88e48fc13fa8b2b75c5199de0b8`  
		Last Modified: Thu, 22 Sep 2016 18:21:05 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607afe816e2ce05f5e0b613203bba69a59e1a0683520ebf8a59ccee0221168b9`  
		Last Modified: Thu, 22 Sep 2016 18:21:05 GMT  
		Size: 641.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3f7515abb79e9f33b3bc611196cae53e9589ea1ff0ccb0de9e723e22c6b3e2`  
		Last Modified: Thu, 22 Sep 2016 18:21:05 GMT  
		Size: 1.5 KB (1506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43816b0d832c5e683e301c7a4028584f2ce90a0ca943a352f062686bd972ed51`  
		Last Modified: Thu, 22 Sep 2016 18:21:05 GMT  
		Size: 2.1 KB (2131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.7.4`

```console
$ docker pull jenkins@sha256:3fe8bd3b7503a998a6a5584fe6c112e787da9c144d296ac98743dfc9d96fa74f
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.7.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.9 MB (312854066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e650629b6b1a2a9231758fecf93aefb4e5dadd7cce7ae70e01e37b2c019eaeab`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 04:55:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:31:31 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 20 Sep 2016 16:31:32 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 16:31:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 16:31:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 20 Sep 2016 16:31:33 GMT
ENV JAVA_VERSION=8u102
# Tue, 20 Sep 2016 16:31:33 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 20 Sep 2016 16:31:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 20 Sep 2016 16:32:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:32:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Sep 2016 19:01:05 GMT
RUN apt-get update && apt-get install -y git curl zip && rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 19:01:06 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Tue, 20 Sep 2016 19:01:06 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Tue, 20 Sep 2016 19:01:06 GMT
ARG user=jenkins
# Tue, 20 Sep 2016 19:01:07 GMT
ARG group=jenkins
# Tue, 20 Sep 2016 19:01:07 GMT
ARG uid=1000
# Tue, 20 Sep 2016 19:01:07 GMT
ARG gid=1000
# Tue, 20 Sep 2016 19:01:08 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Tue, 20 Sep 2016 19:01:08 GMT
VOLUME [/var/jenkins_home]
# Tue, 20 Sep 2016 19:01:09 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Tue, 20 Sep 2016 19:01:10 GMT
ENV TINI_VERSION=0.9.0
# Tue, 20 Sep 2016 19:01:10 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Tue, 20 Sep 2016 19:01:13 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Tue, 20 Sep 2016 19:01:13 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Tue, 20 Sep 2016 19:01:14 GMT
ARG JENKINS_VERSION
# Tue, 20 Sep 2016 19:01:14 GMT
ENV JENKINS_VERSION=2.7.4
# Tue, 20 Sep 2016 19:01:14 GMT
ARG JENKINS_SHA=07a2e3e4ace728fdbcc823f46068d2f8cc3cb97b
# Tue, 20 Sep 2016 19:01:15 GMT
ARG JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.4/jenkins-war-2.7.4.war
# Tue, 20 Sep 2016 19:01:20 GMT
# ARGS: JENKINS_SHA=07a2e3e4ace728fdbcc823f46068d2f8cc3cb97b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.4/jenkins-war-2.7.4.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Tue, 20 Sep 2016 19:01:20 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Tue, 20 Sep 2016 19:01:21 GMT
# ARGS: JENKINS_SHA=07a2e3e4ace728fdbcc823f46068d2f8cc3cb97b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.4/jenkins-war-2.7.4.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Tue, 20 Sep 2016 19:01:22 GMT
EXPOSE 8080/tcp
# Tue, 20 Sep 2016 19:01:22 GMT
EXPOSE 50000/tcp
# Tue, 20 Sep 2016 19:01:22 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Tue, 20 Sep 2016 19:01:23 GMT
USER [jenkins]
# Tue, 20 Sep 2016 19:01:23 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Tue, 20 Sep 2016 19:01:24 GMT
COPY file:fc94121cf01d6d05be390499fbde73a26d1cf59af88d4d29dab5e81024778028 in /usr/local/bin/jenkins.sh 
# Tue, 20 Sep 2016 19:01:24 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Tue, 20 Sep 2016 19:01:25 GMT
COPY file:902c50db7f531a8fe363c937a24f6474b4525ed70c2b3d807306d33d6d254a9d in /usr/local/bin/plugins.sh 
# Tue, 20 Sep 2016 19:01:25 GMT
COPY file:c9cb5b680a6dd3e26901cca8c795d5aacfe8ff25d6bfc2e19624e203933efea7 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e9f9640562cf88eb4fbb29ff94d3c527e1abcaada715ce9b71011b7b9cdbc7`  
		Last Modified: Mon, 19 Sep 2016 17:55:02 GMT  
		Size: 42.5 MB (42496798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bb34190d78de660a5162c939bf1b690a7aa136c429d2aafac110d76b7bcad3`  
		Last Modified: Wed, 21 Sep 2016 16:59:32 GMT  
		Size: 592.9 KB (592910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c99c854a7534fbe1ce2ee13ec1522172b6b4fc8ef2c79ee47e4dc47bb9e6e3`  
		Last Modified: Wed, 21 Sep 2016 16:59:31 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8843ac35975edea0b8abf9c6c70819188a606fd845de4333631de18997b86081`  
		Last Modified: Wed, 21 Sep 2016 16:59:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba41c7e179c2b55e4a4cdd7c6e1b993932e4cbdd309860d169799d1f92e7610a`  
		Last Modified: Wed, 21 Sep 2016 17:00:06 GMT  
		Size: 130.1 MB (130073726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f56d642a190474a7297f62fe8ad3eb8a88a0094b558a47acc0fc2a10c1a7ab1`  
		Last Modified: Wed, 21 Sep 2016 16:59:29 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2192c748e219ecdc42c9139d515414eff858cb566e595cfc5fc56d8c1c083578`  
		Last Modified: Thu, 22 Sep 2016 18:21:12 GMT  
		Size: 523.1 KB (523052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a04fee424dcbf0074d4218ecd0c21382023c50f241ba32041054420e72667e0`  
		Last Modified: Thu, 22 Sep 2016 18:21:14 GMT  
		Size: 4.4 KB (4389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f4ca5a38a56a7d4ed26c001dbb69e3e7afb4290ddd209dcc128a4354364795`  
		Last Modified: Thu, 22 Sep 2016 18:21:08 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f0f80ccb6fd55729fddda7f1fed1db6858bc2b93c70c620ebfdf37202a5c15`  
		Last Modified: Thu, 22 Sep 2016 18:21:09 GMT  
		Size: 337.2 KB (337240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b1bd4ee2854689c717c0705f74e4f75fb6bfb61eda0507e4f30aa893fc43fa`  
		Last Modified: Thu, 22 Sep 2016 18:21:09 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1209adc7eaa42d3906a9f3962675aede7485e9385c35b354a25b79ff9a5d4384`  
		Last Modified: Thu, 22 Sep 2016 18:21:17 GMT  
		Size: 68.7 MB (68652373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8cc10591fc9d861ef684a94dd3151a2c43f7fbc085a0554bd1aa49c5a3fac0`  
		Last Modified: Thu, 22 Sep 2016 18:21:05 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ec38345a63808cb664fb040ca5db3fd8c94f88e48fc13fa8b2b75c5199de0b8`  
		Last Modified: Thu, 22 Sep 2016 18:21:05 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607afe816e2ce05f5e0b613203bba69a59e1a0683520ebf8a59ccee0221168b9`  
		Last Modified: Thu, 22 Sep 2016 18:21:05 GMT  
		Size: 641.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3f7515abb79e9f33b3bc611196cae53e9589ea1ff0ccb0de9e723e22c6b3e2`  
		Last Modified: Thu, 22 Sep 2016 18:21:05 GMT  
		Size: 1.5 KB (1506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43816b0d832c5e683e301c7a4028584f2ce90a0ca943a352f062686bd972ed51`  
		Last Modified: Thu, 22 Sep 2016 18:21:05 GMT  
		Size: 2.1 KB (2131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:alpine`

```console
$ docker pull jenkins@sha256:8e20ab85b7f9c33521ac348c46ad5a299ddccf4b0d3e4a375233eb6564c5eebd
```

-	Platforms:
	-	linux; amd64

### `jenkins:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144095264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:446fe9277462ac2fa8c5353ffe05b778ae5f0d974f776bc8d5ec7904117ed0ac`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:20:18 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 00:20:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 00:24:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 20 Sep 2016 00:24:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 00:24:55 GMT
ENV JAVA_VERSION=8u92
# Tue, 20 Sep 2016 00:24:55 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 20 Sep 2016 00:25:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:45:55 GMT
RUN apk add --no-cache git openssh-client curl zip unzip bash ttf-dejavu coreutils
# Tue, 20 Sep 2016 16:45:55 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Tue, 20 Sep 2016 16:45:56 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Tue, 20 Sep 2016 16:45:56 GMT
ARG user=jenkins
# Tue, 20 Sep 2016 16:45:56 GMT
ARG group=jenkins
# Tue, 20 Sep 2016 16:45:56 GMT
ARG uid=1000
# Tue, 20 Sep 2016 16:45:57 GMT
ARG gid=1000
# Tue, 20 Sep 2016 16:45:58 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN addgroup -g ${gid} ${group}     && adduser -h "$JENKINS_HOME" -u ${uid} -G ${group} -s /bin/bash -D ${user}
# Tue, 20 Sep 2016 16:45:58 GMT
VOLUME [/var/jenkins_home]
# Tue, 20 Sep 2016 16:45:59 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Tue, 20 Sep 2016 16:45:59 GMT
ENV TINI_VERSION=0.9.0
# Tue, 20 Sep 2016 16:46:00 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Tue, 20 Sep 2016 16:46:03 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Tue, 20 Sep 2016 16:46:03 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Tue, 20 Sep 2016 16:46:03 GMT
ARG JENKINS_VERSION
# Tue, 20 Sep 2016 16:46:04 GMT
ENV JENKINS_VERSION=2.7.4
# Tue, 20 Sep 2016 16:46:04 GMT
ARG JENKINS_SHA=07a2e3e4ace728fdbcc823f46068d2f8cc3cb97b
# Tue, 20 Sep 2016 16:46:04 GMT
ARG JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.4/jenkins-war-2.7.4.war
# Tue, 20 Sep 2016 16:46:10 GMT
# ARGS: JENKINS_SHA=07a2e3e4ace728fdbcc823f46068d2f8cc3cb97b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.4/jenkins-war-2.7.4.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Tue, 20 Sep 2016 16:46:11 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Tue, 20 Sep 2016 16:46:12 GMT
# ARGS: JENKINS_SHA=07a2e3e4ace728fdbcc823f46068d2f8cc3cb97b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.4/jenkins-war-2.7.4.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Tue, 20 Sep 2016 16:46:12 GMT
EXPOSE 8080/tcp
# Tue, 20 Sep 2016 16:46:12 GMT
EXPOSE 50000/tcp
# Tue, 20 Sep 2016 16:46:13 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Tue, 20 Sep 2016 16:46:13 GMT
USER [jenkins]
# Tue, 20 Sep 2016 16:46:13 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Tue, 20 Sep 2016 16:46:14 GMT
COPY file:fc94121cf01d6d05be390499fbde73a26d1cf59af88d4d29dab5e81024778028 in /usr/local/bin/jenkins.sh 
# Tue, 20 Sep 2016 16:46:14 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Tue, 20 Sep 2016 16:46:15 GMT
COPY file:902c50db7f531a8fe363c937a24f6474b4525ed70c2b3d807306d33d6d254a9d in /usr/local/bin/plugins.sh 
# Tue, 20 Sep 2016 16:46:15 GMT
COPY file:c9cb5b680a6dd3e26901cca8c795d5aacfe8ff25d6bfc2e19624e203933efea7 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187ddf52152d8d92e51722e536dd02ec43d2f66b476ea87b4151c382fc922fea`  
		Last Modified: Tue, 20 Sep 2016 00:20:42 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf67fd54f62e201ba82c703badd08312a6e2eca50d5b9f17b8c3cc7c574d426`  
		Last Modified: Tue, 20 Sep 2016 00:25:28 GMT  
		Size: 49.3 MB (49325081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903abf4491eea243832af1e8cffd372d92f195d4d35f2cd5716e5306a7a81b4a`  
		Last Modified: Tue, 20 Sep 2016 16:46:34 GMT  
		Size: 23.5 MB (23461335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e87e14a7c8133b451a0760141f2656ce3f7dc1b2377fdcb378573a6c8089f9`  
		Last Modified: Tue, 20 Sep 2016 16:46:25 GMT  
		Size: 1.3 KB (1265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34dc54248fe3f76d9db0225fbd1c0529036f301ff5ca83ea824b7648b99bd43e`  
		Last Modified: Tue, 20 Sep 2016 16:46:25 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be8ae46df23bc2d7afe3b576c936bba1fe4ca63bfa7d2b2756548c66c365bcc`  
		Last Modified: Tue, 20 Sep 2016 16:46:26 GMT  
		Size: 337.2 KB (337237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ae1fa8bb09138d5ce43d6a7458ef67eb0280d640f2b40036e657b6166066c0`  
		Last Modified: Tue, 20 Sep 2016 16:46:24 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:943a6d8e51e70ef56a17880ceaded10f52bb0fdab0ea3e614f05a40d352cb3c0`  
		Last Modified: Tue, 20 Sep 2016 16:46:31 GMT  
		Size: 68.7 MB (68652376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57907b6c5a1036ff1169620cf6b97002c7cdc3af66c5c60fa0457af11890509`  
		Last Modified: Tue, 20 Sep 2016 16:46:22 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2a04cb500075fba8bd5b77186326253c988b01a35feabf487566a7fd60ccf7`  
		Last Modified: Tue, 20 Sep 2016 16:46:21 GMT  
		Size: 1.4 KB (1414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f2749f68992ab2daf5f223f80d23c9d16b5b1a9e6611ab9101ce5c5906d530`  
		Last Modified: Tue, 20 Sep 2016 16:46:22 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba1888354849846d5f7503e79522e1f5fc037ef17b28dcd160fc555134d3973`  
		Last Modified: Tue, 20 Sep 2016 16:46:22 GMT  
		Size: 1.5 KB (1492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:019a59ca350a72e0321e8e5ed21c5b8460606c17978362a900a4f2b52bb2e005`  
		Last Modified: Tue, 20 Sep 2016 16:46:22 GMT  
		Size: 2.1 KB (2125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.7.4-alpine`

```console
$ docker pull jenkins@sha256:8e20ab85b7f9c33521ac348c46ad5a299ddccf4b0d3e4a375233eb6564c5eebd
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.7.4-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144095264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:446fe9277462ac2fa8c5353ffe05b778ae5f0d974f776bc8d5ec7904117ed0ac`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:20:18 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 00:20:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 00:24:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 20 Sep 2016 00:24:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 00:24:55 GMT
ENV JAVA_VERSION=8u92
# Tue, 20 Sep 2016 00:24:55 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 20 Sep 2016 00:25:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:45:55 GMT
RUN apk add --no-cache git openssh-client curl zip unzip bash ttf-dejavu coreutils
# Tue, 20 Sep 2016 16:45:55 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Tue, 20 Sep 2016 16:45:56 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Tue, 20 Sep 2016 16:45:56 GMT
ARG user=jenkins
# Tue, 20 Sep 2016 16:45:56 GMT
ARG group=jenkins
# Tue, 20 Sep 2016 16:45:56 GMT
ARG uid=1000
# Tue, 20 Sep 2016 16:45:57 GMT
ARG gid=1000
# Tue, 20 Sep 2016 16:45:58 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN addgroup -g ${gid} ${group}     && adduser -h "$JENKINS_HOME" -u ${uid} -G ${group} -s /bin/bash -D ${user}
# Tue, 20 Sep 2016 16:45:58 GMT
VOLUME [/var/jenkins_home]
# Tue, 20 Sep 2016 16:45:59 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Tue, 20 Sep 2016 16:45:59 GMT
ENV TINI_VERSION=0.9.0
# Tue, 20 Sep 2016 16:46:00 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Tue, 20 Sep 2016 16:46:03 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Tue, 20 Sep 2016 16:46:03 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Tue, 20 Sep 2016 16:46:03 GMT
ARG JENKINS_VERSION
# Tue, 20 Sep 2016 16:46:04 GMT
ENV JENKINS_VERSION=2.7.4
# Tue, 20 Sep 2016 16:46:04 GMT
ARG JENKINS_SHA=07a2e3e4ace728fdbcc823f46068d2f8cc3cb97b
# Tue, 20 Sep 2016 16:46:04 GMT
ARG JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.4/jenkins-war-2.7.4.war
# Tue, 20 Sep 2016 16:46:10 GMT
# ARGS: JENKINS_SHA=07a2e3e4ace728fdbcc823f46068d2f8cc3cb97b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.4/jenkins-war-2.7.4.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Tue, 20 Sep 2016 16:46:11 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Tue, 20 Sep 2016 16:46:12 GMT
# ARGS: JENKINS_SHA=07a2e3e4ace728fdbcc823f46068d2f8cc3cb97b JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.4/jenkins-war-2.7.4.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Tue, 20 Sep 2016 16:46:12 GMT
EXPOSE 8080/tcp
# Tue, 20 Sep 2016 16:46:12 GMT
EXPOSE 50000/tcp
# Tue, 20 Sep 2016 16:46:13 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Tue, 20 Sep 2016 16:46:13 GMT
USER [jenkins]
# Tue, 20 Sep 2016 16:46:13 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Tue, 20 Sep 2016 16:46:14 GMT
COPY file:fc94121cf01d6d05be390499fbde73a26d1cf59af88d4d29dab5e81024778028 in /usr/local/bin/jenkins.sh 
# Tue, 20 Sep 2016 16:46:14 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Tue, 20 Sep 2016 16:46:15 GMT
COPY file:902c50db7f531a8fe363c937a24f6474b4525ed70c2b3d807306d33d6d254a9d in /usr/local/bin/plugins.sh 
# Tue, 20 Sep 2016 16:46:15 GMT
COPY file:c9cb5b680a6dd3e26901cca8c795d5aacfe8ff25d6bfc2e19624e203933efea7 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187ddf52152d8d92e51722e536dd02ec43d2f66b476ea87b4151c382fc922fea`  
		Last Modified: Tue, 20 Sep 2016 00:20:42 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf67fd54f62e201ba82c703badd08312a6e2eca50d5b9f17b8c3cc7c574d426`  
		Last Modified: Tue, 20 Sep 2016 00:25:28 GMT  
		Size: 49.3 MB (49325081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903abf4491eea243832af1e8cffd372d92f195d4d35f2cd5716e5306a7a81b4a`  
		Last Modified: Tue, 20 Sep 2016 16:46:34 GMT  
		Size: 23.5 MB (23461335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e87e14a7c8133b451a0760141f2656ce3f7dc1b2377fdcb378573a6c8089f9`  
		Last Modified: Tue, 20 Sep 2016 16:46:25 GMT  
		Size: 1.3 KB (1265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34dc54248fe3f76d9db0225fbd1c0529036f301ff5ca83ea824b7648b99bd43e`  
		Last Modified: Tue, 20 Sep 2016 16:46:25 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be8ae46df23bc2d7afe3b576c936bba1fe4ca63bfa7d2b2756548c66c365bcc`  
		Last Modified: Tue, 20 Sep 2016 16:46:26 GMT  
		Size: 337.2 KB (337237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ae1fa8bb09138d5ce43d6a7458ef67eb0280d640f2b40036e657b6166066c0`  
		Last Modified: Tue, 20 Sep 2016 16:46:24 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:943a6d8e51e70ef56a17880ceaded10f52bb0fdab0ea3e614f05a40d352cb3c0`  
		Last Modified: Tue, 20 Sep 2016 16:46:31 GMT  
		Size: 68.7 MB (68652376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57907b6c5a1036ff1169620cf6b97002c7cdc3af66c5c60fa0457af11890509`  
		Last Modified: Tue, 20 Sep 2016 16:46:22 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2a04cb500075fba8bd5b77186326253c988b01a35feabf487566a7fd60ccf7`  
		Last Modified: Tue, 20 Sep 2016 16:46:21 GMT  
		Size: 1.4 KB (1414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f2749f68992ab2daf5f223f80d23c9d16b5b1a9e6611ab9101ce5c5906d530`  
		Last Modified: Tue, 20 Sep 2016 16:46:22 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba1888354849846d5f7503e79522e1f5fc037ef17b28dcd160fc555134d3973`  
		Last Modified: Tue, 20 Sep 2016 16:46:22 GMT  
		Size: 1.5 KB (1492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:019a59ca350a72e0321e8e5ed21c5b8460606c17978362a900a4f2b52bb2e005`  
		Last Modified: Tue, 20 Sep 2016 16:46:22 GMT  
		Size: 2.1 KB (2125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
