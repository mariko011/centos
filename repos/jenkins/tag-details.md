<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jenkins`

-	[`jenkins:2.60.3`](#jenkins2603)
-	[`jenkins:2.60.3-alpine`](#jenkins2603-alpine)
-	[`jenkins:alpine`](#jenkinsalpine)
-	[`jenkins:latest`](#jenkinslatest)

## `jenkins:2.60.3`

```console
$ docker pull jenkins@sha256:8478374d8f1f5f3dbfa9d56901bb8265e57942f47e9f8365a80d2bee3839e0af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jenkins:2.60.3` - linux; amd64

```console
$ docker pull jenkins@sha256:add6e1ee0d944e5c2bd6e0051f4eb1be6e2dde13857cd8f371660ef475e731b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.4 MB (365424260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2c8a46232f476d4bc4936972b1f6201a0c0f294212af08e365cfa791aa0bbac`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:54:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:54:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 00:55:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:45:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:45:53 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:45:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:45:55 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:45:55 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 05:45:56 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 05:45:56 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 05:45:56 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 05:47:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 05:47:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 15:14:00 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:14:01 GMT
ARG user=jenkins
# Sat, 04 Nov 2017 15:14:01 GMT
ARG group=jenkins
# Sat, 04 Nov 2017 15:14:01 GMT
ARG uid=1000
# Sat, 04 Nov 2017 15:14:01 GMT
ARG gid=1000
# Sat, 04 Nov 2017 15:14:01 GMT
ARG http_port=8080
# Sat, 04 Nov 2017 15:14:01 GMT
ARG agent_port=50000
# Sat, 04 Nov 2017 15:14:02 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Sat, 04 Nov 2017 15:14:02 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Sat, 04 Nov 2017 15:14:03 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Sat, 04 Nov 2017 15:14:03 GMT
VOLUME [/var/jenkins_home]
# Sat, 04 Nov 2017 15:14:04 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Sat, 04 Nov 2017 15:14:04 GMT
ENV TINI_VERSION=0.14.0
# Sat, 04 Nov 2017 15:14:04 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Sat, 04 Nov 2017 15:14:06 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Sat, 04 Nov 2017 15:14:07 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Sat, 04 Nov 2017 15:14:07 GMT
ARG JENKINS_VERSION
# Sat, 04 Nov 2017 15:14:07 GMT
ENV JENKINS_VERSION=2.60.3
# Sat, 04 Nov 2017 15:14:08 GMT
ARG JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a
# Sat, 04 Nov 2017 15:14:08 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war
# Sat, 04 Nov 2017 15:14:12 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Sat, 04 Nov 2017 15:14:12 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Sat, 04 Nov 2017 15:14:12 GMT
ENV JENKINS_UC_EXPERIMENTAL=https://updates.jenkins.io/experimental
# Sat, 04 Nov 2017 15:14:13 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Sat, 04 Nov 2017 15:14:13 GMT
EXPOSE 8080/tcp
# Sat, 04 Nov 2017 15:14:14 GMT
EXPOSE 50000/tcp
# Sat, 04 Nov 2017 15:14:14 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Sat, 04 Nov 2017 15:14:14 GMT
USER [jenkins]
# Sat, 04 Nov 2017 15:14:15 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Sat, 04 Nov 2017 15:14:15 GMT
COPY file:1a774b24a2bbd880e2ce47b3d642b8c04bbdbede0f2256dbdb11f62b65f696ba in /usr/local/bin/jenkins.sh 
# Sat, 04 Nov 2017 15:14:15 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Sat, 04 Nov 2017 15:14:16 GMT
COPY file:9f0a7faf8951842e0f42c1a3f3bb54ff4ec5263064508077347c57376da68b46 in /usr/local/bin/plugins.sh 
# Sat, 04 Nov 2017 15:14:16 GMT
COPY file:a4f750618f51f00d2f8268ac43fdd8d8ef5ce16e1d412afa5a9bc7492a5d975f in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c1cae4f87837d9d61448aceb335992065dc5c80585391782500c4346903fba`  
		Last Modified: Sat, 04 Nov 2017 01:09:20 GMT  
		Size: 11.1 MB (11106957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7da8791d1177f333ca323342681219e16b2e3ceff3cc3811b84f20f2d89062`  
		Last Modified: Sat, 04 Nov 2017 01:09:15 GMT  
		Size: 4.3 MB (4335249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aff2cf9d6ff622a0f9e58d1473e124aada744e5754e1080a97a37b6339058d1`  
		Last Modified: Sat, 04 Nov 2017 01:09:26 GMT  
		Size: 50.0 MB (50021150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a0f3ebf69ddd4696d771377742fd6727719e031851e4f7e1ad2c413d362c2c`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 891.9 KB (891927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2c8fc8b7d3ac546ae3562ce4038489f92242e1e073ca512434473bb85aa13c`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97509d4fb150de0cadca8e9617b9a1814f0c627a5cfbabd0ded3a75fec8da405`  
		Last Modified: Sat, 04 Nov 2017 06:00:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c607b4963f2420755ce8a793e2764a787f5cb4bdc1ae61eaf39d225808fb4b7b`  
		Last Modified: Sat, 04 Nov 2017 06:01:14 GMT  
		Size: 182.9 MB (182891519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fce948dda281e2b575280ff231e1ff21e14226fd30881eeb4206885121d389`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 272.1 KB (272103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc4705aaff0e9177e66882e0be48a737bae32c015d137ecf78d80696c79e757`  
		Last Modified: Sat, 04 Nov 2017 15:14:30 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3baa9f19b202c3bc00f2596e199b87ad061f6de203e1a5e188481147327736c4`  
		Last Modified: Sat, 04 Nov 2017 15:14:28 GMT  
		Size: 4.2 KB (4175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd83def74728ba7df40dce53dd5cca1668882bee1ab0a853b9ff62dbe46d3561`  
		Last Modified: Sat, 04 Nov 2017 15:14:28 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55e8119ffe0cb7161fec1c19dd12e3b51d67900bdb11e22ab6c15fdf2fb406e`  
		Last Modified: Sat, 04 Nov 2017 15:14:28 GMT  
		Size: 354.8 KB (354772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cbeda109aa8ba96f695c8845c8d1dda3f5e2bc16a349a30844f6a19ba1cd600`  
		Last Modified: Sat, 04 Nov 2017 15:14:28 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab366053af54287e20abba89fafad665e0c81dca8d62ac022a59a5c09ca2193`  
		Last Modified: Sat, 04 Nov 2017 15:14:34 GMT  
		Size: 70.4 MB (70409103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924815860f10dca23d14ad6868e2784b9e64979329214673caffa219049fc8d2`  
		Last Modified: Sat, 04 Nov 2017 15:14:26 GMT  
		Size: 439.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c37f4be9e8889f7457e900c92ef92673adf80a1545a790915088e5636d5ee3`  
		Last Modified: Sat, 04 Nov 2017 15:14:25 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a6dd514c95da35954a19ec0b4a0a3e27119f4893421ac996f03f9ea565d594`  
		Last Modified: Sat, 04 Nov 2017 15:14:26 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07149956feb5020a7955af0e8c2f55dbba31289e4bcf98d7f1cefdb48f6f9d34`  
		Last Modified: Sat, 04 Nov 2017 15:14:26 GMT  
		Size: 1.6 KB (1555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe6bc200f13bca4b15b4c124ea30cabc76deb62a651d8ed1353bf69ebe063a1`  
		Last Modified: Sat, 04 Nov 2017 15:14:25 GMT  
		Size: 2.6 KB (2625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.60.3-alpine`

```console
$ docker pull jenkins@sha256:2edf4785dd3313ea4b9f8199b0cd223edc7f11a9a7e5617136da8454c1d0e09f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jenkins:2.60.3-alpine` - linux; amd64

```console
$ docker pull jenkins@sha256:ff2275a95a93ccdba4f565c1bdcb84daa5d9369e1f60a755975a459b3b31179a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (168030279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:320d125102bf9121ee40058cd49bb70a85fe1cd5b3daec0a396c6c8f3be2a499`
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
# Wed, 01 Nov 2017 22:58:53 GMT
RUN apk add --no-cache git openssh-client curl unzip bash ttf-dejavu coreutils
# Wed, 01 Nov 2017 22:58:56 GMT
ARG user=jenkins
# Wed, 01 Nov 2017 22:58:56 GMT
ARG group=jenkins
# Wed, 01 Nov 2017 22:58:57 GMT
ARG uid=1000
# Wed, 01 Nov 2017 22:58:57 GMT
ARG gid=1000
# Wed, 01 Nov 2017 22:58:57 GMT
ARG http_port=8080
# Wed, 01 Nov 2017 22:58:57 GMT
ARG agent_port=50000
# Wed, 01 Nov 2017 22:58:58 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Wed, 01 Nov 2017 22:58:58 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Wed, 01 Nov 2017 22:58:59 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN addgroup -g ${gid} ${group}     && adduser -h "$JENKINS_HOME" -u ${uid} -G ${group} -s /bin/bash -D ${user}
# Wed, 01 Nov 2017 22:59:05 GMT
VOLUME [/var/jenkins_home]
# Wed, 01 Nov 2017 22:59:06 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Wed, 01 Nov 2017 22:59:06 GMT
ENV TINI_VERSION=0.14.0
# Wed, 01 Nov 2017 22:59:06 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Wed, 01 Nov 2017 22:59:09 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Wed, 01 Nov 2017 22:59:09 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Wed, 01 Nov 2017 22:59:09 GMT
ARG JENKINS_VERSION
# Wed, 01 Nov 2017 22:59:10 GMT
ENV JENKINS_VERSION=2.60.3
# Wed, 01 Nov 2017 22:59:10 GMT
ARG JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a
# Wed, 01 Nov 2017 22:59:10 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war
# Wed, 01 Nov 2017 22:59:14 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Wed, 01 Nov 2017 22:59:14 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Wed, 01 Nov 2017 22:59:14 GMT
ENV JENKINS_UC_EXPERIMENTAL=https://updates.jenkins.io/experimental
# Wed, 01 Nov 2017 22:59:15 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Wed, 01 Nov 2017 22:59:15 GMT
EXPOSE 8080/tcp
# Wed, 01 Nov 2017 22:59:15 GMT
EXPOSE 50000/tcp
# Wed, 01 Nov 2017 22:59:15 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Wed, 01 Nov 2017 22:59:15 GMT
USER [jenkins]
# Wed, 01 Nov 2017 22:59:16 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Wed, 01 Nov 2017 22:59:16 GMT
COPY file:1a774b24a2bbd880e2ce47b3d642b8c04bbdbede0f2256dbdb11f62b65f696ba in /usr/local/bin/jenkins.sh 
# Wed, 01 Nov 2017 22:59:16 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Wed, 01 Nov 2017 22:59:17 GMT
COPY file:9f0a7faf8951842e0f42c1a3f3bb54ff4ec5263064508077347c57376da68b46 in /usr/local/bin/plugins.sh 
# Wed, 01 Nov 2017 22:59:17 GMT
COPY file:a4f750618f51f00d2f8268ac43fdd8d8ef5ce16e1d412afa5a9bc7492a5d975f in /usr/local/bin/install-plugins.sh 
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
	-	`sha256:148ca302039cdf6dd165ec6e46f59859f4abd0df46b8592b7d468be9c7af6c9d`  
		Last Modified: Wed, 01 Nov 2017 22:59:41 GMT  
		Size: 25.3 MB (25285372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616e24796e9ea6a69c1bf78cda87d00ebc4b3620d82130983a8e9c8c5d5d4dd6`  
		Last Modified: Wed, 01 Nov 2017 22:59:36 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d082344720dd16fb74acabc1b2e890ea852e8dc93025f39aae9c71b6e186bef8`  
		Last Modified: Wed, 01 Nov 2017 22:59:36 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e65cd90e1e2f52e5d1a5961487b599bf24e2162e5701e9f41d1683968b32217`  
		Last Modified: Wed, 01 Nov 2017 22:59:36 GMT  
		Size: 354.8 KB (354776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961d8ea2c6234cb3c6f97fab11c0eccfbc7e3836a117d9540401a8720c81545f`  
		Last Modified: Wed, 01 Nov 2017 22:59:35 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5b2c42c9dda0b25d3c4dcd2d3621407a987f908086a557582b1f2ed2e3b0db`  
		Last Modified: Wed, 01 Nov 2017 22:59:40 GMT  
		Size: 70.4 MB (70409100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3427830f622aa7624b80a59d710c6bbb4a4e26405f5e9ec2f4693a088a6ab2`  
		Last Modified: Wed, 01 Nov 2017 22:59:34 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6c98a1840240711c5842df51114c16df061daf9508355a336b47c6a5136e68`  
		Last Modified: Wed, 01 Nov 2017 22:59:33 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ae5bab2112116384fba198d16ca7e37bbc1da24ef8ca057886416c82ee6f2d`  
		Last Modified: Wed, 01 Nov 2017 22:59:33 GMT  
		Size: 834.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ce5593de85f10e17d6581692e1c563c52a0e9cf58be64c446b6da0c4cac0b0`  
		Last Modified: Wed, 01 Nov 2017 22:59:33 GMT  
		Size: 1.6 KB (1550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55c2a41e687e718bd25183350b8c44dc614a6eca752ed9bdaba3cff76f9d1d1`  
		Last Modified: Wed, 01 Nov 2017 22:59:33 GMT  
		Size: 2.6 KB (2625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:alpine`

```console
$ docker pull jenkins@sha256:2edf4785dd3313ea4b9f8199b0cd223edc7f11a9a7e5617136da8454c1d0e09f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jenkins:alpine` - linux; amd64

```console
$ docker pull jenkins@sha256:ff2275a95a93ccdba4f565c1bdcb84daa5d9369e1f60a755975a459b3b31179a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (168030279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:320d125102bf9121ee40058cd49bb70a85fe1cd5b3daec0a396c6c8f3be2a499`
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
# Wed, 01 Nov 2017 22:58:53 GMT
RUN apk add --no-cache git openssh-client curl unzip bash ttf-dejavu coreutils
# Wed, 01 Nov 2017 22:58:56 GMT
ARG user=jenkins
# Wed, 01 Nov 2017 22:58:56 GMT
ARG group=jenkins
# Wed, 01 Nov 2017 22:58:57 GMT
ARG uid=1000
# Wed, 01 Nov 2017 22:58:57 GMT
ARG gid=1000
# Wed, 01 Nov 2017 22:58:57 GMT
ARG http_port=8080
# Wed, 01 Nov 2017 22:58:57 GMT
ARG agent_port=50000
# Wed, 01 Nov 2017 22:58:58 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Wed, 01 Nov 2017 22:58:58 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Wed, 01 Nov 2017 22:58:59 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN addgroup -g ${gid} ${group}     && adduser -h "$JENKINS_HOME" -u ${uid} -G ${group} -s /bin/bash -D ${user}
# Wed, 01 Nov 2017 22:59:05 GMT
VOLUME [/var/jenkins_home]
# Wed, 01 Nov 2017 22:59:06 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Wed, 01 Nov 2017 22:59:06 GMT
ENV TINI_VERSION=0.14.0
# Wed, 01 Nov 2017 22:59:06 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Wed, 01 Nov 2017 22:59:09 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Wed, 01 Nov 2017 22:59:09 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Wed, 01 Nov 2017 22:59:09 GMT
ARG JENKINS_VERSION
# Wed, 01 Nov 2017 22:59:10 GMT
ENV JENKINS_VERSION=2.60.3
# Wed, 01 Nov 2017 22:59:10 GMT
ARG JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a
# Wed, 01 Nov 2017 22:59:10 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war
# Wed, 01 Nov 2017 22:59:14 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Wed, 01 Nov 2017 22:59:14 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Wed, 01 Nov 2017 22:59:14 GMT
ENV JENKINS_UC_EXPERIMENTAL=https://updates.jenkins.io/experimental
# Wed, 01 Nov 2017 22:59:15 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Wed, 01 Nov 2017 22:59:15 GMT
EXPOSE 8080/tcp
# Wed, 01 Nov 2017 22:59:15 GMT
EXPOSE 50000/tcp
# Wed, 01 Nov 2017 22:59:15 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Wed, 01 Nov 2017 22:59:15 GMT
USER [jenkins]
# Wed, 01 Nov 2017 22:59:16 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Wed, 01 Nov 2017 22:59:16 GMT
COPY file:1a774b24a2bbd880e2ce47b3d642b8c04bbdbede0f2256dbdb11f62b65f696ba in /usr/local/bin/jenkins.sh 
# Wed, 01 Nov 2017 22:59:16 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Wed, 01 Nov 2017 22:59:17 GMT
COPY file:9f0a7faf8951842e0f42c1a3f3bb54ff4ec5263064508077347c57376da68b46 in /usr/local/bin/plugins.sh 
# Wed, 01 Nov 2017 22:59:17 GMT
COPY file:a4f750618f51f00d2f8268ac43fdd8d8ef5ce16e1d412afa5a9bc7492a5d975f in /usr/local/bin/install-plugins.sh 
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
	-	`sha256:148ca302039cdf6dd165ec6e46f59859f4abd0df46b8592b7d468be9c7af6c9d`  
		Last Modified: Wed, 01 Nov 2017 22:59:41 GMT  
		Size: 25.3 MB (25285372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616e24796e9ea6a69c1bf78cda87d00ebc4b3620d82130983a8e9c8c5d5d4dd6`  
		Last Modified: Wed, 01 Nov 2017 22:59:36 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d082344720dd16fb74acabc1b2e890ea852e8dc93025f39aae9c71b6e186bef8`  
		Last Modified: Wed, 01 Nov 2017 22:59:36 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e65cd90e1e2f52e5d1a5961487b599bf24e2162e5701e9f41d1683968b32217`  
		Last Modified: Wed, 01 Nov 2017 22:59:36 GMT  
		Size: 354.8 KB (354776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961d8ea2c6234cb3c6f97fab11c0eccfbc7e3836a117d9540401a8720c81545f`  
		Last Modified: Wed, 01 Nov 2017 22:59:35 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5b2c42c9dda0b25d3c4dcd2d3621407a987f908086a557582b1f2ed2e3b0db`  
		Last Modified: Wed, 01 Nov 2017 22:59:40 GMT  
		Size: 70.4 MB (70409100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3427830f622aa7624b80a59d710c6bbb4a4e26405f5e9ec2f4693a088a6ab2`  
		Last Modified: Wed, 01 Nov 2017 22:59:34 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6c98a1840240711c5842df51114c16df061daf9508355a336b47c6a5136e68`  
		Last Modified: Wed, 01 Nov 2017 22:59:33 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ae5bab2112116384fba198d16ca7e37bbc1da24ef8ca057886416c82ee6f2d`  
		Last Modified: Wed, 01 Nov 2017 22:59:33 GMT  
		Size: 834.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ce5593de85f10e17d6581692e1c563c52a0e9cf58be64c446b6da0c4cac0b0`  
		Last Modified: Wed, 01 Nov 2017 22:59:33 GMT  
		Size: 1.6 KB (1550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55c2a41e687e718bd25183350b8c44dc614a6eca752ed9bdaba3cff76f9d1d1`  
		Last Modified: Wed, 01 Nov 2017 22:59:33 GMT  
		Size: 2.6 KB (2625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:latest`

```console
$ docker pull jenkins@sha256:8478374d8f1f5f3dbfa9d56901bb8265e57942f47e9f8365a80d2bee3839e0af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jenkins:latest` - linux; amd64

```console
$ docker pull jenkins@sha256:add6e1ee0d944e5c2bd6e0051f4eb1be6e2dde13857cd8f371660ef475e731b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.4 MB (365424260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2c8a46232f476d4bc4936972b1f6201a0c0f294212af08e365cfa791aa0bbac`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:54:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:54:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 00:55:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:45:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:45:53 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:45:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:45:55 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:45:55 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 05:45:56 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 05:45:56 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 05:45:56 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 05:47:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 05:47:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 15:14:00 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:14:01 GMT
ARG user=jenkins
# Sat, 04 Nov 2017 15:14:01 GMT
ARG group=jenkins
# Sat, 04 Nov 2017 15:14:01 GMT
ARG uid=1000
# Sat, 04 Nov 2017 15:14:01 GMT
ARG gid=1000
# Sat, 04 Nov 2017 15:14:01 GMT
ARG http_port=8080
# Sat, 04 Nov 2017 15:14:01 GMT
ARG agent_port=50000
# Sat, 04 Nov 2017 15:14:02 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Sat, 04 Nov 2017 15:14:02 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Sat, 04 Nov 2017 15:14:03 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Sat, 04 Nov 2017 15:14:03 GMT
VOLUME [/var/jenkins_home]
# Sat, 04 Nov 2017 15:14:04 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Sat, 04 Nov 2017 15:14:04 GMT
ENV TINI_VERSION=0.14.0
# Sat, 04 Nov 2017 15:14:04 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Sat, 04 Nov 2017 15:14:06 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Sat, 04 Nov 2017 15:14:07 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Sat, 04 Nov 2017 15:14:07 GMT
ARG JENKINS_VERSION
# Sat, 04 Nov 2017 15:14:07 GMT
ENV JENKINS_VERSION=2.60.3
# Sat, 04 Nov 2017 15:14:08 GMT
ARG JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a
# Sat, 04 Nov 2017 15:14:08 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war
# Sat, 04 Nov 2017 15:14:12 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Sat, 04 Nov 2017 15:14:12 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Sat, 04 Nov 2017 15:14:12 GMT
ENV JENKINS_UC_EXPERIMENTAL=https://updates.jenkins.io/experimental
# Sat, 04 Nov 2017 15:14:13 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Sat, 04 Nov 2017 15:14:13 GMT
EXPOSE 8080/tcp
# Sat, 04 Nov 2017 15:14:14 GMT
EXPOSE 50000/tcp
# Sat, 04 Nov 2017 15:14:14 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Sat, 04 Nov 2017 15:14:14 GMT
USER [jenkins]
# Sat, 04 Nov 2017 15:14:15 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Sat, 04 Nov 2017 15:14:15 GMT
COPY file:1a774b24a2bbd880e2ce47b3d642b8c04bbdbede0f2256dbdb11f62b65f696ba in /usr/local/bin/jenkins.sh 
# Sat, 04 Nov 2017 15:14:15 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Sat, 04 Nov 2017 15:14:16 GMT
COPY file:9f0a7faf8951842e0f42c1a3f3bb54ff4ec5263064508077347c57376da68b46 in /usr/local/bin/plugins.sh 
# Sat, 04 Nov 2017 15:14:16 GMT
COPY file:a4f750618f51f00d2f8268ac43fdd8d8ef5ce16e1d412afa5a9bc7492a5d975f in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c1cae4f87837d9d61448aceb335992065dc5c80585391782500c4346903fba`  
		Last Modified: Sat, 04 Nov 2017 01:09:20 GMT  
		Size: 11.1 MB (11106957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7da8791d1177f333ca323342681219e16b2e3ceff3cc3811b84f20f2d89062`  
		Last Modified: Sat, 04 Nov 2017 01:09:15 GMT  
		Size: 4.3 MB (4335249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aff2cf9d6ff622a0f9e58d1473e124aada744e5754e1080a97a37b6339058d1`  
		Last Modified: Sat, 04 Nov 2017 01:09:26 GMT  
		Size: 50.0 MB (50021150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a0f3ebf69ddd4696d771377742fd6727719e031851e4f7e1ad2c413d362c2c`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 891.9 KB (891927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2c8fc8b7d3ac546ae3562ce4038489f92242e1e073ca512434473bb85aa13c`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97509d4fb150de0cadca8e9617b9a1814f0c627a5cfbabd0ded3a75fec8da405`  
		Last Modified: Sat, 04 Nov 2017 06:00:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c607b4963f2420755ce8a793e2764a787f5cb4bdc1ae61eaf39d225808fb4b7b`  
		Last Modified: Sat, 04 Nov 2017 06:01:14 GMT  
		Size: 182.9 MB (182891519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fce948dda281e2b575280ff231e1ff21e14226fd30881eeb4206885121d389`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 272.1 KB (272103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc4705aaff0e9177e66882e0be48a737bae32c015d137ecf78d80696c79e757`  
		Last Modified: Sat, 04 Nov 2017 15:14:30 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3baa9f19b202c3bc00f2596e199b87ad061f6de203e1a5e188481147327736c4`  
		Last Modified: Sat, 04 Nov 2017 15:14:28 GMT  
		Size: 4.2 KB (4175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd83def74728ba7df40dce53dd5cca1668882bee1ab0a853b9ff62dbe46d3561`  
		Last Modified: Sat, 04 Nov 2017 15:14:28 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55e8119ffe0cb7161fec1c19dd12e3b51d67900bdb11e22ab6c15fdf2fb406e`  
		Last Modified: Sat, 04 Nov 2017 15:14:28 GMT  
		Size: 354.8 KB (354772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cbeda109aa8ba96f695c8845c8d1dda3f5e2bc16a349a30844f6a19ba1cd600`  
		Last Modified: Sat, 04 Nov 2017 15:14:28 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab366053af54287e20abba89fafad665e0c81dca8d62ac022a59a5c09ca2193`  
		Last Modified: Sat, 04 Nov 2017 15:14:34 GMT  
		Size: 70.4 MB (70409103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924815860f10dca23d14ad6868e2784b9e64979329214673caffa219049fc8d2`  
		Last Modified: Sat, 04 Nov 2017 15:14:26 GMT  
		Size: 439.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c37f4be9e8889f7457e900c92ef92673adf80a1545a790915088e5636d5ee3`  
		Last Modified: Sat, 04 Nov 2017 15:14:25 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a6dd514c95da35954a19ec0b4a0a3e27119f4893421ac996f03f9ea565d594`  
		Last Modified: Sat, 04 Nov 2017 15:14:26 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07149956feb5020a7955af0e8c2f55dbba31289e4bcf98d7f1cefdb48f6f9d34`  
		Last Modified: Sat, 04 Nov 2017 15:14:26 GMT  
		Size: 1.6 KB (1555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe6bc200f13bca4b15b4c124ea30cabc76deb62a651d8ed1353bf69ebe063a1`  
		Last Modified: Sat, 04 Nov 2017 15:14:25 GMT  
		Size: 2.6 KB (2625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
