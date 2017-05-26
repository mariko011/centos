## `jenkins:alpine`

```console
$ docker pull jenkins@sha256:946629eb63ad4d2d0151eaed59b73806ee8e7d67d0a32345d10325765c52d70b
```

-	Platforms:
	-	linux; amd64

### `jenkins:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167714289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39b922f73aefb6cd8ad566f035c19829793a72bcebd36764e17a84a8b5297e30`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 04:38:34 GMT
RUN apk add --no-cache git openssh-client curl unzip bash ttf-dejavu coreutils
# Thu, 11 May 2017 04:38:35 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Thu, 11 May 2017 04:38:36 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Thu, 11 May 2017 04:38:37 GMT
ARG user=jenkins
# Thu, 11 May 2017 04:38:38 GMT
ARG group=jenkins
# Thu, 11 May 2017 04:38:39 GMT
ARG uid=1000
# Thu, 11 May 2017 04:38:39 GMT
ARG gid=1000
# Thu, 11 May 2017 04:38:41 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN addgroup -g ${gid} ${group}     && adduser -h "$JENKINS_HOME" -u ${uid} -G ${group} -s /bin/bash -D ${user}
# Thu, 11 May 2017 04:38:42 GMT
VOLUME [/var/jenkins_home]
# Thu, 11 May 2017 04:38:44 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Thu, 11 May 2017 04:38:45 GMT
ENV TINI_VERSION=0.14.0
# Thu, 11 May 2017 04:38:45 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Thu, 11 May 2017 04:38:48 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Thu, 11 May 2017 04:38:49 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Thu, 11 May 2017 04:38:50 GMT
ARG JENKINS_VERSION
# Fri, 26 May 2017 14:32:27 GMT
ENV JENKINS_VERSION=2.46.3
# Fri, 26 May 2017 14:32:28 GMT
ARG JENKINS_SHA=00424d3c851298b29376d1d09d7d3578a2bc4a03acf3914b317c47707cd5739a
# Fri, 26 May 2017 14:32:28 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.46.3/jenkins-war-2.46.3.war
# Fri, 26 May 2017 14:32:35 GMT
# ARGS: JENKINS_SHA=00424d3c851298b29376d1d09d7d3578a2bc4a03acf3914b317c47707cd5739a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.46.3/jenkins-war-2.46.3.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Fri, 26 May 2017 14:32:36 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Fri, 26 May 2017 14:32:37 GMT
# ARGS: JENKINS_SHA=00424d3c851298b29376d1d09d7d3578a2bc4a03acf3914b317c47707cd5739a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.46.3/jenkins-war-2.46.3.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Fri, 26 May 2017 14:32:38 GMT
EXPOSE 8080/tcp
# Fri, 26 May 2017 14:32:39 GMT
EXPOSE 50000/tcp
# Fri, 26 May 2017 14:32:39 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Fri, 26 May 2017 14:32:40 GMT
USER [jenkins]
# Fri, 26 May 2017 14:32:41 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Fri, 26 May 2017 14:32:42 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Fri, 26 May 2017 14:32:43 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Fri, 26 May 2017 14:32:44 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Fri, 26 May 2017 14:32:45 GMT
COPY file:2a6a3e16202b8dddab5edef50f712c16fe8f6980f5aea80c8c76b5db4f903913 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560053ce286fa157f89c834cc9b583d034a6ca90f5bb39587dfbb11c7f95f62e`  
		Last Modified: Sat, 13 May 2017 16:22:08 GMT  
		Size: 25.2 MB (25249125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ab43f5fe1a8c9b6f9faf97e2a7cb48980587377fd121fb4385be6054198f77`  
		Last Modified: Sat, 13 May 2017 16:22:02 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fe1e20c2cb4880c660850e3c5deffdc60397869fd50af4e1d5fa7b7849d755`  
		Last Modified: Sat, 13 May 2017 16:22:03 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6eb45a518418df68c00b03d3a4e9c587cc6df86c1bf2043320497da5511529d`  
		Last Modified: Sat, 13 May 2017 16:22:02 GMT  
		Size: 354.8 KB (354773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d58d23391729795e0b764589ca6d049cad9bbf22d7ed3aa2e5672ee5a628e539`  
		Last Modified: Sat, 13 May 2017 16:22:02 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab04da2a6232b85de4a772b82aaba704fb49e6fdfaa2e8103f4d3660f01994a`  
		Last Modified: Fri, 26 May 2017 14:34:39 GMT  
		Size: 70.1 MB (70129893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78da9b7da87b1ce514e0167ae279936f8c035a3e97817d28050e2e911e0a8df7`  
		Last Modified: Fri, 26 May 2017 14:34:31 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad722b59ce19a9474c4542dc85cc76ee50a99399e5e26f6e66c7d26f40a028a`  
		Last Modified: Fri, 26 May 2017 14:34:31 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef4bf79cfec0b64367eb64080c042d9299f59543988e34502cc2919843397bf`  
		Last Modified: Fri, 26 May 2017 14:34:31 GMT  
		Size: 808.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81db10e48f96c4e7cbb1074258c9d70f66cafa7560506cf938f2b0103b172bd`  
		Last Modified: Fri, 26 May 2017 14:34:31 GMT  
		Size: 1.5 KB (1520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94574e05faf89e650120930861dd7f7c326e69a5f1f0cfa1462f143b4e4c0a52`  
		Last Modified: Fri, 26 May 2017 14:34:31 GMT  
		Size: 2.2 KB (2177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
