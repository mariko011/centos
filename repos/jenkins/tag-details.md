<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `jenkins`

-	[`jenkins:latest`](#jenkinslatest)
-	[`jenkins:2.7.2`](#jenkins272)
-	[`jenkins:alpine`](#jenkinsalpine)
-	[`jenkins:2.7.2-alpine`](#jenkins272-alpine)

## `jenkins:latest`

```console
$ docker pull jenkins@sha256:5a6c6c9f453fabbf81ab0680bc1d54b15802288596e7687ea09e574290797a74
```

-	Platforms:
	-	linux; amd64

### `jenkins:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.3 MB (313278483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dc8da75a0846d936489cf0546cbc19855af700aaff6ce6eaa40fedfbff59006`
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
# Fri, 05 Aug 2016 22:06:47 GMT
ENV JAVA_VERSION=8u91
# Fri, 05 Aug 2016 22:06:48 GMT
ENV JAVA_DEBIAN_VERSION=8u91-b14-1~bpo8+1
# Fri, 05 Aug 2016 22:06:48 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 05 Aug 2016 22:08:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 05 Aug 2016 22:08:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 Aug 2016 17:45:50 GMT
RUN apt-get update && apt-get install -y git curl zip && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 17:45:51 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Mon, 08 Aug 2016 17:45:52 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Mon, 08 Aug 2016 17:45:53 GMT
ARG user=jenkins
# Mon, 08 Aug 2016 17:45:54 GMT
ARG group=jenkins
# Mon, 08 Aug 2016 17:45:54 GMT
ARG uid=1000
# Mon, 08 Aug 2016 17:45:55 GMT
ARG gid=1000
# Mon, 08 Aug 2016 17:45:57 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Mon, 08 Aug 2016 17:45:58 GMT
VOLUME [/var/jenkins_home]
# Mon, 08 Aug 2016 17:46:00 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Mon, 08 Aug 2016 17:46:01 GMT
ENV TINI_VERSION=0.9.0
# Mon, 08 Aug 2016 17:46:02 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Mon, 08 Aug 2016 17:46:06 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Mon, 08 Aug 2016 17:46:08 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy
# Mon, 08 Aug 2016 17:46:09 GMT
ARG JENKINS_VERSION
# Mon, 08 Aug 2016 21:03:28 GMT
ENV JENKINS_VERSION=2.7.2
# Mon, 08 Aug 2016 21:03:29 GMT
ARG JENKINS_SHA=4c05175677825a0c311ef3001bbb0a767dad0e8d
# Mon, 08 Aug 2016 21:03:30 GMT
ARG JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.2/jenkins-war-2.7.2.war
# Mon, 08 Aug 2016 21:03:37 GMT
# ARGS: JENKINS_SHA=4c05175677825a0c311ef3001bbb0a767dad0e8d JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.2/jenkins-war-2.7.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Mon, 08 Aug 2016 21:03:38 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Mon, 08 Aug 2016 21:03:39 GMT
# ARGS: JENKINS_SHA=4c05175677825a0c311ef3001bbb0a767dad0e8d JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.2/jenkins-war-2.7.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Mon, 08 Aug 2016 21:03:40 GMT
EXPOSE 8080/tcp
# Mon, 08 Aug 2016 21:03:41 GMT
EXPOSE 50000/tcp
# Mon, 08 Aug 2016 21:03:41 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Mon, 08 Aug 2016 21:03:42 GMT
USER [jenkins]
# Mon, 08 Aug 2016 21:03:42 GMT
COPY file:bcd1884b35bb371124e44409afa42f46458f7c527dd822ea4e13fa3b31b159ec in /usr/local/bin/jenkins-support
# Mon, 08 Aug 2016 21:03:43 GMT
COPY file:fc94121cf01d6d05be390499fbde73a26d1cf59af88d4d29dab5e81024778028 in /usr/local/bin/jenkins.sh
# Mon, 08 Aug 2016 21:03:44 GMT
ENTRYPOINT &{["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]}
# Mon, 08 Aug 2016 21:03:45 GMT
COPY file:902c50db7f531a8fe363c937a24f6474b4525ed70c2b3d807306d33d6d254a9d in /usr/local/bin/plugins.sh
# Mon, 08 Aug 2016 21:03:45 GMT
COPY file:4fb6500889cea238febb5a8b5d35c695c649e09177d36293f3a96ff12fc9b06a in /usr/local/bin/install-plugins.sh
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:557cb7f84eb963a60165663691b52690b01249b98c7c106228ee789eaa5070a3`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 593.2 KB (593224 bytes)
	-	`sha256:831d48be5871bba311d21a7394b6b46f4cb6ed31881212987bf0aae298230354`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 220.0 B
	-	`sha256:fecf7eeb197dc492abce9acd7f0519424c7e5f34f4ffeffd721bf0277652d4d7`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 240.0 B
	-	`sha256:b987bd349aa094960d32b6cf01f28604a595155ff3f6e9ad4262e4b3eba480d7`  
		Last Modified: Fri, 05 Aug 2016 22:17:58 GMT  
		Size: 130.0 MB (129984944 bytes)
	-	`sha256:cc07342899764251d877aeb04dd94a665b46ef2422afda45ad2b044d66d2dfe4`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 284.3 KB (284348 bytes)
	-	`sha256:7ac301e69a2b03f16f8158187d13a1cdf803d679f5eeff40240eff8c047b1922`  
		Last Modified: Mon, 08 Aug 2016 17:46:47 GMT  
		Size: 1.0 MB (1033455 bytes)
	-	`sha256:bfa103a9ed52aec072dd7424a3fa2ee3fd61b2a9f9e1d4b8c2fb3b5071c41818`  
		Last Modified: Mon, 08 Aug 2016 17:46:46 GMT  
		Size: 4.4 KB (4399 bytes)
	-	`sha256:e952ed582486aa04106f74dffea5c24a089f603e3ea600d3f24f2810ca7b45b9`  
		Last Modified: Mon, 08 Aug 2016 17:46:44 GMT  
		Size: 178.0 B
	-	`sha256:2f00ad2280d437ddea690ce4780d35f432071c8038c7f904c1d4da9022b5c3a1`  
		Last Modified: Mon, 08 Aug 2016 17:46:44 GMT  
		Size: 337.2 KB (337238 bytes)
	-	`sha256:d0cde79aa7dfc94a36b5a621d5a34fd8abcf9ecc753d609ff8750712eb12f526`  
		Last Modified: Mon, 08 Aug 2016 17:46:43 GMT  
		Size: 420.0 B
	-	`sha256:035f426a7a345fad6d27d8cb7553206087b40d3dcc0ec59e08fa74fbc3342ba0`  
		Last Modified: Mon, 08 Aug 2016 21:04:51 GMT  
		Size: 68.6 MB (68645765 bytes)
	-	`sha256:5ed1475e2cab50f4e91e27933d053b1bb81a7db4a7d603bf4c8ce597a5a7e755`  
		Last Modified: Mon, 08 Aug 2016 21:04:38 GMT  
		Size: 428.0 B
	-	`sha256:f727a3a21c9a2f178b7fe958b07e3bb960c0da16024e4b1a7908596643aca9e4`  
		Last Modified: Mon, 08 Aug 2016 21:04:39 GMT  
		Size: 1.4 KB (1437 bytes)
	-	`sha256:14319f547d4ca7143c1790d688be0ab93b33cd11e3cc421e570398b19033c856`  
		Last Modified: Mon, 08 Aug 2016 21:04:39 GMT  
		Size: 640.0 B
	-	`sha256:00034ec7a38ecfb7146ab3e1d4107facf6b70de3ec6e9e876abb0fdfe51a7f7a`  
		Last Modified: Mon, 08 Aug 2016 21:04:39 GMT  
		Size: 1.5 KB (1501 bytes)
	-	`sha256:cf8f8c6b435335c266e699dafb0a140c0ee97410e7942e42f0aaf03322b733ff`  
		Last Modified: Mon, 08 Aug 2016 21:04:39 GMT  
		Size: 2.1 KB (2072 bytes)

## `jenkins:2.7.2`

```console
$ docker pull jenkins@sha256:5a6c6c9f453fabbf81ab0680bc1d54b15802288596e7687ea09e574290797a74
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.7.2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.3 MB (313278483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dc8da75a0846d936489cf0546cbc19855af700aaff6ce6eaa40fedfbff59006`
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
# Fri, 05 Aug 2016 22:06:47 GMT
ENV JAVA_VERSION=8u91
# Fri, 05 Aug 2016 22:06:48 GMT
ENV JAVA_DEBIAN_VERSION=8u91-b14-1~bpo8+1
# Fri, 05 Aug 2016 22:06:48 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 05 Aug 2016 22:08:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 05 Aug 2016 22:08:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 Aug 2016 17:45:50 GMT
RUN apt-get update && apt-get install -y git curl zip && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 17:45:51 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Mon, 08 Aug 2016 17:45:52 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Mon, 08 Aug 2016 17:45:53 GMT
ARG user=jenkins
# Mon, 08 Aug 2016 17:45:54 GMT
ARG group=jenkins
# Mon, 08 Aug 2016 17:45:54 GMT
ARG uid=1000
# Mon, 08 Aug 2016 17:45:55 GMT
ARG gid=1000
# Mon, 08 Aug 2016 17:45:57 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Mon, 08 Aug 2016 17:45:58 GMT
VOLUME [/var/jenkins_home]
# Mon, 08 Aug 2016 17:46:00 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Mon, 08 Aug 2016 17:46:01 GMT
ENV TINI_VERSION=0.9.0
# Mon, 08 Aug 2016 17:46:02 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Mon, 08 Aug 2016 17:46:06 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Mon, 08 Aug 2016 17:46:08 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy
# Mon, 08 Aug 2016 17:46:09 GMT
ARG JENKINS_VERSION
# Mon, 08 Aug 2016 21:03:28 GMT
ENV JENKINS_VERSION=2.7.2
# Mon, 08 Aug 2016 21:03:29 GMT
ARG JENKINS_SHA=4c05175677825a0c311ef3001bbb0a767dad0e8d
# Mon, 08 Aug 2016 21:03:30 GMT
ARG JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.2/jenkins-war-2.7.2.war
# Mon, 08 Aug 2016 21:03:37 GMT
# ARGS: JENKINS_SHA=4c05175677825a0c311ef3001bbb0a767dad0e8d JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.2/jenkins-war-2.7.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Mon, 08 Aug 2016 21:03:38 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Mon, 08 Aug 2016 21:03:39 GMT
# ARGS: JENKINS_SHA=4c05175677825a0c311ef3001bbb0a767dad0e8d JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.2/jenkins-war-2.7.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Mon, 08 Aug 2016 21:03:40 GMT
EXPOSE 8080/tcp
# Mon, 08 Aug 2016 21:03:41 GMT
EXPOSE 50000/tcp
# Mon, 08 Aug 2016 21:03:41 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Mon, 08 Aug 2016 21:03:42 GMT
USER [jenkins]
# Mon, 08 Aug 2016 21:03:42 GMT
COPY file:bcd1884b35bb371124e44409afa42f46458f7c527dd822ea4e13fa3b31b159ec in /usr/local/bin/jenkins-support
# Mon, 08 Aug 2016 21:03:43 GMT
COPY file:fc94121cf01d6d05be390499fbde73a26d1cf59af88d4d29dab5e81024778028 in /usr/local/bin/jenkins.sh
# Mon, 08 Aug 2016 21:03:44 GMT
ENTRYPOINT &{["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]}
# Mon, 08 Aug 2016 21:03:45 GMT
COPY file:902c50db7f531a8fe363c937a24f6474b4525ed70c2b3d807306d33d6d254a9d in /usr/local/bin/plugins.sh
# Mon, 08 Aug 2016 21:03:45 GMT
COPY file:4fb6500889cea238febb5a8b5d35c695c649e09177d36293f3a96ff12fc9b06a in /usr/local/bin/install-plugins.sh
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:557cb7f84eb963a60165663691b52690b01249b98c7c106228ee789eaa5070a3`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 593.2 KB (593224 bytes)
	-	`sha256:831d48be5871bba311d21a7394b6b46f4cb6ed31881212987bf0aae298230354`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 220.0 B
	-	`sha256:fecf7eeb197dc492abce9acd7f0519424c7e5f34f4ffeffd721bf0277652d4d7`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 240.0 B
	-	`sha256:b987bd349aa094960d32b6cf01f28604a595155ff3f6e9ad4262e4b3eba480d7`  
		Last Modified: Fri, 05 Aug 2016 22:17:58 GMT  
		Size: 130.0 MB (129984944 bytes)
	-	`sha256:cc07342899764251d877aeb04dd94a665b46ef2422afda45ad2b044d66d2dfe4`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 284.3 KB (284348 bytes)
	-	`sha256:7ac301e69a2b03f16f8158187d13a1cdf803d679f5eeff40240eff8c047b1922`  
		Last Modified: Mon, 08 Aug 2016 17:46:47 GMT  
		Size: 1.0 MB (1033455 bytes)
	-	`sha256:bfa103a9ed52aec072dd7424a3fa2ee3fd61b2a9f9e1d4b8c2fb3b5071c41818`  
		Last Modified: Mon, 08 Aug 2016 17:46:46 GMT  
		Size: 4.4 KB (4399 bytes)
	-	`sha256:e952ed582486aa04106f74dffea5c24a089f603e3ea600d3f24f2810ca7b45b9`  
		Last Modified: Mon, 08 Aug 2016 17:46:44 GMT  
		Size: 178.0 B
	-	`sha256:2f00ad2280d437ddea690ce4780d35f432071c8038c7f904c1d4da9022b5c3a1`  
		Last Modified: Mon, 08 Aug 2016 17:46:44 GMT  
		Size: 337.2 KB (337238 bytes)
	-	`sha256:d0cde79aa7dfc94a36b5a621d5a34fd8abcf9ecc753d609ff8750712eb12f526`  
		Last Modified: Mon, 08 Aug 2016 17:46:43 GMT  
		Size: 420.0 B
	-	`sha256:035f426a7a345fad6d27d8cb7553206087b40d3dcc0ec59e08fa74fbc3342ba0`  
		Last Modified: Mon, 08 Aug 2016 21:04:51 GMT  
		Size: 68.6 MB (68645765 bytes)
	-	`sha256:5ed1475e2cab50f4e91e27933d053b1bb81a7db4a7d603bf4c8ce597a5a7e755`  
		Last Modified: Mon, 08 Aug 2016 21:04:38 GMT  
		Size: 428.0 B
	-	`sha256:f727a3a21c9a2f178b7fe958b07e3bb960c0da16024e4b1a7908596643aca9e4`  
		Last Modified: Mon, 08 Aug 2016 21:04:39 GMT  
		Size: 1.4 KB (1437 bytes)
	-	`sha256:14319f547d4ca7143c1790d688be0ab93b33cd11e3cc421e570398b19033c856`  
		Last Modified: Mon, 08 Aug 2016 21:04:39 GMT  
		Size: 640.0 B
	-	`sha256:00034ec7a38ecfb7146ab3e1d4107facf6b70de3ec6e9e876abb0fdfe51a7f7a`  
		Last Modified: Mon, 08 Aug 2016 21:04:39 GMT  
		Size: 1.5 KB (1501 bytes)
	-	`sha256:cf8f8c6b435335c266e699dafb0a140c0ee97410e7942e42f0aaf03322b733ff`  
		Last Modified: Mon, 08 Aug 2016 21:04:39 GMT  
		Size: 2.1 KB (2072 bytes)

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
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:87d57f795d926435b5621342da8fc8555bd966d7c4b15c6eb202e16737505c61`  
		Last Modified: Thu, 07 Jul 2016 19:12:16 GMT  
		Size: 49.3 MB (49325243 bytes)
	-	`sha256:bdc8f912638580a0d641012a496b34aa85cacd5db62b2aed155b80e2bacf3f70`  
		Last Modified: Mon, 08 Aug 2016 21:05:39 GMT  
		Size: 23.5 MB (23461667 bytes)
	-	`sha256:f46be55a0df1631aa80b6bee2183f793c02d9f62a900321ff7f103a41691b89c`  
		Last Modified: Mon, 08 Aug 2016 21:05:29 GMT  
		Size: 1.3 KB (1269 bytes)
	-	`sha256:96c612f2a297da7afc82e6df8c6fe5f2ce976a32fdc6dbb9601645612dd93cd6`  
		Last Modified: Mon, 08 Aug 2016 21:05:29 GMT  
		Size: 177.0 B
	-	`sha256:77ac96efd94e65e3bc3e58b15a8d89a3944124074b833fe3c8f9006bca996a06`  
		Last Modified: Mon, 08 Aug 2016 21:05:29 GMT  
		Size: 337.2 KB (337239 bytes)
	-	`sha256:30963fc54f7c63e90502ed858fe1dde0b4cf555e79ab08e9e5986b60a9dc918f`  
		Last Modified: Mon, 08 Aug 2016 21:05:29 GMT  
		Size: 422.0 B
	-	`sha256:75ccbff9eef5446d242dd63f2dde46ba0860b5e505ffb881d3c52e61cb13538f`  
		Last Modified: Mon, 08 Aug 2016 21:05:36 GMT  
		Size: 68.6 MB (68645775 bytes)
	-	`sha256:b779a19a7e229d9f069b98e3a6ca473333b908144d48eb6a5ec178054858138e`  
		Last Modified: Mon, 08 Aug 2016 21:05:26 GMT  
		Size: 427.0 B
	-	`sha256:3dcaf93e7c0d9e112a1519601152f446ecbf4788a6ab800d51071ae55b0e90ad`  
		Last Modified: Mon, 08 Aug 2016 21:05:27 GMT  
		Size: 1.4 KB (1430 bytes)
	-	`sha256:11a9501d382bf687be6378faac1f844577cb75e63ed210e2b909bee30a2e69b4`  
		Last Modified: Mon, 08 Aug 2016 21:05:27 GMT  
		Size: 633.0 B
	-	`sha256:ce3ef6fe72a42369c28953d6847f4c6a38b4f9f752e9ac14669762053b32ec94`  
		Last Modified: Mon, 08 Aug 2016 21:05:26 GMT  
		Size: 1.5 KB (1495 bytes)
	-	`sha256:4c9c3c7750588635f6f4e4c913b7955bae4519c652b91c48c1b989a1b854d6d9`  
		Last Modified: Mon, 08 Aug 2016 21:05:26 GMT  
		Size: 2.1 KB (2068 bytes)

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
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:87d57f795d926435b5621342da8fc8555bd966d7c4b15c6eb202e16737505c61`  
		Last Modified: Thu, 07 Jul 2016 19:12:16 GMT  
		Size: 49.3 MB (49325243 bytes)
	-	`sha256:bdc8f912638580a0d641012a496b34aa85cacd5db62b2aed155b80e2bacf3f70`  
		Last Modified: Mon, 08 Aug 2016 21:05:39 GMT  
		Size: 23.5 MB (23461667 bytes)
	-	`sha256:f46be55a0df1631aa80b6bee2183f793c02d9f62a900321ff7f103a41691b89c`  
		Last Modified: Mon, 08 Aug 2016 21:05:29 GMT  
		Size: 1.3 KB (1269 bytes)
	-	`sha256:96c612f2a297da7afc82e6df8c6fe5f2ce976a32fdc6dbb9601645612dd93cd6`  
		Last Modified: Mon, 08 Aug 2016 21:05:29 GMT  
		Size: 177.0 B
	-	`sha256:77ac96efd94e65e3bc3e58b15a8d89a3944124074b833fe3c8f9006bca996a06`  
		Last Modified: Mon, 08 Aug 2016 21:05:29 GMT  
		Size: 337.2 KB (337239 bytes)
	-	`sha256:30963fc54f7c63e90502ed858fe1dde0b4cf555e79ab08e9e5986b60a9dc918f`  
		Last Modified: Mon, 08 Aug 2016 21:05:29 GMT  
		Size: 422.0 B
	-	`sha256:75ccbff9eef5446d242dd63f2dde46ba0860b5e505ffb881d3c52e61cb13538f`  
		Last Modified: Mon, 08 Aug 2016 21:05:36 GMT  
		Size: 68.6 MB (68645775 bytes)
	-	`sha256:b779a19a7e229d9f069b98e3a6ca473333b908144d48eb6a5ec178054858138e`  
		Last Modified: Mon, 08 Aug 2016 21:05:26 GMT  
		Size: 427.0 B
	-	`sha256:3dcaf93e7c0d9e112a1519601152f446ecbf4788a6ab800d51071ae55b0e90ad`  
		Last Modified: Mon, 08 Aug 2016 21:05:27 GMT  
		Size: 1.4 KB (1430 bytes)
	-	`sha256:11a9501d382bf687be6378faac1f844577cb75e63ed210e2b909bee30a2e69b4`  
		Last Modified: Mon, 08 Aug 2016 21:05:27 GMT  
		Size: 633.0 B
	-	`sha256:ce3ef6fe72a42369c28953d6847f4c6a38b4f9f752e9ac14669762053b32ec94`  
		Last Modified: Mon, 08 Aug 2016 21:05:26 GMT  
		Size: 1.5 KB (1495 bytes)
	-	`sha256:4c9c3c7750588635f6f4e4c913b7955bae4519c652b91c48c1b989a1b854d6d9`  
		Last Modified: Mon, 08 Aug 2016 21:05:26 GMT  
		Size: 2.1 KB (2068 bytes)
