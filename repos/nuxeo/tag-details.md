<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nuxeo`

-	[`nuxeo:latest`](#nuxeolatest)
-	[`nuxeo:FT`](#nuxeoft)
-	[`nuxeo:8`](#nuxeo8)
-	[`nuxeo:8.3`](#nuxeo83)
-	[`nuxeo:8.2`](#nuxeo82)
-	[`nuxeo:LTS-2015`](#nuxeolts-2015)
-	[`nuxeo:LTS`](#nuxeolts)
-	[`nuxeo:7`](#nuxeo7)
-	[`nuxeo:7.10`](#nuxeo710)
-	[`nuxeo:LTS-2014`](#nuxeolts-2014)
-	[`nuxeo:6`](#nuxeo6)
-	[`nuxeo:6.0`](#nuxeo60)

## `nuxeo:latest`

```console
$ docker pull nuxeo@sha256:3c04ca4f5a99fe826b32d0d20706cddb3dc427e0254c5a5b56f9c7ef4d0410b9
```

-	Platforms:
	-	linux; amd64

### `nuxeo:latest` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **648.0 MB (647962756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7201aa82c1239ab5edcb4556d1f114c901e2550413f04e143028689967c3ad84`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 31 Oct 2016 21:55:02 GMT
ENV LANG=C.UTF-8
# Mon, 31 Oct 2016 21:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 31 Oct 2016 21:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Mon, 31 Oct 2016 21:55:03 GMT
ENV JAVA_VERSION=8u102
# Mon, 31 Oct 2016 21:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Mon, 31 Oct 2016 21:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Mon, 31 Oct 2016 21:55:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 31 Oct 2016 21:55:24 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 01 Nov 2016 06:38:28 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 01 Nov 2016 06:38:29 GMT
ENV NUXEO_USER=nuxeo
# Tue, 01 Nov 2016 06:38:30 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Tue, 01 Nov 2016 06:38:31 GMT
ENV GOSU_VERSION=1.7
# Tue, 01 Nov 2016 06:38:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 06:40:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 06:44:23 GMT
ENV NUXEO_VERSION=8.3
# Tue, 01 Nov 2016 06:44:24 GMT
ENV NUXEO_MD5=6f4a5d5a1df1b024ac2aa27570dd3447
# Tue, 01 Nov 2016 06:44:24 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 01 Nov 2016 06:44:49 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-server-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 01 Nov 2016 06:44:50 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Tue, 01 Nov 2016 06:44:50 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 06:44:51 GMT
WORKDIR /opt/nuxeo/server
# Tue, 01 Nov 2016 06:44:51 GMT
COPY file:5da17471392f8fd3f1caf32dd6e522033560eb878458af2e0f5905c60063c653 in / 
# Tue, 01 Nov 2016 06:44:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:44:52 GMT
EXPOSE 8080/tcp
# Tue, 01 Nov 2016 06:44:52 GMT
EXPOSE 8787/tcp
# Tue, 01 Nov 2016 06:44:53 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7b4d10e1c13c063d94bb83588b327f4c4f5a10fb1a1a89a9c1c73ef15710a7`  
		Last Modified: Fri, 21 Oct 2016 20:11:17 GMT  
		Size: 566.6 KB (566556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f264389d8f2fec4e89e2293411211bb57154f24ad836163d897d019b97d5fd5c`  
		Last Modified: Tue, 01 Nov 2016 05:33:16 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2c46e93f4ac4f4f2f114c689f42a1435409b2db78ab6d19f525866037de473`  
		Last Modified: Tue, 01 Nov 2016 05:33:12 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9506bb322c04c882de48ee789337b636c47cf67c89c402a686f4a03dc6c1eb9`  
		Last Modified: Tue, 01 Nov 2016 05:33:24 GMT  
		Size: 53.4 MB (53439646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f5dad14c2c78802e41cc9c1722caf14f5d7437a81c6d59855b9a835102d67a`  
		Last Modified: Tue, 01 Nov 2016 05:33:10 GMT  
		Size: 284.2 KB (284204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ec157b0ed1bf3951943f211d1aef33134447404b2f78a8975cd9ad3f5daab5`  
		Last Modified: Tue, 01 Nov 2016 06:41:08 GMT  
		Size: 4.4 KB (4395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1dd1decd3a4d6672fb1406d77a8814a1c272dc8a886ffcdd3149cf8ab7005f`  
		Last Modified: Tue, 01 Nov 2016 06:41:08 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eea8141270a577d26da9226fd9acebe031e912cd0c5895b48b0b45f7b6d6d6e`  
		Last Modified: Tue, 01 Nov 2016 06:42:07 GMT  
		Size: 231.7 MB (231718770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a95713631a5c0ef17199ba6eada113991fa905a185ea1b2df17ffdbae9b4b2d`  
		Last Modified: Tue, 01 Nov 2016 06:45:23 GMT  
		Size: 291.3 MB (291257902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f5780a63c12e3012e51faa9fbe64ee73d05cf755f5e773fe42486f3414cea4`  
		Last Modified: Tue, 01 Nov 2016 06:45:03 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07f26874582eede7dfe053a5a4d35602629437c4f7816c5afa766902af4024e`  
		Last Modified: Tue, 01 Nov 2016 06:45:03 GMT  
		Size: 1.5 KB (1521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:FT`

```console
$ docker pull nuxeo@sha256:49a74aab622c5f05ba0da1eb27817ecf193284bd40286d47c68724d0a128bd92
```

-	Platforms:
	-	linux; amd64

### `nuxeo:FT` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **648.0 MB (647963367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f618f4e48848ef9c7ffba669b75ebcfdd5529ce13782597ae20cf5eab83927e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:15:38 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 21 Oct 2016 20:15:38 GMT
ENV LANG=C.UTF-8
# Fri, 21 Oct 2016 20:15:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Oct 2016 20:15:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 21 Oct 2016 20:15:40 GMT
ENV JAVA_VERSION=8u102
# Fri, 21 Oct 2016 20:15:40 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 21 Oct 2016 20:15:41 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 21 Oct 2016 20:15:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Oct 2016 20:15:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 21 Oct 2016 22:37:33 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Fri, 21 Oct 2016 22:37:33 GMT
ENV NUXEO_USER=nuxeo
# Fri, 21 Oct 2016 22:37:34 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Fri, 21 Oct 2016 22:37:34 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 22:37:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 21 Oct 2016 22:39:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 22:43:28 GMT
ENV NUXEO_VERSION=8.3
# Fri, 21 Oct 2016 22:43:29 GMT
ENV NUXEO_MD5=6f4a5d5a1df1b024ac2aa27570dd3447
# Fri, 21 Oct 2016 22:43:29 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Fri, 21 Oct 2016 22:43:53 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-server-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Fri, 21 Oct 2016 22:43:54 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Fri, 21 Oct 2016 22:43:54 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Oct 2016 22:43:55 GMT
WORKDIR /opt/nuxeo/server
# Fri, 21 Oct 2016 22:43:55 GMT
COPY file:5da17471392f8fd3f1caf32dd6e522033560eb878458af2e0f5905c60063c653 in / 
# Fri, 21 Oct 2016 22:43:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Oct 2016 22:43:56 GMT
EXPOSE 8080/tcp
# Fri, 21 Oct 2016 22:43:57 GMT
EXPOSE 8787/tcp
# Fri, 21 Oct 2016 22:43:57 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7b4d10e1c13c063d94bb83588b327f4c4f5a10fb1a1a89a9c1c73ef15710a7`  
		Last Modified: Fri, 21 Oct 2016 20:11:17 GMT  
		Size: 566.6 KB (566556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7579daddb2fdbdd09c93996fd074457a138526c049279c1959559824aa1d0c`  
		Last Modified: Fri, 21 Oct 2016 20:16:08 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a985511f24689704c7520b5fdad710cee0d1f42bd20a8945589c83daa683c695`  
		Last Modified: Fri, 21 Oct 2016 20:16:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2b485fcc3e915fb4d2cf1739a2fb9b2b0a88d48536f4e632225783279766e4`  
		Last Modified: Fri, 21 Oct 2016 20:16:20 GMT  
		Size: 53.4 MB (53439616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b73c83b440f03854f136863a7f99e307ea721f990cee9bef6287d6385f5ddb`  
		Last Modified: Fri, 21 Oct 2016 20:16:10 GMT  
		Size: 284.2 KB (284214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:345dc787f654309cc0904cce2b0b9bfd63fc936b2d35714b5edf00f2de92abe7`  
		Last Modified: Fri, 21 Oct 2016 22:40:02 GMT  
		Size: 4.4 KB (4397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b9216d9fee69c5df7fbc5bbcd9bb29846f46343cf1eda8c51294b8eb0022ac`  
		Last Modified: Fri, 21 Oct 2016 22:40:02 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b3bdad74045997bcaaf566d50267bd31e07f615a58085f39d1f4526e2fc9f5`  
		Last Modified: Fri, 21 Oct 2016 22:41:01 GMT  
		Size: 231.7 MB (231719416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132e7f87948a3b403c4e459a3737cc523fa4af7273769857564483c5f68a8a8e`  
		Last Modified: Fri, 21 Oct 2016 22:44:26 GMT  
		Size: 291.3 MB (291257882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4fa15edddb23edef9a9bf4de23b991ab3964a1abbb7a42289612cb8d6040c6e`  
		Last Modified: Fri, 21 Oct 2016 22:44:07 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84e03f7d463c95fdb446c9853e2675448905858bfc54128eb6063fd6a735a57`  
		Last Modified: Fri, 21 Oct 2016 22:44:06 GMT  
		Size: 1.5 KB (1519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:8`

```console
$ docker pull nuxeo@sha256:3c04ca4f5a99fe826b32d0d20706cddb3dc427e0254c5a5b56f9c7ef4d0410b9
```

-	Platforms:
	-	linux; amd64

### `nuxeo:8` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **648.0 MB (647962756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7201aa82c1239ab5edcb4556d1f114c901e2550413f04e143028689967c3ad84`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 31 Oct 2016 21:55:02 GMT
ENV LANG=C.UTF-8
# Mon, 31 Oct 2016 21:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 31 Oct 2016 21:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Mon, 31 Oct 2016 21:55:03 GMT
ENV JAVA_VERSION=8u102
# Mon, 31 Oct 2016 21:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Mon, 31 Oct 2016 21:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Mon, 31 Oct 2016 21:55:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 31 Oct 2016 21:55:24 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 01 Nov 2016 06:38:28 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 01 Nov 2016 06:38:29 GMT
ENV NUXEO_USER=nuxeo
# Tue, 01 Nov 2016 06:38:30 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Tue, 01 Nov 2016 06:38:31 GMT
ENV GOSU_VERSION=1.7
# Tue, 01 Nov 2016 06:38:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 06:40:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 06:44:23 GMT
ENV NUXEO_VERSION=8.3
# Tue, 01 Nov 2016 06:44:24 GMT
ENV NUXEO_MD5=6f4a5d5a1df1b024ac2aa27570dd3447
# Tue, 01 Nov 2016 06:44:24 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 01 Nov 2016 06:44:49 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-server-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 01 Nov 2016 06:44:50 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Tue, 01 Nov 2016 06:44:50 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 06:44:51 GMT
WORKDIR /opt/nuxeo/server
# Tue, 01 Nov 2016 06:44:51 GMT
COPY file:5da17471392f8fd3f1caf32dd6e522033560eb878458af2e0f5905c60063c653 in / 
# Tue, 01 Nov 2016 06:44:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:44:52 GMT
EXPOSE 8080/tcp
# Tue, 01 Nov 2016 06:44:52 GMT
EXPOSE 8787/tcp
# Tue, 01 Nov 2016 06:44:53 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7b4d10e1c13c063d94bb83588b327f4c4f5a10fb1a1a89a9c1c73ef15710a7`  
		Last Modified: Fri, 21 Oct 2016 20:11:17 GMT  
		Size: 566.6 KB (566556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f264389d8f2fec4e89e2293411211bb57154f24ad836163d897d019b97d5fd5c`  
		Last Modified: Tue, 01 Nov 2016 05:33:16 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2c46e93f4ac4f4f2f114c689f42a1435409b2db78ab6d19f525866037de473`  
		Last Modified: Tue, 01 Nov 2016 05:33:12 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9506bb322c04c882de48ee789337b636c47cf67c89c402a686f4a03dc6c1eb9`  
		Last Modified: Tue, 01 Nov 2016 05:33:24 GMT  
		Size: 53.4 MB (53439646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f5dad14c2c78802e41cc9c1722caf14f5d7437a81c6d59855b9a835102d67a`  
		Last Modified: Tue, 01 Nov 2016 05:33:10 GMT  
		Size: 284.2 KB (284204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ec157b0ed1bf3951943f211d1aef33134447404b2f78a8975cd9ad3f5daab5`  
		Last Modified: Tue, 01 Nov 2016 06:41:08 GMT  
		Size: 4.4 KB (4395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1dd1decd3a4d6672fb1406d77a8814a1c272dc8a886ffcdd3149cf8ab7005f`  
		Last Modified: Tue, 01 Nov 2016 06:41:08 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eea8141270a577d26da9226fd9acebe031e912cd0c5895b48b0b45f7b6d6d6e`  
		Last Modified: Tue, 01 Nov 2016 06:42:07 GMT  
		Size: 231.7 MB (231718770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a95713631a5c0ef17199ba6eada113991fa905a185ea1b2df17ffdbae9b4b2d`  
		Last Modified: Tue, 01 Nov 2016 06:45:23 GMT  
		Size: 291.3 MB (291257902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f5780a63c12e3012e51faa9fbe64ee73d05cf755f5e773fe42486f3414cea4`  
		Last Modified: Tue, 01 Nov 2016 06:45:03 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07f26874582eede7dfe053a5a4d35602629437c4f7816c5afa766902af4024e`  
		Last Modified: Tue, 01 Nov 2016 06:45:03 GMT  
		Size: 1.5 KB (1521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:8.3`

```console
$ docker pull nuxeo@sha256:3c04ca4f5a99fe826b32d0d20706cddb3dc427e0254c5a5b56f9c7ef4d0410b9
```

-	Platforms:
	-	linux; amd64

### `nuxeo:8.3` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **648.0 MB (647962756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7201aa82c1239ab5edcb4556d1f114c901e2550413f04e143028689967c3ad84`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 31 Oct 2016 21:55:02 GMT
ENV LANG=C.UTF-8
# Mon, 31 Oct 2016 21:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 31 Oct 2016 21:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Mon, 31 Oct 2016 21:55:03 GMT
ENV JAVA_VERSION=8u102
# Mon, 31 Oct 2016 21:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Mon, 31 Oct 2016 21:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Mon, 31 Oct 2016 21:55:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 31 Oct 2016 21:55:24 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 01 Nov 2016 06:38:28 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 01 Nov 2016 06:38:29 GMT
ENV NUXEO_USER=nuxeo
# Tue, 01 Nov 2016 06:38:30 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Tue, 01 Nov 2016 06:38:31 GMT
ENV GOSU_VERSION=1.7
# Tue, 01 Nov 2016 06:38:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 06:40:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 06:44:23 GMT
ENV NUXEO_VERSION=8.3
# Tue, 01 Nov 2016 06:44:24 GMT
ENV NUXEO_MD5=6f4a5d5a1df1b024ac2aa27570dd3447
# Tue, 01 Nov 2016 06:44:24 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 01 Nov 2016 06:44:49 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-server-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 01 Nov 2016 06:44:50 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Tue, 01 Nov 2016 06:44:50 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 06:44:51 GMT
WORKDIR /opt/nuxeo/server
# Tue, 01 Nov 2016 06:44:51 GMT
COPY file:5da17471392f8fd3f1caf32dd6e522033560eb878458af2e0f5905c60063c653 in / 
# Tue, 01 Nov 2016 06:44:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:44:52 GMT
EXPOSE 8080/tcp
# Tue, 01 Nov 2016 06:44:52 GMT
EXPOSE 8787/tcp
# Tue, 01 Nov 2016 06:44:53 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7b4d10e1c13c063d94bb83588b327f4c4f5a10fb1a1a89a9c1c73ef15710a7`  
		Last Modified: Fri, 21 Oct 2016 20:11:17 GMT  
		Size: 566.6 KB (566556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f264389d8f2fec4e89e2293411211bb57154f24ad836163d897d019b97d5fd5c`  
		Last Modified: Tue, 01 Nov 2016 05:33:16 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2c46e93f4ac4f4f2f114c689f42a1435409b2db78ab6d19f525866037de473`  
		Last Modified: Tue, 01 Nov 2016 05:33:12 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9506bb322c04c882de48ee789337b636c47cf67c89c402a686f4a03dc6c1eb9`  
		Last Modified: Tue, 01 Nov 2016 05:33:24 GMT  
		Size: 53.4 MB (53439646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f5dad14c2c78802e41cc9c1722caf14f5d7437a81c6d59855b9a835102d67a`  
		Last Modified: Tue, 01 Nov 2016 05:33:10 GMT  
		Size: 284.2 KB (284204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ec157b0ed1bf3951943f211d1aef33134447404b2f78a8975cd9ad3f5daab5`  
		Last Modified: Tue, 01 Nov 2016 06:41:08 GMT  
		Size: 4.4 KB (4395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1dd1decd3a4d6672fb1406d77a8814a1c272dc8a886ffcdd3149cf8ab7005f`  
		Last Modified: Tue, 01 Nov 2016 06:41:08 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eea8141270a577d26da9226fd9acebe031e912cd0c5895b48b0b45f7b6d6d6e`  
		Last Modified: Tue, 01 Nov 2016 06:42:07 GMT  
		Size: 231.7 MB (231718770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a95713631a5c0ef17199ba6eada113991fa905a185ea1b2df17ffdbae9b4b2d`  
		Last Modified: Tue, 01 Nov 2016 06:45:23 GMT  
		Size: 291.3 MB (291257902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f5780a63c12e3012e51faa9fbe64ee73d05cf755f5e773fe42486f3414cea4`  
		Last Modified: Tue, 01 Nov 2016 06:45:03 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07f26874582eede7dfe053a5a4d35602629437c4f7816c5afa766902af4024e`  
		Last Modified: Tue, 01 Nov 2016 06:45:03 GMT  
		Size: 1.5 KB (1521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:8.2`

```console
$ docker pull nuxeo@sha256:d366e93ef3679d84d54780f735b27c3425ed3017f2f490b8cb5570c84b19a1f4
```

-	Platforms:
	-	linux; amd64

### `nuxeo:8.2` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **643.9 MB (643852844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8ec454235ef8ad47ed62cf9d674501879654a9128520242d82ae21910af9da1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 31 Oct 2016 21:55:02 GMT
ENV LANG=C.UTF-8
# Mon, 31 Oct 2016 21:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 31 Oct 2016 21:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Mon, 31 Oct 2016 21:55:03 GMT
ENV JAVA_VERSION=8u102
# Mon, 31 Oct 2016 21:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Mon, 31 Oct 2016 21:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Mon, 31 Oct 2016 21:55:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 31 Oct 2016 21:55:24 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 01 Nov 2016 06:38:28 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 01 Nov 2016 06:38:29 GMT
ENV NUXEO_USER=nuxeo
# Tue, 01 Nov 2016 06:38:30 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Tue, 01 Nov 2016 06:38:31 GMT
ENV GOSU_VERSION=1.7
# Tue, 01 Nov 2016 06:38:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 06:40:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 06:40:30 GMT
ADD file:5b1e1c0e2f46775870771ff0fe5f35cfc79b01466b73da308fa4f546a1796610 in /etc/ImageMagick/policy.xml 
# Tue, 01 Nov 2016 06:46:09 GMT
ENV NUXEO_VERSION=8.2
# Tue, 01 Nov 2016 06:46:10 GMT
ENV NUXEO_MD5=13cbc55be36823bec99482c651c1cbc0
# Tue, 01 Nov 2016 06:46:10 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 01 Nov 2016 06:46:34 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-cap-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 01 Nov 2016 06:46:35 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Tue, 01 Nov 2016 06:46:36 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 06:46:36 GMT
WORKDIR /opt/nuxeo/server
# Tue, 01 Nov 2016 06:46:37 GMT
COPY file:8bb3b62221e76bd4e12692a864280db4c72e5d7140697cf199f5a098c781feff in / 
# Tue, 01 Nov 2016 06:46:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:46:37 GMT
EXPOSE 8080/tcp
# Tue, 01 Nov 2016 06:46:38 GMT
EXPOSE 8787/tcp
# Tue, 01 Nov 2016 06:46:38 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7b4d10e1c13c063d94bb83588b327f4c4f5a10fb1a1a89a9c1c73ef15710a7`  
		Last Modified: Fri, 21 Oct 2016 20:11:17 GMT  
		Size: 566.6 KB (566556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f264389d8f2fec4e89e2293411211bb57154f24ad836163d897d019b97d5fd5c`  
		Last Modified: Tue, 01 Nov 2016 05:33:16 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2c46e93f4ac4f4f2f114c689f42a1435409b2db78ab6d19f525866037de473`  
		Last Modified: Tue, 01 Nov 2016 05:33:12 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9506bb322c04c882de48ee789337b636c47cf67c89c402a686f4a03dc6c1eb9`  
		Last Modified: Tue, 01 Nov 2016 05:33:24 GMT  
		Size: 53.4 MB (53439646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f5dad14c2c78802e41cc9c1722caf14f5d7437a81c6d59855b9a835102d67a`  
		Last Modified: Tue, 01 Nov 2016 05:33:10 GMT  
		Size: 284.2 KB (284204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ec157b0ed1bf3951943f211d1aef33134447404b2f78a8975cd9ad3f5daab5`  
		Last Modified: Tue, 01 Nov 2016 06:41:08 GMT  
		Size: 4.4 KB (4395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1dd1decd3a4d6672fb1406d77a8814a1c272dc8a886ffcdd3149cf8ab7005f`  
		Last Modified: Tue, 01 Nov 2016 06:41:08 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eea8141270a577d26da9226fd9acebe031e912cd0c5895b48b0b45f7b6d6d6e`  
		Last Modified: Tue, 01 Nov 2016 06:42:07 GMT  
		Size: 231.7 MB (231718770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fff2df8ce2016f5e02cb6fee4d17960f50ee319b914f32c43b79503fc87d`  
		Last Modified: Tue, 01 Nov 2016 06:41:04 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b195db6b35a191982ea28a89a650632e8a7ac530a5a28e6d5eda83ee889eb8`  
		Last Modified: Tue, 01 Nov 2016 06:47:11 GMT  
		Size: 287.1 MB (287147753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1798778554d095e8a7c6ed0b9d28ecbe6da577e1eb42259db96fd93e37780a2d`  
		Last Modified: Tue, 01 Nov 2016 06:46:50 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd93de0dc91a4398a55065614022a32308272444ce18adbd71d0be2c7657b6f`  
		Last Modified: Tue, 01 Nov 2016 06:46:48 GMT  
		Size: 1.5 KB (1477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2015`

```console
$ docker pull nuxeo@sha256:93b38bd55e246ebd6981079ab046d0d12e0d38aa0e33015d9a7122a72aa80dfc
```

-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2015` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.0 MB (637049620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d041faefd814ef6516e46e5d1810b43d121e48cbc3b6151fc20f0654bccf9f87`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 31 Oct 2016 21:55:02 GMT
ENV LANG=C.UTF-8
# Mon, 31 Oct 2016 21:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 31 Oct 2016 21:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Mon, 31 Oct 2016 21:55:03 GMT
ENV JAVA_VERSION=8u102
# Mon, 31 Oct 2016 21:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Mon, 31 Oct 2016 21:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Mon, 31 Oct 2016 21:55:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 31 Oct 2016 21:55:24 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 01 Nov 2016 06:38:28 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 01 Nov 2016 06:38:29 GMT
ENV NUXEO_USER=nuxeo
# Tue, 01 Nov 2016 06:38:30 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Tue, 01 Nov 2016 06:38:31 GMT
ENV GOSU_VERSION=1.7
# Tue, 01 Nov 2016 06:38:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 06:40:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 06:40:30 GMT
ADD file:5b1e1c0e2f46775870771ff0fe5f35cfc79b01466b73da308fa4f546a1796610 in /etc/ImageMagick/policy.xml 
# Tue, 01 Nov 2016 06:42:41 GMT
ENV NUXEO_VERSION=7.10
# Tue, 01 Nov 2016 06:42:41 GMT
ENV NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Tue, 01 Nov 2016 06:42:42 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 01 Nov 2016 06:42:53 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-cap-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 01 Nov 2016 06:42:54 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Tue, 01 Nov 2016 06:42:54 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 06:42:55 GMT
WORKDIR /opt/nuxeo/server
# Tue, 01 Nov 2016 06:42:55 GMT
COPY file:5cebeee78434ce067bd4b8b9c42eaa20349f1a252aaf628add51d12663b04917 in / 
# Tue, 01 Nov 2016 06:42:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:42:56 GMT
EXPOSE 8080/tcp
# Tue, 01 Nov 2016 06:42:57 GMT
EXPOSE 8787/tcp
# Tue, 01 Nov 2016 06:42:57 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7b4d10e1c13c063d94bb83588b327f4c4f5a10fb1a1a89a9c1c73ef15710a7`  
		Last Modified: Fri, 21 Oct 2016 20:11:17 GMT  
		Size: 566.6 KB (566556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f264389d8f2fec4e89e2293411211bb57154f24ad836163d897d019b97d5fd5c`  
		Last Modified: Tue, 01 Nov 2016 05:33:16 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2c46e93f4ac4f4f2f114c689f42a1435409b2db78ab6d19f525866037de473`  
		Last Modified: Tue, 01 Nov 2016 05:33:12 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9506bb322c04c882de48ee789337b636c47cf67c89c402a686f4a03dc6c1eb9`  
		Last Modified: Tue, 01 Nov 2016 05:33:24 GMT  
		Size: 53.4 MB (53439646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f5dad14c2c78802e41cc9c1722caf14f5d7437a81c6d59855b9a835102d67a`  
		Last Modified: Tue, 01 Nov 2016 05:33:10 GMT  
		Size: 284.2 KB (284204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ec157b0ed1bf3951943f211d1aef33134447404b2f78a8975cd9ad3f5daab5`  
		Last Modified: Tue, 01 Nov 2016 06:41:08 GMT  
		Size: 4.4 KB (4395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1dd1decd3a4d6672fb1406d77a8814a1c272dc8a886ffcdd3149cf8ab7005f`  
		Last Modified: Tue, 01 Nov 2016 06:41:08 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eea8141270a577d26da9226fd9acebe031e912cd0c5895b48b0b45f7b6d6d6e`  
		Last Modified: Tue, 01 Nov 2016 06:42:07 GMT  
		Size: 231.7 MB (231718770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fff2df8ce2016f5e02cb6fee4d17960f50ee319b914f32c43b79503fc87d`  
		Last Modified: Tue, 01 Nov 2016 06:41:04 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f80b304f601b516bde6fc7135f3e4e448550866b17bec3856bd1da7d0e70e95`  
		Last Modified: Tue, 01 Nov 2016 06:43:31 GMT  
		Size: 280.3 MB (280344485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd736b24bdfe24b3c56c32e792c0823303c9fc5de27dae475497733a543ffac9`  
		Last Modified: Tue, 01 Nov 2016 06:43:08 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:883f1c756ead881344506608c1ee89a1f79cd4593379418cc6c8b92cacf5fc87`  
		Last Modified: Tue, 01 Nov 2016 06:43:10 GMT  
		Size: 1.5 KB (1521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS`

```console
$ docker pull nuxeo@sha256:93b38bd55e246ebd6981079ab046d0d12e0d38aa0e33015d9a7122a72aa80dfc
```

-	Platforms:
	-	linux; amd64

### `nuxeo:LTS` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.0 MB (637049620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d041faefd814ef6516e46e5d1810b43d121e48cbc3b6151fc20f0654bccf9f87`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 31 Oct 2016 21:55:02 GMT
ENV LANG=C.UTF-8
# Mon, 31 Oct 2016 21:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 31 Oct 2016 21:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Mon, 31 Oct 2016 21:55:03 GMT
ENV JAVA_VERSION=8u102
# Mon, 31 Oct 2016 21:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Mon, 31 Oct 2016 21:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Mon, 31 Oct 2016 21:55:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 31 Oct 2016 21:55:24 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 01 Nov 2016 06:38:28 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 01 Nov 2016 06:38:29 GMT
ENV NUXEO_USER=nuxeo
# Tue, 01 Nov 2016 06:38:30 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Tue, 01 Nov 2016 06:38:31 GMT
ENV GOSU_VERSION=1.7
# Tue, 01 Nov 2016 06:38:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 06:40:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 06:40:30 GMT
ADD file:5b1e1c0e2f46775870771ff0fe5f35cfc79b01466b73da308fa4f546a1796610 in /etc/ImageMagick/policy.xml 
# Tue, 01 Nov 2016 06:42:41 GMT
ENV NUXEO_VERSION=7.10
# Tue, 01 Nov 2016 06:42:41 GMT
ENV NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Tue, 01 Nov 2016 06:42:42 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 01 Nov 2016 06:42:53 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-cap-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 01 Nov 2016 06:42:54 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Tue, 01 Nov 2016 06:42:54 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 06:42:55 GMT
WORKDIR /opt/nuxeo/server
# Tue, 01 Nov 2016 06:42:55 GMT
COPY file:5cebeee78434ce067bd4b8b9c42eaa20349f1a252aaf628add51d12663b04917 in / 
# Tue, 01 Nov 2016 06:42:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:42:56 GMT
EXPOSE 8080/tcp
# Tue, 01 Nov 2016 06:42:57 GMT
EXPOSE 8787/tcp
# Tue, 01 Nov 2016 06:42:57 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7b4d10e1c13c063d94bb83588b327f4c4f5a10fb1a1a89a9c1c73ef15710a7`  
		Last Modified: Fri, 21 Oct 2016 20:11:17 GMT  
		Size: 566.6 KB (566556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f264389d8f2fec4e89e2293411211bb57154f24ad836163d897d019b97d5fd5c`  
		Last Modified: Tue, 01 Nov 2016 05:33:16 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2c46e93f4ac4f4f2f114c689f42a1435409b2db78ab6d19f525866037de473`  
		Last Modified: Tue, 01 Nov 2016 05:33:12 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9506bb322c04c882de48ee789337b636c47cf67c89c402a686f4a03dc6c1eb9`  
		Last Modified: Tue, 01 Nov 2016 05:33:24 GMT  
		Size: 53.4 MB (53439646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f5dad14c2c78802e41cc9c1722caf14f5d7437a81c6d59855b9a835102d67a`  
		Last Modified: Tue, 01 Nov 2016 05:33:10 GMT  
		Size: 284.2 KB (284204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ec157b0ed1bf3951943f211d1aef33134447404b2f78a8975cd9ad3f5daab5`  
		Last Modified: Tue, 01 Nov 2016 06:41:08 GMT  
		Size: 4.4 KB (4395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1dd1decd3a4d6672fb1406d77a8814a1c272dc8a886ffcdd3149cf8ab7005f`  
		Last Modified: Tue, 01 Nov 2016 06:41:08 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eea8141270a577d26da9226fd9acebe031e912cd0c5895b48b0b45f7b6d6d6e`  
		Last Modified: Tue, 01 Nov 2016 06:42:07 GMT  
		Size: 231.7 MB (231718770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fff2df8ce2016f5e02cb6fee4d17960f50ee319b914f32c43b79503fc87d`  
		Last Modified: Tue, 01 Nov 2016 06:41:04 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f80b304f601b516bde6fc7135f3e4e448550866b17bec3856bd1da7d0e70e95`  
		Last Modified: Tue, 01 Nov 2016 06:43:31 GMT  
		Size: 280.3 MB (280344485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd736b24bdfe24b3c56c32e792c0823303c9fc5de27dae475497733a543ffac9`  
		Last Modified: Tue, 01 Nov 2016 06:43:08 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:883f1c756ead881344506608c1ee89a1f79cd4593379418cc6c8b92cacf5fc87`  
		Last Modified: Tue, 01 Nov 2016 06:43:10 GMT  
		Size: 1.5 KB (1521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:7`

```console
$ docker pull nuxeo@sha256:93b38bd55e246ebd6981079ab046d0d12e0d38aa0e33015d9a7122a72aa80dfc
```

-	Platforms:
	-	linux; amd64

### `nuxeo:7` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.0 MB (637049620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d041faefd814ef6516e46e5d1810b43d121e48cbc3b6151fc20f0654bccf9f87`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 31 Oct 2016 21:55:02 GMT
ENV LANG=C.UTF-8
# Mon, 31 Oct 2016 21:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 31 Oct 2016 21:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Mon, 31 Oct 2016 21:55:03 GMT
ENV JAVA_VERSION=8u102
# Mon, 31 Oct 2016 21:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Mon, 31 Oct 2016 21:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Mon, 31 Oct 2016 21:55:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 31 Oct 2016 21:55:24 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 01 Nov 2016 06:38:28 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 01 Nov 2016 06:38:29 GMT
ENV NUXEO_USER=nuxeo
# Tue, 01 Nov 2016 06:38:30 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Tue, 01 Nov 2016 06:38:31 GMT
ENV GOSU_VERSION=1.7
# Tue, 01 Nov 2016 06:38:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 06:40:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 06:40:30 GMT
ADD file:5b1e1c0e2f46775870771ff0fe5f35cfc79b01466b73da308fa4f546a1796610 in /etc/ImageMagick/policy.xml 
# Tue, 01 Nov 2016 06:42:41 GMT
ENV NUXEO_VERSION=7.10
# Tue, 01 Nov 2016 06:42:41 GMT
ENV NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Tue, 01 Nov 2016 06:42:42 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 01 Nov 2016 06:42:53 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-cap-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 01 Nov 2016 06:42:54 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Tue, 01 Nov 2016 06:42:54 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 06:42:55 GMT
WORKDIR /opt/nuxeo/server
# Tue, 01 Nov 2016 06:42:55 GMT
COPY file:5cebeee78434ce067bd4b8b9c42eaa20349f1a252aaf628add51d12663b04917 in / 
# Tue, 01 Nov 2016 06:42:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:42:56 GMT
EXPOSE 8080/tcp
# Tue, 01 Nov 2016 06:42:57 GMT
EXPOSE 8787/tcp
# Tue, 01 Nov 2016 06:42:57 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7b4d10e1c13c063d94bb83588b327f4c4f5a10fb1a1a89a9c1c73ef15710a7`  
		Last Modified: Fri, 21 Oct 2016 20:11:17 GMT  
		Size: 566.6 KB (566556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f264389d8f2fec4e89e2293411211bb57154f24ad836163d897d019b97d5fd5c`  
		Last Modified: Tue, 01 Nov 2016 05:33:16 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2c46e93f4ac4f4f2f114c689f42a1435409b2db78ab6d19f525866037de473`  
		Last Modified: Tue, 01 Nov 2016 05:33:12 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9506bb322c04c882de48ee789337b636c47cf67c89c402a686f4a03dc6c1eb9`  
		Last Modified: Tue, 01 Nov 2016 05:33:24 GMT  
		Size: 53.4 MB (53439646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f5dad14c2c78802e41cc9c1722caf14f5d7437a81c6d59855b9a835102d67a`  
		Last Modified: Tue, 01 Nov 2016 05:33:10 GMT  
		Size: 284.2 KB (284204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ec157b0ed1bf3951943f211d1aef33134447404b2f78a8975cd9ad3f5daab5`  
		Last Modified: Tue, 01 Nov 2016 06:41:08 GMT  
		Size: 4.4 KB (4395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1dd1decd3a4d6672fb1406d77a8814a1c272dc8a886ffcdd3149cf8ab7005f`  
		Last Modified: Tue, 01 Nov 2016 06:41:08 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eea8141270a577d26da9226fd9acebe031e912cd0c5895b48b0b45f7b6d6d6e`  
		Last Modified: Tue, 01 Nov 2016 06:42:07 GMT  
		Size: 231.7 MB (231718770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fff2df8ce2016f5e02cb6fee4d17960f50ee319b914f32c43b79503fc87d`  
		Last Modified: Tue, 01 Nov 2016 06:41:04 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f80b304f601b516bde6fc7135f3e4e448550866b17bec3856bd1da7d0e70e95`  
		Last Modified: Tue, 01 Nov 2016 06:43:31 GMT  
		Size: 280.3 MB (280344485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd736b24bdfe24b3c56c32e792c0823303c9fc5de27dae475497733a543ffac9`  
		Last Modified: Tue, 01 Nov 2016 06:43:08 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:883f1c756ead881344506608c1ee89a1f79cd4593379418cc6c8b92cacf5fc87`  
		Last Modified: Tue, 01 Nov 2016 06:43:10 GMT  
		Size: 1.5 KB (1521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:7.10`

```console
$ docker pull nuxeo@sha256:93b38bd55e246ebd6981079ab046d0d12e0d38aa0e33015d9a7122a72aa80dfc
```

-	Platforms:
	-	linux; amd64

### `nuxeo:7.10` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.0 MB (637049620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d041faefd814ef6516e46e5d1810b43d121e48cbc3b6151fc20f0654bccf9f87`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 31 Oct 2016 21:55:02 GMT
ENV LANG=C.UTF-8
# Mon, 31 Oct 2016 21:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 31 Oct 2016 21:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Mon, 31 Oct 2016 21:55:03 GMT
ENV JAVA_VERSION=8u102
# Mon, 31 Oct 2016 21:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Mon, 31 Oct 2016 21:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Mon, 31 Oct 2016 21:55:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 31 Oct 2016 21:55:24 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 01 Nov 2016 06:38:28 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 01 Nov 2016 06:38:29 GMT
ENV NUXEO_USER=nuxeo
# Tue, 01 Nov 2016 06:38:30 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Tue, 01 Nov 2016 06:38:31 GMT
ENV GOSU_VERSION=1.7
# Tue, 01 Nov 2016 06:38:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 06:40:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 06:40:30 GMT
ADD file:5b1e1c0e2f46775870771ff0fe5f35cfc79b01466b73da308fa4f546a1796610 in /etc/ImageMagick/policy.xml 
# Tue, 01 Nov 2016 06:42:41 GMT
ENV NUXEO_VERSION=7.10
# Tue, 01 Nov 2016 06:42:41 GMT
ENV NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Tue, 01 Nov 2016 06:42:42 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 01 Nov 2016 06:42:53 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-cap-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 01 Nov 2016 06:42:54 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Tue, 01 Nov 2016 06:42:54 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 06:42:55 GMT
WORKDIR /opt/nuxeo/server
# Tue, 01 Nov 2016 06:42:55 GMT
COPY file:5cebeee78434ce067bd4b8b9c42eaa20349f1a252aaf628add51d12663b04917 in / 
# Tue, 01 Nov 2016 06:42:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:42:56 GMT
EXPOSE 8080/tcp
# Tue, 01 Nov 2016 06:42:57 GMT
EXPOSE 8787/tcp
# Tue, 01 Nov 2016 06:42:57 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7b4d10e1c13c063d94bb83588b327f4c4f5a10fb1a1a89a9c1c73ef15710a7`  
		Last Modified: Fri, 21 Oct 2016 20:11:17 GMT  
		Size: 566.6 KB (566556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f264389d8f2fec4e89e2293411211bb57154f24ad836163d897d019b97d5fd5c`  
		Last Modified: Tue, 01 Nov 2016 05:33:16 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2c46e93f4ac4f4f2f114c689f42a1435409b2db78ab6d19f525866037de473`  
		Last Modified: Tue, 01 Nov 2016 05:33:12 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9506bb322c04c882de48ee789337b636c47cf67c89c402a686f4a03dc6c1eb9`  
		Last Modified: Tue, 01 Nov 2016 05:33:24 GMT  
		Size: 53.4 MB (53439646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f5dad14c2c78802e41cc9c1722caf14f5d7437a81c6d59855b9a835102d67a`  
		Last Modified: Tue, 01 Nov 2016 05:33:10 GMT  
		Size: 284.2 KB (284204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ec157b0ed1bf3951943f211d1aef33134447404b2f78a8975cd9ad3f5daab5`  
		Last Modified: Tue, 01 Nov 2016 06:41:08 GMT  
		Size: 4.4 KB (4395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1dd1decd3a4d6672fb1406d77a8814a1c272dc8a886ffcdd3149cf8ab7005f`  
		Last Modified: Tue, 01 Nov 2016 06:41:08 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eea8141270a577d26da9226fd9acebe031e912cd0c5895b48b0b45f7b6d6d6e`  
		Last Modified: Tue, 01 Nov 2016 06:42:07 GMT  
		Size: 231.7 MB (231718770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fff2df8ce2016f5e02cb6fee4d17960f50ee319b914f32c43b79503fc87d`  
		Last Modified: Tue, 01 Nov 2016 06:41:04 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f80b304f601b516bde6fc7135f3e4e448550866b17bec3856bd1da7d0e70e95`  
		Last Modified: Tue, 01 Nov 2016 06:43:31 GMT  
		Size: 280.3 MB (280344485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd736b24bdfe24b3c56c32e792c0823303c9fc5de27dae475497733a543ffac9`  
		Last Modified: Tue, 01 Nov 2016 06:43:08 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:883f1c756ead881344506608c1ee89a1f79cd4593379418cc6c8b92cacf5fc87`  
		Last Modified: Tue, 01 Nov 2016 06:43:10 GMT  
		Size: 1.5 KB (1521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2014`

```console
$ docker pull nuxeo@sha256:a2c1412906fd097eac037366b8dea7a29a12bcb9f18155cab1b76aaeba755b49
```

-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2014` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **543.8 MB (543806548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34dccf05ce50c9d547ffb2549372cf026e182f24a4cb1e22377e29a5db5d2682`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 31 Oct 2016 21:55:02 GMT
ENV LANG=C.UTF-8
# Mon, 31 Oct 2016 21:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 31 Oct 2016 21:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Mon, 31 Oct 2016 21:55:03 GMT
ENV JAVA_VERSION=8u102
# Mon, 31 Oct 2016 21:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Mon, 31 Oct 2016 21:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Mon, 31 Oct 2016 21:55:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 31 Oct 2016 21:55:24 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 01 Nov 2016 06:38:28 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 01 Nov 2016 06:38:29 GMT
ENV NUXEO_USER=nuxeo
# Tue, 01 Nov 2016 06:38:30 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Tue, 01 Nov 2016 06:38:31 GMT
ENV GOSU_VERSION=1.7
# Tue, 01 Nov 2016 06:38:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 06:40:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 06:40:30 GMT
ADD file:5b1e1c0e2f46775870771ff0fe5f35cfc79b01466b73da308fa4f546a1796610 in /etc/ImageMagick/policy.xml 
# Tue, 01 Nov 2016 06:40:30 GMT
ENV NUXEO_VERSION=6.0
# Tue, 01 Nov 2016 06:40:31 GMT
ENV NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571
# Tue, 01 Nov 2016 06:40:31 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 01 Nov 2016 06:40:50 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-cap-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 01 Nov 2016 06:40:51 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Tue, 01 Nov 2016 06:40:51 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 06:40:52 GMT
WORKDIR /opt/nuxeo/server
# Tue, 01 Nov 2016 06:40:52 GMT
COPY file:8d76e373fbb43b4776438b7110dcaac3baa7df9dc29515cde4e4507ea41bb412 in / 
# Tue, 01 Nov 2016 06:40:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:40:53 GMT
EXPOSE 8080/tcp
# Tue, 01 Nov 2016 06:40:53 GMT
EXPOSE 8787/tcp
# Tue, 01 Nov 2016 06:40:54 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7b4d10e1c13c063d94bb83588b327f4c4f5a10fb1a1a89a9c1c73ef15710a7`  
		Last Modified: Fri, 21 Oct 2016 20:11:17 GMT  
		Size: 566.6 KB (566556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f264389d8f2fec4e89e2293411211bb57154f24ad836163d897d019b97d5fd5c`  
		Last Modified: Tue, 01 Nov 2016 05:33:16 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2c46e93f4ac4f4f2f114c689f42a1435409b2db78ab6d19f525866037de473`  
		Last Modified: Tue, 01 Nov 2016 05:33:12 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9506bb322c04c882de48ee789337b636c47cf67c89c402a686f4a03dc6c1eb9`  
		Last Modified: Tue, 01 Nov 2016 05:33:24 GMT  
		Size: 53.4 MB (53439646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f5dad14c2c78802e41cc9c1722caf14f5d7437a81c6d59855b9a835102d67a`  
		Last Modified: Tue, 01 Nov 2016 05:33:10 GMT  
		Size: 284.2 KB (284204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ec157b0ed1bf3951943f211d1aef33134447404b2f78a8975cd9ad3f5daab5`  
		Last Modified: Tue, 01 Nov 2016 06:41:08 GMT  
		Size: 4.4 KB (4395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1dd1decd3a4d6672fb1406d77a8814a1c272dc8a886ffcdd3149cf8ab7005f`  
		Last Modified: Tue, 01 Nov 2016 06:41:08 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eea8141270a577d26da9226fd9acebe031e912cd0c5895b48b0b45f7b6d6d6e`  
		Last Modified: Tue, 01 Nov 2016 06:42:07 GMT  
		Size: 231.7 MB (231718770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fff2df8ce2016f5e02cb6fee4d17960f50ee319b914f32c43b79503fc87d`  
		Last Modified: Tue, 01 Nov 2016 06:41:04 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:911b7cfc107fc6e79438ef85396df32e3eddb86f1ad6a870aa35d255ae64b711`  
		Last Modified: Tue, 01 Nov 2016 06:41:20 GMT  
		Size: 187.1 MB (187101550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92c746693844369b75d7ddc2649bb13a4e8ce69398eb8f647ce06873e8054ec`  
		Last Modified: Tue, 01 Nov 2016 06:41:07 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f0c39290555e0f1b09bb376d9836648d2640abc07eee43cebea9cc2909cefa5`  
		Last Modified: Tue, 01 Nov 2016 06:41:05 GMT  
		Size: 1.4 KB (1384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:6`

```console
$ docker pull nuxeo@sha256:a2c1412906fd097eac037366b8dea7a29a12bcb9f18155cab1b76aaeba755b49
```

-	Platforms:
	-	linux; amd64

### `nuxeo:6` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **543.8 MB (543806548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34dccf05ce50c9d547ffb2549372cf026e182f24a4cb1e22377e29a5db5d2682`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 31 Oct 2016 21:55:02 GMT
ENV LANG=C.UTF-8
# Mon, 31 Oct 2016 21:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 31 Oct 2016 21:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Mon, 31 Oct 2016 21:55:03 GMT
ENV JAVA_VERSION=8u102
# Mon, 31 Oct 2016 21:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Mon, 31 Oct 2016 21:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Mon, 31 Oct 2016 21:55:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 31 Oct 2016 21:55:24 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 01 Nov 2016 06:38:28 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 01 Nov 2016 06:38:29 GMT
ENV NUXEO_USER=nuxeo
# Tue, 01 Nov 2016 06:38:30 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Tue, 01 Nov 2016 06:38:31 GMT
ENV GOSU_VERSION=1.7
# Tue, 01 Nov 2016 06:38:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 06:40:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 06:40:30 GMT
ADD file:5b1e1c0e2f46775870771ff0fe5f35cfc79b01466b73da308fa4f546a1796610 in /etc/ImageMagick/policy.xml 
# Tue, 01 Nov 2016 06:40:30 GMT
ENV NUXEO_VERSION=6.0
# Tue, 01 Nov 2016 06:40:31 GMT
ENV NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571
# Tue, 01 Nov 2016 06:40:31 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 01 Nov 2016 06:40:50 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-cap-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 01 Nov 2016 06:40:51 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Tue, 01 Nov 2016 06:40:51 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 06:40:52 GMT
WORKDIR /opt/nuxeo/server
# Tue, 01 Nov 2016 06:40:52 GMT
COPY file:8d76e373fbb43b4776438b7110dcaac3baa7df9dc29515cde4e4507ea41bb412 in / 
# Tue, 01 Nov 2016 06:40:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:40:53 GMT
EXPOSE 8080/tcp
# Tue, 01 Nov 2016 06:40:53 GMT
EXPOSE 8787/tcp
# Tue, 01 Nov 2016 06:40:54 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7b4d10e1c13c063d94bb83588b327f4c4f5a10fb1a1a89a9c1c73ef15710a7`  
		Last Modified: Fri, 21 Oct 2016 20:11:17 GMT  
		Size: 566.6 KB (566556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f264389d8f2fec4e89e2293411211bb57154f24ad836163d897d019b97d5fd5c`  
		Last Modified: Tue, 01 Nov 2016 05:33:16 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2c46e93f4ac4f4f2f114c689f42a1435409b2db78ab6d19f525866037de473`  
		Last Modified: Tue, 01 Nov 2016 05:33:12 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9506bb322c04c882de48ee789337b636c47cf67c89c402a686f4a03dc6c1eb9`  
		Last Modified: Tue, 01 Nov 2016 05:33:24 GMT  
		Size: 53.4 MB (53439646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f5dad14c2c78802e41cc9c1722caf14f5d7437a81c6d59855b9a835102d67a`  
		Last Modified: Tue, 01 Nov 2016 05:33:10 GMT  
		Size: 284.2 KB (284204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ec157b0ed1bf3951943f211d1aef33134447404b2f78a8975cd9ad3f5daab5`  
		Last Modified: Tue, 01 Nov 2016 06:41:08 GMT  
		Size: 4.4 KB (4395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1dd1decd3a4d6672fb1406d77a8814a1c272dc8a886ffcdd3149cf8ab7005f`  
		Last Modified: Tue, 01 Nov 2016 06:41:08 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eea8141270a577d26da9226fd9acebe031e912cd0c5895b48b0b45f7b6d6d6e`  
		Last Modified: Tue, 01 Nov 2016 06:42:07 GMT  
		Size: 231.7 MB (231718770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fff2df8ce2016f5e02cb6fee4d17960f50ee319b914f32c43b79503fc87d`  
		Last Modified: Tue, 01 Nov 2016 06:41:04 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:911b7cfc107fc6e79438ef85396df32e3eddb86f1ad6a870aa35d255ae64b711`  
		Last Modified: Tue, 01 Nov 2016 06:41:20 GMT  
		Size: 187.1 MB (187101550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92c746693844369b75d7ddc2649bb13a4e8ce69398eb8f647ce06873e8054ec`  
		Last Modified: Tue, 01 Nov 2016 06:41:07 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f0c39290555e0f1b09bb376d9836648d2640abc07eee43cebea9cc2909cefa5`  
		Last Modified: Tue, 01 Nov 2016 06:41:05 GMT  
		Size: 1.4 KB (1384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:6.0`

```console
$ docker pull nuxeo@sha256:a2c1412906fd097eac037366b8dea7a29a12bcb9f18155cab1b76aaeba755b49
```

-	Platforms:
	-	linux; amd64

### `nuxeo:6.0` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **543.8 MB (543806548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34dccf05ce50c9d547ffb2549372cf026e182f24a4cb1e22377e29a5db5d2682`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:10:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 31 Oct 2016 21:55:02 GMT
ENV LANG=C.UTF-8
# Mon, 31 Oct 2016 21:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 31 Oct 2016 21:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Mon, 31 Oct 2016 21:55:03 GMT
ENV JAVA_VERSION=8u102
# Mon, 31 Oct 2016 21:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Mon, 31 Oct 2016 21:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Mon, 31 Oct 2016 21:55:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 31 Oct 2016 21:55:24 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 01 Nov 2016 06:38:28 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 01 Nov 2016 06:38:29 GMT
ENV NUXEO_USER=nuxeo
# Tue, 01 Nov 2016 06:38:30 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Tue, 01 Nov 2016 06:38:31 GMT
ENV GOSU_VERSION=1.7
# Tue, 01 Nov 2016 06:38:37 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 06:40:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 06:40:30 GMT
ADD file:5b1e1c0e2f46775870771ff0fe5f35cfc79b01466b73da308fa4f546a1796610 in /etc/ImageMagick/policy.xml 
# Tue, 01 Nov 2016 06:40:30 GMT
ENV NUXEO_VERSION=6.0
# Tue, 01 Nov 2016 06:40:31 GMT
ENV NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571
# Tue, 01 Nov 2016 06:40:31 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 01 Nov 2016 06:40:50 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-cap-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 01 Nov 2016 06:40:51 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Tue, 01 Nov 2016 06:40:51 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 06:40:52 GMT
WORKDIR /opt/nuxeo/server
# Tue, 01 Nov 2016 06:40:52 GMT
COPY file:8d76e373fbb43b4776438b7110dcaac3baa7df9dc29515cde4e4507ea41bb412 in / 
# Tue, 01 Nov 2016 06:40:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 06:40:53 GMT
EXPOSE 8080/tcp
# Tue, 01 Nov 2016 06:40:53 GMT
EXPOSE 8787/tcp
# Tue, 01 Nov 2016 06:40:54 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7b4d10e1c13c063d94bb83588b327f4c4f5a10fb1a1a89a9c1c73ef15710a7`  
		Last Modified: Fri, 21 Oct 2016 20:11:17 GMT  
		Size: 566.6 KB (566556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f264389d8f2fec4e89e2293411211bb57154f24ad836163d897d019b97d5fd5c`  
		Last Modified: Tue, 01 Nov 2016 05:33:16 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2c46e93f4ac4f4f2f114c689f42a1435409b2db78ab6d19f525866037de473`  
		Last Modified: Tue, 01 Nov 2016 05:33:12 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9506bb322c04c882de48ee789337b636c47cf67c89c402a686f4a03dc6c1eb9`  
		Last Modified: Tue, 01 Nov 2016 05:33:24 GMT  
		Size: 53.4 MB (53439646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f5dad14c2c78802e41cc9c1722caf14f5d7437a81c6d59855b9a835102d67a`  
		Last Modified: Tue, 01 Nov 2016 05:33:10 GMT  
		Size: 284.2 KB (284204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ec157b0ed1bf3951943f211d1aef33134447404b2f78a8975cd9ad3f5daab5`  
		Last Modified: Tue, 01 Nov 2016 06:41:08 GMT  
		Size: 4.4 KB (4395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1dd1decd3a4d6672fb1406d77a8814a1c272dc8a886ffcdd3149cf8ab7005f`  
		Last Modified: Tue, 01 Nov 2016 06:41:08 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eea8141270a577d26da9226fd9acebe031e912cd0c5895b48b0b45f7b6d6d6e`  
		Last Modified: Tue, 01 Nov 2016 06:42:07 GMT  
		Size: 231.7 MB (231718770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e477fff2df8ce2016f5e02cb6fee4d17960f50ee319b914f32c43b79503fc87d`  
		Last Modified: Tue, 01 Nov 2016 06:41:04 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:911b7cfc107fc6e79438ef85396df32e3eddb86f1ad6a870aa35d255ae64b711`  
		Last Modified: Tue, 01 Nov 2016 06:41:20 GMT  
		Size: 187.1 MB (187101550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92c746693844369b75d7ddc2649bb13a4e8ce69398eb8f647ce06873e8054ec`  
		Last Modified: Tue, 01 Nov 2016 06:41:07 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f0c39290555e0f1b09bb376d9836648d2640abc07eee43cebea9cc2909cefa5`  
		Last Modified: Tue, 01 Nov 2016 06:41:05 GMT  
		Size: 1.4 KB (1384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
