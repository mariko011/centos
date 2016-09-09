## `jenkins:alpine`

```console
$ docker pull jenkins@sha256:ec77aa095f6b894926fac288b9d5dd6c79666b2a651566bba1a18db16f314479
```

-	Platforms:
	-	linux; amd64

### `jenkins:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144093562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:305a1c3e165acfe9eb5dcc28cb48ab700b97e720155b0ed4e0304d5326eb22d9`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 30 Aug 2016 19:55:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:55:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 20:05:14 GMT
RUN apk add --no-cache git openssh-client curl zip unzip bash ttf-dejavu coreutils
# Tue, 30 Aug 2016 20:05:14 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Tue, 30 Aug 2016 20:05:15 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Tue, 30 Aug 2016 20:05:15 GMT
ARG user=jenkins
# Tue, 30 Aug 2016 20:05:15 GMT
ARG group=jenkins
# Tue, 30 Aug 2016 20:05:15 GMT
ARG uid=1000
# Tue, 30 Aug 2016 20:05:16 GMT
ARG gid=1000
# Tue, 30 Aug 2016 20:05:16 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN addgroup -g ${gid} ${group}     && adduser -h "$JENKINS_HOME" -u ${uid} -G ${group} -s /bin/bash -D ${user}
# Tue, 30 Aug 2016 20:05:17 GMT
VOLUME [/var/jenkins_home]
# Tue, 30 Aug 2016 20:05:17 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Tue, 30 Aug 2016 20:05:18 GMT
ENV TINI_VERSION=0.9.0
# Tue, 30 Aug 2016 20:05:18 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Tue, 30 Aug 2016 20:05:21 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Tue, 30 Aug 2016 20:05:21 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Tue, 30 Aug 2016 20:05:21 GMT
ARG JENKINS_VERSION
# Thu, 01 Sep 2016 19:12:12 GMT
ENV JENKINS_VERSION=2.7.3
# Thu, 01 Sep 2016 19:12:12 GMT
ARG JENKINS_SHA=f822e70810e0d30c6fbe7935273635740faa3d89
# Thu, 01 Sep 2016 19:12:13 GMT
ARG JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.3/jenkins-war-2.7.3.war
# Thu, 01 Sep 2016 19:12:19 GMT
# ARGS: JENKINS_SHA=f822e70810e0d30c6fbe7935273635740faa3d89 JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.3/jenkins-war-2.7.3.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Thu, 01 Sep 2016 19:12:19 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Thu, 01 Sep 2016 19:12:20 GMT
# ARGS: JENKINS_SHA=f822e70810e0d30c6fbe7935273635740faa3d89 JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.3/jenkins-war-2.7.3.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Thu, 01 Sep 2016 19:12:20 GMT
EXPOSE 8080/tcp
# Thu, 01 Sep 2016 19:12:20 GMT
EXPOSE 50000/tcp
# Thu, 01 Sep 2016 19:12:21 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Thu, 01 Sep 2016 19:12:21 GMT
USER [jenkins]
# Thu, 01 Sep 2016 19:12:21 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Thu, 01 Sep 2016 19:12:22 GMT
COPY file:fc94121cf01d6d05be390499fbde73a26d1cf59af88d4d29dab5e81024778028 in /usr/local/bin/jenkins.sh 
# Thu, 01 Sep 2016 19:12:22 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Thu, 01 Sep 2016 19:12:22 GMT
COPY file:902c50db7f531a8fe363c937a24f6474b4525ed70c2b3d807306d33d6d254a9d in /usr/local/bin/plugins.sh 
# Thu, 01 Sep 2016 19:12:23 GMT
COPY file:c9cb5b680a6dd3e26901cca8c795d5aacfe8ff25d6bfc2e19624e203933efea7 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f0d61cd0d229546b1e33b0c92036ad3f35b42dd2c9a945aeaf67f84684ce26`  
		Last Modified: Tue, 30 Aug 2016 21:56:07 GMT  
		Size: 49.3 MB (49325330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56b92d34a4af0bcd390ab07120fcbaf36dbd86908ccda45a434b017de205097`  
		Last Modified: Wed, 31 Aug 2016 20:50:16 GMT  
		Size: 23.5 MB (23461542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b62a5f7a44220b12fcb7afa745d9f414b2509b8caa9a0b3554e75dcf36b81d`  
		Last Modified: Wed, 31 Aug 2016 20:50:05 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53401b921fd411bc011e35ea9e010d61128c1a8c1d03a7788c4685b571e167e6`  
		Last Modified: Wed, 31 Aug 2016 20:50:05 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab20052849610b4e1da440ee2618f75eb6b4ba404b644925a7ed5f1ec3183b76`  
		Last Modified: Wed, 31 Aug 2016 20:50:05 GMT  
		Size: 337.2 KB (337240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ac44700e4f29161f595ec9db2a1cf38a489aac0480067e1c54933b7caf0112`  
		Last Modified: Wed, 31 Aug 2016 20:50:04 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabd13f70d9a0aa08db6be2c50bf38da1911bf44b4fa95936ca5a2c843f30329`  
		Last Modified: Thu, 01 Sep 2016 19:13:09 GMT  
		Size: 68.7 MB (68650976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:232f88befd576f32fa35ee53adafdd66e749d94cfd0019aaf4560107ee7d9694`  
		Last Modified: Thu, 01 Sep 2016 19:13:00 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729d5f8e2b15d031c74733f3b0485112c0448aea1cf7c76f688137ef66d01109`  
		Last Modified: Thu, 01 Sep 2016 19:13:01 GMT  
		Size: 1.4 KB (1412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd4082f0e325d2d0115c05a25f095ddb0267c47100edb9d7545741b75f19b17`  
		Last Modified: Thu, 01 Sep 2016 19:13:00 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b4bd835cc610de2a49b82c68e792c137e437d8122ce54c378be672f8698d72`  
		Last Modified: Thu, 01 Sep 2016 19:13:01 GMT  
		Size: 1.5 KB (1491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07448778af0611d0475c4ffc1446a88d38a5c99ccbf776edd1d9cae0e3ca5a1`  
		Last Modified: Thu, 01 Sep 2016 19:13:00 GMT  
		Size: 2.1 KB (2125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
