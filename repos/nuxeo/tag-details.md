<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nuxeo`

-	[`nuxeo:latest`](#nuxeolatest)
-	[`nuxeo:9`](#nuxeo9)
-	[`nuxeo:9.1`](#nuxeo91)
-	[`nuxeo:FT`](#nuxeoft)
-	[`nuxeo:LTS`](#nuxeolts)
-	[`nuxeo:LTS-2016`](#nuxeolts-2016)
-	[`nuxeo:8`](#nuxeo8)
-	[`nuxeo:8.10`](#nuxeo810)
-	[`nuxeo:8.3`](#nuxeo83)
-	[`nuxeo:8.2`](#nuxeo82)
-	[`nuxeo:LTS-2015`](#nuxeolts-2015)
-	[`nuxeo:7`](#nuxeo7)
-	[`nuxeo:7.10`](#nuxeo710)
-	[`nuxeo:LTS-2014`](#nuxeolts-2014)
-	[`nuxeo:6`](#nuxeo6)
-	[`nuxeo:6.0`](#nuxeo60)

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

## `nuxeo:9`

```console
$ docker pull nuxeo@sha256:a018b5fd8222d1fae993f4887890d091477c35c355a6073cd18192b521d25707
```

-	Platforms:
	-	linux; amd64

### `nuxeo:9` - linux; amd64

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

## `nuxeo:9.1`

```console
$ docker pull nuxeo@sha256:a018b5fd8222d1fae993f4887890d091477c35c355a6073cd18192b521d25707
```

-	Platforms:
	-	linux; amd64

### `nuxeo:9.1` - linux; amd64

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

## `nuxeo:FT`

```console
$ docker pull nuxeo@sha256:a018b5fd8222d1fae993f4887890d091477c35c355a6073cd18192b521d25707
```

-	Platforms:
	-	linux; amd64

### `nuxeo:FT` - linux; amd64

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

## `nuxeo:LTS-2016`

```console
$ docker pull nuxeo@sha256:c70ed249ec0e60c3f992a6a08c3753fec91ee60ce6027f2cf5aa1ac127624606
```

-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2016` - linux; amd64

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

## `nuxeo:8`

```console
$ docker pull nuxeo@sha256:c70ed249ec0e60c3f992a6a08c3753fec91ee60ce6027f2cf5aa1ac127624606
```

-	Platforms:
	-	linux; amd64

### `nuxeo:8` - linux; amd64

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

## `nuxeo:8.10`

```console
$ docker pull nuxeo@sha256:c70ed249ec0e60c3f992a6a08c3753fec91ee60ce6027f2cf5aa1ac127624606
```

-	Platforms:
	-	linux; amd64

### `nuxeo:8.10` - linux; amd64

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

## `nuxeo:8.3`

```console
$ docker pull nuxeo@sha256:90ab80c1c80183d78e40405d138773b922e3fc7ed71280f39e5919d79360f9c5
```

-	Platforms:
	-	linux; amd64

### `nuxeo:8.3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **741.7 MB (741727475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b32091ac70e20803eb0e93f372e06c4eaed2a01b7c572130c682dc88fc437be`
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
# Tue, 25 Apr 2017 11:43:40 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Tue, 25 Apr 2017 11:43:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 11:43:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 25 Apr 2017 11:45:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Wed, 26 Apr 2017 16:42:30 GMT
ENV NUXEO_VERSION=8.3
# Wed, 26 Apr 2017 16:42:30 GMT
ENV NUXEO_MD5=38eb8cd45625edef55cf20b07aa61131
# Wed, 26 Apr 2017 16:42:31 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 26 Apr 2017 16:42:42 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-server-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 26 Apr 2017 16:42:43 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Wed, 26 Apr 2017 16:42:44 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 16:42:45 GMT
WORKDIR /opt/nuxeo/server
# Wed, 26 Apr 2017 16:42:46 GMT
COPY file:5da17471392f8fd3f1caf32dd6e522033560eb878458af2e0f5905c60063c653 in / 
# Wed, 26 Apr 2017 16:42:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Apr 2017 16:42:47 GMT
EXPOSE 8080/tcp
# Wed, 26 Apr 2017 16:42:48 GMT
EXPOSE 8787/tcp
# Wed, 26 Apr 2017 16:42:48 GMT
CMD ["nuxeoctl" "console"]
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
	-	`sha256:52e31b47b62ebddccc58ba10cf4b9835d6f9a233406ca1d68b26a43408fa8e7a`  
		Last Modified: Tue, 25 Apr 2017 15:51:42 GMT  
		Size: 4.4 KB (4441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ecc64d05547760a18cdfcd5caa66d852a53bedb17d69a95e49bf7b7ad8ee8d9`  
		Last Modified: Tue, 25 Apr 2017 15:51:46 GMT  
		Size: 818.8 KB (818815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81189b6f119d8445fcb7fba8c18b2321dcf9d0a60e40162f33285c6b2bb99988`  
		Last Modified: Tue, 25 Apr 2017 15:52:18 GMT  
		Size: 201.7 MB (201731457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71f409ff8f72c7a1d3f1a9b2bec73fe9bdb4efb052adede1f306945a1c2c81b`  
		Last Modified: Wed, 26 Apr 2017 16:59:35 GMT  
		Size: 291.4 MB (291358487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffad14be3da99007bfbe007c21e415e3b7f1e786e16e7a667fe30eae654c826c`  
		Last Modified: Wed, 26 Apr 2017 16:59:12 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8f69c4cbec8e30fa1bef2bf61c73f0affdf5139808e8904ae9871265bffb3f`  
		Last Modified: Wed, 26 Apr 2017 16:59:12 GMT  
		Size: 1.5 KB (1515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:8.2`

```console
$ docker pull nuxeo@sha256:3fb6444276c3590d27cac376d41822609bc7824cef82e0ac04e70c5a957a509b
```

-	Platforms:
	-	linux; amd64

### `nuxeo:8.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **737.6 MB (737624676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8de214eb72ea4d2dcd1df371d71d70b424481d1510689d722d66cadc5a3e273`
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
# Tue, 25 Apr 2017 11:43:40 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Tue, 25 Apr 2017 11:43:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 11:43:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 25 Apr 2017 11:45:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Wed, 26 Apr 2017 16:43:06 GMT
ADD file:5b1e1c0e2f46775870771ff0fe5f35cfc79b01466b73da308fa4f546a1796610 in /etc/ImageMagick/policy.xml 
# Wed, 26 Apr 2017 16:43:07 GMT
ENV NUXEO_VERSION=8.2
# Wed, 26 Apr 2017 16:43:08 GMT
ENV NUXEO_MD5=13cbc55be36823bec99482c651c1cbc0
# Wed, 26 Apr 2017 16:43:08 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 26 Apr 2017 16:43:19 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-cap-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && sed -i "s/LAUNCHER_DEBUG /LAUNCHER_DEBUG -Djvmcheck=nofail /" $NUXEO_HOME/bin/nuxeoctl     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 26 Apr 2017 16:43:20 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Wed, 26 Apr 2017 16:43:21 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 16:43:22 GMT
WORKDIR /opt/nuxeo/server
# Wed, 26 Apr 2017 16:43:23 GMT
COPY file:8bb3b62221e76bd4e12692a864280db4c72e5d7140697cf199f5a098c781feff in / 
# Wed, 26 Apr 2017 16:43:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Apr 2017 16:43:24 GMT
EXPOSE 8080/tcp
# Wed, 26 Apr 2017 16:43:24 GMT
EXPOSE 8787/tcp
# Wed, 26 Apr 2017 16:43:25 GMT
CMD ["nuxeoctl" "console"]
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
	-	`sha256:52e31b47b62ebddccc58ba10cf4b9835d6f9a233406ca1d68b26a43408fa8e7a`  
		Last Modified: Tue, 25 Apr 2017 15:51:42 GMT  
		Size: 4.4 KB (4441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ecc64d05547760a18cdfcd5caa66d852a53bedb17d69a95e49bf7b7ad8ee8d9`  
		Last Modified: Tue, 25 Apr 2017 15:51:46 GMT  
		Size: 818.8 KB (818815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81189b6f119d8445fcb7fba8c18b2321dcf9d0a60e40162f33285c6b2bb99988`  
		Last Modified: Tue, 25 Apr 2017 15:52:18 GMT  
		Size: 201.7 MB (201731457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f88625af02ac0ef3ece10db13389f02612de236c69d07cfc526dc2f8ffe6be`  
		Last Modified: Wed, 26 Apr 2017 17:00:04 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e33cd70937c6d58b7a3c820570cfd3a68ea99f6361bfb6d64b86f30ddecda7`  
		Last Modified: Wed, 26 Apr 2017 17:00:25 GMT  
		Size: 287.3 MB (287255454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569aeee3b1a6154c10fade958368294b21082aaa366d923144c04c6d8efc45bb`  
		Last Modified: Wed, 26 Apr 2017 17:00:04 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1c475b7da193f6bc01a192cf133f176c5b61c9b66f2852434400e429e57193`  
		Last Modified: Wed, 26 Apr 2017 17:00:05 GMT  
		Size: 1.5 KB (1472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2015`

```console
$ docker pull nuxeo@sha256:f6ffd54431f68c5bb590db082c4824a28d748f1f76a976d2eeb74add20716f54
```

-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2015` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1011231044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63d158d94850b3e5d864f260b6a926807db1a1116fa5cd770acc1c2e3a932351`
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
# Wed, 26 Apr 2017 16:43:43 GMT
ARG NUXEO_VERSION=7.10
# Wed, 26 Apr 2017 16:43:43 GMT
ARG NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Wed, 26 Apr 2017 16:43:44 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Wed, 26 Apr 2017 16:43:54 GMT
# ARGS: NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 26 Apr 2017 16:44:01 GMT
# ARGS: NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Wed, 26 Apr 2017 16:44:03 GMT
# ARGS: NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 26 Apr 2017 16:44:05 GMT
# ARGS: NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 26 Apr 2017 16:44:06 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 16:44:07 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Wed, 26 Apr 2017 16:44:08 GMT
WORKDIR /opt/nuxeo/server
# Wed, 26 Apr 2017 16:44:09 GMT
COPY file:485ff0a6674b97f711e5be4a1ec900fc1002c363c00770d8b1c5809a76ccfc32 in / 
# Wed, 26 Apr 2017 16:44:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Apr 2017 16:44:10 GMT
EXPOSE 8080/tcp
# Wed, 26 Apr 2017 16:44:11 GMT
EXPOSE 8787/tcp
# Wed, 26 Apr 2017 16:44:12 GMT
CMD ["nuxeoctl" "console"]
# Wed, 26 Apr 2017 16:44:12 GMT
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
	-	`sha256:7f66a988d0c578d1ce649d06ed7d0404aa3301d95997deb861478147c9e5be4d`  
		Last Modified: Wed, 26 Apr 2017 17:01:16 GMT  
		Size: 280.5 MB (280457926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127a78868a7c12b14a4bfe6c57062d6aefe1ac738554eb22b4d4d4b336b9b5bf`  
		Last Modified: Wed, 26 Apr 2017 17:01:15 GMT  
		Size: 280.5 MB (280459849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19eed4dc9faa14aa640057c565317718a0593823edb52427e03080353dded3a7`  
		Last Modified: Wed, 26 Apr 2017 17:00:52 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2552dcab8d54d366a7b6059823413b70f4c181f0a5bcf9062ceb56ab02ac608`  
		Last Modified: Wed, 26 Apr 2017 17:00:52 GMT  
		Size: 763.1 KB (763118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4584aa08e5d89010c81926acaca911e4b3849e6eb8a667e60943380f5d87b49e`  
		Last Modified: Wed, 26 Apr 2017 17:00:51 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:7`

```console
$ docker pull nuxeo@sha256:f6ffd54431f68c5bb590db082c4824a28d748f1f76a976d2eeb74add20716f54
```

-	Platforms:
	-	linux; amd64

### `nuxeo:7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1011231044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63d158d94850b3e5d864f260b6a926807db1a1116fa5cd770acc1c2e3a932351`
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
# Wed, 26 Apr 2017 16:43:43 GMT
ARG NUXEO_VERSION=7.10
# Wed, 26 Apr 2017 16:43:43 GMT
ARG NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Wed, 26 Apr 2017 16:43:44 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Wed, 26 Apr 2017 16:43:54 GMT
# ARGS: NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 26 Apr 2017 16:44:01 GMT
# ARGS: NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Wed, 26 Apr 2017 16:44:03 GMT
# ARGS: NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 26 Apr 2017 16:44:05 GMT
# ARGS: NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 26 Apr 2017 16:44:06 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 16:44:07 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Wed, 26 Apr 2017 16:44:08 GMT
WORKDIR /opt/nuxeo/server
# Wed, 26 Apr 2017 16:44:09 GMT
COPY file:485ff0a6674b97f711e5be4a1ec900fc1002c363c00770d8b1c5809a76ccfc32 in / 
# Wed, 26 Apr 2017 16:44:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Apr 2017 16:44:10 GMT
EXPOSE 8080/tcp
# Wed, 26 Apr 2017 16:44:11 GMT
EXPOSE 8787/tcp
# Wed, 26 Apr 2017 16:44:12 GMT
CMD ["nuxeoctl" "console"]
# Wed, 26 Apr 2017 16:44:12 GMT
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
	-	`sha256:7f66a988d0c578d1ce649d06ed7d0404aa3301d95997deb861478147c9e5be4d`  
		Last Modified: Wed, 26 Apr 2017 17:01:16 GMT  
		Size: 280.5 MB (280457926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127a78868a7c12b14a4bfe6c57062d6aefe1ac738554eb22b4d4d4b336b9b5bf`  
		Last Modified: Wed, 26 Apr 2017 17:01:15 GMT  
		Size: 280.5 MB (280459849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19eed4dc9faa14aa640057c565317718a0593823edb52427e03080353dded3a7`  
		Last Modified: Wed, 26 Apr 2017 17:00:52 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2552dcab8d54d366a7b6059823413b70f4c181f0a5bcf9062ceb56ab02ac608`  
		Last Modified: Wed, 26 Apr 2017 17:00:52 GMT  
		Size: 763.1 KB (763118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4584aa08e5d89010c81926acaca911e4b3849e6eb8a667e60943380f5d87b49e`  
		Last Modified: Wed, 26 Apr 2017 17:00:51 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:7.10`

```console
$ docker pull nuxeo@sha256:f6ffd54431f68c5bb590db082c4824a28d748f1f76a976d2eeb74add20716f54
```

-	Platforms:
	-	linux; amd64

### `nuxeo:7.10` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1011231044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63d158d94850b3e5d864f260b6a926807db1a1116fa5cd770acc1c2e3a932351`
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
# Wed, 26 Apr 2017 16:43:43 GMT
ARG NUXEO_VERSION=7.10
# Wed, 26 Apr 2017 16:43:43 GMT
ARG NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Wed, 26 Apr 2017 16:43:44 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Wed, 26 Apr 2017 16:43:54 GMT
# ARGS: NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 26 Apr 2017 16:44:01 GMT
# ARGS: NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Wed, 26 Apr 2017 16:44:03 GMT
# ARGS: NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 26 Apr 2017 16:44:05 GMT
# ARGS: NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 26 Apr 2017 16:44:06 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 16:44:07 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Wed, 26 Apr 2017 16:44:08 GMT
WORKDIR /opt/nuxeo/server
# Wed, 26 Apr 2017 16:44:09 GMT
COPY file:485ff0a6674b97f711e5be4a1ec900fc1002c363c00770d8b1c5809a76ccfc32 in / 
# Wed, 26 Apr 2017 16:44:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Apr 2017 16:44:10 GMT
EXPOSE 8080/tcp
# Wed, 26 Apr 2017 16:44:11 GMT
EXPOSE 8787/tcp
# Wed, 26 Apr 2017 16:44:12 GMT
CMD ["nuxeoctl" "console"]
# Wed, 26 Apr 2017 16:44:12 GMT
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
	-	`sha256:7f66a988d0c578d1ce649d06ed7d0404aa3301d95997deb861478147c9e5be4d`  
		Last Modified: Wed, 26 Apr 2017 17:01:16 GMT  
		Size: 280.5 MB (280457926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127a78868a7c12b14a4bfe6c57062d6aefe1ac738554eb22b4d4d4b336b9b5bf`  
		Last Modified: Wed, 26 Apr 2017 17:01:15 GMT  
		Size: 280.5 MB (280459849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19eed4dc9faa14aa640057c565317718a0593823edb52427e03080353dded3a7`  
		Last Modified: Wed, 26 Apr 2017 17:00:52 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2552dcab8d54d366a7b6059823413b70f4c181f0a5bcf9062ceb56ab02ac608`  
		Last Modified: Wed, 26 Apr 2017 17:00:52 GMT  
		Size: 763.1 KB (763118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4584aa08e5d89010c81926acaca911e4b3849e6eb8a667e60943380f5d87b49e`  
		Last Modified: Wed, 26 Apr 2017 17:00:51 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2014`

```console
$ docker pull nuxeo@sha256:1ababd0dab2d9131f3f3c58b2e200c715681922fde7765160ba9d89de06f45f0
```

-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2014` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **824.7 MB (824705219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7570dfe4de4840994c9993eac680e03d0f440db1199282db6238246872d7c8`
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
# Wed, 26 Apr 2017 16:44:30 GMT
ARG NUXEO_VERSION=6.0
# Wed, 26 Apr 2017 16:44:31 GMT
ARG NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-6.0/nuxeo-cap-6.0-tomcat.zip
# Wed, 26 Apr 2017 16:44:32 GMT
ARG NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571
# Wed, 26 Apr 2017 16:44:39 GMT
# ARGS: NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-6.0/nuxeo-cap-6.0-tomcat.zip NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571 NUXEO_VERSION=6.0
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 26 Apr 2017 16:44:43 GMT
# ARGS: NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-6.0/nuxeo-cap-6.0-tomcat.zip NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571 NUXEO_VERSION=6.0
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Wed, 26 Apr 2017 16:44:45 GMT
# ARGS: NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-6.0/nuxeo-cap-6.0-tomcat.zip NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571 NUXEO_VERSION=6.0
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 26 Apr 2017 16:44:47 GMT
# ARGS: NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-6.0/nuxeo-cap-6.0-tomcat.zip NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571 NUXEO_VERSION=6.0
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 26 Apr 2017 16:44:47 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 16:44:49 GMT
WORKDIR /opt/nuxeo/server
# Wed, 26 Apr 2017 16:44:50 GMT
COPY file:101135855c0cb48cf3122d0785458808cc0e524a74926db6d2f37d23ac85aca2 in / 
# Wed, 26 Apr 2017 16:44:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Apr 2017 16:44:51 GMT
EXPOSE 8080/tcp
# Wed, 26 Apr 2017 16:44:52 GMT
EXPOSE 8787/tcp
# Wed, 26 Apr 2017 16:44:53 GMT
CMD ["nuxeoctl" "console"]
# Wed, 26 Apr 2017 16:44:53 GMT
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
	-	`sha256:c4e81d9a2d905e5dc7064daccd8a31a985a5a0fff5a6ab751642674b4fa4a05c`  
		Last Modified: Wed, 26 Apr 2017 17:02:54 GMT  
		Size: 187.2 MB (187195362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a58e2656cce3a499cc117b98ae97c330dfd992593aaa782f877b1e3b939269c`  
		Last Modified: Wed, 26 Apr 2017 17:02:58 GMT  
		Size: 187.2 MB (187196693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d06fc1c995556afae3aad3baac7ebe86223a06053d7324be7293d1607ba2f9`  
		Last Modified: Wed, 26 Apr 2017 17:02:44 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6a5ccc8ad84d6612f6020a59a7cc6e8ef8ac37483f28b8ead8ae74b8e53ad3`  
		Last Modified: Wed, 26 Apr 2017 17:02:43 GMT  
		Size: 763.1 KB (763119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb14f9b321c4d9e8f32a333d515c769c0063cacbb756b4d66ae5a0f80142b92`  
		Last Modified: Wed, 26 Apr 2017 17:02:43 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:6`

```console
$ docker pull nuxeo@sha256:1ababd0dab2d9131f3f3c58b2e200c715681922fde7765160ba9d89de06f45f0
```

-	Platforms:
	-	linux; amd64

### `nuxeo:6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **824.7 MB (824705219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7570dfe4de4840994c9993eac680e03d0f440db1199282db6238246872d7c8`
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
# Wed, 26 Apr 2017 16:44:30 GMT
ARG NUXEO_VERSION=6.0
# Wed, 26 Apr 2017 16:44:31 GMT
ARG NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-6.0/nuxeo-cap-6.0-tomcat.zip
# Wed, 26 Apr 2017 16:44:32 GMT
ARG NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571
# Wed, 26 Apr 2017 16:44:39 GMT
# ARGS: NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-6.0/nuxeo-cap-6.0-tomcat.zip NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571 NUXEO_VERSION=6.0
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 26 Apr 2017 16:44:43 GMT
# ARGS: NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-6.0/nuxeo-cap-6.0-tomcat.zip NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571 NUXEO_VERSION=6.0
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Wed, 26 Apr 2017 16:44:45 GMT
# ARGS: NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-6.0/nuxeo-cap-6.0-tomcat.zip NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571 NUXEO_VERSION=6.0
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 26 Apr 2017 16:44:47 GMT
# ARGS: NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-6.0/nuxeo-cap-6.0-tomcat.zip NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571 NUXEO_VERSION=6.0
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 26 Apr 2017 16:44:47 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 16:44:49 GMT
WORKDIR /opt/nuxeo/server
# Wed, 26 Apr 2017 16:44:50 GMT
COPY file:101135855c0cb48cf3122d0785458808cc0e524a74926db6d2f37d23ac85aca2 in / 
# Wed, 26 Apr 2017 16:44:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Apr 2017 16:44:51 GMT
EXPOSE 8080/tcp
# Wed, 26 Apr 2017 16:44:52 GMT
EXPOSE 8787/tcp
# Wed, 26 Apr 2017 16:44:53 GMT
CMD ["nuxeoctl" "console"]
# Wed, 26 Apr 2017 16:44:53 GMT
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
	-	`sha256:c4e81d9a2d905e5dc7064daccd8a31a985a5a0fff5a6ab751642674b4fa4a05c`  
		Last Modified: Wed, 26 Apr 2017 17:02:54 GMT  
		Size: 187.2 MB (187195362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a58e2656cce3a499cc117b98ae97c330dfd992593aaa782f877b1e3b939269c`  
		Last Modified: Wed, 26 Apr 2017 17:02:58 GMT  
		Size: 187.2 MB (187196693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d06fc1c995556afae3aad3baac7ebe86223a06053d7324be7293d1607ba2f9`  
		Last Modified: Wed, 26 Apr 2017 17:02:44 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6a5ccc8ad84d6612f6020a59a7cc6e8ef8ac37483f28b8ead8ae74b8e53ad3`  
		Last Modified: Wed, 26 Apr 2017 17:02:43 GMT  
		Size: 763.1 KB (763119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb14f9b321c4d9e8f32a333d515c769c0063cacbb756b4d66ae5a0f80142b92`  
		Last Modified: Wed, 26 Apr 2017 17:02:43 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:6.0`

```console
$ docker pull nuxeo@sha256:1ababd0dab2d9131f3f3c58b2e200c715681922fde7765160ba9d89de06f45f0
```

-	Platforms:
	-	linux; amd64

### `nuxeo:6.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **824.7 MB (824705219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7570dfe4de4840994c9993eac680e03d0f440db1199282db6238246872d7c8`
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
# Wed, 26 Apr 2017 16:44:30 GMT
ARG NUXEO_VERSION=6.0
# Wed, 26 Apr 2017 16:44:31 GMT
ARG NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-6.0/nuxeo-cap-6.0-tomcat.zip
# Wed, 26 Apr 2017 16:44:32 GMT
ARG NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571
# Wed, 26 Apr 2017 16:44:39 GMT
# ARGS: NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-6.0/nuxeo-cap-6.0-tomcat.zip NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571 NUXEO_VERSION=6.0
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 26 Apr 2017 16:44:43 GMT
# ARGS: NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-6.0/nuxeo-cap-6.0-tomcat.zip NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571 NUXEO_VERSION=6.0
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Wed, 26 Apr 2017 16:44:45 GMT
# ARGS: NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-6.0/nuxeo-cap-6.0-tomcat.zip NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571 NUXEO_VERSION=6.0
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 26 Apr 2017 16:44:47 GMT
# ARGS: NUXEO_DIST_URL=http://cdn.nuxeo.com/nuxeo-6.0/nuxeo-cap-6.0-tomcat.zip NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571 NUXEO_VERSION=6.0
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 26 Apr 2017 16:44:47 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 16:44:49 GMT
WORKDIR /opt/nuxeo/server
# Wed, 26 Apr 2017 16:44:50 GMT
COPY file:101135855c0cb48cf3122d0785458808cc0e524a74926db6d2f37d23ac85aca2 in / 
# Wed, 26 Apr 2017 16:44:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Apr 2017 16:44:51 GMT
EXPOSE 8080/tcp
# Wed, 26 Apr 2017 16:44:52 GMT
EXPOSE 8787/tcp
# Wed, 26 Apr 2017 16:44:53 GMT
CMD ["nuxeoctl" "console"]
# Wed, 26 Apr 2017 16:44:53 GMT
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
	-	`sha256:c4e81d9a2d905e5dc7064daccd8a31a985a5a0fff5a6ab751642674b4fa4a05c`  
		Last Modified: Wed, 26 Apr 2017 17:02:54 GMT  
		Size: 187.2 MB (187195362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a58e2656cce3a499cc117b98ae97c330dfd992593aaa782f877b1e3b939269c`  
		Last Modified: Wed, 26 Apr 2017 17:02:58 GMT  
		Size: 187.2 MB (187196693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d06fc1c995556afae3aad3baac7ebe86223a06053d7324be7293d1607ba2f9`  
		Last Modified: Wed, 26 Apr 2017 17:02:44 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6a5ccc8ad84d6612f6020a59a7cc6e8ef8ac37483f28b8ead8ae74b8e53ad3`  
		Last Modified: Wed, 26 Apr 2017 17:02:43 GMT  
		Size: 763.1 KB (763119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb14f9b321c4d9e8f32a333d515c769c0063cacbb756b4d66ae5a0f80142b92`  
		Last Modified: Wed, 26 Apr 2017 17:02:43 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
