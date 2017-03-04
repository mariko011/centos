<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jenkins`

-	[`jenkins:latest`](#jenkinslatest)
-	[`jenkins:2.32.3`](#jenkins2323)
-	[`jenkins:alpine`](#jenkinsalpine)
-	[`jenkins:2.32.3-alpine`](#jenkins2323-alpine)

## `jenkins:latest`

```console
$ docker pull jenkins@sha256:cb24eaf4968b20bf594147fcd988ec9ffa61fe8993ed0f22532ff3dba99d8bd0
```

-	Platforms:
	-	linux; amd64

### `jenkins:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.6 MB (313618582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d383af9763fe19b8494111bbe5304fe65baf09828efc8dffdb245dd19872a4d`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:41:18 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 15:41:18 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Wed, 01 Mar 2017 15:41:18 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Wed, 01 Mar 2017 15:41:19 GMT
ARG user=jenkins
# Wed, 01 Mar 2017 15:41:19 GMT
ARG group=jenkins
# Wed, 01 Mar 2017 15:41:19 GMT
ARG uid=1000
# Wed, 01 Mar 2017 15:41:20 GMT
ARG gid=1000
# Wed, 01 Mar 2017 15:41:21 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Wed, 01 Mar 2017 15:41:21 GMT
VOLUME [/var/jenkins_home]
# Wed, 01 Mar 2017 15:41:22 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Wed, 01 Mar 2017 15:41:22 GMT
ENV TINI_VERSION=0.13.2
# Wed, 01 Mar 2017 15:41:23 GMT
ENV TINI_SHA=afbf8de8a63ce8e4f18cb3f34dfdbbd354af68a1
# Wed, 01 Mar 2017 15:41:26 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Wed, 01 Mar 2017 15:41:26 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Wed, 01 Mar 2017 15:41:27 GMT
ARG JENKINS_VERSION
# Thu, 02 Mar 2017 19:52:16 GMT
ENV JENKINS_VERSION=2.32.3
# Thu, 02 Mar 2017 19:52:16 GMT
ARG JENKINS_SHA=a25b9a314ca9e76f9673da7309e1882e32674223
# Thu, 02 Mar 2017 19:52:17 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.3/jenkins-war-2.32.3.war
# Thu, 02 Mar 2017 19:52:24 GMT
# ARGS: JENKINS_SHA=a25b9a314ca9e76f9673da7309e1882e32674223 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.3/jenkins-war-2.32.3.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Thu, 02 Mar 2017 19:52:24 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Thu, 02 Mar 2017 19:52:26 GMT
# ARGS: JENKINS_SHA=a25b9a314ca9e76f9673da7309e1882e32674223 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.3/jenkins-war-2.32.3.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Thu, 02 Mar 2017 19:52:26 GMT
EXPOSE 8080/tcp
# Thu, 02 Mar 2017 19:52:27 GMT
EXPOSE 50000/tcp
# Thu, 02 Mar 2017 19:52:27 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Thu, 02 Mar 2017 19:52:28 GMT
USER [jenkins]
# Thu, 02 Mar 2017 19:52:28 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Thu, 02 Mar 2017 19:52:29 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Thu, 02 Mar 2017 19:52:30 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Thu, 02 Mar 2017 19:52:30 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Thu, 02 Mar 2017 19:52:31 GMT
COPY file:2a6a3e16202b8dddab5edef50f712c16fe8f6980f5aea80c8c76b5db4f903913 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905dd12814afb3c5f905cbc6747c7b1baa4241b2a36aabaf50030463dc0dbc31`  
		Last Modified: Thu, 02 Mar 2017 05:33:58 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577fa41f97731dd4402882014dc67c9c103dec9e0839fb29134f3f4b491dab08`  
		Last Modified: Thu, 02 Mar 2017 05:33:59 GMT  
		Size: 4.4 KB (4388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35af31e72ed14f4e3bbfeb9eb195ae43af7a43c66261aa34d79d087ee642ea6a`  
		Last Modified: Thu, 02 Mar 2017 05:33:57 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7ad8d62dc6ff86e0b953817923f3a27e1fbc89bd005dc827d7199615ae7ee8`  
		Last Modified: Thu, 02 Mar 2017 05:33:58 GMT  
		Size: 344.9 KB (344861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19ef7a79b0a88c0a690ad93a9ef772a00628229bddf41ddb99e69f60c7ecf51`  
		Last Modified: Thu, 02 Mar 2017 05:33:56 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbeb1cf34ac66053cfd68c1b68a42b718dea4a239a953e069e83e94d4d5c9fd`  
		Last Modified: Thu, 02 Mar 2017 19:53:22 GMT  
		Size: 69.7 MB (69663301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa3a9668cd42f5b4291b7a0c3583bebdd501fbad13e6f08e1e1d37019213494`  
		Last Modified: Thu, 02 Mar 2017 19:53:12 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a8ab787ad8ecf38ba2e7efb0accf2ac924042d109cc6cd5b4d86bb7d0b440b`  
		Last Modified: Thu, 02 Mar 2017 19:53:12 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f5bff718d2c72f62fbd8c2b3d4002729e67f227fbc2ac5bbf49cd0bc0b8748`  
		Last Modified: Thu, 02 Mar 2017 19:53:12 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c93f747f6ad77d2a2c78b70be751bfbee25361151963a67b34b3b9d775ae77`  
		Last Modified: Thu, 02 Mar 2017 19:53:12 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57eb35e4b0c938e3c05ef655707e5d01a3816be44bd9d2079ab97fc9d4a0ded8`  
		Last Modified: Thu, 02 Mar 2017 19:53:11 GMT  
		Size: 2.2 KB (2180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.32.3`

```console
$ docker pull jenkins@sha256:cb24eaf4968b20bf594147fcd988ec9ffa61fe8993ed0f22532ff3dba99d8bd0
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.32.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.6 MB (313618582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d383af9763fe19b8494111bbe5304fe65baf09828efc8dffdb245dd19872a4d`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:41:18 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 15:41:18 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Wed, 01 Mar 2017 15:41:18 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Wed, 01 Mar 2017 15:41:19 GMT
ARG user=jenkins
# Wed, 01 Mar 2017 15:41:19 GMT
ARG group=jenkins
# Wed, 01 Mar 2017 15:41:19 GMT
ARG uid=1000
# Wed, 01 Mar 2017 15:41:20 GMT
ARG gid=1000
# Wed, 01 Mar 2017 15:41:21 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Wed, 01 Mar 2017 15:41:21 GMT
VOLUME [/var/jenkins_home]
# Wed, 01 Mar 2017 15:41:22 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Wed, 01 Mar 2017 15:41:22 GMT
ENV TINI_VERSION=0.13.2
# Wed, 01 Mar 2017 15:41:23 GMT
ENV TINI_SHA=afbf8de8a63ce8e4f18cb3f34dfdbbd354af68a1
# Wed, 01 Mar 2017 15:41:26 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Wed, 01 Mar 2017 15:41:26 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Wed, 01 Mar 2017 15:41:27 GMT
ARG JENKINS_VERSION
# Thu, 02 Mar 2017 19:52:16 GMT
ENV JENKINS_VERSION=2.32.3
# Thu, 02 Mar 2017 19:52:16 GMT
ARG JENKINS_SHA=a25b9a314ca9e76f9673da7309e1882e32674223
# Thu, 02 Mar 2017 19:52:17 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.3/jenkins-war-2.32.3.war
# Thu, 02 Mar 2017 19:52:24 GMT
# ARGS: JENKINS_SHA=a25b9a314ca9e76f9673da7309e1882e32674223 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.3/jenkins-war-2.32.3.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Thu, 02 Mar 2017 19:52:24 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Thu, 02 Mar 2017 19:52:26 GMT
# ARGS: JENKINS_SHA=a25b9a314ca9e76f9673da7309e1882e32674223 JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.32.3/jenkins-war-2.32.3.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Thu, 02 Mar 2017 19:52:26 GMT
EXPOSE 8080/tcp
# Thu, 02 Mar 2017 19:52:27 GMT
EXPOSE 50000/tcp
# Thu, 02 Mar 2017 19:52:27 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Thu, 02 Mar 2017 19:52:28 GMT
USER [jenkins]
# Thu, 02 Mar 2017 19:52:28 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Thu, 02 Mar 2017 19:52:29 GMT
COPY file:7eec179a0dd3aad4a9c9290bc4d85e4775c8cf6bc2932527892ca6e87739e474 in /usr/local/bin/jenkins.sh 
# Thu, 02 Mar 2017 19:52:30 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Thu, 02 Mar 2017 19:52:30 GMT
COPY file:93fb511d485dd2d6060c484dcedb902947875042048de529676a0a0aed27b5a3 in /usr/local/bin/plugins.sh 
# Thu, 02 Mar 2017 19:52:31 GMT
COPY file:2a6a3e16202b8dddab5edef50f712c16fe8f6980f5aea80c8c76b5db4f903913 in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905dd12814afb3c5f905cbc6747c7b1baa4241b2a36aabaf50030463dc0dbc31`  
		Last Modified: Thu, 02 Mar 2017 05:33:58 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577fa41f97731dd4402882014dc67c9c103dec9e0839fb29134f3f4b491dab08`  
		Last Modified: Thu, 02 Mar 2017 05:33:59 GMT  
		Size: 4.4 KB (4388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35af31e72ed14f4e3bbfeb9eb195ae43af7a43c66261aa34d79d087ee642ea6a`  
		Last Modified: Thu, 02 Mar 2017 05:33:57 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7ad8d62dc6ff86e0b953817923f3a27e1fbc89bd005dc827d7199615ae7ee8`  
		Last Modified: Thu, 02 Mar 2017 05:33:58 GMT  
		Size: 344.9 KB (344861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19ef7a79b0a88c0a690ad93a9ef772a00628229bddf41ddb99e69f60c7ecf51`  
		Last Modified: Thu, 02 Mar 2017 05:33:56 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbeb1cf34ac66053cfd68c1b68a42b718dea4a239a953e069e83e94d4d5c9fd`  
		Last Modified: Thu, 02 Mar 2017 19:53:22 GMT  
		Size: 69.7 MB (69663301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa3a9668cd42f5b4291b7a0c3583bebdd501fbad13e6f08e1e1d37019213494`  
		Last Modified: Thu, 02 Mar 2017 19:53:12 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a8ab787ad8ecf38ba2e7efb0accf2ac924042d109cc6cd5b4d86bb7d0b440b`  
		Last Modified: Thu, 02 Mar 2017 19:53:12 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f5bff718d2c72f62fbd8c2b3d4002729e67f227fbc2ac5bbf49cd0bc0b8748`  
		Last Modified: Thu, 02 Mar 2017 19:53:12 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c93f747f6ad77d2a2c78b70be751bfbee25361151963a67b34b3b9d775ae77`  
		Last Modified: Thu, 02 Mar 2017 19:53:12 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57eb35e4b0c938e3c05ef655707e5d01a3816be44bd9d2079ab97fc9d4a0ded8`  
		Last Modified: Thu, 02 Mar 2017 19:53:11 GMT  
		Size: 2.2 KB (2180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

## `jenkins:2.32.3-alpine`

```console
$ docker pull jenkins@sha256:a513f71b5c744290eb55be0f1d3e41215ec452d1383a53adb834fdee32d2d597
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.32.3-alpine` - linux; amd64

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
