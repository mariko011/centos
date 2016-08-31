<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `jenkins`

-	[`jenkins:latest`](#jenkinslatest)
-	[`jenkins:2.7.2`](#jenkins272)
-	[`jenkins:alpine`](#jenkinsalpine)
-	[`jenkins:2.7.2-alpine`](#jenkins272-alpine)

## `jenkins:latest`

```console
$ docker pull jenkins@sha256:d34d6679454f3c44412e2cdf9f9590c7d13a6cbba66eabe66975795cf42cebc5
```

-	Platforms:
	-	linux; amd64

### `jenkins:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.9 MB (312859386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a94b49bb279ba0a883c4b8b26c45981f4bcd1401d446c9441508c8fbce29a0ed`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:15:01 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:15:01 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:15:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:15:03 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:15:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 20:42:30 GMT
RUN apt-get update && apt-get install -y git curl zip && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 20:42:30 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Wed, 31 Aug 2016 20:42:31 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Wed, 31 Aug 2016 20:42:31 GMT
ARG user=jenkins
# Wed, 31 Aug 2016 20:42:31 GMT
ARG group=jenkins
# Wed, 31 Aug 2016 20:42:31 GMT
ARG uid=1000
# Wed, 31 Aug 2016 20:42:32 GMT
ARG gid=1000
# Wed, 31 Aug 2016 20:42:33 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Wed, 31 Aug 2016 20:42:33 GMT
VOLUME [/var/jenkins_home]
# Wed, 31 Aug 2016 20:42:34 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Wed, 31 Aug 2016 20:42:34 GMT
ENV TINI_VERSION=0.9.0
# Wed, 31 Aug 2016 20:42:35 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Wed, 31 Aug 2016 20:42:37 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Wed, 31 Aug 2016 20:42:38 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Wed, 31 Aug 2016 20:42:38 GMT
ARG JENKINS_VERSION
# Wed, 31 Aug 2016 20:42:39 GMT
ENV JENKINS_VERSION=2.7.2
# Wed, 31 Aug 2016 20:42:39 GMT
ARG JENKINS_SHA=4c05175677825a0c311ef3001bbb0a767dad0e8d
# Wed, 31 Aug 2016 20:42:39 GMT
ARG JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.2/jenkins-war-2.7.2.war
# Wed, 31 Aug 2016 20:42:44 GMT
# ARGS: JENKINS_SHA=4c05175677825a0c311ef3001bbb0a767dad0e8d JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.2/jenkins-war-2.7.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Wed, 31 Aug 2016 20:42:45 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Wed, 31 Aug 2016 20:42:45 GMT
# ARGS: JENKINS_SHA=4c05175677825a0c311ef3001bbb0a767dad0e8d JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.2/jenkins-war-2.7.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Wed, 31 Aug 2016 20:42:46 GMT
EXPOSE 8080/tcp
# Wed, 31 Aug 2016 20:42:46 GMT
EXPOSE 50000/tcp
# Wed, 31 Aug 2016 20:42:46 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Wed, 31 Aug 2016 20:42:47 GMT
USER [jenkins]
# Wed, 31 Aug 2016 20:42:49 GMT
COPY file:bcd1884b35bb371124e44409afa42f46458f7c527dd822ea4e13fa3b31b159ec in /usr/local/bin/jenkins-support 
# Wed, 31 Aug 2016 20:42:49 GMT
COPY file:fc94121cf01d6d05be390499fbde73a26d1cf59af88d4d29dab5e81024778028 in /usr/local/bin/jenkins.sh 
# Wed, 31 Aug 2016 20:42:50 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Wed, 31 Aug 2016 20:42:50 GMT
COPY file:902c50db7f531a8fe363c937a24f6474b4525ed70c2b3d807306d33d6d254a9d in /usr/local/bin/plugins.sh 
# Wed, 31 Aug 2016 20:42:50 GMT
COPY file:4fb6500889cea238febb5a8b5d35c695c649e09177d36293f3a96ff12fc9b06a in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a614fcb4b1be6e9b94f188ac859803e5214d24c2af86c6437bd74817e75613d`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcd29499236d6a936fbacb8d65340eeb7177b930148fb1c401d5fa71ab88c82`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df99ed2f401ca635670635998c2b540cc748e390ffd8b47a2092815e6cb56b6`  
		Last Modified: Wed, 31 Aug 2016 17:26:53 GMT  
		Size: 130.1 MB (130073666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b6cf75aef4eade93918ef73b6c2896c664f50fdb8e6f5e4c586c05a3d4c864`  
		Last Modified: Wed, 31 Aug 2016 17:26:13 GMT  
		Size: 284.2 KB (284227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ee3009cf3c28003a6c4086ba61047c83cfdc1b96e655c24e88dcaffbb7689e`  
		Last Modified: Wed, 31 Aug 2016 20:50:42 GMT  
		Size: 523.5 KB (523450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e937c4dbec6dd73dd8200405206258b5c85a167a805b054b977aa018fba74c34`  
		Last Modified: Wed, 31 Aug 2016 20:50:42 GMT  
		Size: 4.4 KB (4386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6786c7acfa2eafae3fa9ef9318401245467067f5a7da1739e43b45506ccaeabd`  
		Last Modified: Wed, 31 Aug 2016 20:50:39 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566e8e50bc424b9846a3ba883c0e67384011ae9c58c3b2caa24eae6a6a49e75c`  
		Last Modified: Wed, 31 Aug 2016 20:50:38 GMT  
		Size: 337.2 KB (337239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30436c464cb5bbb864cf39bb32e33a30e30493dfe42c4d2676abcc6b222b2766`  
		Last Modified: Wed, 31 Aug 2016 20:50:38 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e282dfd8ac6ff402882b6fae399facf0880576d38827f9abb888e55a2b6fb64`  
		Last Modified: Wed, 31 Aug 2016 20:50:45 GMT  
		Size: 68.6 MB (68645773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:507020fde34a2859672df7afe6eb5872e9daaeb5ae0f8c8ac6ed6ace519cc4ce`  
		Last Modified: Wed, 31 Aug 2016 20:50:36 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b630fa316a63082c8ce066cfb0dc7ceff33a349e9741b1e690de3322b17e4e0d`  
		Last Modified: Wed, 31 Aug 2016 20:50:37 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2624ad1102171d52f5d54cc301b0a87c3da7474cbe54c19718287a7731792906`  
		Last Modified: Wed, 31 Aug 2016 20:50:35 GMT  
		Size: 640.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66aa4ab7ec630f28c44c1501f51eefd6efb6e8851432c02daa72952a83fee5e6`  
		Last Modified: Wed, 31 Aug 2016 20:50:35 GMT  
		Size: 1.5 KB (1503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d3d654977db8ae94429baebfc167d48c9a4d24fcb822dd49b64f6eb6fffc85`  
		Last Modified: Wed, 31 Aug 2016 20:50:35 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.7.2`

```console
$ docker pull jenkins@sha256:d34d6679454f3c44412e2cdf9f9590c7d13a6cbba66eabe66975795cf42cebc5
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.7.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.9 MB (312859386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a94b49bb279ba0a883c4b8b26c45981f4bcd1401d446c9441508c8fbce29a0ed`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:15:01 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:15:01 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:15:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:15:03 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:15:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 20:42:30 GMT
RUN apt-get update && apt-get install -y git curl zip && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 20:42:30 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Wed, 31 Aug 2016 20:42:31 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Wed, 31 Aug 2016 20:42:31 GMT
ARG user=jenkins
# Wed, 31 Aug 2016 20:42:31 GMT
ARG group=jenkins
# Wed, 31 Aug 2016 20:42:31 GMT
ARG uid=1000
# Wed, 31 Aug 2016 20:42:32 GMT
ARG gid=1000
# Wed, 31 Aug 2016 20:42:33 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Wed, 31 Aug 2016 20:42:33 GMT
VOLUME [/var/jenkins_home]
# Wed, 31 Aug 2016 20:42:34 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Wed, 31 Aug 2016 20:42:34 GMT
ENV TINI_VERSION=0.9.0
# Wed, 31 Aug 2016 20:42:35 GMT
ENV TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452
# Wed, 31 Aug 2016 20:42:37 GMT
# ARGS: gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha1sum -c -
# Wed, 31 Aug 2016 20:42:38 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Wed, 31 Aug 2016 20:42:38 GMT
ARG JENKINS_VERSION
# Wed, 31 Aug 2016 20:42:39 GMT
ENV JENKINS_VERSION=2.7.2
# Wed, 31 Aug 2016 20:42:39 GMT
ARG JENKINS_SHA=4c05175677825a0c311ef3001bbb0a767dad0e8d
# Wed, 31 Aug 2016 20:42:39 GMT
ARG JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.2/jenkins-war-2.7.2.war
# Wed, 31 Aug 2016 20:42:44 GMT
# ARGS: JENKINS_SHA=4c05175677825a0c311ef3001bbb0a767dad0e8d JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.2/jenkins-war-2.7.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Wed, 31 Aug 2016 20:42:45 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Wed, 31 Aug 2016 20:42:45 GMT
# ARGS: JENKINS_SHA=4c05175677825a0c311ef3001bbb0a767dad0e8d JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.2/jenkins-war-2.7.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Wed, 31 Aug 2016 20:42:46 GMT
EXPOSE 8080/tcp
# Wed, 31 Aug 2016 20:42:46 GMT
EXPOSE 50000/tcp
# Wed, 31 Aug 2016 20:42:46 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Wed, 31 Aug 2016 20:42:47 GMT
USER [jenkins]
# Wed, 31 Aug 2016 20:42:49 GMT
COPY file:bcd1884b35bb371124e44409afa42f46458f7c527dd822ea4e13fa3b31b159ec in /usr/local/bin/jenkins-support 
# Wed, 31 Aug 2016 20:42:49 GMT
COPY file:fc94121cf01d6d05be390499fbde73a26d1cf59af88d4d29dab5e81024778028 in /usr/local/bin/jenkins.sh 
# Wed, 31 Aug 2016 20:42:50 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Wed, 31 Aug 2016 20:42:50 GMT
COPY file:902c50db7f531a8fe363c937a24f6474b4525ed70c2b3d807306d33d6d254a9d in /usr/local/bin/plugins.sh 
# Wed, 31 Aug 2016 20:42:50 GMT
COPY file:4fb6500889cea238febb5a8b5d35c695c649e09177d36293f3a96ff12fc9b06a in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a614fcb4b1be6e9b94f188ac859803e5214d24c2af86c6437bd74817e75613d`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcd29499236d6a936fbacb8d65340eeb7177b930148fb1c401d5fa71ab88c82`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df99ed2f401ca635670635998c2b540cc748e390ffd8b47a2092815e6cb56b6`  
		Last Modified: Wed, 31 Aug 2016 17:26:53 GMT  
		Size: 130.1 MB (130073666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b6cf75aef4eade93918ef73b6c2896c664f50fdb8e6f5e4c586c05a3d4c864`  
		Last Modified: Wed, 31 Aug 2016 17:26:13 GMT  
		Size: 284.2 KB (284227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ee3009cf3c28003a6c4086ba61047c83cfdc1b96e655c24e88dcaffbb7689e`  
		Last Modified: Wed, 31 Aug 2016 20:50:42 GMT  
		Size: 523.5 KB (523450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e937c4dbec6dd73dd8200405206258b5c85a167a805b054b977aa018fba74c34`  
		Last Modified: Wed, 31 Aug 2016 20:50:42 GMT  
		Size: 4.4 KB (4386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6786c7acfa2eafae3fa9ef9318401245467067f5a7da1739e43b45506ccaeabd`  
		Last Modified: Wed, 31 Aug 2016 20:50:39 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566e8e50bc424b9846a3ba883c0e67384011ae9c58c3b2caa24eae6a6a49e75c`  
		Last Modified: Wed, 31 Aug 2016 20:50:38 GMT  
		Size: 337.2 KB (337239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30436c464cb5bbb864cf39bb32e33a30e30493dfe42c4d2676abcc6b222b2766`  
		Last Modified: Wed, 31 Aug 2016 20:50:38 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e282dfd8ac6ff402882b6fae399facf0880576d38827f9abb888e55a2b6fb64`  
		Last Modified: Wed, 31 Aug 2016 20:50:45 GMT  
		Size: 68.6 MB (68645773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:507020fde34a2859672df7afe6eb5872e9daaeb5ae0f8c8ac6ed6ace519cc4ce`  
		Last Modified: Wed, 31 Aug 2016 20:50:36 GMT  
		Size: 429.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b630fa316a63082c8ce066cfb0dc7ceff33a349e9741b1e690de3322b17e4e0d`  
		Last Modified: Wed, 31 Aug 2016 20:50:37 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2624ad1102171d52f5d54cc301b0a87c3da7474cbe54c19718287a7731792906`  
		Last Modified: Wed, 31 Aug 2016 20:50:35 GMT  
		Size: 640.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66aa4ab7ec630f28c44c1501f51eefd6efb6e8851432c02daa72952a83fee5e6`  
		Last Modified: Wed, 31 Aug 2016 20:50:35 GMT  
		Size: 1.5 KB (1503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d3d654977db8ae94429baebfc167d48c9a4d24fcb822dd49b64f6eb6fffc85`  
		Last Modified: Wed, 31 Aug 2016 20:50:35 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:alpine`

```console
$ docker pull jenkins@sha256:90dc40f2d29b4fc36d462dfba3adcfe85f4591612c166404f3247902c7cf7e08
```

-	Platforms:
	-	linux; amd64

### `jenkins:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144088329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba95fd821ac65214352edd4a365d48978a1e01f6e9afe4a3c35bc0f727228ee0`
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
# Tue, 30 Aug 2016 20:05:22 GMT
ENV JENKINS_VERSION=2.7.2
# Tue, 30 Aug 2016 20:05:22 GMT
ARG JENKINS_SHA=4c05175677825a0c311ef3001bbb0a767dad0e8d
# Tue, 30 Aug 2016 20:05:22 GMT
ARG JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.2/jenkins-war-2.7.2.war
# Tue, 30 Aug 2016 20:05:27 GMT
# ARGS: JENKINS_SHA=4c05175677825a0c311ef3001bbb0a767dad0e8d JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.2/jenkins-war-2.7.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Tue, 30 Aug 2016 20:05:28 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Tue, 30 Aug 2016 20:05:28 GMT
# ARGS: JENKINS_SHA=4c05175677825a0c311ef3001bbb0a767dad0e8d JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.2/jenkins-war-2.7.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Tue, 30 Aug 2016 20:05:29 GMT
EXPOSE 8080/tcp
# Tue, 30 Aug 2016 20:05:29 GMT
EXPOSE 50000/tcp
# Tue, 30 Aug 2016 20:05:29 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Tue, 30 Aug 2016 20:05:29 GMT
USER [jenkins]
# Tue, 30 Aug 2016 20:05:30 GMT
COPY file:bcd1884b35bb371124e44409afa42f46458f7c527dd822ea4e13fa3b31b159ec in /usr/local/bin/jenkins-support 
# Tue, 30 Aug 2016 20:05:30 GMT
COPY file:fc94121cf01d6d05be390499fbde73a26d1cf59af88d4d29dab5e81024778028 in /usr/local/bin/jenkins.sh 
# Tue, 30 Aug 2016 20:05:30 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Tue, 30 Aug 2016 20:05:31 GMT
COPY file:902c50db7f531a8fe363c937a24f6474b4525ed70c2b3d807306d33d6d254a9d in /usr/local/bin/plugins.sh 
# Tue, 30 Aug 2016 20:05:31 GMT
COPY file:4fb6500889cea238febb5a8b5d35c695c649e09177d36293f3a96ff12fc9b06a in /usr/local/bin/install-plugins.sh 
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
	-	`sha256:4dd72d615d79cf3cc5006042ef0346a01990bd602012c4250c5e59536ed7eace`  
		Last Modified: Wed, 31 Aug 2016 20:50:12 GMT  
		Size: 68.6 MB (68645776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae73ad05a179ca114eea19104d063f7bade22bf25128fd78f58564c674d73e0f`  
		Last Modified: Wed, 31 Aug 2016 20:50:02 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2f1471703ffb88a394ecacbae72f5a8647531bbd742b378a0b77c48070fc78`  
		Last Modified: Wed, 31 Aug 2016 20:50:02 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6934e399ad1b16b1f03368fb9dd662b4cee82b1b10cd937518396dd6cf019967`  
		Last Modified: Wed, 31 Aug 2016 20:50:02 GMT  
		Size: 633.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a30caa3cccc1246d243d06c54790e0283cdfd075fbd299569b451a3ecf077d9b`  
		Last Modified: Wed, 31 Aug 2016 20:50:01 GMT  
		Size: 1.5 KB (1495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc48b96b3c426328c41a38e202ee4245650472312d1ff3e7ad1a1bc11e9dbf99`  
		Last Modified: Wed, 31 Aug 2016 20:50:02 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.7.2-alpine`

```console
$ docker pull jenkins@sha256:90dc40f2d29b4fc36d462dfba3adcfe85f4591612c166404f3247902c7cf7e08
```

-	Platforms:
	-	linux; amd64

### `jenkins:2.7.2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144088329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba95fd821ac65214352edd4a365d48978a1e01f6e9afe4a3c35bc0f727228ee0`
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
# Tue, 30 Aug 2016 20:05:22 GMT
ENV JENKINS_VERSION=2.7.2
# Tue, 30 Aug 2016 20:05:22 GMT
ARG JENKINS_SHA=4c05175677825a0c311ef3001bbb0a767dad0e8d
# Tue, 30 Aug 2016 20:05:22 GMT
ARG JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.2/jenkins-war-2.7.2.war
# Tue, 30 Aug 2016 20:05:27 GMT
# ARGS: JENKINS_SHA=4c05175677825a0c311ef3001bbb0a767dad0e8d JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.2/jenkins-war-2.7.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Tue, 30 Aug 2016 20:05:28 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Tue, 30 Aug 2016 20:05:28 GMT
# ARGS: JENKINS_SHA=4c05175677825a0c311ef3001bbb0a767dad0e8d JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.2/jenkins-war-2.7.2.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Tue, 30 Aug 2016 20:05:29 GMT
EXPOSE 8080/tcp
# Tue, 30 Aug 2016 20:05:29 GMT
EXPOSE 50000/tcp
# Tue, 30 Aug 2016 20:05:29 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Tue, 30 Aug 2016 20:05:29 GMT
USER [jenkins]
# Tue, 30 Aug 2016 20:05:30 GMT
COPY file:bcd1884b35bb371124e44409afa42f46458f7c527dd822ea4e13fa3b31b159ec in /usr/local/bin/jenkins-support 
# Tue, 30 Aug 2016 20:05:30 GMT
COPY file:fc94121cf01d6d05be390499fbde73a26d1cf59af88d4d29dab5e81024778028 in /usr/local/bin/jenkins.sh 
# Tue, 30 Aug 2016 20:05:30 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Tue, 30 Aug 2016 20:05:31 GMT
COPY file:902c50db7f531a8fe363c937a24f6474b4525ed70c2b3d807306d33d6d254a9d in /usr/local/bin/plugins.sh 
# Tue, 30 Aug 2016 20:05:31 GMT
COPY file:4fb6500889cea238febb5a8b5d35c695c649e09177d36293f3a96ff12fc9b06a in /usr/local/bin/install-plugins.sh 
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
	-	`sha256:4dd72d615d79cf3cc5006042ef0346a01990bd602012c4250c5e59536ed7eace`  
		Last Modified: Wed, 31 Aug 2016 20:50:12 GMT  
		Size: 68.6 MB (68645776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae73ad05a179ca114eea19104d063f7bade22bf25128fd78f58564c674d73e0f`  
		Last Modified: Wed, 31 Aug 2016 20:50:02 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2f1471703ffb88a394ecacbae72f5a8647531bbd742b378a0b77c48070fc78`  
		Last Modified: Wed, 31 Aug 2016 20:50:02 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6934e399ad1b16b1f03368fb9dd662b4cee82b1b10cd937518396dd6cf019967`  
		Last Modified: Wed, 31 Aug 2016 20:50:02 GMT  
		Size: 633.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a30caa3cccc1246d243d06c54790e0283cdfd075fbd299569b451a3ecf077d9b`  
		Last Modified: Wed, 31 Aug 2016 20:50:01 GMT  
		Size: 1.5 KB (1495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc48b96b3c426328c41a38e202ee4245650472312d1ff3e7ad1a1bc11e9dbf99`  
		Last Modified: Wed, 31 Aug 2016 20:50:02 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
