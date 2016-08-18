<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `jenkins`

-	[`jenkins:latest`](#jenkinslatest)
-	[`jenkins:2.7.2`](#jenkins272)
-	[`jenkins:alpine`](#jenkinsalpine)
-	[`jenkins:2.7.2-alpine`](#jenkins272-alpine)

## `jenkins:latest`

```console
$ docker pull jenkins@sha256:0a687937c38f8085a28baa44c397e6559c08cf3bfe9bb5d95fc7067ea903b517
```

-	Platforms:
	-	linux; amd64

### `jenkins:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.4 MB (313365031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:753c2e1bdef795c266c8c18a0594f0bb58043c14ee41e0f5ec6b7d9c2158965d`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:02:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:06:43 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 05 Aug 2016 22:06:43 GMT
ENV LANG=C.UTF-8
# Fri, 05 Aug 2016 22:06:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 Aug 2016 22:06:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 10 Aug 2016 18:34:54 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:34:55 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:34:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:41:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:41:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:38:32 GMT
RUN apt-get update && apt-get install -y git curl zip && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:38:33 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Thu, 11 Aug 2016 17:38:34 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Thu, 11 Aug 2016 17:38:35 GMT
ARG user=jenkins
# Thu, 11 Aug 2016 17:38:36 GMT
ARG group=jenkins
# Thu, 11 Aug 2016 17:38:36 GMT
ARG uid=1000
# Thu, 11 Aug 2016 17:38:37 GMT
ARG gid=1000
# Thu, 11 Aug 2016 17:38:39 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Thu, 11 Aug 2016 17:38:40 GMT
VOLUME [/var/jenkins_home]
# Thu, 11 Aug 2016 17:38:43 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Thu, 11 Aug 2016 17:38:44 GMT
ENV TINI_VERSION=0.9.0
# Thu, 11 Aug 2016 17:38:45 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Thu, 11 Aug 2016 17:38:48 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Thu, 11 Aug 2016 17:38:50 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy
# Thu, 11 Aug 2016 17:38:51 GMT
ARG JENKINS_VERSION
# Thu, 11 Aug 2016 17:38:52 GMT
ENV JENKINS_VERSION=2.7.2
# Thu, 11 Aug 2016 17:38:53 GMT
ARG JENKINS_SHA=4c05175677825a0c311ef3001bbb0a767dad0e8d
# Thu, 11 Aug 2016 17:38:54 GMT
ARG JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.2/jenkins-war-2.7.2.war
# Thu, 11 Aug 2016 17:39:02 GMT
# ARGS: JENKINS_SHA=4c05175677825a0c311ef3001bbb0a767dad0e8d JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.2/jenkins-war-2.7.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Thu, 11 Aug 2016 17:39:03 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Thu, 11 Aug 2016 17:39:05 GMT
# ARGS: JENKINS_SHA=4c05175677825a0c311ef3001bbb0a767dad0e8d JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.2/jenkins-war-2.7.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Thu, 11 Aug 2016 17:39:06 GMT
EXPOSE 8080/tcp
# Thu, 11 Aug 2016 17:39:07 GMT
EXPOSE 50000/tcp
# Thu, 11 Aug 2016 17:39:08 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Thu, 11 Aug 2016 17:39:09 GMT
USER [jenkins]
# Thu, 11 Aug 2016 17:39:11 GMT
COPY file:bcd1884b35bb371124e44409afa42f46458f7c527dd822ea4e13fa3b31b159ec in /usr/local/bin/jenkins-support
# Thu, 11 Aug 2016 17:39:12 GMT
COPY file:fc94121cf01d6d05be390499fbde73a26d1cf59af88d4d29dab5e81024778028 in /usr/local/bin/jenkins.sh
# Thu, 11 Aug 2016 17:39:13 GMT
ENTRYPOINT &{["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]}
# Thu, 11 Aug 2016 17:39:15 GMT
COPY file:902c50db7f531a8fe363c937a24f6474b4525ed70c2b3d807306d33d6d254a9d in /usr/local/bin/plugins.sh
# Thu, 11 Aug 2016 17:39:16 GMT
COPY file:4fb6500889cea238febb5a8b5d35c695c649e09177d36293f3a96ff12fc9b06a in /usr/local/bin/install-plugins.sh
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557cb7f84eb963a60165663691b52690b01249b98c7c106228ee789eaa5070a3`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 593.2 KB (593224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831d48be5871bba311d21a7394b6b46f4cb6ed31881212987bf0aae298230354`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecf7eeb197dc492abce9acd7f0519424c7e5f34f4ffeffd721bf0277652d4d7`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e3695c1a93559e79e9203e80ba22855cd93c2105e5e346aaebf4c7673183eb`  
		Last Modified: Wed, 10 Aug 2016 18:49:58 GMT  
		Size: 130.1 MB (130071319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37afaae8f5b70acee6cc9f963e7ffe068bbc02e2eb59b01e64f4b50cafa22f0`  
		Last Modified: Wed, 10 Aug 2016 18:49:28 GMT  
		Size: 284.4 KB (284396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ae86a8bf73f24e510685c351bb475f2deb63933efc826a7d354ab85840d732`  
		Last Modified: Thu, 11 Aug 2016 17:39:32 GMT  
		Size: 1.0 MB (1033554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc682aa7ea105ff5bfa81ae8837037544f32673459380123c6a533f73d8956b`  
		Last Modified: Thu, 11 Aug 2016 17:39:30 GMT  
		Size: 4.4 KB (4407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653d345960aae20347e814f6caa6cc455e09c565af638d7b5d4dc81f2337e286`  
		Last Modified: Thu, 11 Aug 2016 17:39:29 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f366b4c68a8cff09e48d6d7df7658e5614a4ecffb8a64448f120d8610774db14`  
		Last Modified: Thu, 11 Aug 2016 17:39:30 GMT  
		Size: 337.2 KB (337240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689ab5424d0746eb3ade6a5e4f6d0199a15bf90517b3b047ede646b4b67ea39e`  
		Last Modified: Thu, 11 Aug 2016 17:39:29 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88db2436960b80ef142fb3b7292f618c4c7e497f52823b9ced709998cbe1794`  
		Last Modified: Thu, 11 Aug 2016 17:39:37 GMT  
		Size: 68.6 MB (68645774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078fbe02e7da81c9e564bbbfa2df90f4130671b469351ebdbefbd9bc267e4d50`  
		Last Modified: Thu, 11 Aug 2016 17:39:26 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc6dfbcfd180fe97b94ac1f561e21f70df5bab6f4b07061091322d7d92ab31d`  
		Last Modified: Thu, 11 Aug 2016 17:39:27 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bcbb8f8b83702b1617b283b3f8834899553004944c3a679447cca4226c7ae92`  
		Last Modified: Thu, 11 Aug 2016 17:39:26 GMT  
		Size: 637.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3a67316a3799de5ef0da401ff6bcbf6881e1d869e9328bc43c8f9fe7ffe76d`  
		Last Modified: Thu, 11 Aug 2016 17:39:26 GMT  
		Size: 1.5 KB (1505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88258e71531ca29a2f682c5ede90e3d271aa6a4c67149322d5b104fb90c7da44`  
		Last Modified: Thu, 11 Aug 2016 17:39:27 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.7.2`

```console
$ docker pull jenkins@sha256:0a687937c38f8085a28baa44c397e6559c08cf3bfe9bb5d95fc7067ea903b517
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.7.2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.4 MB (313365031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:753c2e1bdef795c266c8c18a0594f0bb58043c14ee41e0f5ec6b7d9c2158965d`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:02:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:06:43 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 05 Aug 2016 22:06:43 GMT
ENV LANG=C.UTF-8
# Fri, 05 Aug 2016 22:06:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 Aug 2016 22:06:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 10 Aug 2016 18:34:54 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:34:55 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:34:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:41:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:41:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:38:32 GMT
RUN apt-get update && apt-get install -y git curl zip && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:38:33 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Thu, 11 Aug 2016 17:38:34 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Thu, 11 Aug 2016 17:38:35 GMT
ARG user=jenkins
# Thu, 11 Aug 2016 17:38:36 GMT
ARG group=jenkins
# Thu, 11 Aug 2016 17:38:36 GMT
ARG uid=1000
# Thu, 11 Aug 2016 17:38:37 GMT
ARG gid=1000
# Thu, 11 Aug 2016 17:38:39 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Thu, 11 Aug 2016 17:38:40 GMT
VOLUME [/var/jenkins_home]
# Thu, 11 Aug 2016 17:38:43 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Thu, 11 Aug 2016 17:38:44 GMT
ENV TINI_VERSION=0.9.0
# Thu, 11 Aug 2016 17:38:45 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Thu, 11 Aug 2016 17:38:48 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Thu, 11 Aug 2016 17:38:50 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy
# Thu, 11 Aug 2016 17:38:51 GMT
ARG JENKINS_VERSION
# Thu, 11 Aug 2016 17:38:52 GMT
ENV JENKINS_VERSION=2.7.2
# Thu, 11 Aug 2016 17:38:53 GMT
ARG JENKINS_SHA=4c05175677825a0c311ef3001bbb0a767dad0e8d
# Thu, 11 Aug 2016 17:38:54 GMT
ARG JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.2/jenkins-war-2.7.2.war
# Thu, 11 Aug 2016 17:39:02 GMT
# ARGS: JENKINS_SHA=4c05175677825a0c311ef3001bbb0a767dad0e8d JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.2/jenkins-war-2.7.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Thu, 11 Aug 2016 17:39:03 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Thu, 11 Aug 2016 17:39:05 GMT
# ARGS: JENKINS_SHA=4c05175677825a0c311ef3001bbb0a767dad0e8d JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.2/jenkins-war-2.7.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Thu, 11 Aug 2016 17:39:06 GMT
EXPOSE 8080/tcp
# Thu, 11 Aug 2016 17:39:07 GMT
EXPOSE 50000/tcp
# Thu, 11 Aug 2016 17:39:08 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Thu, 11 Aug 2016 17:39:09 GMT
USER [jenkins]
# Thu, 11 Aug 2016 17:39:11 GMT
COPY file:bcd1884b35bb371124e44409afa42f46458f7c527dd822ea4e13fa3b31b159ec in /usr/local/bin/jenkins-support
# Thu, 11 Aug 2016 17:39:12 GMT
COPY file:fc94121cf01d6d05be390499fbde73a26d1cf59af88d4d29dab5e81024778028 in /usr/local/bin/jenkins.sh
# Thu, 11 Aug 2016 17:39:13 GMT
ENTRYPOINT &{["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]}
# Thu, 11 Aug 2016 17:39:15 GMT
COPY file:902c50db7f531a8fe363c937a24f6474b4525ed70c2b3d807306d33d6d254a9d in /usr/local/bin/plugins.sh
# Thu, 11 Aug 2016 17:39:16 GMT
COPY file:4fb6500889cea238febb5a8b5d35c695c649e09177d36293f3a96ff12fc9b06a in /usr/local/bin/install-plugins.sh
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557cb7f84eb963a60165663691b52690b01249b98c7c106228ee789eaa5070a3`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 593.2 KB (593224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831d48be5871bba311d21a7394b6b46f4cb6ed31881212987bf0aae298230354`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecf7eeb197dc492abce9acd7f0519424c7e5f34f4ffeffd721bf0277652d4d7`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e3695c1a93559e79e9203e80ba22855cd93c2105e5e346aaebf4c7673183eb`  
		Last Modified: Wed, 10 Aug 2016 18:49:58 GMT  
		Size: 130.1 MB (130071319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37afaae8f5b70acee6cc9f963e7ffe068bbc02e2eb59b01e64f4b50cafa22f0`  
		Last Modified: Wed, 10 Aug 2016 18:49:28 GMT  
		Size: 284.4 KB (284396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ae86a8bf73f24e510685c351bb475f2deb63933efc826a7d354ab85840d732`  
		Last Modified: Thu, 11 Aug 2016 17:39:32 GMT  
		Size: 1.0 MB (1033554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc682aa7ea105ff5bfa81ae8837037544f32673459380123c6a533f73d8956b`  
		Last Modified: Thu, 11 Aug 2016 17:39:30 GMT  
		Size: 4.4 KB (4407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653d345960aae20347e814f6caa6cc455e09c565af638d7b5d4dc81f2337e286`  
		Last Modified: Thu, 11 Aug 2016 17:39:29 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f366b4c68a8cff09e48d6d7df7658e5614a4ecffb8a64448f120d8610774db14`  
		Last Modified: Thu, 11 Aug 2016 17:39:30 GMT  
		Size: 337.2 KB (337240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689ab5424d0746eb3ade6a5e4f6d0199a15bf90517b3b047ede646b4b67ea39e`  
		Last Modified: Thu, 11 Aug 2016 17:39:29 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88db2436960b80ef142fb3b7292f618c4c7e497f52823b9ced709998cbe1794`  
		Last Modified: Thu, 11 Aug 2016 17:39:37 GMT  
		Size: 68.6 MB (68645774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078fbe02e7da81c9e564bbbfa2df90f4130671b469351ebdbefbd9bc267e4d50`  
		Last Modified: Thu, 11 Aug 2016 17:39:26 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc6dfbcfd180fe97b94ac1f561e21f70df5bab6f4b07061091322d7d92ab31d`  
		Last Modified: Thu, 11 Aug 2016 17:39:27 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bcbb8f8b83702b1617b283b3f8834899553004944c3a679447cca4226c7ae92`  
		Last Modified: Thu, 11 Aug 2016 17:39:26 GMT  
		Size: 637.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3a67316a3799de5ef0da401ff6bcbf6881e1d869e9328bc43c8f9fe7ffe76d`  
		Last Modified: Thu, 11 Aug 2016 17:39:26 GMT  
		Size: 1.5 KB (1505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88258e71531ca29a2f682c5ede90e3d271aa6a4c67149322d5b104fb90c7da44`  
		Last Modified: Thu, 11 Aug 2016 17:39:27 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:alpine`

```console
$ docker pull jenkins@sha256:8655ae30283f6bc3b6e5405c1ae2ddd5dc3879ed66138880fd6f05be80d74a21
```

-	Platforms:
	-	linux; amd64

### `jenkins:alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144088361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3017093312de0a71509942b20f386f4926622c7c5e9ecfa1a420889894d3a162`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:34:53 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jun 2016 20:34:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 23 Jun 2016 20:38:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 07 Jul 2016 19:04:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 19:04:53 GMT
ENV JAVA_VERSION=8u92
# Thu, 07 Jul 2016 19:04:54 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Thu, 07 Jul 2016 19:05:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 08 Aug 2016 21:03:52 GMT
RUN apk add --no-cache git openssh-client curl zip unzip bash ttf-dejavu coreutils
# Mon, 08 Aug 2016 21:03:53 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Mon, 08 Aug 2016 21:03:53 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Mon, 08 Aug 2016 21:03:54 GMT
ARG user=jenkins
# Mon, 08 Aug 2016 21:03:54 GMT
ARG group=jenkins
# Mon, 08 Aug 2016 21:03:55 GMT
ARG uid=1000
# Mon, 08 Aug 2016 21:03:55 GMT
ARG gid=1000
# Mon, 08 Aug 2016 21:03:56 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN addgroup -g ${gid} ${group}     && adduser -h "$JENKINS_HOME" -u ${uid} -G ${group} -s /bin/bash -D ${user}
# Mon, 08 Aug 2016 21:03:57 GMT
VOLUME [/var/jenkins_home]
# Mon, 08 Aug 2016 21:03:58 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Mon, 08 Aug 2016 21:03:59 GMT
ENV TINI_VERSION=0.9.0
# Mon, 08 Aug 2016 21:03:59 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Mon, 08 Aug 2016 21:04:04 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Mon, 08 Aug 2016 21:04:05 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy
# Mon, 08 Aug 2016 21:04:05 GMT
ARG JENKINS_VERSION
# Mon, 08 Aug 2016 21:04:05 GMT
ENV JENKINS_VERSION=2.7.2
# Mon, 08 Aug 2016 21:04:06 GMT
ARG JENKINS_SHA=4c05175677825a0c311ef3001bbb0a767dad0e8d
# Mon, 08 Aug 2016 21:04:06 GMT
ARG JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.2/jenkins-war-2.7.2.war
# Mon, 08 Aug 2016 21:04:14 GMT
# ARGS: JENKINS_SHA=4c05175677825a0c311ef3001bbb0a767dad0e8d JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.2/jenkins-war-2.7.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Mon, 08 Aug 2016 21:04:14 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Mon, 08 Aug 2016 21:04:16 GMT
# ARGS: JENKINS_SHA=4c05175677825a0c311ef3001bbb0a767dad0e8d JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.2/jenkins-war-2.7.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Mon, 08 Aug 2016 21:04:17 GMT
EXPOSE 8080/tcp
# Mon, 08 Aug 2016 21:04:17 GMT
EXPOSE 50000/tcp
# Mon, 08 Aug 2016 21:04:18 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Mon, 08 Aug 2016 21:04:19 GMT
USER [jenkins]
# Mon, 08 Aug 2016 21:04:20 GMT
COPY file:bcd1884b35bb371124e44409afa42f46458f7c527dd822ea4e13fa3b31b159ec in /usr/local/bin/jenkins-support
# Mon, 08 Aug 2016 21:04:21 GMT
COPY file:fc94121cf01d6d05be390499fbde73a26d1cf59af88d4d29dab5e81024778028 in /usr/local/bin/jenkins.sh
# Mon, 08 Aug 2016 21:04:21 GMT
ENTRYPOINT &{["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]}
# Mon, 08 Aug 2016 21:04:22 GMT
COPY file:902c50db7f531a8fe363c937a24f6474b4525ed70c2b3d807306d33d6d254a9d in /usr/local/bin/plugins.sh
# Mon, 08 Aug 2016 21:04:23 GMT
COPY file:4fb6500889cea238febb5a8b5d35c695c649e09177d36293f3a96ff12fc9b06a in /usr/local/bin/install-plugins.sh
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d57f795d926435b5621342da8fc8555bd966d7c4b15c6eb202e16737505c61`  
		Last Modified: Thu, 07 Jul 2016 19:12:16 GMT  
		Size: 49.3 MB (49325243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc8f912638580a0d641012a496b34aa85cacd5db62b2aed155b80e2bacf3f70`  
		Last Modified: Mon, 08 Aug 2016 21:05:39 GMT  
		Size: 23.5 MB (23461667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f46be55a0df1631aa80b6bee2183f793c02d9f62a900321ff7f103a41691b89c`  
		Last Modified: Mon, 08 Aug 2016 21:05:29 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c612f2a297da7afc82e6df8c6fe5f2ce976a32fdc6dbb9601645612dd93cd6`  
		Last Modified: Mon, 08 Aug 2016 21:05:29 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ac96efd94e65e3bc3e58b15a8d89a3944124074b833fe3c8f9006bca996a06`  
		Last Modified: Mon, 08 Aug 2016 21:05:29 GMT  
		Size: 337.2 KB (337239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30963fc54f7c63e90502ed858fe1dde0b4cf555e79ab08e9e5986b60a9dc918f`  
		Last Modified: Mon, 08 Aug 2016 21:05:29 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ccbff9eef5446d242dd63f2dde46ba0860b5e505ffb881d3c52e61cb13538f`  
		Last Modified: Mon, 08 Aug 2016 21:05:36 GMT  
		Size: 68.6 MB (68645775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b779a19a7e229d9f069b98e3a6ca473333b908144d48eb6a5ec178054858138e`  
		Last Modified: Mon, 08 Aug 2016 21:05:26 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcaf93e7c0d9e112a1519601152f446ecbf4788a6ab800d51071ae55b0e90ad`  
		Last Modified: Mon, 08 Aug 2016 21:05:27 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a9501d382bf687be6378faac1f844577cb75e63ed210e2b909bee30a2e69b4`  
		Last Modified: Mon, 08 Aug 2016 21:05:27 GMT  
		Size: 633.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3ef6fe72a42369c28953d6847f4c6a38b4f9f752e9ac14669762053b32ec94`  
		Last Modified: Mon, 08 Aug 2016 21:05:26 GMT  
		Size: 1.5 KB (1495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9c3c7750588635f6f4e4c913b7955bae4519c652b91c48c1b989a1b854d6d9`  
		Last Modified: Mon, 08 Aug 2016 21:05:26 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.7.2-alpine`

```console
$ docker pull jenkins@sha256:8655ae30283f6bc3b6e5405c1ae2ddd5dc3879ed66138880fd6f05be80d74a21
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.7.2-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144088361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3017093312de0a71509942b20f386f4926622c7c5e9ecfa1a420889894d3a162`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:34:53 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jun 2016 20:34:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 23 Jun 2016 20:38:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 07 Jul 2016 19:04:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 19:04:53 GMT
ENV JAVA_VERSION=8u92
# Thu, 07 Jul 2016 19:04:54 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Thu, 07 Jul 2016 19:05:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 08 Aug 2016 21:03:52 GMT
RUN apk add --no-cache git openssh-client curl zip unzip bash ttf-dejavu coreutils
# Mon, 08 Aug 2016 21:03:53 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Mon, 08 Aug 2016 21:03:53 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Mon, 08 Aug 2016 21:03:54 GMT
ARG user=jenkins
# Mon, 08 Aug 2016 21:03:54 GMT
ARG group=jenkins
# Mon, 08 Aug 2016 21:03:55 GMT
ARG uid=1000
# Mon, 08 Aug 2016 21:03:55 GMT
ARG gid=1000
# Mon, 08 Aug 2016 21:03:56 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN addgroup -g ${gid} ${group}     && adduser -h "$JENKINS_HOME" -u ${uid} -G ${group} -s /bin/bash -D ${user}
# Mon, 08 Aug 2016 21:03:57 GMT
VOLUME [/var/jenkins_home]
# Mon, 08 Aug 2016 21:03:58 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Mon, 08 Aug 2016 21:03:59 GMT
ENV TINI_VERSION=0.9.0
# Mon, 08 Aug 2016 21:03:59 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Mon, 08 Aug 2016 21:04:04 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Mon, 08 Aug 2016 21:04:05 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy
# Mon, 08 Aug 2016 21:04:05 GMT
ARG JENKINS_VERSION
# Mon, 08 Aug 2016 21:04:05 GMT
ENV JENKINS_VERSION=2.7.2
# Mon, 08 Aug 2016 21:04:06 GMT
ARG JENKINS_SHA=4c05175677825a0c311ef3001bbb0a767dad0e8d
# Mon, 08 Aug 2016 21:04:06 GMT
ARG JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.2/jenkins-war-2.7.2.war
# Mon, 08 Aug 2016 21:04:14 GMT
# ARGS: JENKINS_SHA=4c05175677825a0c311ef3001bbb0a767dad0e8d JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.2/jenkins-war-2.7.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Mon, 08 Aug 2016 21:04:14 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Mon, 08 Aug 2016 21:04:16 GMT
# ARGS: JENKINS_SHA=4c05175677825a0c311ef3001bbb0a767dad0e8d JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.2/jenkins-war-2.7.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Mon, 08 Aug 2016 21:04:17 GMT
EXPOSE 8080/tcp
# Mon, 08 Aug 2016 21:04:17 GMT
EXPOSE 50000/tcp
# Mon, 08 Aug 2016 21:04:18 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Mon, 08 Aug 2016 21:04:19 GMT
USER [jenkins]
# Mon, 08 Aug 2016 21:04:20 GMT
COPY file:bcd1884b35bb371124e44409afa42f46458f7c527dd822ea4e13fa3b31b159ec in /usr/local/bin/jenkins-support
# Mon, 08 Aug 2016 21:04:21 GMT
COPY file:fc94121cf01d6d05be390499fbde73a26d1cf59af88d4d29dab5e81024778028 in /usr/local/bin/jenkins.sh
# Mon, 08 Aug 2016 21:04:21 GMT
ENTRYPOINT &{["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]}
# Mon, 08 Aug 2016 21:04:22 GMT
COPY file:902c50db7f531a8fe363c937a24f6474b4525ed70c2b3d807306d33d6d254a9d in /usr/local/bin/plugins.sh
# Mon, 08 Aug 2016 21:04:23 GMT
COPY file:4fb6500889cea238febb5a8b5d35c695c649e09177d36293f3a96ff12fc9b06a in /usr/local/bin/install-plugins.sh
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d57f795d926435b5621342da8fc8555bd966d7c4b15c6eb202e16737505c61`  
		Last Modified: Thu, 07 Jul 2016 19:12:16 GMT  
		Size: 49.3 MB (49325243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc8f912638580a0d641012a496b34aa85cacd5db62b2aed155b80e2bacf3f70`  
		Last Modified: Mon, 08 Aug 2016 21:05:39 GMT  
		Size: 23.5 MB (23461667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f46be55a0df1631aa80b6bee2183f793c02d9f62a900321ff7f103a41691b89c`  
		Last Modified: Mon, 08 Aug 2016 21:05:29 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c612f2a297da7afc82e6df8c6fe5f2ce976a32fdc6dbb9601645612dd93cd6`  
		Last Modified: Mon, 08 Aug 2016 21:05:29 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ac96efd94e65e3bc3e58b15a8d89a3944124074b833fe3c8f9006bca996a06`  
		Last Modified: Mon, 08 Aug 2016 21:05:29 GMT  
		Size: 337.2 KB (337239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30963fc54f7c63e90502ed858fe1dde0b4cf555e79ab08e9e5986b60a9dc918f`  
		Last Modified: Mon, 08 Aug 2016 21:05:29 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ccbff9eef5446d242dd63f2dde46ba0860b5e505ffb881d3c52e61cb13538f`  
		Last Modified: Mon, 08 Aug 2016 21:05:36 GMT  
		Size: 68.6 MB (68645775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b779a19a7e229d9f069b98e3a6ca473333b908144d48eb6a5ec178054858138e`  
		Last Modified: Mon, 08 Aug 2016 21:05:26 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcaf93e7c0d9e112a1519601152f446ecbf4788a6ab800d51071ae55b0e90ad`  
		Last Modified: Mon, 08 Aug 2016 21:05:27 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a9501d382bf687be6378faac1f844577cb75e63ed210e2b909bee30a2e69b4`  
		Last Modified: Mon, 08 Aug 2016 21:05:27 GMT  
		Size: 633.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3ef6fe72a42369c28953d6847f4c6a38b4f9f752e9ac14669762053b32ec94`  
		Last Modified: Mon, 08 Aug 2016 21:05:26 GMT  
		Size: 1.5 KB (1495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9c3c7750588635f6f4e4c913b7955bae4519c652b91c48c1b989a1b854d6d9`  
		Last Modified: Mon, 08 Aug 2016 21:05:26 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
