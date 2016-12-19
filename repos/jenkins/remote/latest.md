## `jenkins:latest`

```console
$ docker pull jenkins@sha256:5f595257805db3cb49f74fa3b6b2948134800d0bbe5a1c87e56e0573c8c3ba29
```

-	Platforms:
	-	linux; amd64

### `jenkins:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.3 MB (313289041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f61635651954adb853e95690b04dd3791e4fdbcfab7bfb66a2d505e31f3df31c`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:54:12 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:54:12 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:54:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:54:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:54:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Dec 2016 16:41:40 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 16:41:40 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Mon, 19 Dec 2016 16:41:40 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Mon, 19 Dec 2016 16:41:41 GMT
ARG user=jenkins
# Mon, 19 Dec 2016 16:41:41 GMT
ARG group=jenkins
# Mon, 19 Dec 2016 16:41:41 GMT
ARG uid=1000
# Mon, 19 Dec 2016 16:41:41 GMT
ARG gid=1000
# Mon, 19 Dec 2016 16:41:42 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Mon, 19 Dec 2016 16:41:43 GMT
VOLUME [/var/jenkins_home]
# Mon, 19 Dec 2016 16:41:44 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Mon, 19 Dec 2016 16:41:44 GMT
ENV TINI_VERSION=0.9.0
# Mon, 19 Dec 2016 16:41:44 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Mon, 19 Dec 2016 16:41:47 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Mon, 19 Dec 2016 16:41:47 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Mon, 19 Dec 2016 16:41:48 GMT
ARG JENKINS_VERSION
# Mon, 19 Dec 2016 16:41:48 GMT
ENV JENKINS_VERSION=2.19.4
# Mon, 19 Dec 2016 16:41:49 GMT
ARG JENKINS_SHA=ea61a4ff86f0db715511d1118a4e2f0a6a0311a1
# Mon, 19 Dec 2016 16:41:49 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.4/jenkins-war-2.19.4.war
# Mon, 19 Dec 2016 16:41:54 GMT
# ARGS: JENKINS_SHA=ea61a4ff86f0db715511d1118a4e2f0a6a0311a1 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.4/jenkins-war-2.19.4.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Mon, 19 Dec 2016 16:41:55 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Mon, 19 Dec 2016 16:41:56 GMT
# ARGS: JENKINS_SHA=ea61a4ff86f0db715511d1118a4e2f0a6a0311a1 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.19.4/jenkins-war-2.19.4.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Mon, 19 Dec 2016 16:41:56 GMT
EXPOSE 8080/tcp
# Mon, 19 Dec 2016 16:41:56 GMT
EXPOSE 50000/tcp
# Mon, 19 Dec 2016 16:41:57 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Mon, 19 Dec 2016 16:41:57 GMT
USER [jenkins]
# Mon, 19 Dec 2016 16:41:58 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Mon, 19 Dec 2016 16:41:58 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Mon, 19 Dec 2016 16:41:59 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Mon, 19 Dec 2016 16:41:59 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Mon, 19 Dec 2016 16:42:00 GMT
COPY file:2a6a3e16202b8dddab5edef50f712c16fe8f6980f5aea80c8c76b5db4f903913 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6944bfb7182c4b1f546a4bcd888d00bdb92bb016bde7d243af3712549534d9`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 593.4 KB (593384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3521f2f45ed2f586ef5e6423f3dc3f4e36f7460007c2827b827131d2254ecc44`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2f0d9b5f90c348276759c85fae2d52adae563fad53786e8e99862eb3aeab90`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cedcf6d25273f360503909554028b54a92d914805ed9d834cbe31e8ebfeb923`  
		Last Modified: Wed, 14 Dec 2016 03:12:30 GMT  
		Size: 130.1 MB (130108711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f99da7583d58b782d9a4c14ef448bf6f6771e15a7975a2450111ed0a34b381`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 284.2 KB (284180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b1a4e887f7e23a8e1779f5255c444b10f67f891ac9ad5ad4e70018891129a2d`  
		Last Modified: Mon, 19 Dec 2016 23:03:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec60c180ba4747a62ba06cb531a84da776b0da62b5eaeaeeacaad308633d65d5`  
		Last Modified: Mon, 19 Dec 2016 23:03:28 GMT  
		Size: 4.4 KB (4392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c5058508d7ea551e989ebf62885498e3e2bad406383c1299fa4da7688b4c89`  
		Last Modified: Mon, 19 Dec 2016 23:03:29 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f6956ea80538294a5f8323ddee29b976d18642c99cc7c22a59259462fa932dc`  
		Last Modified: Mon, 19 Dec 2016 23:03:27 GMT  
		Size: 337.2 KB (337238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11322c12182f7afcdfaaf8920049cc92fd2cf21cc41906c3146ba11d536425ee`  
		Last Modified: Mon, 19 Dec 2016 23:03:27 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012931252722ae5139545fac323af3a0dddf3e63d9170c2f1aa52388a32977e5`  
		Last Modified: Mon, 19 Dec 2016 23:03:36 GMT  
		Size: 69.6 MB (69558424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1414621e5a2eb76988f910f4920a0eb1a64155addfc0f84c5136d7f7a220a3bd`  
		Last Modified: Mon, 19 Dec 2016 23:03:25 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcff974135a1ebba01feedb3cba4b5f6091fe13f6ccd0161756c48e51c7a0ebe`  
		Last Modified: Mon, 19 Dec 2016 23:03:24 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a8f00c6f2a676b56ddbc524e804c3eb69083e24d4aa82493dca154b8e671c7`  
		Last Modified: Mon, 19 Dec 2016 23:03:24 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2fdd5946f5bafa0e10d5b7cfa9685cc94f534980ad580e31a7ada03a85768c`  
		Last Modified: Mon, 19 Dec 2016 23:03:25 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5af99d78c8fd8c30cc2e3d3e8b9ea6a47f572adca00607e8b2efb41e2f71ce2`  
		Last Modified: Mon, 19 Dec 2016 23:03:24 GMT  
		Size: 2.2 KB (2179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
