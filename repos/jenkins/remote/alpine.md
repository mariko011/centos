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
