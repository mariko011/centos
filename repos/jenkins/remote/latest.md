## `jenkins:latest`

```console
$ docker pull jenkins@sha256:bc0d9b4f622d2974984b6967fab7dcd904037a19586809905a9563b8df4af6ee
```

-	Platforms:
	-	linux; amd64

### `jenkins:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.9 MB (312864632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2da1d8d90b7ef2cc20a5c1d5fb19db0b0853af024d54976c605db6711b7cd05f`
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
# Thu, 01 Sep 2016 19:12:00 GMT
ENV JENKINS_VERSION=2.7.3
# Thu, 01 Sep 2016 19:12:01 GMT
ARG JENKINS_SHA=f822e70810e0d30c6fbe7935273635740faa3d89
# Thu, 01 Sep 2016 19:12:01 GMT
ARG JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.3/jenkins-war-2.7.3.war
# Thu, 01 Sep 2016 19:12:06 GMT
# ARGS: JENKINS_SHA=f822e70810e0d30c6fbe7935273635740faa3d89 JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.3/jenkins-war-2.7.3.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha1sum -c -
# Thu, 01 Sep 2016 19:12:07 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Thu, 01 Sep 2016 19:12:08 GMT
# ARGS: JENKINS_SHA=f822e70810e0d30c6fbe7935273635740faa3d89 JENKINS_URL=http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.7.3/jenkins-war-2.7.3.war gid=1000 group=jenkins uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Thu, 01 Sep 2016 19:12:08 GMT
EXPOSE 8080/tcp
# Thu, 01 Sep 2016 19:12:08 GMT
EXPOSE 50000/tcp
# Thu, 01 Sep 2016 19:12:09 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Thu, 01 Sep 2016 19:12:09 GMT
USER [jenkins]
# Thu, 01 Sep 2016 19:12:09 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Thu, 01 Sep 2016 19:12:10 GMT
COPY file:fc94121cf01d6d05be390499fbde73a26d1cf59af88d4d29dab5e81024778028 in /usr/local/bin/jenkins.sh 
# Thu, 01 Sep 2016 19:12:10 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Thu, 01 Sep 2016 19:12:11 GMT
COPY file:902c50db7f531a8fe363c937a24f6474b4525ed70c2b3d807306d33d6d254a9d in /usr/local/bin/plugins.sh 
# Thu, 01 Sep 2016 19:12:11 GMT
COPY file:c9cb5b680a6dd3e26901cca8c795d5aacfe8ff25d6bfc2e19624e203933efea7 in /usr/local/bin/install-plugins.sh 
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
	-	`sha256:616787a1f2ff4d7e9db5718a32f5104a342838b68a029ef448a6b22a97488abf`  
		Last Modified: Thu, 01 Sep 2016 19:12:39 GMT  
		Size: 68.7 MB (68650975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f682f4ce7c43a3a9f92e37457f839f0d1cd613b3e3676f63fc7d703e7bd9b20`  
		Last Modified: Thu, 01 Sep 2016 19:12:28 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b48764d0fbc728620701203d5abaff1871052811f0ab444b82fcb623068f04`  
		Last Modified: Thu, 01 Sep 2016 19:12:30 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5820120ff644b8f36dfb82777e1428ec436e1e3c1763013b5de47cfa03f211c5`  
		Last Modified: Thu, 01 Sep 2016 19:12:29 GMT  
		Size: 641.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21359f21d2e6174cd8c740add3768ab97f3d3e9844001ecefe34eaf37a6ea757`  
		Last Modified: Thu, 01 Sep 2016 19:12:29 GMT  
		Size: 1.5 KB (1502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e42567ef4f32d4a7e3e3c9032abbc5ffcd151c8cd31174b45b4e5b97f9e7329`  
		Last Modified: Thu, 01 Sep 2016 19:12:29 GMT  
		Size: 2.1 KB (2132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
