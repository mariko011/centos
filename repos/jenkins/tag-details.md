<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `jenkins`

-	[`jenkins:latest`](#jenkinslatest)
-	[`jenkins:2.7.1`](#jenkins271)
-	[`jenkins:alpine`](#jenkinsalpine)
-	[`jenkins:2.7.1-alpine`](#jenkins271-alpine)

## `jenkins:latest`

```console
$ docker pull jenkins@sha256:5d26cda7990541360301bf78d8b03630a80c2a4543a0a6310659e64f3ae34477
```

-	Platforms:
	-	linux; amd64

### `jenkins:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.3 MB (313267018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aae9163902ea0b75bbd65fbd98b74a8627b7a6fa85a2fa8e1bc092f03a4a2d9`
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
# Mon, 08 Aug 2016 17:46:10 GMT
ENV JENKINS_VERSION=2.7.1
# Mon, 08 Aug 2016 17:46:11 GMT
ARG JENKINS_SHA
# Mon, 08 Aug 2016 17:46:12 GMT
ENV JENKINS_SHA=12d820574c8f586f7d441986dd53bcfe72b95453
# Mon, 08 Aug 2016 17:46:19 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/${JENKINS_VERSION}/jenkins-war-${JENKINS_VERSION}.war -o /usr/share/jenkins/jenkins.war   && echo "$JENKINS_SHA  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Mon, 08 Aug 2016 17:46:20 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Mon, 08 Aug 2016 17:46:22 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Mon, 08 Aug 2016 17:46:24 GMT
EXPOSE 8080/tcp
# Mon, 08 Aug 2016 17:46:25 GMT
EXPOSE 50000/tcp
# Mon, 08 Aug 2016 17:46:26 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Mon, 08 Aug 2016 17:46:27 GMT
USER [jenkins]
# Mon, 08 Aug 2016 17:46:28 GMT
COPY file:a4fe256863d9fe1aa9b7bfa2c2ec65812bb42a0d0e0e31108eb76687ec61c66b in /usr/local/bin/jenkins.sh
# Mon, 08 Aug 2016 17:46:29 GMT
ENTRYPOINT &{["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]}
# Mon, 08 Aug 2016 17:46:30 GMT
COPY file:776495ce778c021d41a4352a95826bf5c39e545f770999cd5ede9b7337618a3f in /usr/local/bin/plugins.sh
# Mon, 08 Aug 2016 17:46:32 GMT
COPY file:5782e15bfea582730563a613a45bdcfae664e09f3121700c360862521de5b37c in /usr/local/bin/install-plugins.sh
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
	-	`sha256:f33983cfafa06700917eabe8849d027c718783f31f0330577d0f3947bc0ec23c`  
		Last Modified: Mon, 08 Aug 2016 17:46:48 GMT  
		Size: 68.6 MB (68635495 bytes)
	-	`sha256:1538c34a66c87284cf680f5ec2947806e98607eeeee95e96ddf9f5af68fb3854`  
		Last Modified: Mon, 08 Aug 2016 17:46:42 GMT  
		Size: 426.0 B
	-	`sha256:32b666c5918c637af84beeb8515921bdf17cf3791ce2e04e4b17034f0e7a6862`  
		Last Modified: Mon, 08 Aug 2016 17:46:41 GMT  
		Size: 945.0 B
	-	`sha256:a248bc1faea5d9702374be9c6bb2d4efd27074c83547b0d19e6359d6f8a80165`  
		Last Modified: Mon, 08 Aug 2016 17:46:41 GMT  
		Size: 1.5 KB (1458 bytes)
	-	`sha256:f24d627aa8eeb736cc507c97fb246d4d624d0543b470dfd63b1f5355c95563fa`  
		Last Modified: Mon, 08 Aug 2016 17:46:41 GMT  
		Size: 2.1 KB (2054 bytes)

## `jenkins:2.7.1`

```console
$ docker pull jenkins@sha256:5d26cda7990541360301bf78d8b03630a80c2a4543a0a6310659e64f3ae34477
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.7.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.3 MB (313267018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aae9163902ea0b75bbd65fbd98b74a8627b7a6fa85a2fa8e1bc092f03a4a2d9`
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
# Mon, 08 Aug 2016 17:46:10 GMT
ENV JENKINS_VERSION=2.7.1
# Mon, 08 Aug 2016 17:46:11 GMT
ARG JENKINS_SHA
# Mon, 08 Aug 2016 17:46:12 GMT
ENV JENKINS_SHA=12d820574c8f586f7d441986dd53bcfe72b95453
# Mon, 08 Aug 2016 17:46:19 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/${JENKINS_VERSION}/jenkins-war-${JENKINS_VERSION}.war -o /usr/share/jenkins/jenkins.war   && echo "$JENKINS_SHA  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Mon, 08 Aug 2016 17:46:20 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Mon, 08 Aug 2016 17:46:22 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Mon, 08 Aug 2016 17:46:24 GMT
EXPOSE 8080/tcp
# Mon, 08 Aug 2016 17:46:25 GMT
EXPOSE 50000/tcp
# Mon, 08 Aug 2016 17:46:26 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Mon, 08 Aug 2016 17:46:27 GMT
USER [jenkins]
# Mon, 08 Aug 2016 17:46:28 GMT
COPY file:a4fe256863d9fe1aa9b7bfa2c2ec65812bb42a0d0e0e31108eb76687ec61c66b in /usr/local/bin/jenkins.sh
# Mon, 08 Aug 2016 17:46:29 GMT
ENTRYPOINT &{["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]}
# Mon, 08 Aug 2016 17:46:30 GMT
COPY file:776495ce778c021d41a4352a95826bf5c39e545f770999cd5ede9b7337618a3f in /usr/local/bin/plugins.sh
# Mon, 08 Aug 2016 17:46:32 GMT
COPY file:5782e15bfea582730563a613a45bdcfae664e09f3121700c360862521de5b37c in /usr/local/bin/install-plugins.sh
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
	-	`sha256:f33983cfafa06700917eabe8849d027c718783f31f0330577d0f3947bc0ec23c`  
		Last Modified: Mon, 08 Aug 2016 17:46:48 GMT  
		Size: 68.6 MB (68635495 bytes)
	-	`sha256:1538c34a66c87284cf680f5ec2947806e98607eeeee95e96ddf9f5af68fb3854`  
		Last Modified: Mon, 08 Aug 2016 17:46:42 GMT  
		Size: 426.0 B
	-	`sha256:32b666c5918c637af84beeb8515921bdf17cf3791ce2e04e4b17034f0e7a6862`  
		Last Modified: Mon, 08 Aug 2016 17:46:41 GMT  
		Size: 945.0 B
	-	`sha256:a248bc1faea5d9702374be9c6bb2d4efd27074c83547b0d19e6359d6f8a80165`  
		Last Modified: Mon, 08 Aug 2016 17:46:41 GMT  
		Size: 1.5 KB (1458 bytes)
	-	`sha256:f24d627aa8eeb736cc507c97fb246d4d624d0543b470dfd63b1f5355c95563fa`  
		Last Modified: Mon, 08 Aug 2016 17:46:41 GMT  
		Size: 2.1 KB (2054 bytes)

## `jenkins:alpine`

```console
$ docker pull jenkins@sha256:031c2be684f7aa8b50684ca9b0517e6b3d3f86912e879b77cfe5ef002581980d
```

-	Platforms:
	-	linux; amd64

### `jenkins:alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.8 MB (141766742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b5319406d9067e60b198fd4937576ec7aef717ee98400571fe0d345a86df7d3`
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
# Thu, 07 Jul 2016 21:01:11 GMT
RUN apk add --no-cache git openssh-client curl zip unzip bash ttf-dejavu
# Thu, 07 Jul 2016 21:01:11 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Thu, 07 Jul 2016 21:01:12 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Thu, 07 Jul 2016 21:01:13 GMT
ARG user=jenkins
# Thu, 07 Jul 2016 21:01:13 GMT
ARG group=jenkins
# Thu, 07 Jul 2016 21:01:14 GMT
ARG uid=1000
# Thu, 07 Jul 2016 21:01:14 GMT
ARG gid=1000
# Thu, 07 Jul 2016 21:01:16 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN addgroup -g ${gid} ${group}     && adduser -h "$JENKINS_HOME" -u ${uid} -G ${group} -s /bin/bash -D ${user}
# Thu, 07 Jul 2016 21:01:17 GMT
VOLUME [/var/jenkins_home]
# Thu, 07 Jul 2016 21:01:18 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Wed, 13 Jul 2016 23:22:07 GMT
ENV TINI_VERSION=0.9.0
# Wed, 13 Jul 2016 23:22:08 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Wed, 13 Jul 2016 23:22:11 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Wed, 13 Jul 2016 23:22:11 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy
# Wed, 13 Jul 2016 23:22:11 GMT
ARG JENKINS_VERSION
# Wed, 13 Jul 2016 23:22:12 GMT
ENV JENKINS_VERSION=2.7.1
# Wed, 13 Jul 2016 23:22:12 GMT
ARG JENKINS_SHA
# Wed, 13 Jul 2016 23:22:12 GMT
ENV JENKINS_SHA=12d820574c8f586f7d441986dd53bcfe72b95453
# Wed, 13 Jul 2016 23:22:20 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/${JENKINS_VERSION}/jenkins-war-${JENKINS_VERSION}.war -o /usr/share/jenkins/jenkins.war   && echo "$JENKINS_SHA  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Wed, 13 Jul 2016 23:22:21 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Wed, 13 Jul 2016 23:22:22 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Wed, 13 Jul 2016 23:22:22 GMT
EXPOSE 8080/tcp
# Wed, 13 Jul 2016 23:22:22 GMT
EXPOSE 50000/tcp
# Wed, 13 Jul 2016 23:22:23 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Wed, 13 Jul 2016 23:22:23 GMT
USER [jenkins]
# Wed, 13 Jul 2016 23:22:24 GMT
COPY file:a4fe256863d9fe1aa9b7bfa2c2ec65812bb42a0d0e0e31108eb76687ec61c66b in /usr/local/bin/jenkins.sh
# Wed, 13 Jul 2016 23:22:24 GMT
ENTRYPOINT &{["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]}
# Wed, 13 Jul 2016 23:22:25 GMT
COPY file:776495ce778c021d41a4352a95826bf5c39e545f770999cd5ede9b7337618a3f in /usr/local/bin/plugins.sh
# Wed, 13 Jul 2016 23:22:25 GMT
COPY file:5782e15bfea582730563a613a45bdcfae664e09f3121700c360862521de5b37c in /usr/local/bin/install-plugins.sh
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
	-	`sha256:312621b60e3da8b5d62acc881bc035b3feebfa8a5b493a7a700967a37c07bb5e`  
		Last Modified: Thu, 07 Jul 2016 21:02:09 GMT  
		Size: 21.1 MB (21121171 bytes)
	-	`sha256:4f6de9da8178d1f79b0c020aea33cdcc1c3542917a236565bf91a0d80da67a31`  
		Last Modified: Thu, 07 Jul 2016 21:02:00 GMT  
		Size: 31.6 KB (31625 bytes)
	-	`sha256:6d6f9701668451096b212257840f499723e5ac8cc25936384fc2cb2ff7160fab`  
		Last Modified: Thu, 07 Jul 2016 21:02:02 GMT  
		Size: 178.0 B
	-	`sha256:05b4085a9200a3bf722360efa633674ed849f2a80228439257c5ae74781d1d43`  
		Last Modified: Wed, 13 Jul 2016 23:23:16 GMT  
		Size: 337.2 KB (337238 bytes)
	-	`sha256:6e579e0b5955649f20ff34a1c9095dc2743b800b9fcf1cc1876a1b214da509f9`  
		Last Modified: Wed, 13 Jul 2016 23:23:15 GMT  
		Size: 422.0 B
	-	`sha256:d9e7e21956e5fb5822ec886dbdcd1f7d343dba8276843825d98bd75f8ed4e500`  
		Last Modified: Wed, 13 Jul 2016 23:23:19 GMT  
		Size: 68.6 MB (68635493 bytes)
	-	`sha256:37d237a49e12e7a3e01564a27fc69f279e33b8f59bffde0761d1b42323eed98d`  
		Last Modified: Wed, 13 Jul 2016 23:23:12 GMT  
		Size: 427.0 B
	-	`sha256:2088628a22620a8af20597fc1b26792726891fe6cd563587db6a0163a550bb55`  
		Last Modified: Wed, 13 Jul 2016 23:23:13 GMT  
		Size: 935.0 B
	-	`sha256:28381724979f780dbbb72eb5d44e182e1fcf5095b6fcbafac397537dc5aef850`  
		Last Modified: Wed, 13 Jul 2016 23:23:13 GMT  
		Size: 1.4 KB (1450 bytes)
	-	`sha256:db1f3f6ee598df5fd32305ac22363f7e7471b399bb07853956e91f92ad397000`  
		Last Modified: Wed, 13 Jul 2016 23:23:12 GMT  
		Size: 2.0 KB (2044 bytes)

## `jenkins:2.7.1-alpine`

```console
$ docker pull jenkins@sha256:031c2be684f7aa8b50684ca9b0517e6b3d3f86912e879b77cfe5ef002581980d
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.7.1-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.8 MB (141766742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b5319406d9067e60b198fd4937576ec7aef717ee98400571fe0d345a86df7d3`
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
# Thu, 07 Jul 2016 21:01:11 GMT
RUN apk add --no-cache git openssh-client curl zip unzip bash ttf-dejavu
# Thu, 07 Jul 2016 21:01:11 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Thu, 07 Jul 2016 21:01:12 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Thu, 07 Jul 2016 21:01:13 GMT
ARG user=jenkins
# Thu, 07 Jul 2016 21:01:13 GMT
ARG group=jenkins
# Thu, 07 Jul 2016 21:01:14 GMT
ARG uid=1000
# Thu, 07 Jul 2016 21:01:14 GMT
ARG gid=1000
# Thu, 07 Jul 2016 21:01:16 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN addgroup -g ${gid} ${group}     && adduser -h "$JENKINS_HOME" -u ${uid} -G ${group} -s /bin/bash -D ${user}
# Thu, 07 Jul 2016 21:01:17 GMT
VOLUME [/var/jenkins_home]
# Thu, 07 Jul 2016 21:01:18 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Wed, 13 Jul 2016 23:22:07 GMT
ENV TINI_VERSION=0.9.0
# Wed, 13 Jul 2016 23:22:08 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Wed, 13 Jul 2016 23:22:11 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Wed, 13 Jul 2016 23:22:11 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy
# Wed, 13 Jul 2016 23:22:11 GMT
ARG JENKINS_VERSION
# Wed, 13 Jul 2016 23:22:12 GMT
ENV JENKINS_VERSION=2.7.1
# Wed, 13 Jul 2016 23:22:12 GMT
ARG JENKINS_SHA
# Wed, 13 Jul 2016 23:22:12 GMT
ENV JENKINS_SHA=12d820574c8f586f7d441986dd53bcfe72b95453
# Wed, 13 Jul 2016 23:22:20 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/${JENKINS_VERSION}/jenkins-war-${JENKINS_VERSION}.war -o /usr/share/jenkins/jenkins.war   && echo "$JENKINS_SHA  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Wed, 13 Jul 2016 23:22:21 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Wed, 13 Jul 2016 23:22:22 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Wed, 13 Jul 2016 23:22:22 GMT
EXPOSE 8080/tcp
# Wed, 13 Jul 2016 23:22:22 GMT
EXPOSE 50000/tcp
# Wed, 13 Jul 2016 23:22:23 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Wed, 13 Jul 2016 23:22:23 GMT
USER [jenkins]
# Wed, 13 Jul 2016 23:22:24 GMT
COPY file:a4fe256863d9fe1aa9b7bfa2c2ec65812bb42a0d0e0e31108eb76687ec61c66b in /usr/local/bin/jenkins.sh
# Wed, 13 Jul 2016 23:22:24 GMT
ENTRYPOINT &{["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]}
# Wed, 13 Jul 2016 23:22:25 GMT
COPY file:776495ce778c021d41a4352a95826bf5c39e545f770999cd5ede9b7337618a3f in /usr/local/bin/plugins.sh
# Wed, 13 Jul 2016 23:22:25 GMT
COPY file:5782e15bfea582730563a613a45bdcfae664e09f3121700c360862521de5b37c in /usr/local/bin/install-plugins.sh
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
	-	`sha256:312621b60e3da8b5d62acc881bc035b3feebfa8a5b493a7a700967a37c07bb5e`  
		Last Modified: Thu, 07 Jul 2016 21:02:09 GMT  
		Size: 21.1 MB (21121171 bytes)
	-	`sha256:4f6de9da8178d1f79b0c020aea33cdcc1c3542917a236565bf91a0d80da67a31`  
		Last Modified: Thu, 07 Jul 2016 21:02:00 GMT  
		Size: 31.6 KB (31625 bytes)
	-	`sha256:6d6f9701668451096b212257840f499723e5ac8cc25936384fc2cb2ff7160fab`  
		Last Modified: Thu, 07 Jul 2016 21:02:02 GMT  
		Size: 178.0 B
	-	`sha256:05b4085a9200a3bf722360efa633674ed849f2a80228439257c5ae74781d1d43`  
		Last Modified: Wed, 13 Jul 2016 23:23:16 GMT  
		Size: 337.2 KB (337238 bytes)
	-	`sha256:6e579e0b5955649f20ff34a1c9095dc2743b800b9fcf1cc1876a1b214da509f9`  
		Last Modified: Wed, 13 Jul 2016 23:23:15 GMT  
		Size: 422.0 B
	-	`sha256:d9e7e21956e5fb5822ec886dbdcd1f7d343dba8276843825d98bd75f8ed4e500`  
		Last Modified: Wed, 13 Jul 2016 23:23:19 GMT  
		Size: 68.6 MB (68635493 bytes)
	-	`sha256:37d237a49e12e7a3e01564a27fc69f279e33b8f59bffde0761d1b42323eed98d`  
		Last Modified: Wed, 13 Jul 2016 23:23:12 GMT  
		Size: 427.0 B
	-	`sha256:2088628a22620a8af20597fc1b26792726891fe6cd563587db6a0163a550bb55`  
		Last Modified: Wed, 13 Jul 2016 23:23:13 GMT  
		Size: 935.0 B
	-	`sha256:28381724979f780dbbb72eb5d44e182e1fcf5095b6fcbafac397537dc5aef850`  
		Last Modified: Wed, 13 Jul 2016 23:23:13 GMT  
		Size: 1.4 KB (1450 bytes)
	-	`sha256:db1f3f6ee598df5fd32305ac22363f7e7471b399bb07853956e91f92ad397000`  
		Last Modified: Wed, 13 Jul 2016 23:23:12 GMT  
		Size: 2.0 KB (2044 bytes)
