## `jenkins:alpine`

```console
$ docker pull jenkins@sha256:a513f71b5c744290eb55be0f1d3e41215ec452d1383a53adb834fdee32d2d597
```

-	Platforms:
	-	linux; amd64

### `jenkins:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144963820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c29621eafc9c3a1001bbdb2a30b8431b5b8d854ca947c02e21467b8191c0d91`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 03 Mar 2017 22:01:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:22 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:26 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:10:02 GMT
RUN apk add --no-cache git openssh-client curl unzip bash ttf-dejavu coreutils
# Sat, 04 Mar 2017 00:10:02 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Sat, 04 Mar 2017 00:10:03 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Sat, 04 Mar 2017 00:10:03 GMT
ARG user=jenkins
# Sat, 04 Mar 2017 00:10:03 GMT
ARG group=jenkins
# Sat, 04 Mar 2017 00:10:04 GMT
ARG uid=1000
# Sat, 04 Mar 2017 00:10:04 GMT
ARG gid=1000
# Sat, 04 Mar 2017 00:10:05 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN addgroup -g ${gid} ${group}     && adduser -h "$JENKINS_HOME" -u ${uid} -G ${group} -s /bin/bash -D ${user}
# Sat, 04 Mar 2017 00:10:05 GMT
VOLUME [/var/jenkins_home]
# Sat, 04 Mar 2017 00:10:06 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Sat, 04 Mar 2017 00:10:07 GMT
ENV TINI_VERSION=0.13.2
# Sat, 04 Mar 2017 00:10:07 GMT
ENV TINI_SHA=afbf8de8a63ce8e4f18cb3f34dfdbbd354af68a1
# Sat, 04 Mar 2017 00:10:09 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Sat, 04 Mar 2017 00:10:10 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Sat, 04 Mar 2017 00:10:10 GMT
ARG JENKINS_VERSION
# Sat, 04 Mar 2017 00:10:10 GMT
ENV JENKINS_VERSION=2.32.3
# Sat, 04 Mar 2017 00:10:11 GMT
ARG JENKINS_SHA=a25b9a314ca9e76f9673da7309e1882e32674223
# Sat, 04 Mar 2017 00:10:11 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.3/jenkins-war-2.32.3.war
# Sat, 04 Mar 2017 00:10:28 GMT
# ARGS: JENKINS_SHA=a25b9a314ca9e76f9673da7309e1882e32674223 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.3/jenkins-war-2.32.3.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Sat, 04 Mar 2017 00:10:28 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Sat, 04 Mar 2017 00:10:29 GMT
# ARGS: JENKINS_SHA=a25b9a314ca9e76f9673da7309e1882e32674223 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.3/jenkins-war-2.32.3.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Sat, 04 Mar 2017 00:10:29 GMT
EXPOSE 8080/tcp
# Sat, 04 Mar 2017 00:10:30 GMT
EXPOSE 50000/tcp
# Sat, 04 Mar 2017 00:10:30 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Sat, 04 Mar 2017 00:10:30 GMT
USER [jenkins]
# Sat, 04 Mar 2017 00:10:31 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Sat, 04 Mar 2017 00:10:31 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Sat, 04 Mar 2017 00:10:31 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Sat, 04 Mar 2017 00:10:32 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Sat, 04 Mar 2017 00:10:32 GMT
COPY file:2a6a3e16202b8dddab5edef50f712c16fe8f6980f5aea80c8c76b5db4f903913 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b58c996e33ea9b6701cb8935434be70cb9e5908d81a81f360b47e6f9394a1d7`  
		Last Modified: Sat, 04 Mar 2017 02:56:01 GMT  
		Size: 49.4 MB (49360641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a02c115603f54e492b050d27beeffccc174f84284c598d5fdf994a00de0069c1`  
		Last Modified: Sat, 04 Mar 2017 07:01:29 GMT  
		Size: 23.3 MB (23273201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f274171eb7b5b44e51369dcd9a166c9929dade66295fdb08cefeeafee30b390a`  
		Last Modified: Sat, 04 Mar 2017 07:01:18 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce75d75ea4683b9fe40648ca33f6f63cb3a2159e4db3a8c2a60cb072c7235a2`  
		Last Modified: Sat, 04 Mar 2017 07:01:19 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c239f2930652e625b8dd89c8771356ed288e7153f89a03b906652e47e6fcd2d`  
		Last Modified: Sat, 04 Mar 2017 07:01:19 GMT  
		Size: 344.9 KB (344859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24aa0e98a06b4de1a6f2462fd36655ef0b3a568fbfbfb148be7360ccdabc1067`  
		Last Modified: Sat, 04 Mar 2017 07:01:18 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4271de2d919dd53da252c8bb13b4ce7fa8af7fdf3e3a63c9059557655fe63a0`  
		Last Modified: Sat, 04 Mar 2017 07:01:25 GMT  
		Size: 69.7 MB (69663297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906ea8ae7ab7c088e8082632c9aaa76afc6ae04271103f7bf581b9a4077e4e61`  
		Last Modified: Sat, 04 Mar 2017 07:01:16 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bb8a730f271267599161b5476d1ffea3a791f4d433139b35a9ad2c7fc328a3`  
		Last Modified: Sat, 04 Mar 2017 07:01:16 GMT  
		Size: 1.4 KB (1413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db0206f0feca3bf58d86a1fb471f82b58bede14ef052512186e748c1b595274`  
		Last Modified: Sat, 04 Mar 2017 07:01:16 GMT  
		Size: 812.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59aec0325be8d29b8b875b3aae0540aed29a080c19684eeb988e34996d961091`  
		Last Modified: Sat, 04 Mar 2017 07:01:16 GMT  
		Size: 1.5 KB (1514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae3997cd6385eba8a030f7173691bb22b4f360a8f14fe58cf361a347eb67fe1`  
		Last Modified: Sat, 04 Mar 2017 07:01:16 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
