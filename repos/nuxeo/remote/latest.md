## `nuxeo:latest`

```console
$ docker pull nuxeo@sha256:a018b5fd8222d1fae993f4887890d091477c35c355a6073cd18192b521d25707
```

-	Platforms:
	-	linux; amd64

### `nuxeo:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1210954241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad1f48365f6f0ed5966e501643859c0855d588b2b60c17d02b22bea33187f27c`
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
# Wed, 26 Apr 2017 16:37:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Wed, 26 Apr 2017 16:38:01 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 26 Apr 2017 16:38:02 GMT
ENV NUXEO_USER=nuxeo
# Wed, 26 Apr 2017 16:38:03 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 26 Apr 2017 16:38:03 GMT
ARG NUXEO_VERSION=9.1
# Wed, 26 Apr 2017 16:38:04 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.1/nuxeo-server-9.1-tomcat.zip
# Wed, 26 Apr 2017 16:38:05 GMT
ARG NUXEO_MD5=4134545646fca1a520e0b8dc9d273b2c
# Wed, 26 Apr 2017 16:38:06 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.1/nuxeo-server-9.1-tomcat.zip NUXEO_MD5=4134545646fca1a520e0b8dc9d273b2c NUXEO_VERSION=9.1
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 26 Apr 2017 16:38:47 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.1/nuxeo-server-9.1-tomcat.zip NUXEO_MD5=4134545646fca1a520e0b8dc9d273b2c NUXEO_VERSION=9.1
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Wed, 26 Apr 2017 16:38:48 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Wed, 26 Apr 2017 16:38:49 GMT
COPY file:f7fdb3805c4c95c1814d52bbeb4ad4bc05d4333f03b0f374d7993701fa8d8b0a in /etc/nuxeo/nuxeo.conf.template 
# Wed, 26 Apr 2017 16:38:49 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Wed, 26 Apr 2017 16:38:57 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.1/nuxeo-server-9.1-tomcat.zip NUXEO_MD5=4134545646fca1a520e0b8dc9d273b2c NUXEO_VERSION=9.1
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 26 Apr 2017 16:38:58 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 16:38:59 GMT
WORKDIR /opt/nuxeo/server
# Wed, 26 Apr 2017 16:39:00 GMT
COPY file:872da8f105902c3a28d050cfaf4a490ca9fa9a6f9b5b1e1fa4c589228bab8e97 in / 
# Wed, 26 Apr 2017 16:39:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Apr 2017 16:39:01 GMT
EXPOSE 8080/tcp
# Wed, 26 Apr 2017 16:39:02 GMT
EXPOSE 8787/tcp
# Wed, 26 Apr 2017 16:39:03 GMT
CMD ["nuxeoctl" "console"]
# Wed, 26 Apr 2017 16:39:04 GMT
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
	-	`sha256:5fe10c5c597c2645ebac5ad926db93ad45214b0b429afcaf0652fa38873f0aeb`  
		Last Modified: Wed, 26 Apr 2017 16:46:09 GMT  
		Size: 201.7 MB (201731500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dcf7d3db6ad5c47121a15d5b9abbadd814f698c3ba1bb711aeef9246a52a9a3`  
		Last Modified: Wed, 26 Apr 2017 16:45:18 GMT  
		Size: 763.1 KB (763118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785b2346e39a437349cbc730adaf8eabca119e11f17b55f59aab2a9d213d2032`  
		Last Modified: Wed, 26 Apr 2017 16:45:17 GMT  
		Size: 4.5 KB (4454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03ed277ed8566a7d557f9fa4e8c7bbdaed21649fe16ada43f924579b283deb11`  
		Last Modified: Wed, 26 Apr 2017 16:45:38 GMT  
		Size: 380.3 MB (380318277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b221caa5ef2de973b545a53b461989c01405dddad890602cb73714ce015cf5`  
		Last Modified: Wed, 26 Apr 2017 16:45:14 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c695b3a4741ecb4fdf54b7ccf6206c4b961a4fd52788649ba21e66f3abe917`  
		Last Modified: Wed, 26 Apr 2017 16:45:16 GMT  
		Size: 971.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c3e7675fd23dd55ec3c905769d7463391c253c0a6863f36f4a5473772c84b4`  
		Last Modified: Wed, 26 Apr 2017 16:45:46 GMT  
		Size: 380.3 MB (380321770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ab4ad7b25ba7adbf66e5db37de05eb9c10fd1d2412eaae7cea9882d34695a4`  
		Last Modified: Wed, 26 Apr 2017 16:45:15 GMT  
		Size: 914.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
