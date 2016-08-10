<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

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
$ docker pull nuxeo@sha256:daf105fe65d81e9dec0ca130e3b510f288b875b4919baa162197786cac8cdab7
```

-	Platforms:
	-	linux; amd64

### `nuxeo:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.9 MB (647874053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0187116f71671d690a5df1f18546d48ef315a0eeed48aaac33f3fd16ffff8d9b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 29 Jul 2016 04:48:37 GMT
ENV JAVA_VERSION=8u91
# Fri, 29 Jul 2016 04:48:38 GMT
ENV JAVA_DEBIAN_VERSION=8u91-b14-1~bpo8+1
# Fri, 29 Jul 2016 04:48:38 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 29 Jul 2016 16:47:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 29 Jul 2016 16:47:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 01 Aug 2016 19:45:44 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Mon, 01 Aug 2016 19:45:45 GMT
ENV NUXEO_USER=nuxeo
# Mon, 01 Aug 2016 19:45:47 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Mon, 01 Aug 2016 19:45:47 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 19:45:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 01 Aug 2016 19:48:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 19:54:13 GMT
ENV NUXEO_VERSION=8.3
# Mon, 01 Aug 2016 19:54:14 GMT
ENV NUXEO_MD5=6f4a5d5a1df1b024ac2aa27570dd3447
# Mon, 01 Aug 2016 19:54:14 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Mon, 01 Aug 2016 19:54:41 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-server-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Mon, 01 Aug 2016 19:54:44 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Mon, 01 Aug 2016 19:54:45 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 Aug 2016 19:54:46 GMT
WORKDIR /opt/nuxeo/server
# Wed, 10 Aug 2016 16:56:54 GMT
COPY file:5da17471392f8fd3f1caf32dd6e522033560eb878458af2e0f5905c60063c653 in /
# Wed, 10 Aug 2016 16:56:54 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 16:56:54 GMT
EXPOSE 8080/tcp
# Wed, 10 Aug 2016 16:56:55 GMT
EXPOSE 8787/tcp
# Wed, 10 Aug 2016 16:56:55 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:783d0812b9b6cb13f78b8ecdddd83a821c6ddf11a1e3b9ede5e61d7c8ccfdc29`  
		Last Modified: Fri, 29 Jul 2016 16:48:13 GMT  
		Size: 53.4 MB (53350533 bytes)
	-	`sha256:2c49287cad2e905f46bf98d5d5461760bb975c335ace4ffca8466a2312465f9e`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 284.4 KB (284373 bytes)
	-	`sha256:d019746d4636344a5577b33b8e78760ad87b370f2824d3cce55cd7fc4b913ce6`  
		Last Modified: Mon, 01 Aug 2016 19:49:28 GMT  
		Size: 4.4 KB (4386 bytes)
	-	`sha256:d47ba0492eea178b3be9199c7ad0c3cf78251dfa82a5237d2da50ec413af2647`  
		Last Modified: Mon, 01 Aug 2016 19:49:27 GMT  
		Size: 807.9 KB (807934 bytes)
	-	`sha256:0e73bd0035a0a5fccd1e2b6c907550faef3ef3911e68013f0f9fda2fbedae9e9`  
		Last Modified: Mon, 01 Aug 2016 19:50:31 GMT  
		Size: 231.7 MB (231707550 bytes)
	-	`sha256:0a9f0ce95b1044f3624fe2fcec38a4f55a1c92d2bf23fdd4564605255d45c692`  
		Last Modified: Mon, 01 Aug 2016 19:55:27 GMT  
		Size: 291.3 MB (291257863 bytes)
	-	`sha256:912ccbb37ca39a9af61d04e8f26bb1cf3458a99e154fa5ae90326c2a438eccc9`  
		Last Modified: Mon, 01 Aug 2016 19:54:59 GMT  
		Size: 117.0 B
	-	`sha256:d68ef01360ab74311bd793a2c2d535c055cdf6994b485570fdffe76e8f40f481`  
		Last Modified: Wed, 10 Aug 2016 16:57:11 GMT  
		Size: 1.5 KB (1521 bytes)

## `nuxeo:FT`

```console
$ docker pull nuxeo@sha256:daf105fe65d81e9dec0ca130e3b510f288b875b4919baa162197786cac8cdab7
```

-	Platforms:
	-	linux; amd64

### `nuxeo:FT` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.9 MB (647874053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0187116f71671d690a5df1f18546d48ef315a0eeed48aaac33f3fd16ffff8d9b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 29 Jul 2016 04:48:37 GMT
ENV JAVA_VERSION=8u91
# Fri, 29 Jul 2016 04:48:38 GMT
ENV JAVA_DEBIAN_VERSION=8u91-b14-1~bpo8+1
# Fri, 29 Jul 2016 04:48:38 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 29 Jul 2016 16:47:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 29 Jul 2016 16:47:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 01 Aug 2016 19:45:44 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Mon, 01 Aug 2016 19:45:45 GMT
ENV NUXEO_USER=nuxeo
# Mon, 01 Aug 2016 19:45:47 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Mon, 01 Aug 2016 19:45:47 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 19:45:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 01 Aug 2016 19:48:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 19:54:13 GMT
ENV NUXEO_VERSION=8.3
# Mon, 01 Aug 2016 19:54:14 GMT
ENV NUXEO_MD5=6f4a5d5a1df1b024ac2aa27570dd3447
# Mon, 01 Aug 2016 19:54:14 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Mon, 01 Aug 2016 19:54:41 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-server-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Mon, 01 Aug 2016 19:54:44 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Mon, 01 Aug 2016 19:54:45 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 Aug 2016 19:54:46 GMT
WORKDIR /opt/nuxeo/server
# Wed, 10 Aug 2016 16:56:54 GMT
COPY file:5da17471392f8fd3f1caf32dd6e522033560eb878458af2e0f5905c60063c653 in /
# Wed, 10 Aug 2016 16:56:54 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 16:56:54 GMT
EXPOSE 8080/tcp
# Wed, 10 Aug 2016 16:56:55 GMT
EXPOSE 8787/tcp
# Wed, 10 Aug 2016 16:56:55 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:783d0812b9b6cb13f78b8ecdddd83a821c6ddf11a1e3b9ede5e61d7c8ccfdc29`  
		Last Modified: Fri, 29 Jul 2016 16:48:13 GMT  
		Size: 53.4 MB (53350533 bytes)
	-	`sha256:2c49287cad2e905f46bf98d5d5461760bb975c335ace4ffca8466a2312465f9e`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 284.4 KB (284373 bytes)
	-	`sha256:d019746d4636344a5577b33b8e78760ad87b370f2824d3cce55cd7fc4b913ce6`  
		Last Modified: Mon, 01 Aug 2016 19:49:28 GMT  
		Size: 4.4 KB (4386 bytes)
	-	`sha256:d47ba0492eea178b3be9199c7ad0c3cf78251dfa82a5237d2da50ec413af2647`  
		Last Modified: Mon, 01 Aug 2016 19:49:27 GMT  
		Size: 807.9 KB (807934 bytes)
	-	`sha256:0e73bd0035a0a5fccd1e2b6c907550faef3ef3911e68013f0f9fda2fbedae9e9`  
		Last Modified: Mon, 01 Aug 2016 19:50:31 GMT  
		Size: 231.7 MB (231707550 bytes)
	-	`sha256:0a9f0ce95b1044f3624fe2fcec38a4f55a1c92d2bf23fdd4564605255d45c692`  
		Last Modified: Mon, 01 Aug 2016 19:55:27 GMT  
		Size: 291.3 MB (291257863 bytes)
	-	`sha256:912ccbb37ca39a9af61d04e8f26bb1cf3458a99e154fa5ae90326c2a438eccc9`  
		Last Modified: Mon, 01 Aug 2016 19:54:59 GMT  
		Size: 117.0 B
	-	`sha256:d68ef01360ab74311bd793a2c2d535c055cdf6994b485570fdffe76e8f40f481`  
		Last Modified: Wed, 10 Aug 2016 16:57:11 GMT  
		Size: 1.5 KB (1521 bytes)

## `nuxeo:8`

```console
$ docker pull nuxeo@sha256:daf105fe65d81e9dec0ca130e3b510f288b875b4919baa162197786cac8cdab7
```

-	Platforms:
	-	linux; amd64

### `nuxeo:8` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.9 MB (647874053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0187116f71671d690a5df1f18546d48ef315a0eeed48aaac33f3fd16ffff8d9b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 29 Jul 2016 04:48:37 GMT
ENV JAVA_VERSION=8u91
# Fri, 29 Jul 2016 04:48:38 GMT
ENV JAVA_DEBIAN_VERSION=8u91-b14-1~bpo8+1
# Fri, 29 Jul 2016 04:48:38 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 29 Jul 2016 16:47:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 29 Jul 2016 16:47:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 01 Aug 2016 19:45:44 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Mon, 01 Aug 2016 19:45:45 GMT
ENV NUXEO_USER=nuxeo
# Mon, 01 Aug 2016 19:45:47 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Mon, 01 Aug 2016 19:45:47 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 19:45:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 01 Aug 2016 19:48:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 19:54:13 GMT
ENV NUXEO_VERSION=8.3
# Mon, 01 Aug 2016 19:54:14 GMT
ENV NUXEO_MD5=6f4a5d5a1df1b024ac2aa27570dd3447
# Mon, 01 Aug 2016 19:54:14 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Mon, 01 Aug 2016 19:54:41 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-server-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Mon, 01 Aug 2016 19:54:44 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Mon, 01 Aug 2016 19:54:45 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 Aug 2016 19:54:46 GMT
WORKDIR /opt/nuxeo/server
# Wed, 10 Aug 2016 16:56:54 GMT
COPY file:5da17471392f8fd3f1caf32dd6e522033560eb878458af2e0f5905c60063c653 in /
# Wed, 10 Aug 2016 16:56:54 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 16:56:54 GMT
EXPOSE 8080/tcp
# Wed, 10 Aug 2016 16:56:55 GMT
EXPOSE 8787/tcp
# Wed, 10 Aug 2016 16:56:55 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:783d0812b9b6cb13f78b8ecdddd83a821c6ddf11a1e3b9ede5e61d7c8ccfdc29`  
		Last Modified: Fri, 29 Jul 2016 16:48:13 GMT  
		Size: 53.4 MB (53350533 bytes)
	-	`sha256:2c49287cad2e905f46bf98d5d5461760bb975c335ace4ffca8466a2312465f9e`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 284.4 KB (284373 bytes)
	-	`sha256:d019746d4636344a5577b33b8e78760ad87b370f2824d3cce55cd7fc4b913ce6`  
		Last Modified: Mon, 01 Aug 2016 19:49:28 GMT  
		Size: 4.4 KB (4386 bytes)
	-	`sha256:d47ba0492eea178b3be9199c7ad0c3cf78251dfa82a5237d2da50ec413af2647`  
		Last Modified: Mon, 01 Aug 2016 19:49:27 GMT  
		Size: 807.9 KB (807934 bytes)
	-	`sha256:0e73bd0035a0a5fccd1e2b6c907550faef3ef3911e68013f0f9fda2fbedae9e9`  
		Last Modified: Mon, 01 Aug 2016 19:50:31 GMT  
		Size: 231.7 MB (231707550 bytes)
	-	`sha256:0a9f0ce95b1044f3624fe2fcec38a4f55a1c92d2bf23fdd4564605255d45c692`  
		Last Modified: Mon, 01 Aug 2016 19:55:27 GMT  
		Size: 291.3 MB (291257863 bytes)
	-	`sha256:912ccbb37ca39a9af61d04e8f26bb1cf3458a99e154fa5ae90326c2a438eccc9`  
		Last Modified: Mon, 01 Aug 2016 19:54:59 GMT  
		Size: 117.0 B
	-	`sha256:d68ef01360ab74311bd793a2c2d535c055cdf6994b485570fdffe76e8f40f481`  
		Last Modified: Wed, 10 Aug 2016 16:57:11 GMT  
		Size: 1.5 KB (1521 bytes)

## `nuxeo:8.3`

```console
$ docker pull nuxeo@sha256:daf105fe65d81e9dec0ca130e3b510f288b875b4919baa162197786cac8cdab7
```

-	Platforms:
	-	linux; amd64

### `nuxeo:8.3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.9 MB (647874053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0187116f71671d690a5df1f18546d48ef315a0eeed48aaac33f3fd16ffff8d9b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 29 Jul 2016 04:48:37 GMT
ENV JAVA_VERSION=8u91
# Fri, 29 Jul 2016 04:48:38 GMT
ENV JAVA_DEBIAN_VERSION=8u91-b14-1~bpo8+1
# Fri, 29 Jul 2016 04:48:38 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 29 Jul 2016 16:47:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 29 Jul 2016 16:47:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 01 Aug 2016 19:45:44 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Mon, 01 Aug 2016 19:45:45 GMT
ENV NUXEO_USER=nuxeo
# Mon, 01 Aug 2016 19:45:47 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Mon, 01 Aug 2016 19:45:47 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 19:45:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 01 Aug 2016 19:48:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 19:54:13 GMT
ENV NUXEO_VERSION=8.3
# Mon, 01 Aug 2016 19:54:14 GMT
ENV NUXEO_MD5=6f4a5d5a1df1b024ac2aa27570dd3447
# Mon, 01 Aug 2016 19:54:14 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Mon, 01 Aug 2016 19:54:41 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-server-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Mon, 01 Aug 2016 19:54:44 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Mon, 01 Aug 2016 19:54:45 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 Aug 2016 19:54:46 GMT
WORKDIR /opt/nuxeo/server
# Wed, 10 Aug 2016 16:56:54 GMT
COPY file:5da17471392f8fd3f1caf32dd6e522033560eb878458af2e0f5905c60063c653 in /
# Wed, 10 Aug 2016 16:56:54 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 16:56:54 GMT
EXPOSE 8080/tcp
# Wed, 10 Aug 2016 16:56:55 GMT
EXPOSE 8787/tcp
# Wed, 10 Aug 2016 16:56:55 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:783d0812b9b6cb13f78b8ecdddd83a821c6ddf11a1e3b9ede5e61d7c8ccfdc29`  
		Last Modified: Fri, 29 Jul 2016 16:48:13 GMT  
		Size: 53.4 MB (53350533 bytes)
	-	`sha256:2c49287cad2e905f46bf98d5d5461760bb975c335ace4ffca8466a2312465f9e`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 284.4 KB (284373 bytes)
	-	`sha256:d019746d4636344a5577b33b8e78760ad87b370f2824d3cce55cd7fc4b913ce6`  
		Last Modified: Mon, 01 Aug 2016 19:49:28 GMT  
		Size: 4.4 KB (4386 bytes)
	-	`sha256:d47ba0492eea178b3be9199c7ad0c3cf78251dfa82a5237d2da50ec413af2647`  
		Last Modified: Mon, 01 Aug 2016 19:49:27 GMT  
		Size: 807.9 KB (807934 bytes)
	-	`sha256:0e73bd0035a0a5fccd1e2b6c907550faef3ef3911e68013f0f9fda2fbedae9e9`  
		Last Modified: Mon, 01 Aug 2016 19:50:31 GMT  
		Size: 231.7 MB (231707550 bytes)
	-	`sha256:0a9f0ce95b1044f3624fe2fcec38a4f55a1c92d2bf23fdd4564605255d45c692`  
		Last Modified: Mon, 01 Aug 2016 19:55:27 GMT  
		Size: 291.3 MB (291257863 bytes)
	-	`sha256:912ccbb37ca39a9af61d04e8f26bb1cf3458a99e154fa5ae90326c2a438eccc9`  
		Last Modified: Mon, 01 Aug 2016 19:54:59 GMT  
		Size: 117.0 B
	-	`sha256:d68ef01360ab74311bd793a2c2d535c055cdf6994b485570fdffe76e8f40f481`  
		Last Modified: Wed, 10 Aug 2016 16:57:11 GMT  
		Size: 1.5 KB (1521 bytes)

## `nuxeo:8.2`

```console
$ docker pull nuxeo@sha256:282c5e189336b1935e2b34d6482e35786ef1796469f4cc3c3fd368408448d411
```

-	Platforms:
	-	linux; amd64

### `nuxeo:8.2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **643.8 MB (643764191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f2a89dd04a5615f4aa7f5913bdc31cbdf3ebb3c97a2e61b35bea5b5dabf0266`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 29 Jul 2016 04:48:37 GMT
ENV JAVA_VERSION=8u91
# Fri, 29 Jul 2016 04:48:38 GMT
ENV JAVA_DEBIAN_VERSION=8u91-b14-1~bpo8+1
# Fri, 29 Jul 2016 04:48:38 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 29 Jul 2016 16:47:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 29 Jul 2016 16:47:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 01 Aug 2016 19:45:44 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Mon, 01 Aug 2016 19:45:45 GMT
ENV NUXEO_USER=nuxeo
# Mon, 01 Aug 2016 19:45:47 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Mon, 01 Aug 2016 19:45:47 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 19:45:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 01 Aug 2016 19:48:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 19:48:32 GMT
ADD file:5b1e1c0e2f46775870771ff0fe5f35cfc79b01466b73da308fa4f546a1796610 in /etc/ImageMagick/policy.xml
# Mon, 01 Aug 2016 19:48:33 GMT
ENV NUXEO_VERSION=8.2
# Mon, 01 Aug 2016 19:48:35 GMT
ENV NUXEO_MD5=13cbc55be36823bec99482c651c1cbc0
# Mon, 01 Aug 2016 19:48:36 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Mon, 01 Aug 2016 19:49:07 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-cap-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Mon, 01 Aug 2016 19:49:10 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Mon, 01 Aug 2016 19:49:10 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 Aug 2016 19:49:11 GMT
WORKDIR /opt/nuxeo/server
# Mon, 01 Aug 2016 19:49:12 GMT
COPY file:8bb3b62221e76bd4e12692a864280db4c72e5d7140697cf199f5a098c781feff in /
# Mon, 01 Aug 2016 19:49:13 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Mon, 01 Aug 2016 19:49:14 GMT
EXPOSE 8080/tcp
# Mon, 01 Aug 2016 19:49:14 GMT
EXPOSE 8787/tcp
# Mon, 01 Aug 2016 19:49:15 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:783d0812b9b6cb13f78b8ecdddd83a821c6ddf11a1e3b9ede5e61d7c8ccfdc29`  
		Last Modified: Fri, 29 Jul 2016 16:48:13 GMT  
		Size: 53.4 MB (53350533 bytes)
	-	`sha256:2c49287cad2e905f46bf98d5d5461760bb975c335ace4ffca8466a2312465f9e`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 284.4 KB (284373 bytes)
	-	`sha256:d019746d4636344a5577b33b8e78760ad87b370f2824d3cce55cd7fc4b913ce6`  
		Last Modified: Mon, 01 Aug 2016 19:49:28 GMT  
		Size: 4.4 KB (4386 bytes)
	-	`sha256:d47ba0492eea178b3be9199c7ad0c3cf78251dfa82a5237d2da50ec413af2647`  
		Last Modified: Mon, 01 Aug 2016 19:49:27 GMT  
		Size: 807.9 KB (807934 bytes)
	-	`sha256:0e73bd0035a0a5fccd1e2b6c907550faef3ef3911e68013f0f9fda2fbedae9e9`  
		Last Modified: Mon, 01 Aug 2016 19:50:31 GMT  
		Size: 231.7 MB (231707550 bytes)
	-	`sha256:bbc5317519f9fd652420fa78f56565f0c907f60f54cdb9b0e90499e1c43d345a`  
		Last Modified: Mon, 01 Aug 2016 19:49:25 GMT  
		Size: 279.0 B
	-	`sha256:f604d1d42c2861e169d7de3a7b76b35c346daba769340e3fdec2502b1bbc8d82`  
		Last Modified: Mon, 01 Aug 2016 19:49:50 GMT  
		Size: 287.1 MB (287147763 bytes)
	-	`sha256:35378366002d440c1cb6f8ae7e97e84b08da20b423ada6593eba7f8b330e6a8e`  
		Last Modified: Mon, 01 Aug 2016 19:49:24 GMT  
		Size: 116.0 B
	-	`sha256:e5bde283dc27d06b1daa4a0746c18dd0438553333e247d8e6541e152bb026a88`  
		Last Modified: Mon, 01 Aug 2016 19:49:24 GMT  
		Size: 1.5 KB (1481 bytes)

## `nuxeo:LTS-2015`

```console
$ docker pull nuxeo@sha256:80b47ae2cea010fbc76eeb1811f757ae3d85efddff95114bd8970d13892d40d0
```

-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2015` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.0 MB (636960980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37b4b50142e692df8bcd052758d14c3e134be4684a0a8d557bf8c131b11be9bd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 29 Jul 2016 04:48:37 GMT
ENV JAVA_VERSION=8u91
# Fri, 29 Jul 2016 04:48:38 GMT
ENV JAVA_DEBIAN_VERSION=8u91-b14-1~bpo8+1
# Fri, 29 Jul 2016 04:48:38 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 29 Jul 2016 16:47:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 29 Jul 2016 16:47:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 01 Aug 2016 19:45:44 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Mon, 01 Aug 2016 19:45:45 GMT
ENV NUXEO_USER=nuxeo
# Mon, 01 Aug 2016 19:45:47 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Mon, 01 Aug 2016 19:45:47 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 19:45:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 01 Aug 2016 19:48:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 19:48:32 GMT
ADD file:5b1e1c0e2f46775870771ff0fe5f35cfc79b01466b73da308fa4f546a1796610 in /etc/ImageMagick/policy.xml
# Mon, 01 Aug 2016 19:52:18 GMT
ENV NUXEO_VERSION=7.10
# Mon, 01 Aug 2016 19:52:18 GMT
ENV NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Mon, 01 Aug 2016 19:52:19 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Mon, 01 Aug 2016 19:52:46 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-cap-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Mon, 01 Aug 2016 19:52:47 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Mon, 01 Aug 2016 19:52:48 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 Aug 2016 19:52:49 GMT
WORKDIR /opt/nuxeo/server
# Wed, 10 Aug 2016 16:56:56 GMT
COPY file:5cebeee78434ce067bd4b8b9c42eaa20349f1a252aaf628add51d12663b04917 in /
# Wed, 10 Aug 2016 16:56:57 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 16:56:57 GMT
EXPOSE 8080/tcp
# Wed, 10 Aug 2016 16:56:58 GMT
EXPOSE 8787/tcp
# Wed, 10 Aug 2016 16:56:58 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:783d0812b9b6cb13f78b8ecdddd83a821c6ddf11a1e3b9ede5e61d7c8ccfdc29`  
		Last Modified: Fri, 29 Jul 2016 16:48:13 GMT  
		Size: 53.4 MB (53350533 bytes)
	-	`sha256:2c49287cad2e905f46bf98d5d5461760bb975c335ace4ffca8466a2312465f9e`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 284.4 KB (284373 bytes)
	-	`sha256:d019746d4636344a5577b33b8e78760ad87b370f2824d3cce55cd7fc4b913ce6`  
		Last Modified: Mon, 01 Aug 2016 19:49:28 GMT  
		Size: 4.4 KB (4386 bytes)
	-	`sha256:d47ba0492eea178b3be9199c7ad0c3cf78251dfa82a5237d2da50ec413af2647`  
		Last Modified: Mon, 01 Aug 2016 19:49:27 GMT  
		Size: 807.9 KB (807934 bytes)
	-	`sha256:0e73bd0035a0a5fccd1e2b6c907550faef3ef3911e68013f0f9fda2fbedae9e9`  
		Last Modified: Mon, 01 Aug 2016 19:50:31 GMT  
		Size: 231.7 MB (231707550 bytes)
	-	`sha256:bbc5317519f9fd652420fa78f56565f0c907f60f54cdb9b0e90499e1c43d345a`  
		Last Modified: Mon, 01 Aug 2016 19:49:25 GMT  
		Size: 279.0 B
	-	`sha256:4f879610945e46b84d28919a7bb34ed4c9393719e030b23a95d0c76aef6fe6f2`  
		Last Modified: Mon, 01 Aug 2016 19:53:29 GMT  
		Size: 280.3 MB (280344511 bytes)
	-	`sha256:52f4bc87c64c3243cc5187c0fa0ade2ca424da458c0a8229dcd1fea5b707d5a9`  
		Last Modified: Mon, 01 Aug 2016 19:53:03 GMT  
		Size: 117.0 B
	-	`sha256:f148fb007daa6ac57f71a321f9da2fef40e20e708ec4b9942934eb038ad40135`  
		Last Modified: Wed, 10 Aug 2016 16:58:16 GMT  
		Size: 1.5 KB (1521 bytes)

## `nuxeo:LTS`

```console
$ docker pull nuxeo@sha256:80b47ae2cea010fbc76eeb1811f757ae3d85efddff95114bd8970d13892d40d0
```

-	Platforms:
	-	linux; amd64

### `nuxeo:LTS` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.0 MB (636960980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37b4b50142e692df8bcd052758d14c3e134be4684a0a8d557bf8c131b11be9bd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 29 Jul 2016 04:48:37 GMT
ENV JAVA_VERSION=8u91
# Fri, 29 Jul 2016 04:48:38 GMT
ENV JAVA_DEBIAN_VERSION=8u91-b14-1~bpo8+1
# Fri, 29 Jul 2016 04:48:38 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 29 Jul 2016 16:47:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 29 Jul 2016 16:47:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 01 Aug 2016 19:45:44 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Mon, 01 Aug 2016 19:45:45 GMT
ENV NUXEO_USER=nuxeo
# Mon, 01 Aug 2016 19:45:47 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Mon, 01 Aug 2016 19:45:47 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 19:45:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 01 Aug 2016 19:48:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 19:48:32 GMT
ADD file:5b1e1c0e2f46775870771ff0fe5f35cfc79b01466b73da308fa4f546a1796610 in /etc/ImageMagick/policy.xml
# Mon, 01 Aug 2016 19:52:18 GMT
ENV NUXEO_VERSION=7.10
# Mon, 01 Aug 2016 19:52:18 GMT
ENV NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Mon, 01 Aug 2016 19:52:19 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Mon, 01 Aug 2016 19:52:46 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-cap-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Mon, 01 Aug 2016 19:52:47 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Mon, 01 Aug 2016 19:52:48 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 Aug 2016 19:52:49 GMT
WORKDIR /opt/nuxeo/server
# Wed, 10 Aug 2016 16:56:56 GMT
COPY file:5cebeee78434ce067bd4b8b9c42eaa20349f1a252aaf628add51d12663b04917 in /
# Wed, 10 Aug 2016 16:56:57 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 16:56:57 GMT
EXPOSE 8080/tcp
# Wed, 10 Aug 2016 16:56:58 GMT
EXPOSE 8787/tcp
# Wed, 10 Aug 2016 16:56:58 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:783d0812b9b6cb13f78b8ecdddd83a821c6ddf11a1e3b9ede5e61d7c8ccfdc29`  
		Last Modified: Fri, 29 Jul 2016 16:48:13 GMT  
		Size: 53.4 MB (53350533 bytes)
	-	`sha256:2c49287cad2e905f46bf98d5d5461760bb975c335ace4ffca8466a2312465f9e`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 284.4 KB (284373 bytes)
	-	`sha256:d019746d4636344a5577b33b8e78760ad87b370f2824d3cce55cd7fc4b913ce6`  
		Last Modified: Mon, 01 Aug 2016 19:49:28 GMT  
		Size: 4.4 KB (4386 bytes)
	-	`sha256:d47ba0492eea178b3be9199c7ad0c3cf78251dfa82a5237d2da50ec413af2647`  
		Last Modified: Mon, 01 Aug 2016 19:49:27 GMT  
		Size: 807.9 KB (807934 bytes)
	-	`sha256:0e73bd0035a0a5fccd1e2b6c907550faef3ef3911e68013f0f9fda2fbedae9e9`  
		Last Modified: Mon, 01 Aug 2016 19:50:31 GMT  
		Size: 231.7 MB (231707550 bytes)
	-	`sha256:bbc5317519f9fd652420fa78f56565f0c907f60f54cdb9b0e90499e1c43d345a`  
		Last Modified: Mon, 01 Aug 2016 19:49:25 GMT  
		Size: 279.0 B
	-	`sha256:4f879610945e46b84d28919a7bb34ed4c9393719e030b23a95d0c76aef6fe6f2`  
		Last Modified: Mon, 01 Aug 2016 19:53:29 GMT  
		Size: 280.3 MB (280344511 bytes)
	-	`sha256:52f4bc87c64c3243cc5187c0fa0ade2ca424da458c0a8229dcd1fea5b707d5a9`  
		Last Modified: Mon, 01 Aug 2016 19:53:03 GMT  
		Size: 117.0 B
	-	`sha256:f148fb007daa6ac57f71a321f9da2fef40e20e708ec4b9942934eb038ad40135`  
		Last Modified: Wed, 10 Aug 2016 16:58:16 GMT  
		Size: 1.5 KB (1521 bytes)

## `nuxeo:7`

```console
$ docker pull nuxeo@sha256:80b47ae2cea010fbc76eeb1811f757ae3d85efddff95114bd8970d13892d40d0
```

-	Platforms:
	-	linux; amd64

### `nuxeo:7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.0 MB (636960980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37b4b50142e692df8bcd052758d14c3e134be4684a0a8d557bf8c131b11be9bd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 29 Jul 2016 04:48:37 GMT
ENV JAVA_VERSION=8u91
# Fri, 29 Jul 2016 04:48:38 GMT
ENV JAVA_DEBIAN_VERSION=8u91-b14-1~bpo8+1
# Fri, 29 Jul 2016 04:48:38 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 29 Jul 2016 16:47:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 29 Jul 2016 16:47:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 01 Aug 2016 19:45:44 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Mon, 01 Aug 2016 19:45:45 GMT
ENV NUXEO_USER=nuxeo
# Mon, 01 Aug 2016 19:45:47 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Mon, 01 Aug 2016 19:45:47 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 19:45:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 01 Aug 2016 19:48:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 19:48:32 GMT
ADD file:5b1e1c0e2f46775870771ff0fe5f35cfc79b01466b73da308fa4f546a1796610 in /etc/ImageMagick/policy.xml
# Mon, 01 Aug 2016 19:52:18 GMT
ENV NUXEO_VERSION=7.10
# Mon, 01 Aug 2016 19:52:18 GMT
ENV NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Mon, 01 Aug 2016 19:52:19 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Mon, 01 Aug 2016 19:52:46 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-cap-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Mon, 01 Aug 2016 19:52:47 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Mon, 01 Aug 2016 19:52:48 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 Aug 2016 19:52:49 GMT
WORKDIR /opt/nuxeo/server
# Wed, 10 Aug 2016 16:56:56 GMT
COPY file:5cebeee78434ce067bd4b8b9c42eaa20349f1a252aaf628add51d12663b04917 in /
# Wed, 10 Aug 2016 16:56:57 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 16:56:57 GMT
EXPOSE 8080/tcp
# Wed, 10 Aug 2016 16:56:58 GMT
EXPOSE 8787/tcp
# Wed, 10 Aug 2016 16:56:58 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:783d0812b9b6cb13f78b8ecdddd83a821c6ddf11a1e3b9ede5e61d7c8ccfdc29`  
		Last Modified: Fri, 29 Jul 2016 16:48:13 GMT  
		Size: 53.4 MB (53350533 bytes)
	-	`sha256:2c49287cad2e905f46bf98d5d5461760bb975c335ace4ffca8466a2312465f9e`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 284.4 KB (284373 bytes)
	-	`sha256:d019746d4636344a5577b33b8e78760ad87b370f2824d3cce55cd7fc4b913ce6`  
		Last Modified: Mon, 01 Aug 2016 19:49:28 GMT  
		Size: 4.4 KB (4386 bytes)
	-	`sha256:d47ba0492eea178b3be9199c7ad0c3cf78251dfa82a5237d2da50ec413af2647`  
		Last Modified: Mon, 01 Aug 2016 19:49:27 GMT  
		Size: 807.9 KB (807934 bytes)
	-	`sha256:0e73bd0035a0a5fccd1e2b6c907550faef3ef3911e68013f0f9fda2fbedae9e9`  
		Last Modified: Mon, 01 Aug 2016 19:50:31 GMT  
		Size: 231.7 MB (231707550 bytes)
	-	`sha256:bbc5317519f9fd652420fa78f56565f0c907f60f54cdb9b0e90499e1c43d345a`  
		Last Modified: Mon, 01 Aug 2016 19:49:25 GMT  
		Size: 279.0 B
	-	`sha256:4f879610945e46b84d28919a7bb34ed4c9393719e030b23a95d0c76aef6fe6f2`  
		Last Modified: Mon, 01 Aug 2016 19:53:29 GMT  
		Size: 280.3 MB (280344511 bytes)
	-	`sha256:52f4bc87c64c3243cc5187c0fa0ade2ca424da458c0a8229dcd1fea5b707d5a9`  
		Last Modified: Mon, 01 Aug 2016 19:53:03 GMT  
		Size: 117.0 B
	-	`sha256:f148fb007daa6ac57f71a321f9da2fef40e20e708ec4b9942934eb038ad40135`  
		Last Modified: Wed, 10 Aug 2016 16:58:16 GMT  
		Size: 1.5 KB (1521 bytes)

## `nuxeo:7.10`

```console
$ docker pull nuxeo@sha256:80b47ae2cea010fbc76eeb1811f757ae3d85efddff95114bd8970d13892d40d0
```

-	Platforms:
	-	linux; amd64

### `nuxeo:7.10` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.0 MB (636960980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37b4b50142e692df8bcd052758d14c3e134be4684a0a8d557bf8c131b11be9bd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 29 Jul 2016 04:48:37 GMT
ENV JAVA_VERSION=8u91
# Fri, 29 Jul 2016 04:48:38 GMT
ENV JAVA_DEBIAN_VERSION=8u91-b14-1~bpo8+1
# Fri, 29 Jul 2016 04:48:38 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 29 Jul 2016 16:47:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 29 Jul 2016 16:47:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 01 Aug 2016 19:45:44 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Mon, 01 Aug 2016 19:45:45 GMT
ENV NUXEO_USER=nuxeo
# Mon, 01 Aug 2016 19:45:47 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Mon, 01 Aug 2016 19:45:47 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 19:45:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 01 Aug 2016 19:48:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 19:48:32 GMT
ADD file:5b1e1c0e2f46775870771ff0fe5f35cfc79b01466b73da308fa4f546a1796610 in /etc/ImageMagick/policy.xml
# Mon, 01 Aug 2016 19:52:18 GMT
ENV NUXEO_VERSION=7.10
# Mon, 01 Aug 2016 19:52:18 GMT
ENV NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Mon, 01 Aug 2016 19:52:19 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Mon, 01 Aug 2016 19:52:46 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-cap-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Mon, 01 Aug 2016 19:52:47 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Mon, 01 Aug 2016 19:52:48 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 Aug 2016 19:52:49 GMT
WORKDIR /opt/nuxeo/server
# Wed, 10 Aug 2016 16:56:56 GMT
COPY file:5cebeee78434ce067bd4b8b9c42eaa20349f1a252aaf628add51d12663b04917 in /
# Wed, 10 Aug 2016 16:56:57 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 16:56:57 GMT
EXPOSE 8080/tcp
# Wed, 10 Aug 2016 16:56:58 GMT
EXPOSE 8787/tcp
# Wed, 10 Aug 2016 16:56:58 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:783d0812b9b6cb13f78b8ecdddd83a821c6ddf11a1e3b9ede5e61d7c8ccfdc29`  
		Last Modified: Fri, 29 Jul 2016 16:48:13 GMT  
		Size: 53.4 MB (53350533 bytes)
	-	`sha256:2c49287cad2e905f46bf98d5d5461760bb975c335ace4ffca8466a2312465f9e`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 284.4 KB (284373 bytes)
	-	`sha256:d019746d4636344a5577b33b8e78760ad87b370f2824d3cce55cd7fc4b913ce6`  
		Last Modified: Mon, 01 Aug 2016 19:49:28 GMT  
		Size: 4.4 KB (4386 bytes)
	-	`sha256:d47ba0492eea178b3be9199c7ad0c3cf78251dfa82a5237d2da50ec413af2647`  
		Last Modified: Mon, 01 Aug 2016 19:49:27 GMT  
		Size: 807.9 KB (807934 bytes)
	-	`sha256:0e73bd0035a0a5fccd1e2b6c907550faef3ef3911e68013f0f9fda2fbedae9e9`  
		Last Modified: Mon, 01 Aug 2016 19:50:31 GMT  
		Size: 231.7 MB (231707550 bytes)
	-	`sha256:bbc5317519f9fd652420fa78f56565f0c907f60f54cdb9b0e90499e1c43d345a`  
		Last Modified: Mon, 01 Aug 2016 19:49:25 GMT  
		Size: 279.0 B
	-	`sha256:4f879610945e46b84d28919a7bb34ed4c9393719e030b23a95d0c76aef6fe6f2`  
		Last Modified: Mon, 01 Aug 2016 19:53:29 GMT  
		Size: 280.3 MB (280344511 bytes)
	-	`sha256:52f4bc87c64c3243cc5187c0fa0ade2ca424da458c0a8229dcd1fea5b707d5a9`  
		Last Modified: Mon, 01 Aug 2016 19:53:03 GMT  
		Size: 117.0 B
	-	`sha256:f148fb007daa6ac57f71a321f9da2fef40e20e708ec4b9942934eb038ad40135`  
		Last Modified: Wed, 10 Aug 2016 16:58:16 GMT  
		Size: 1.5 KB (1521 bytes)

## `nuxeo:LTS-2014`

```console
$ docker pull nuxeo@sha256:0a38031d7b9528816b8b5d50439cb81f3c87e0a862e69ae4eb3869c70f71fa16
```

-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2014` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **543.7 MB (543717880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:113a3183d2ca93b929a6955e1b44e64e8a4b201e86a839c3e7dd3ade341c5dc8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 29 Jul 2016 04:48:37 GMT
ENV JAVA_VERSION=8u91
# Fri, 29 Jul 2016 04:48:38 GMT
ENV JAVA_DEBIAN_VERSION=8u91-b14-1~bpo8+1
# Fri, 29 Jul 2016 04:48:38 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 29 Jul 2016 16:47:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 29 Jul 2016 16:47:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 01 Aug 2016 19:45:44 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Mon, 01 Aug 2016 19:45:45 GMT
ENV NUXEO_USER=nuxeo
# Mon, 01 Aug 2016 19:45:47 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Mon, 01 Aug 2016 19:45:47 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 19:45:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 01 Aug 2016 19:48:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 19:48:32 GMT
ADD file:5b1e1c0e2f46775870771ff0fe5f35cfc79b01466b73da308fa4f546a1796610 in /etc/ImageMagick/policy.xml
# Mon, 01 Aug 2016 19:50:47 GMT
ENV NUXEO_VERSION=6.0
# Mon, 01 Aug 2016 19:50:48 GMT
ENV NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571
# Mon, 01 Aug 2016 19:50:49 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Mon, 01 Aug 2016 19:51:08 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-cap-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Mon, 01 Aug 2016 19:51:10 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Mon, 01 Aug 2016 19:51:10 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 Aug 2016 19:51:11 GMT
WORKDIR /opt/nuxeo/server
# Wed, 10 Aug 2016 16:56:59 GMT
COPY file:8d76e373fbb43b4776438b7110dcaac3baa7df9dc29515cde4e4507ea41bb412 in /
# Wed, 10 Aug 2016 16:57:00 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 16:57:00 GMT
EXPOSE 8080/tcp
# Wed, 10 Aug 2016 16:57:00 GMT
EXPOSE 8787/tcp
# Wed, 10 Aug 2016 16:57:01 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:783d0812b9b6cb13f78b8ecdddd83a821c6ddf11a1e3b9ede5e61d7c8ccfdc29`  
		Last Modified: Fri, 29 Jul 2016 16:48:13 GMT  
		Size: 53.4 MB (53350533 bytes)
	-	`sha256:2c49287cad2e905f46bf98d5d5461760bb975c335ace4ffca8466a2312465f9e`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 284.4 KB (284373 bytes)
	-	`sha256:d019746d4636344a5577b33b8e78760ad87b370f2824d3cce55cd7fc4b913ce6`  
		Last Modified: Mon, 01 Aug 2016 19:49:28 GMT  
		Size: 4.4 KB (4386 bytes)
	-	`sha256:d47ba0492eea178b3be9199c7ad0c3cf78251dfa82a5237d2da50ec413af2647`  
		Last Modified: Mon, 01 Aug 2016 19:49:27 GMT  
		Size: 807.9 KB (807934 bytes)
	-	`sha256:0e73bd0035a0a5fccd1e2b6c907550faef3ef3911e68013f0f9fda2fbedae9e9`  
		Last Modified: Mon, 01 Aug 2016 19:50:31 GMT  
		Size: 231.7 MB (231707550 bytes)
	-	`sha256:bbc5317519f9fd652420fa78f56565f0c907f60f54cdb9b0e90499e1c43d345a`  
		Last Modified: Mon, 01 Aug 2016 19:49:25 GMT  
		Size: 279.0 B
	-	`sha256:548a5e6b5c6a7bf020c64a6397818e5378b24c75b0ae9fa8f84b392b16547f43`  
		Last Modified: Mon, 01 Aug 2016 19:51:43 GMT  
		Size: 187.1 MB (187101549 bytes)
	-	`sha256:bb940089fea91c41dd9c5470a5d02a5db6c65e68724e02990a05eeccd141ee1f`  
		Last Modified: Mon, 01 Aug 2016 19:51:25 GMT  
		Size: 115.0 B
	-	`sha256:198f3fb128c21d250b1d6616de579677edd0db6ae56c7203974fae12519b1e6b`  
		Last Modified: Wed, 10 Aug 2016 16:59:03 GMT  
		Size: 1.4 KB (1385 bytes)

## `nuxeo:6`

```console
$ docker pull nuxeo@sha256:0a38031d7b9528816b8b5d50439cb81f3c87e0a862e69ae4eb3869c70f71fa16
```

-	Platforms:
	-	linux; amd64

### `nuxeo:6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **543.7 MB (543717880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:113a3183d2ca93b929a6955e1b44e64e8a4b201e86a839c3e7dd3ade341c5dc8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 29 Jul 2016 04:48:37 GMT
ENV JAVA_VERSION=8u91
# Fri, 29 Jul 2016 04:48:38 GMT
ENV JAVA_DEBIAN_VERSION=8u91-b14-1~bpo8+1
# Fri, 29 Jul 2016 04:48:38 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 29 Jul 2016 16:47:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 29 Jul 2016 16:47:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 01 Aug 2016 19:45:44 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Mon, 01 Aug 2016 19:45:45 GMT
ENV NUXEO_USER=nuxeo
# Mon, 01 Aug 2016 19:45:47 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Mon, 01 Aug 2016 19:45:47 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 19:45:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 01 Aug 2016 19:48:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 19:48:32 GMT
ADD file:5b1e1c0e2f46775870771ff0fe5f35cfc79b01466b73da308fa4f546a1796610 in /etc/ImageMagick/policy.xml
# Mon, 01 Aug 2016 19:50:47 GMT
ENV NUXEO_VERSION=6.0
# Mon, 01 Aug 2016 19:50:48 GMT
ENV NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571
# Mon, 01 Aug 2016 19:50:49 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Mon, 01 Aug 2016 19:51:08 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-cap-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Mon, 01 Aug 2016 19:51:10 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Mon, 01 Aug 2016 19:51:10 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 Aug 2016 19:51:11 GMT
WORKDIR /opt/nuxeo/server
# Wed, 10 Aug 2016 16:56:59 GMT
COPY file:8d76e373fbb43b4776438b7110dcaac3baa7df9dc29515cde4e4507ea41bb412 in /
# Wed, 10 Aug 2016 16:57:00 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 16:57:00 GMT
EXPOSE 8080/tcp
# Wed, 10 Aug 2016 16:57:00 GMT
EXPOSE 8787/tcp
# Wed, 10 Aug 2016 16:57:01 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:783d0812b9b6cb13f78b8ecdddd83a821c6ddf11a1e3b9ede5e61d7c8ccfdc29`  
		Last Modified: Fri, 29 Jul 2016 16:48:13 GMT  
		Size: 53.4 MB (53350533 bytes)
	-	`sha256:2c49287cad2e905f46bf98d5d5461760bb975c335ace4ffca8466a2312465f9e`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 284.4 KB (284373 bytes)
	-	`sha256:d019746d4636344a5577b33b8e78760ad87b370f2824d3cce55cd7fc4b913ce6`  
		Last Modified: Mon, 01 Aug 2016 19:49:28 GMT  
		Size: 4.4 KB (4386 bytes)
	-	`sha256:d47ba0492eea178b3be9199c7ad0c3cf78251dfa82a5237d2da50ec413af2647`  
		Last Modified: Mon, 01 Aug 2016 19:49:27 GMT  
		Size: 807.9 KB (807934 bytes)
	-	`sha256:0e73bd0035a0a5fccd1e2b6c907550faef3ef3911e68013f0f9fda2fbedae9e9`  
		Last Modified: Mon, 01 Aug 2016 19:50:31 GMT  
		Size: 231.7 MB (231707550 bytes)
	-	`sha256:bbc5317519f9fd652420fa78f56565f0c907f60f54cdb9b0e90499e1c43d345a`  
		Last Modified: Mon, 01 Aug 2016 19:49:25 GMT  
		Size: 279.0 B
	-	`sha256:548a5e6b5c6a7bf020c64a6397818e5378b24c75b0ae9fa8f84b392b16547f43`  
		Last Modified: Mon, 01 Aug 2016 19:51:43 GMT  
		Size: 187.1 MB (187101549 bytes)
	-	`sha256:bb940089fea91c41dd9c5470a5d02a5db6c65e68724e02990a05eeccd141ee1f`  
		Last Modified: Mon, 01 Aug 2016 19:51:25 GMT  
		Size: 115.0 B
	-	`sha256:198f3fb128c21d250b1d6616de579677edd0db6ae56c7203974fae12519b1e6b`  
		Last Modified: Wed, 10 Aug 2016 16:59:03 GMT  
		Size: 1.4 KB (1385 bytes)

## `nuxeo:6.0`

```console
$ docker pull nuxeo@sha256:0a38031d7b9528816b8b5d50439cb81f3c87e0a862e69ae4eb3869c70f71fa16
```

-	Platforms:
	-	linux; amd64

### `nuxeo:6.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **543.7 MB (543717880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:113a3183d2ca93b929a6955e1b44e64e8a4b201e86a839c3e7dd3ade341c5dc8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 29 Jul 2016 04:48:37 GMT
ENV JAVA_VERSION=8u91
# Fri, 29 Jul 2016 04:48:38 GMT
ENV JAVA_DEBIAN_VERSION=8u91-b14-1~bpo8+1
# Fri, 29 Jul 2016 04:48:38 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 29 Jul 2016 16:47:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 29 Jul 2016 16:47:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 01 Aug 2016 19:45:44 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Mon, 01 Aug 2016 19:45:45 GMT
ENV NUXEO_USER=nuxeo
# Mon, 01 Aug 2016 19:45:47 GMT
RUN useradd -m -d /home/$NUXEO_USER -s /bin/bash $NUXEO_USER
# Mon, 01 Aug 2016 19:45:47 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 19:45:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 01 Aug 2016 19:48:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 19:48:32 GMT
ADD file:5b1e1c0e2f46775870771ff0fe5f35cfc79b01466b73da308fa4f546a1796610 in /etc/ImageMagick/policy.xml
# Mon, 01 Aug 2016 19:50:47 GMT
ENV NUXEO_VERSION=6.0
# Mon, 01 Aug 2016 19:50:48 GMT
ENV NUXEO_MD5=b8cbc0b2858b0697a541be49feb24571
# Mon, 01 Aug 2016 19:50:49 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Mon, 01 Aug 2016 19:51:08 GMT
RUN curl -fsSL "http://cdn.nuxeo.com/nuxeo-${NUXEO_VERSION}/nuxeo-cap-${NUXEO_VERSION}-tomcat.zip" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Mon, 01 Aug 2016 19:51:10 GMT
RUN mkdir /docker-entrypoint-initnuxeo.d
# Mon, 01 Aug 2016 19:51:10 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 Aug 2016 19:51:11 GMT
WORKDIR /opt/nuxeo/server
# Wed, 10 Aug 2016 16:56:59 GMT
COPY file:8d76e373fbb43b4776438b7110dcaac3baa7df9dc29515cde4e4507ea41bb412 in /
# Wed, 10 Aug 2016 16:57:00 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Wed, 10 Aug 2016 16:57:00 GMT
EXPOSE 8080/tcp
# Wed, 10 Aug 2016 16:57:00 GMT
EXPOSE 8787/tcp
# Wed, 10 Aug 2016 16:57:01 GMT
CMD ["nuxeoctl" "console"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:783d0812b9b6cb13f78b8ecdddd83a821c6ddf11a1e3b9ede5e61d7c8ccfdc29`  
		Last Modified: Fri, 29 Jul 2016 16:48:13 GMT  
		Size: 53.4 MB (53350533 bytes)
	-	`sha256:2c49287cad2e905f46bf98d5d5461760bb975c335ace4ffca8466a2312465f9e`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 284.4 KB (284373 bytes)
	-	`sha256:d019746d4636344a5577b33b8e78760ad87b370f2824d3cce55cd7fc4b913ce6`  
		Last Modified: Mon, 01 Aug 2016 19:49:28 GMT  
		Size: 4.4 KB (4386 bytes)
	-	`sha256:d47ba0492eea178b3be9199c7ad0c3cf78251dfa82a5237d2da50ec413af2647`  
		Last Modified: Mon, 01 Aug 2016 19:49:27 GMT  
		Size: 807.9 KB (807934 bytes)
	-	`sha256:0e73bd0035a0a5fccd1e2b6c907550faef3ef3911e68013f0f9fda2fbedae9e9`  
		Last Modified: Mon, 01 Aug 2016 19:50:31 GMT  
		Size: 231.7 MB (231707550 bytes)
	-	`sha256:bbc5317519f9fd652420fa78f56565f0c907f60f54cdb9b0e90499e1c43d345a`  
		Last Modified: Mon, 01 Aug 2016 19:49:25 GMT  
		Size: 279.0 B
	-	`sha256:548a5e6b5c6a7bf020c64a6397818e5378b24c75b0ae9fa8f84b392b16547f43`  
		Last Modified: Mon, 01 Aug 2016 19:51:43 GMT  
		Size: 187.1 MB (187101549 bytes)
	-	`sha256:bb940089fea91c41dd9c5470a5d02a5db6c65e68724e02990a05eeccd141ee1f`  
		Last Modified: Mon, 01 Aug 2016 19:51:25 GMT  
		Size: 115.0 B
	-	`sha256:198f3fb128c21d250b1d6616de579677edd0db6ae56c7203974fae12519b1e6b`  
		Last Modified: Wed, 10 Aug 2016 16:59:03 GMT  
		Size: 1.4 KB (1385 bytes)
