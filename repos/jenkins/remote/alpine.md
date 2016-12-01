## `jenkins:alpine`

```console
$ docker pull jenkins@sha256:f40c795a78e2843b616917ba9200a25b7e6c2115c984cbcd2633d4e3153a9092
```

-	Platforms:
	-	linux; amd64

### `jenkins:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.8 MB (144830042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79539be96238b00e2186bc84e906bae906f1ab8e0003efeaa23b1d6895c01666`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 18 Oct 2016 20:40:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 01:09:19 GMT
RUN apk add --no-cache git openssh-client curl unzip bash ttf-dejavu coreutils
# Fri, 18 Nov 2016 01:09:19 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Fri, 18 Nov 2016 01:09:20 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Fri, 18 Nov 2016 01:09:20 GMT
ARG user=jenkins
# Fri, 18 Nov 2016 01:09:21 GMT
ARG group=jenkins
# Fri, 18 Nov 2016 01:09:21 GMT
ARG uid=1000
# Fri, 18 Nov 2016 01:09:21 GMT
ARG gid=1000
# Fri, 18 Nov 2016 01:09:23 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN addgroup -g ${gid} ${group}     && adduser -h "$JENKINS_HOME" -u ${uid} -G ${group} -s /bin/bash -D ${user}
# Fri, 18 Nov 2016 01:09:23 GMT
VOLUME [/var/jenkins_home]
# Fri, 18 Nov 2016 01:09:24 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Fri, 18 Nov 2016 01:09:24 GMT
ENV TINI_VERSION=0.9.0
# Fri, 18 Nov 2016 01:09:25 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Fri, 18 Nov 2016 01:09:28 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Fri, 18 Nov 2016 01:09:28 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Fri, 18 Nov 2016 01:09:29 GMT
ARG JENKINS_VERSION
# Thu, 01 Dec 2016 20:17:25 GMT
ENV JENKINS_VERSION=2.19.4
# Thu, 01 Dec 2016 20:17:25 GMT
ARG JENKINS_SHA=ea61a4ff86f0db715511d1118a4e2f0a6a0311a1
# Thu, 01 Dec 2016 20:17:26 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.4/jenkins-war-2.19.4.war
# Thu, 01 Dec 2016 20:17:31 GMT
# ARGS: JENKINS_SHA=ea61a4ff86f0db715511d1118a4e2f0a6a0311a1 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.4/jenkins-war-2.19.4.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Thu, 01 Dec 2016 20:17:32 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Thu, 01 Dec 2016 20:17:33 GMT
# ARGS: JENKINS_SHA=ea61a4ff86f0db715511d1118a4e2f0a6a0311a1 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.4/jenkins-war-2.19.4.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Thu, 01 Dec 2016 20:17:33 GMT
EXPOSE 8080/tcp
# Thu, 01 Dec 2016 20:17:33 GMT
EXPOSE 50000/tcp
# Thu, 01 Dec 2016 20:17:34 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Thu, 01 Dec 2016 20:17:34 GMT
USER [jenkins]
# Thu, 01 Dec 2016 20:17:35 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Thu, 01 Dec 2016 20:17:35 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Thu, 01 Dec 2016 20:17:36 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Thu, 01 Dec 2016 20:17:36 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Thu, 01 Dec 2016 20:17:37 GMT
COPY file:2a6a3e16202b8dddab5edef50f712c16fe8f6980f5aea80c8c76b5db4f903913 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f83c3a978676d457389954188a0d4eae85a2728e4a9ba27f6ec6730e88932fd`  
		Last Modified: Thu, 17 Nov 2016 22:00:11 GMT  
		Size: 49.4 MB (49355709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eedb280886794ff1e8a6a3cbf2e6744d44851bed6b61f7777dc69ce4c76dbda`  
		Last Modified: Fri, 18 Nov 2016 01:10:09 GMT  
		Size: 23.3 MB (23257275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a24375dafbeff86afe01052e8a3366fdb6823c7eab3b22ba56e50b0602a6e4`  
		Last Modified: Fri, 18 Nov 2016 01:09:57 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e4b04e80fa2035c181b41b903146acc9ae43a0a3edfd8fffbcd43aa3d97ae5`  
		Last Modified: Fri, 18 Nov 2016 01:09:56 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ce7328af51497e5b1f45b5ebfe333ce7757176f10b503c671bbe58866c7619`  
		Last Modified: Fri, 18 Nov 2016 01:09:58 GMT  
		Size: 337.2 KB (337238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d89bedf04f3ae3a0999a58a0946f579097322f923556c2b0c7d7c08c8f80f6f`  
		Last Modified: Fri, 18 Nov 2016 01:09:56 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bdc52c6616b8adcb739b3c4c441d81bfed68d44bce4c1b0d039f1f2f4b11cc`  
		Last Modified: Thu, 01 Dec 2016 20:18:43 GMT  
		Size: 69.6 MB (69558421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e42c05107a673cc8845d230c309e50a15fc4e74c6aa7e1577a70efe18e710ae`  
		Last Modified: Thu, 01 Dec 2016 20:18:35 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70f9cf507f38a7048d9ccc5209c50283bce35a60f33ae83597d3a25d3fd4c55`  
		Last Modified: Thu, 01 Dec 2016 20:18:34 GMT  
		Size: 1.4 KB (1412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ffa125d7bc807af121c0941deeab3f98b5b421ab32ebae96d557cb93ff1085`  
		Last Modified: Thu, 01 Dec 2016 20:18:36 GMT  
		Size: 811.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6ee05d8e0a05e12f77514527e383a3d7cada39fcf71e671d32661a75164ed1`  
		Last Modified: Thu, 01 Dec 2016 20:18:34 GMT  
		Size: 1.5 KB (1515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148032b3063eaa3c90c3ac0076bda04092a7fbf97724fbbb5756e52cd67c3c0c`  
		Last Modified: Thu, 01 Dec 2016 20:18:34 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
