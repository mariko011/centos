## `nuxeo:LTS`

```console
$ docker pull nuxeo@sha256:c70ed249ec0e60c3f992a6a08c3753fec91ee60ce6027f2cf5aa1ac127624606
```

-	Platforms:
	-	linux; amd64

### `nuxeo:LTS` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **989.6 MB (989559691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2a47abcd5d60fee328f439e09d6c75fad5413a841b0c7cc4a1788b68d24300d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:38:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:41:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:41:08 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:41:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:41:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:41:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:42:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:42:20 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 11:43:38 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 25 Apr 2017 11:43:38 GMT
ENV NUXEO_USER=nuxeo
# Wed, 26 Apr 2017 16:39:23 GMT
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 26 Apr 2017 16:41:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Wed, 26 Apr 2017 16:41:39 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 26 Apr 2017 16:41:39 GMT
ARG NUXEO_VERSION=8.10
# Wed, 26 Apr 2017 16:41:40 GMT
ARG NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Wed, 26 Apr 2017 16:41:41 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Wed, 26 Apr 2017 16:41:51 GMT
# ARGS: NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 26 Apr 2017 16:41:57 GMT
# ARGS: NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Wed, 26 Apr 2017 16:41:59 GMT
# ARGS: NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 26 Apr 2017 16:42:06 GMT
# ARGS: NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 26 Apr 2017 16:42:07 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 16:42:07 GMT
WORKDIR /opt/nuxeo/server
# Wed, 26 Apr 2017 16:42:08 GMT
COPY file:485ff0a6674b97f711e5be4a1ec900fc1002c363c00770d8b1c5809a76ccfc32 in / 
# Wed, 26 Apr 2017 16:42:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Apr 2017 16:42:10 GMT
EXPOSE 8080/tcp
# Wed, 26 Apr 2017 16:42:10 GMT
EXPOSE 8787/tcp
# Wed, 26 Apr 2017 16:42:11 GMT
CMD ["nuxeoctl" "console"]
# Wed, 26 Apr 2017 16:42:11 GMT
USER [1000]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46c5b79125ec83395527f1cf86e8b3f5f4e2fc6bbf53d087b521e470afc46c6`  
		Last Modified: Tue, 25 Apr 2017 00:47:56 GMT  
		Size: 599.6 KB (599608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d4cb7cc8bcb4f9a4cf2ccb6830338a99dd13262d8c4ae24f083d27de09d10d`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d273117faaf9aabd15756fc311cae3773768e2409158bd8a6e76cc5a3035913`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e9e110f314c1151aa0bc4b538eafd5bd53f1bdb1ca00356e1b9318ad1e171f`  
		Last Modified: Tue, 25 Apr 2017 00:52:23 GMT  
		Size: 131.9 MB (131875124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7082199c57eaf7b0105a9b93107b5bdc19526d0cdacc540f865817f06ad1050`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 289.6 KB (289642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd211fba5102f1be7f1ca9fb516e3524f388d00d074a8a67351a256f2d69a5c`  
		Last Modified: Wed, 26 Apr 2017 16:47:47 GMT  
		Size: 4.4 KB (4441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eeb73a5368e8d22cfdca43c64f08d2ce52a42427a6cf3e691dc024ab417e0a`  
		Last Modified: Wed, 26 Apr 2017 16:48:34 GMT  
		Size: 201.7 MB (201731391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d37faf55c617ab4164f35fa06f34e28ef0533d1ac32eb17f2ee64dcc02234b`  
		Last Modified: Wed, 26 Apr 2017 16:48:04 GMT  
		Size: 269.6 MB (269622069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd68756bc4e45c75248830d32b9e4998a16b673e20847895188aa606180a4ca8`  
		Last Modified: Wed, 26 Apr 2017 16:48:08 GMT  
		Size: 269.6 MB (269624351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b28b50934f7825b4a78a937d9fadb6bb6c74014c3f2f2b9127b7a4f6894203`  
		Last Modified: Wed, 26 Apr 2017 16:47:45 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8c5f5dab16216693876d0c3a353b33d95b7cb245da48abd27f5901254f05bf`  
		Last Modified: Wed, 26 Apr 2017 16:47:45 GMT  
		Size: 763.1 KB (763121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5064ecc4efb56df373452614a4aaa09361fce81077118e320514d747d22bcce5`  
		Last Modified: Wed, 26 Apr 2017 16:47:45 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
