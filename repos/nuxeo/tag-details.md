<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nuxeo`

-	[`nuxeo:latest`](#nuxeolatest)
-	[`nuxeo:LTS`](#nuxeolts)
-	[`nuxeo:LTS-2016`](#nuxeolts-2016)
-	[`nuxeo:8`](#nuxeo8)
-	[`nuxeo:8.10`](#nuxeo810)
-	[`nuxeo:FT`](#nuxeoft)
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
$ docker pull nuxeo@sha256:54c69d6c452a71df8a6ac4bc50f90874e7060ae54bd85252db97f48afab05c8f
```

-	Platforms:
	-	linux; amd64

### `nuxeo:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **711.3 MB (711292858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cef2ae64bac9a5ebc28f6edbd0494821b12467d9ca82b18475639f178bcf901f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:54:12 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:54:12 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:54:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:54:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:54:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Dec 2016 03:32:28 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 14 Dec 2016 03:32:29 GMT
ENV NUXEO_USER=nuxeo
# Wed, 14 Dec 2016 03:32:30 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Wed, 14 Dec 2016 03:32:30 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 14:01:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 14:02:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:02:47 GMT
ENV NUXEO_VERSION=8.10
# Wed, 14 Dec 2016 14:02:47 GMT
ENV NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Wed, 14 Dec 2016 14:02:47 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 14 Dec 2016 14:03:09 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-server-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 14 Dec 2016 14:03:10 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Wed, 14 Dec 2016 14:03:10 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 14:03:11 GMT
WORKDIR /opt/nuxeo/server
# Wed, 14 Dec 2016 14:03:11 GMT
COPY file:5cebeee78434ce067bd4b8b9c42eaa20349f1a252aaf628add51d12663b04917 in / 
# Wed, 14 Dec 2016 14:03:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 14:03:12 GMT
EXPOSE 8080/tcp
# Wed, 14 Dec 2016 14:03:12 GMT
EXPOSE 8787/tcp
# Wed, 14 Dec 2016 14:03:13 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6944bfb7182c4b1f546a4bcd888d00bdb92bb016bde7d243af3712549534d9`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 593.4 KB (593384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3521f2f45ed2f586ef5e6423f3dc3f4e36f7460007c2827b827131d2254ecc44`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2f0d9b5f90c348276759c85fae2d52adae563fad53786e8e99862eb3aeab90`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cedcf6d25273f360503909554028b54a92d914805ed9d834cbe31e8ebfeb923`  
		Last Modified: Wed, 14 Dec 2016 03:12:30 GMT  
		Size: 130.1 MB (130108711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f99da7583d58b782d9a4c14ef448bf6f6771e15a7975a2450111ed0a34b381`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 284.2 KB (284180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21ab7d84051bcfb6a8c0844dcbee32c36f0e2c7c231a4518a3e92c079e31376`  
		Last Modified: Wed, 14 Dec 2016 20:53:29 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ac55dab447f0675d1bee8660aa101f9c6fc20e1a83474248eb14ec5106078b`  
		Last Modified: Wed, 14 Dec 2016 20:53:27 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451d514ac41acb7bc176c58e033bc08e0277eb7fa6c5ed7c9b7685179e6a7e0b`  
		Last Modified: Wed, 14 Dec 2016 20:54:30 GMT  
		Size: 197.6 MB (197559482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725374343d4037da9354acab42d803035bc195b26a73dfed7ab4a1f51940e9f9`  
		Last Modified: Wed, 14 Dec 2016 20:54:52 GMT  
		Size: 269.5 MB (269537568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bdfcb06637e3c3aa8c30c24ec6150d23fb227f3cf3814c28564fd936889a968`  
		Last Modified: Wed, 14 Dec 2016 20:53:26 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c89b1fbaf8e64eb2d771d0184cbfa046c216ff3c817731ab3b85616596e81c30`  
		Last Modified: Wed, 14 Dec 2016 20:53:26 GMT  
		Size: 1.5 KB (1518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS`

```console
$ docker pull nuxeo@sha256:54c69d6c452a71df8a6ac4bc50f90874e7060ae54bd85252db97f48afab05c8f
```

-	Platforms:
	-	linux; amd64

### `nuxeo:LTS` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **711.3 MB (711292858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cef2ae64bac9a5ebc28f6edbd0494821b12467d9ca82b18475639f178bcf901f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:54:12 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:54:12 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:54:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:54:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:54:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Dec 2016 03:32:28 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 14 Dec 2016 03:32:29 GMT
ENV NUXEO_USER=nuxeo
# Wed, 14 Dec 2016 03:32:30 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Wed, 14 Dec 2016 03:32:30 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 14:01:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 14:02:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:02:47 GMT
ENV NUXEO_VERSION=8.10
# Wed, 14 Dec 2016 14:02:47 GMT
ENV NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Wed, 14 Dec 2016 14:02:47 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 14 Dec 2016 14:03:09 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-server-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 14 Dec 2016 14:03:10 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Wed, 14 Dec 2016 14:03:10 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 14:03:11 GMT
WORKDIR /opt/nuxeo/server
# Wed, 14 Dec 2016 14:03:11 GMT
COPY file:5cebeee78434ce067bd4b8b9c42eaa20349f1a252aaf628add51d12663b04917 in / 
# Wed, 14 Dec 2016 14:03:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 14:03:12 GMT
EXPOSE 8080/tcp
# Wed, 14 Dec 2016 14:03:12 GMT
EXPOSE 8787/tcp
# Wed, 14 Dec 2016 14:03:13 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6944bfb7182c4b1f546a4bcd888d00bdb92bb016bde7d243af3712549534d9`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 593.4 KB (593384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3521f2f45ed2f586ef5e6423f3dc3f4e36f7460007c2827b827131d2254ecc44`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2f0d9b5f90c348276759c85fae2d52adae563fad53786e8e99862eb3aeab90`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cedcf6d25273f360503909554028b54a92d914805ed9d834cbe31e8ebfeb923`  
		Last Modified: Wed, 14 Dec 2016 03:12:30 GMT  
		Size: 130.1 MB (130108711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f99da7583d58b782d9a4c14ef448bf6f6771e15a7975a2450111ed0a34b381`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 284.2 KB (284180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21ab7d84051bcfb6a8c0844dcbee32c36f0e2c7c231a4518a3e92c079e31376`  
		Last Modified: Wed, 14 Dec 2016 20:53:29 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ac55dab447f0675d1bee8660aa101f9c6fc20e1a83474248eb14ec5106078b`  
		Last Modified: Wed, 14 Dec 2016 20:53:27 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451d514ac41acb7bc176c58e033bc08e0277eb7fa6c5ed7c9b7685179e6a7e0b`  
		Last Modified: Wed, 14 Dec 2016 20:54:30 GMT  
		Size: 197.6 MB (197559482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725374343d4037da9354acab42d803035bc195b26a73dfed7ab4a1f51940e9f9`  
		Last Modified: Wed, 14 Dec 2016 20:54:52 GMT  
		Size: 269.5 MB (269537568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bdfcb06637e3c3aa8c30c24ec6150d23fb227f3cf3814c28564fd936889a968`  
		Last Modified: Wed, 14 Dec 2016 20:53:26 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c89b1fbaf8e64eb2d771d0184cbfa046c216ff3c817731ab3b85616596e81c30`  
		Last Modified: Wed, 14 Dec 2016 20:53:26 GMT  
		Size: 1.5 KB (1518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2016`

```console
$ docker pull nuxeo@sha256:54c69d6c452a71df8a6ac4bc50f90874e7060ae54bd85252db97f48afab05c8f
```

-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2016` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **711.3 MB (711292858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cef2ae64bac9a5ebc28f6edbd0494821b12467d9ca82b18475639f178bcf901f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:54:12 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:54:12 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:54:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:54:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:54:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Dec 2016 03:32:28 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 14 Dec 2016 03:32:29 GMT
ENV NUXEO_USER=nuxeo
# Wed, 14 Dec 2016 03:32:30 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Wed, 14 Dec 2016 03:32:30 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 14:01:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 14:02:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:02:47 GMT
ENV NUXEO_VERSION=8.10
# Wed, 14 Dec 2016 14:02:47 GMT
ENV NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Wed, 14 Dec 2016 14:02:47 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 14 Dec 2016 14:03:09 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-server-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 14 Dec 2016 14:03:10 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Wed, 14 Dec 2016 14:03:10 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 14:03:11 GMT
WORKDIR /opt/nuxeo/server
# Wed, 14 Dec 2016 14:03:11 GMT
COPY file:5cebeee78434ce067bd4b8b9c42eaa20349f1a252aaf628add51d12663b04917 in / 
# Wed, 14 Dec 2016 14:03:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 14:03:12 GMT
EXPOSE 8080/tcp
# Wed, 14 Dec 2016 14:03:12 GMT
EXPOSE 8787/tcp
# Wed, 14 Dec 2016 14:03:13 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6944bfb7182c4b1f546a4bcd888d00bdb92bb016bde7d243af3712549534d9`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 593.4 KB (593384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3521f2f45ed2f586ef5e6423f3dc3f4e36f7460007c2827b827131d2254ecc44`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2f0d9b5f90c348276759c85fae2d52adae563fad53786e8e99862eb3aeab90`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cedcf6d25273f360503909554028b54a92d914805ed9d834cbe31e8ebfeb923`  
		Last Modified: Wed, 14 Dec 2016 03:12:30 GMT  
		Size: 130.1 MB (130108711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f99da7583d58b782d9a4c14ef448bf6f6771e15a7975a2450111ed0a34b381`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 284.2 KB (284180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21ab7d84051bcfb6a8c0844dcbee32c36f0e2c7c231a4518a3e92c079e31376`  
		Last Modified: Wed, 14 Dec 2016 20:53:29 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ac55dab447f0675d1bee8660aa101f9c6fc20e1a83474248eb14ec5106078b`  
		Last Modified: Wed, 14 Dec 2016 20:53:27 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451d514ac41acb7bc176c58e033bc08e0277eb7fa6c5ed7c9b7685179e6a7e0b`  
		Last Modified: Wed, 14 Dec 2016 20:54:30 GMT  
		Size: 197.6 MB (197559482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725374343d4037da9354acab42d803035bc195b26a73dfed7ab4a1f51940e9f9`  
		Last Modified: Wed, 14 Dec 2016 20:54:52 GMT  
		Size: 269.5 MB (269537568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bdfcb06637e3c3aa8c30c24ec6150d23fb227f3cf3814c28564fd936889a968`  
		Last Modified: Wed, 14 Dec 2016 20:53:26 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c89b1fbaf8e64eb2d771d0184cbfa046c216ff3c817731ab3b85616596e81c30`  
		Last Modified: Wed, 14 Dec 2016 20:53:26 GMT  
		Size: 1.5 KB (1518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:8`

```console
$ docker pull nuxeo@sha256:54c69d6c452a71df8a6ac4bc50f90874e7060ae54bd85252db97f48afab05c8f
```

-	Platforms:
	-	linux; amd64

### `nuxeo:8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **711.3 MB (711292858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cef2ae64bac9a5ebc28f6edbd0494821b12467d9ca82b18475639f178bcf901f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:54:12 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:54:12 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:54:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:54:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:54:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Dec 2016 03:32:28 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 14 Dec 2016 03:32:29 GMT
ENV NUXEO_USER=nuxeo
# Wed, 14 Dec 2016 03:32:30 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Wed, 14 Dec 2016 03:32:30 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 14:01:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 14:02:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:02:47 GMT
ENV NUXEO_VERSION=8.10
# Wed, 14 Dec 2016 14:02:47 GMT
ENV NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Wed, 14 Dec 2016 14:02:47 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 14 Dec 2016 14:03:09 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-server-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 14 Dec 2016 14:03:10 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Wed, 14 Dec 2016 14:03:10 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 14:03:11 GMT
WORKDIR /opt/nuxeo/server
# Wed, 14 Dec 2016 14:03:11 GMT
COPY file:5cebeee78434ce067bd4b8b9c42eaa20349f1a252aaf628add51d12663b04917 in / 
# Wed, 14 Dec 2016 14:03:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 14:03:12 GMT
EXPOSE 8080/tcp
# Wed, 14 Dec 2016 14:03:12 GMT
EXPOSE 8787/tcp
# Wed, 14 Dec 2016 14:03:13 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6944bfb7182c4b1f546a4bcd888d00bdb92bb016bde7d243af3712549534d9`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 593.4 KB (593384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3521f2f45ed2f586ef5e6423f3dc3f4e36f7460007c2827b827131d2254ecc44`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2f0d9b5f90c348276759c85fae2d52adae563fad53786e8e99862eb3aeab90`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cedcf6d25273f360503909554028b54a92d914805ed9d834cbe31e8ebfeb923`  
		Last Modified: Wed, 14 Dec 2016 03:12:30 GMT  
		Size: 130.1 MB (130108711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f99da7583d58b782d9a4c14ef448bf6f6771e15a7975a2450111ed0a34b381`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 284.2 KB (284180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21ab7d84051bcfb6a8c0844dcbee32c36f0e2c7c231a4518a3e92c079e31376`  
		Last Modified: Wed, 14 Dec 2016 20:53:29 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ac55dab447f0675d1bee8660aa101f9c6fc20e1a83474248eb14ec5106078b`  
		Last Modified: Wed, 14 Dec 2016 20:53:27 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451d514ac41acb7bc176c58e033bc08e0277eb7fa6c5ed7c9b7685179e6a7e0b`  
		Last Modified: Wed, 14 Dec 2016 20:54:30 GMT  
		Size: 197.6 MB (197559482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725374343d4037da9354acab42d803035bc195b26a73dfed7ab4a1f51940e9f9`  
		Last Modified: Wed, 14 Dec 2016 20:54:52 GMT  
		Size: 269.5 MB (269537568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bdfcb06637e3c3aa8c30c24ec6150d23fb227f3cf3814c28564fd936889a968`  
		Last Modified: Wed, 14 Dec 2016 20:53:26 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c89b1fbaf8e64eb2d771d0184cbfa046c216ff3c817731ab3b85616596e81c30`  
		Last Modified: Wed, 14 Dec 2016 20:53:26 GMT  
		Size: 1.5 KB (1518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:8.10`

```console
$ docker pull nuxeo@sha256:54c69d6c452a71df8a6ac4bc50f90874e7060ae54bd85252db97f48afab05c8f
```

-	Platforms:
	-	linux; amd64

### `nuxeo:8.10` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **711.3 MB (711292858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cef2ae64bac9a5ebc28f6edbd0494821b12467d9ca82b18475639f178bcf901f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:54:12 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:54:12 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:54:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:54:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:54:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Dec 2016 03:32:28 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 14 Dec 2016 03:32:29 GMT
ENV NUXEO_USER=nuxeo
# Wed, 14 Dec 2016 03:32:30 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Wed, 14 Dec 2016 03:32:30 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 14:01:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 14:02:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:02:47 GMT
ENV NUXEO_VERSION=8.10
# Wed, 14 Dec 2016 14:02:47 GMT
ENV NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Wed, 14 Dec 2016 14:02:47 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 14 Dec 2016 14:03:09 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-server-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 14 Dec 2016 14:03:10 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Wed, 14 Dec 2016 14:03:10 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 14:03:11 GMT
WORKDIR /opt/nuxeo/server
# Wed, 14 Dec 2016 14:03:11 GMT
COPY file:5cebeee78434ce067bd4b8b9c42eaa20349f1a252aaf628add51d12663b04917 in / 
# Wed, 14 Dec 2016 14:03:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 14:03:12 GMT
EXPOSE 8080/tcp
# Wed, 14 Dec 2016 14:03:12 GMT
EXPOSE 8787/tcp
# Wed, 14 Dec 2016 14:03:13 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6944bfb7182c4b1f546a4bcd888d00bdb92bb016bde7d243af3712549534d9`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 593.4 KB (593384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3521f2f45ed2f586ef5e6423f3dc3f4e36f7460007c2827b827131d2254ecc44`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2f0d9b5f90c348276759c85fae2d52adae563fad53786e8e99862eb3aeab90`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cedcf6d25273f360503909554028b54a92d914805ed9d834cbe31e8ebfeb923`  
		Last Modified: Wed, 14 Dec 2016 03:12:30 GMT  
		Size: 130.1 MB (130108711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f99da7583d58b782d9a4c14ef448bf6f6771e15a7975a2450111ed0a34b381`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 284.2 KB (284180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21ab7d84051bcfb6a8c0844dcbee32c36f0e2c7c231a4518a3e92c079e31376`  
		Last Modified: Wed, 14 Dec 2016 20:53:29 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ac55dab447f0675d1bee8660aa101f9c6fc20e1a83474248eb14ec5106078b`  
		Last Modified: Wed, 14 Dec 2016 20:53:27 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451d514ac41acb7bc176c58e033bc08e0277eb7fa6c5ed7c9b7685179e6a7e0b`  
		Last Modified: Wed, 14 Dec 2016 20:54:30 GMT  
		Size: 197.6 MB (197559482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725374343d4037da9354acab42d803035bc195b26a73dfed7ab4a1f51940e9f9`  
		Last Modified: Wed, 14 Dec 2016 20:54:52 GMT  
		Size: 269.5 MB (269537568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bdfcb06637e3c3aa8c30c24ec6150d23fb227f3cf3814c28564fd936889a968`  
		Last Modified: Wed, 14 Dec 2016 20:53:26 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c89b1fbaf8e64eb2d771d0184cbfa046c216ff3c817731ab3b85616596e81c30`  
		Last Modified: Wed, 14 Dec 2016 20:53:26 GMT  
		Size: 1.5 KB (1518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:FT`

```console
$ docker pull nuxeo@sha256:54c69d6c452a71df8a6ac4bc50f90874e7060ae54bd85252db97f48afab05c8f
```

-	Platforms:
	-	linux; amd64

### `nuxeo:FT` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **711.3 MB (711292858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cef2ae64bac9a5ebc28f6edbd0494821b12467d9ca82b18475639f178bcf901f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:54:12 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:54:12 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:54:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:54:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:54:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Dec 2016 03:32:28 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 14 Dec 2016 03:32:29 GMT
ENV NUXEO_USER=nuxeo
# Wed, 14 Dec 2016 03:32:30 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Wed, 14 Dec 2016 03:32:30 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 14:01:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 14:02:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:02:47 GMT
ENV NUXEO_VERSION=8.10
# Wed, 14 Dec 2016 14:02:47 GMT
ENV NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Wed, 14 Dec 2016 14:02:47 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 14 Dec 2016 14:03:09 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-server-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 14 Dec 2016 14:03:10 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Wed, 14 Dec 2016 14:03:10 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 14:03:11 GMT
WORKDIR /opt/nuxeo/server
# Wed, 14 Dec 2016 14:03:11 GMT
COPY file:5cebeee78434ce067bd4b8b9c42eaa20349f1a252aaf628add51d12663b04917 in / 
# Wed, 14 Dec 2016 14:03:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 14:03:12 GMT
EXPOSE 8080/tcp
# Wed, 14 Dec 2016 14:03:12 GMT
EXPOSE 8787/tcp
# Wed, 14 Dec 2016 14:03:13 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6944bfb7182c4b1f546a4bcd888d00bdb92bb016bde7d243af3712549534d9`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 593.4 KB (593384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3521f2f45ed2f586ef5e6423f3dc3f4e36f7460007c2827b827131d2254ecc44`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2f0d9b5f90c348276759c85fae2d52adae563fad53786e8e99862eb3aeab90`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cedcf6d25273f360503909554028b54a92d914805ed9d834cbe31e8ebfeb923`  
		Last Modified: Wed, 14 Dec 2016 03:12:30 GMT  
		Size: 130.1 MB (130108711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f99da7583d58b782d9a4c14ef448bf6f6771e15a7975a2450111ed0a34b381`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 284.2 KB (284180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21ab7d84051bcfb6a8c0844dcbee32c36f0e2c7c231a4518a3e92c079e31376`  
		Last Modified: Wed, 14 Dec 2016 20:53:29 GMT  
		Size: 4.4 KB (4400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ac55dab447f0675d1bee8660aa101f9c6fc20e1a83474248eb14ec5106078b`  
		Last Modified: Wed, 14 Dec 2016 20:53:27 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451d514ac41acb7bc176c58e033bc08e0277eb7fa6c5ed7c9b7685179e6a7e0b`  
		Last Modified: Wed, 14 Dec 2016 20:54:30 GMT  
		Size: 197.6 MB (197559482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725374343d4037da9354acab42d803035bc195b26a73dfed7ab4a1f51940e9f9`  
		Last Modified: Wed, 14 Dec 2016 20:54:52 GMT  
		Size: 269.5 MB (269537568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bdfcb06637e3c3aa8c30c24ec6150d23fb227f3cf3814c28564fd936889a968`  
		Last Modified: Wed, 14 Dec 2016 20:53:26 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c89b1fbaf8e64eb2d771d0184cbfa046c216ff3c817731ab3b85616596e81c30`  
		Last Modified: Wed, 14 Dec 2016 20:53:26 GMT  
		Size: 1.5 KB (1518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:8.3`

```console
$ docker pull nuxeo@sha256:21e6d3432ddf9ee5d78840d017831151fb57bb8001de513c062d1ae88e0e33b1
```

-	Platforms:
	-	linux; amd64

### `nuxeo:8.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **648.0 MB (648002068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04374485050cb3de182145dac228505cac864138c96a4dea9f09c2977bde02c7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Dec 2016 14:03:13 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 14 Dec 2016 14:03:14 GMT
ENV NUXEO_USER=nuxeo
# Wed, 14 Dec 2016 14:03:15 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Wed, 14 Dec 2016 14:03:15 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 14:03:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 14:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:04:32 GMT
ENV NUXEO_VERSION=8.3
# Wed, 14 Dec 2016 20:52:52 GMT
ENV NUXEO_MD5=38eb8cd45625edef55cf20b07aa61131
# Wed, 14 Dec 2016 20:52:53 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 14 Dec 2016 20:53:06 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-server-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 14 Dec 2016 20:53:07 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Wed, 14 Dec 2016 20:53:08 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 20:53:08 GMT
WORKDIR /opt/nuxeo/server
# Wed, 14 Dec 2016 20:53:09 GMT
COPY file:5da17471392f8fd3f1caf32dd6e522033560eb878458af2e0f5905c60063c653 in / 
# Wed, 14 Dec 2016 20:53:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 20:53:09 GMT
EXPOSE 8080/tcp
# Wed, 14 Dec 2016 20:53:10 GMT
EXPOSE 8787/tcp
# Wed, 14 Dec 2016 20:53:10 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69da6219ca566dd46e06bbb11812d66421f153acaa5dd5319e6e79b045957a1b`  
		Last Modified: Wed, 14 Dec 2016 20:56:34 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b4b6cf86d0b50216de7ee9f5a399b73991c8a96e510d68f09eead06ae1d05b`  
		Last Modified: Wed, 14 Dec 2016 20:56:32 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21cfc51a6c3cd40c47ab806eb3ab6448c38b6ce82be6dd41c4fb28799fa043c3`  
		Last Modified: Wed, 14 Dec 2016 20:57:44 GMT  
		Size: 231.7 MB (231734748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a28b9b4f9740e508cfa28fd48af44de13d9625ddab5c19ed107daf5615799e9`  
		Last Modified: Wed, 14 Dec 2016 20:56:53 GMT  
		Size: 291.3 MB (291257807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf1a8e89c838e028bbdbb642fece74b6c839eb9493a0798029e678c7a396a3c`  
		Last Modified: Wed, 14 Dec 2016 20:56:32 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9216c0b5847388f6c54c43e6e6c3554b40971fa40fec5472d4fb3213dc438cb`  
		Last Modified: Wed, 14 Dec 2016 20:56:33 GMT  
		Size: 1.5 KB (1521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:8.2`

```console
$ docker pull nuxeo@sha256:450f5931dc8ee31f6b410a664ecbc72ea0fb413ee7931306fbf43a67b048c1ff
```

-	Platforms:
	-	linux; amd64

### `nuxeo:8.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **643.9 MB (643892450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c3254057bfabfdf5f68966d5afce93cfaee78a3a9c9dadd4e0d50fe65ecc7e4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Dec 2016 14:03:13 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 14 Dec 2016 14:03:14 GMT
ENV NUXEO_USER=nuxeo
# Wed, 14 Dec 2016 14:03:15 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Wed, 14 Dec 2016 14:03:15 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 14:03:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 14:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 17:11:46 GMT
ADD file:5b1e1c0e2f46775870771ff0fe5f35cfc79b01466b73da308fa4f546a1796610 in /etc/ImageMagick/policy.xml 
# Wed, 14 Dec 2016 17:12:38 GMT
ENV NUXEO_VERSION=8.2
# Wed, 14 Dec 2016 17:12:39 GMT
ENV NUXEO_MD5=13cbc55be36823bec99482c651c1cbc0
# Wed, 14 Dec 2016 17:12:40 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 14 Dec 2016 17:13:08 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-cap-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && sed -i "s/LAUNCHER_DEBUG /LAUNCHER_DEBUG -Djvmcheck=nofail /" $NUXEO_HOME/bin/nuxeoctl     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 14 Dec 2016 17:13:09 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Wed, 14 Dec 2016 17:13:09 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:13:09 GMT
WORKDIR /opt/nuxeo/server
# Wed, 14 Dec 2016 17:13:10 GMT
COPY file:8bb3b62221e76bd4e12692a864280db4c72e5d7140697cf199f5a098c781feff in / 
# Wed, 14 Dec 2016 17:13:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 17:13:10 GMT
EXPOSE 8080/tcp
# Wed, 14 Dec 2016 17:13:11 GMT
EXPOSE 8787/tcp
# Wed, 14 Dec 2016 17:13:11 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69da6219ca566dd46e06bbb11812d66421f153acaa5dd5319e6e79b045957a1b`  
		Last Modified: Wed, 14 Dec 2016 20:56:34 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b4b6cf86d0b50216de7ee9f5a399b73991c8a96e510d68f09eead06ae1d05b`  
		Last Modified: Wed, 14 Dec 2016 20:56:32 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21cfc51a6c3cd40c47ab806eb3ab6448c38b6ce82be6dd41c4fb28799fa043c3`  
		Last Modified: Wed, 14 Dec 2016 20:57:44 GMT  
		Size: 231.7 MB (231734748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12507a1d434b65154662522ed118333f424864bff7be8c408eac63987abbe242`  
		Last Modified: Wed, 14 Dec 2016 20:58:10 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e5838e3d31e4a51df4dfc562832d859ce9693a2576eb34fefe8f87bf9754078`  
		Last Modified: Wed, 14 Dec 2016 20:58:35 GMT  
		Size: 287.1 MB (287147955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e6fa2cbb0cdd9f1ccebf5e69073be369a7c0d7721a828e94dda672c2396a26`  
		Last Modified: Wed, 14 Dec 2016 20:58:09 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb92e6fc7ba6492fd148fcbc4483cdaed3032a9e8f582e6f52e3f7a22701e49`  
		Last Modified: Wed, 14 Dec 2016 20:58:08 GMT  
		Size: 1.5 KB (1478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2015`

```console
$ docker pull nuxeo@sha256:03c03009c0e04ef908311fa3a8284e7f00f069ff9d820b83cd153e3b3b1dd569
```

-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2015` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.1 MB (637088967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88e5e1a6a3a988322b8900e3832dd35039833202b27f1a8ba1d9e91aab182f69`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Dec 2016 14:03:13 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 14 Dec 2016 14:03:14 GMT
ENV NUXEO_USER=nuxeo
# Wed, 14 Dec 2016 14:03:15 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Wed, 14 Dec 2016 14:03:15 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 14:03:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 14:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 17:11:46 GMT
ADD file:5b1e1c0e2f46775870771ff0fe5f35cfc79b01466b73da308fa4f546a1796610 in /etc/ImageMagick/policy.xml 
# Wed, 14 Dec 2016 17:12:07 GMT
ENV NUXEO_VERSION=7.10
# Wed, 14 Dec 2016 17:12:07 GMT
ENV NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Wed, 14 Dec 2016 17:12:08 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 14 Dec 2016 17:12:34 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-cap-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && sed -i "s/LAUNCHER_DEBUG /LAUNCHER_DEBUG -Djvmcheck=nofail /" $NUXEO_HOME/bin/nuxeoctl     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 14 Dec 2016 17:12:35 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Wed, 14 Dec 2016 17:12:36 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:12:36 GMT
WORKDIR /opt/nuxeo/server
# Wed, 14 Dec 2016 17:12:36 GMT
COPY file:5cebeee78434ce067bd4b8b9c42eaa20349f1a252aaf628add51d12663b04917 in / 
# Wed, 14 Dec 2016 17:12:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 17:12:37 GMT
EXPOSE 8080/tcp
# Wed, 14 Dec 2016 17:12:37 GMT
EXPOSE 8787/tcp
# Wed, 14 Dec 2016 17:12:37 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69da6219ca566dd46e06bbb11812d66421f153acaa5dd5319e6e79b045957a1b`  
		Last Modified: Wed, 14 Dec 2016 20:56:34 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b4b6cf86d0b50216de7ee9f5a399b73991c8a96e510d68f09eead06ae1d05b`  
		Last Modified: Wed, 14 Dec 2016 20:56:32 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21cfc51a6c3cd40c47ab806eb3ab6448c38b6ce82be6dd41c4fb28799fa043c3`  
		Last Modified: Wed, 14 Dec 2016 20:57:44 GMT  
		Size: 231.7 MB (231734748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12507a1d434b65154662522ed118333f424864bff7be8c408eac63987abbe242`  
		Last Modified: Wed, 14 Dec 2016 20:58:10 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3e1daea43d5d532eeb5e5ece35841fb964a040b9a235d8becef15a456bd8bc`  
		Last Modified: Wed, 14 Dec 2016 20:59:26 GMT  
		Size: 280.3 MB (280344430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237eb7fe2e025f6f5d7b423af18d5724cd004a111f4969af0a958b494d50e453`  
		Last Modified: Wed, 14 Dec 2016 20:59:01 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535efd3e91b8f1c01edfe1c361c6e60c64d95f11c8ac8a34fc02bf33f77a73a1`  
		Last Modified: Wed, 14 Dec 2016 20:59:03 GMT  
		Size: 1.5 KB (1520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:7`

```console
$ docker pull nuxeo@sha256:03c03009c0e04ef908311fa3a8284e7f00f069ff9d820b83cd153e3b3b1dd569
```

-	Platforms:
	-	linux; amd64

### `nuxeo:7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.1 MB (637088967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88e5e1a6a3a988322b8900e3832dd35039833202b27f1a8ba1d9e91aab182f69`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Dec 2016 14:03:13 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 14 Dec 2016 14:03:14 GMT
ENV NUXEO_USER=nuxeo
# Wed, 14 Dec 2016 14:03:15 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Wed, 14 Dec 2016 14:03:15 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 14:03:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 14:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 17:11:46 GMT
ADD file:5b1e1c0e2f46775870771ff0fe5f35cfc79b01466b73da308fa4f546a1796610 in /etc/ImageMagick/policy.xml 
# Wed, 14 Dec 2016 17:12:07 GMT
ENV NUXEO_VERSION=7.10
# Wed, 14 Dec 2016 17:12:07 GMT
ENV NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Wed, 14 Dec 2016 17:12:08 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 14 Dec 2016 17:12:34 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-cap-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && sed -i "s/LAUNCHER_DEBUG /LAUNCHER_DEBUG -Djvmcheck=nofail /" $NUXEO_HOME/bin/nuxeoctl     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 14 Dec 2016 17:12:35 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Wed, 14 Dec 2016 17:12:36 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:12:36 GMT
WORKDIR /opt/nuxeo/server
# Wed, 14 Dec 2016 17:12:36 GMT
COPY file:5cebeee78434ce067bd4b8b9c42eaa20349f1a252aaf628add51d12663b04917 in / 
# Wed, 14 Dec 2016 17:12:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 17:12:37 GMT
EXPOSE 8080/tcp
# Wed, 14 Dec 2016 17:12:37 GMT
EXPOSE 8787/tcp
# Wed, 14 Dec 2016 17:12:37 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69da6219ca566dd46e06bbb11812d66421f153acaa5dd5319e6e79b045957a1b`  
		Last Modified: Wed, 14 Dec 2016 20:56:34 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b4b6cf86d0b50216de7ee9f5a399b73991c8a96e510d68f09eead06ae1d05b`  
		Last Modified: Wed, 14 Dec 2016 20:56:32 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21cfc51a6c3cd40c47ab806eb3ab6448c38b6ce82be6dd41c4fb28799fa043c3`  
		Last Modified: Wed, 14 Dec 2016 20:57:44 GMT  
		Size: 231.7 MB (231734748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12507a1d434b65154662522ed118333f424864bff7be8c408eac63987abbe242`  
		Last Modified: Wed, 14 Dec 2016 20:58:10 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3e1daea43d5d532eeb5e5ece35841fb964a040b9a235d8becef15a456bd8bc`  
		Last Modified: Wed, 14 Dec 2016 20:59:26 GMT  
		Size: 280.3 MB (280344430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237eb7fe2e025f6f5d7b423af18d5724cd004a111f4969af0a958b494d50e453`  
		Last Modified: Wed, 14 Dec 2016 20:59:01 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535efd3e91b8f1c01edfe1c361c6e60c64d95f11c8ac8a34fc02bf33f77a73a1`  
		Last Modified: Wed, 14 Dec 2016 20:59:03 GMT  
		Size: 1.5 KB (1520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:7.10`

```console
$ docker pull nuxeo@sha256:03c03009c0e04ef908311fa3a8284e7f00f069ff9d820b83cd153e3b3b1dd569
```

-	Platforms:
	-	linux; amd64

### `nuxeo:7.10` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.1 MB (637088967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88e5e1a6a3a988322b8900e3832dd35039833202b27f1a8ba1d9e91aab182f69`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Dec 2016 14:03:13 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 14 Dec 2016 14:03:14 GMT
ENV NUXEO_USER=nuxeo
# Wed, 14 Dec 2016 14:03:15 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Wed, 14 Dec 2016 14:03:15 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 14:03:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 14:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 17:11:46 GMT
ADD file:5b1e1c0e2f46775870771ff0fe5f35cfc79b01466b73da308fa4f546a1796610 in /etc/ImageMagick/policy.xml 
# Wed, 14 Dec 2016 17:12:07 GMT
ENV NUXEO_VERSION=7.10
# Wed, 14 Dec 2016 17:12:07 GMT
ENV NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Wed, 14 Dec 2016 17:12:08 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 14 Dec 2016 17:12:34 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-cap-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && sed -i "s/LAUNCHER_DEBUG /LAUNCHER_DEBUG -Djvmcheck=nofail /" $NUXEO_HOME/bin/nuxeoctl     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 14 Dec 2016 17:12:35 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Wed, 14 Dec 2016 17:12:36 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:12:36 GMT
WORKDIR /opt/nuxeo/server
# Wed, 14 Dec 2016 17:12:36 GMT
COPY file:5cebeee78434ce067bd4b8b9c42eaa20349f1a252aaf628add51d12663b04917 in / 
# Wed, 14 Dec 2016 17:12:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 17:12:37 GMT
EXPOSE 8080/tcp
# Wed, 14 Dec 2016 17:12:37 GMT
EXPOSE 8787/tcp
# Wed, 14 Dec 2016 17:12:37 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69da6219ca566dd46e06bbb11812d66421f153acaa5dd5319e6e79b045957a1b`  
		Last Modified: Wed, 14 Dec 2016 20:56:34 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b4b6cf86d0b50216de7ee9f5a399b73991c8a96e510d68f09eead06ae1d05b`  
		Last Modified: Wed, 14 Dec 2016 20:56:32 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21cfc51a6c3cd40c47ab806eb3ab6448c38b6ce82be6dd41c4fb28799fa043c3`  
		Last Modified: Wed, 14 Dec 2016 20:57:44 GMT  
		Size: 231.7 MB (231734748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12507a1d434b65154662522ed118333f424864bff7be8c408eac63987abbe242`  
		Last Modified: Wed, 14 Dec 2016 20:58:10 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3e1daea43d5d532eeb5e5ece35841fb964a040b9a235d8becef15a456bd8bc`  
		Last Modified: Wed, 14 Dec 2016 20:59:26 GMT  
		Size: 280.3 MB (280344430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237eb7fe2e025f6f5d7b423af18d5724cd004a111f4969af0a958b494d50e453`  
		Last Modified: Wed, 14 Dec 2016 20:59:01 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535efd3e91b8f1c01edfe1c361c6e60c64d95f11c8ac8a34fc02bf33f77a73a1`  
		Last Modified: Wed, 14 Dec 2016 20:59:03 GMT  
		Size: 1.5 KB (1520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2014`

```console
$ docker pull nuxeo@sha256:86c6ee5877325a6e2e5792da775a06defed77dd2f6515e12e4bc3335082e5b8c
```

-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2014` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **543.8 MB (543845961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d182f11c88660b41ae0e2128649283d07149d34c3b693b1fd6b18e05588985b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Dec 2016 14:03:13 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 14 Dec 2016 14:03:14 GMT
ENV NUXEO_USER=nuxeo
# Wed, 14 Dec 2016 14:03:15 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Wed, 14 Dec 2016 14:03:15 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 14:03:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 14:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 17:11:46 GMT
ADD file:5b1e1c0e2f46775870771ff0fe5f35cfc79b01466b73da308fa4f546a1796610 in /etc/ImageMagick/policy.xml 
# Wed, 14 Dec 2016 17:11:46 GMT
ENV NUXEO_VERSION=6.0
# Wed, 14 Dec 2016 17:11:47 GMT
ENV NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571
# Wed, 14 Dec 2016 17:11:47 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 14 Dec 2016 17:12:03 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-cap-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 14 Dec 2016 17:12:04 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Wed, 14 Dec 2016 17:12:05 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:12:05 GMT
WORKDIR /opt/nuxeo/server
# Wed, 14 Dec 2016 17:12:05 GMT
COPY file:8d76e373fbb43b4776438b7110dcaac3baa7df9dc29515cde4e4507ea41bb412 in / 
# Wed, 14 Dec 2016 17:12:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 17:12:06 GMT
EXPOSE 8080/tcp
# Wed, 14 Dec 2016 17:12:06 GMT
EXPOSE 8787/tcp
# Wed, 14 Dec 2016 17:12:06 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69da6219ca566dd46e06bbb11812d66421f153acaa5dd5319e6e79b045957a1b`  
		Last Modified: Wed, 14 Dec 2016 20:56:34 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b4b6cf86d0b50216de7ee9f5a399b73991c8a96e510d68f09eead06ae1d05b`  
		Last Modified: Wed, 14 Dec 2016 20:56:32 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21cfc51a6c3cd40c47ab806eb3ab6448c38b6ce82be6dd41c4fb28799fa043c3`  
		Last Modified: Wed, 14 Dec 2016 20:57:44 GMT  
		Size: 231.7 MB (231734748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12507a1d434b65154662522ed118333f424864bff7be8c408eac63987abbe242`  
		Last Modified: Wed, 14 Dec 2016 20:58:10 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ff0e1897f87172cd546d4f0ee4a500a66d6766703ae60c108d78f1f9d6871e`  
		Last Modified: Wed, 14 Dec 2016 21:01:33 GMT  
		Size: 187.1 MB (187101560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19cac9f0cfaf5c18a1566755e995824fd7881d8f0e59367395846ad097afb356`  
		Last Modified: Wed, 14 Dec 2016 21:00:24 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e742ccd31e90b597be40de6a57f0013828eaa97cb0ace4b7a832785114263d9`  
		Last Modified: Wed, 14 Dec 2016 21:00:24 GMT  
		Size: 1.4 KB (1384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:6`

```console
$ docker pull nuxeo@sha256:86c6ee5877325a6e2e5792da775a06defed77dd2f6515e12e4bc3335082e5b8c
```

-	Platforms:
	-	linux; amd64

### `nuxeo:6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **543.8 MB (543845961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d182f11c88660b41ae0e2128649283d07149d34c3b693b1fd6b18e05588985b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Dec 2016 14:03:13 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 14 Dec 2016 14:03:14 GMT
ENV NUXEO_USER=nuxeo
# Wed, 14 Dec 2016 14:03:15 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Wed, 14 Dec 2016 14:03:15 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 14:03:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 14:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 17:11:46 GMT
ADD file:5b1e1c0e2f46775870771ff0fe5f35cfc79b01466b73da308fa4f546a1796610 in /etc/ImageMagick/policy.xml 
# Wed, 14 Dec 2016 17:11:46 GMT
ENV NUXEO_VERSION=6.0
# Wed, 14 Dec 2016 17:11:47 GMT
ENV NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571
# Wed, 14 Dec 2016 17:11:47 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 14 Dec 2016 17:12:03 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-cap-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 14 Dec 2016 17:12:04 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Wed, 14 Dec 2016 17:12:05 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:12:05 GMT
WORKDIR /opt/nuxeo/server
# Wed, 14 Dec 2016 17:12:05 GMT
COPY file:8d76e373fbb43b4776438b7110dcaac3baa7df9dc29515cde4e4507ea41bb412 in / 
# Wed, 14 Dec 2016 17:12:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 17:12:06 GMT
EXPOSE 8080/tcp
# Wed, 14 Dec 2016 17:12:06 GMT
EXPOSE 8787/tcp
# Wed, 14 Dec 2016 17:12:06 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69da6219ca566dd46e06bbb11812d66421f153acaa5dd5319e6e79b045957a1b`  
		Last Modified: Wed, 14 Dec 2016 20:56:34 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b4b6cf86d0b50216de7ee9f5a399b73991c8a96e510d68f09eead06ae1d05b`  
		Last Modified: Wed, 14 Dec 2016 20:56:32 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21cfc51a6c3cd40c47ab806eb3ab6448c38b6ce82be6dd41c4fb28799fa043c3`  
		Last Modified: Wed, 14 Dec 2016 20:57:44 GMT  
		Size: 231.7 MB (231734748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12507a1d434b65154662522ed118333f424864bff7be8c408eac63987abbe242`  
		Last Modified: Wed, 14 Dec 2016 20:58:10 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ff0e1897f87172cd546d4f0ee4a500a66d6766703ae60c108d78f1f9d6871e`  
		Last Modified: Wed, 14 Dec 2016 21:01:33 GMT  
		Size: 187.1 MB (187101560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19cac9f0cfaf5c18a1566755e995824fd7881d8f0e59367395846ad097afb356`  
		Last Modified: Wed, 14 Dec 2016 21:00:24 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e742ccd31e90b597be40de6a57f0013828eaa97cb0ace4b7a832785114263d9`  
		Last Modified: Wed, 14 Dec 2016 21:00:24 GMT  
		Size: 1.4 KB (1384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:6.0`

```console
$ docker pull nuxeo@sha256:86c6ee5877325a6e2e5792da775a06defed77dd2f6515e12e4bc3335082e5b8c
```

-	Platforms:
	-	linux; amd64

### `nuxeo:6.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **543.8 MB (543845961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d182f11c88660b41ae0e2128649283d07149d34c3b693b1fd6b18e05588985b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Dec 2016 14:03:13 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 14 Dec 2016 14:03:14 GMT
ENV NUXEO_USER=nuxeo
# Wed, 14 Dec 2016 14:03:15 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Wed, 14 Dec 2016 14:03:15 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 14:03:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 14:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 17:11:46 GMT
ADD file:5b1e1c0e2f46775870771ff0fe5f35cfc79b01466b73da308fa4f546a1796610 in /etc/ImageMagick/policy.xml 
# Wed, 14 Dec 2016 17:11:46 GMT
ENV NUXEO_VERSION=6.0
# Wed, 14 Dec 2016 17:11:47 GMT
ENV NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571
# Wed, 14 Dec 2016 17:11:47 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 14 Dec 2016 17:12:03 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-cap-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 14 Dec 2016 17:12:04 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Wed, 14 Dec 2016 17:12:05 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:12:05 GMT
WORKDIR /opt/nuxeo/server
# Wed, 14 Dec 2016 17:12:05 GMT
COPY file:8d76e373fbb43b4776438b7110dcaac3baa7df9dc29515cde4e4507ea41bb412 in / 
# Wed, 14 Dec 2016 17:12:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 17:12:06 GMT
EXPOSE 8080/tcp
# Wed, 14 Dec 2016 17:12:06 GMT
EXPOSE 8787/tcp
# Wed, 14 Dec 2016 17:12:06 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69da6219ca566dd46e06bbb11812d66421f153acaa5dd5319e6e79b045957a1b`  
		Last Modified: Wed, 14 Dec 2016 20:56:34 GMT  
		Size: 4.4 KB (4387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b4b6cf86d0b50216de7ee9f5a399b73991c8a96e510d68f09eead06ae1d05b`  
		Last Modified: Wed, 14 Dec 2016 20:56:32 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21cfc51a6c3cd40c47ab806eb3ab6448c38b6ce82be6dd41c4fb28799fa043c3`  
		Last Modified: Wed, 14 Dec 2016 20:57:44 GMT  
		Size: 231.7 MB (231734748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12507a1d434b65154662522ed118333f424864bff7be8c408eac63987abbe242`  
		Last Modified: Wed, 14 Dec 2016 20:58:10 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ff0e1897f87172cd546d4f0ee4a500a66d6766703ae60c108d78f1f9d6871e`  
		Last Modified: Wed, 14 Dec 2016 21:01:33 GMT  
		Size: 187.1 MB (187101560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19cac9f0cfaf5c18a1566755e995824fd7881d8f0e59367395846ad097afb356`  
		Last Modified: Wed, 14 Dec 2016 21:00:24 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e742ccd31e90b597be40de6a57f0013828eaa97cb0ace4b7a832785114263d9`  
		Last Modified: Wed, 14 Dec 2016 21:00:24 GMT  
		Size: 1.4 KB (1384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
