<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `jetty`

-	[`jetty:9.3.11`](#jetty9311)
-	[`jetty:9.3`](#jetty93)
-	[`jetty:9`](#jetty9)
-	[`jetty:9.3.11-jre8`](#jetty9311-jre8)
-	[`jetty:9.3-jre8`](#jetty93-jre8)
-	[`jetty:9-jre8`](#jetty9-jre8)
-	[`jetty:latest`](#jettylatest)
-	[`jetty:jre8`](#jettyjre8)
-	[`jetty:9.3.11-alpine`](#jetty9311-alpine)
-	[`jetty:9.3-alpine`](#jetty93-alpine)
-	[`jetty:9-alpine`](#jetty9-alpine)
-	[`jetty:9.3.11-jre8-alpine`](#jetty9311-jre8-alpine)
-	[`jetty:9.3-jre8-alpine`](#jetty93-jre8-alpine)
-	[`jetty:9-jre8-alpine`](#jetty9-jre8-alpine)
-	[`jetty:alpine`](#jettyalpine)
-	[`jetty:jre8-alpine`](#jettyjre8-alpine)
-	[`jetty:9.2.18`](#jetty9218)
-	[`jetty:9.2`](#jetty92)
-	[`jetty:9.2.18-jre8`](#jetty9218-jre8)
-	[`jetty:9.2-jre8`](#jetty92-jre8)
-	[`jetty:9.2.18-jre7`](#jetty9218-jre7)
-	[`jetty:9.2-jre7`](#jetty92-jre7)
-	[`jetty:9-jre7`](#jetty9-jre7)
-	[`jetty:jre7`](#jettyjre7)

## `jetty:9.3.11`

**does not exist** (yet?)

## `jetty:9.3`

```console
$ docker pull jetty@sha256:f3275f9870c7ff14b50bd949a3278b667dadb40a581ea13d79f35cba85f0153f
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132053917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28118d5bd099a22e56a64ac49eb8172cccf9e618902ced41a25a7048df2ba3f9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:39:59 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 11 Aug 2016 17:39:59 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 11 Aug 2016 17:40:00 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:40:02 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 11 Aug 2016 17:40:03 GMT
WORKDIR /usr/local/jetty
# Thu, 11 Aug 2016 17:41:17 GMT
ENV JETTY_VERSION=9.3.10.v20160621
# Thu, 11 Aug 2016 17:41:18 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.10.v20160621/jetty-distribution-9.3.10.v20160621.tar.gz
# Thu, 11 Aug 2016 17:41:18 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Thu, 11 Aug 2016 17:41:23 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Thu, 11 Aug 2016 17:41:24 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 11 Aug 2016 17:41:26 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 11 Aug 2016 17:41:27 GMT
WORKDIR /var/lib/jetty
# Thu, 11 Aug 2016 17:41:29 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Thu, 11 Aug 2016 17:41:30 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 11 Aug 2016 17:41:32 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Thu, 11 Aug 2016 17:41:33 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in /
# Thu, 11 Aug 2016 17:41:34 GMT
EXPOSE 8080/tcp
# Thu, 11 Aug 2016 17:41:35 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 17:41:36 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0b8bb8877cd85866e881e057492414348e0d40cdb8f531f222c070f97f2708`  
		Last Modified: Thu, 11 Aug 2016 17:40:37 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11007b1085472445c511b578a829164efbc0532736d07e90deb316c0792f791b`  
		Last Modified: Thu, 11 Aug 2016 17:40:37 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e4de71b2524c6c801b459c0c2cc06523ffb63ca1cf63f74be428c8f1f7d64f`  
		Last Modified: Thu, 11 Aug 2016 17:41:50 GMT  
		Size: 7.9 MB (7901615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9422f7b8ed4109ce88ee16686af7acc088c6eebf49c33c19881ee1bdf14ad0`  
		Last Modified: Thu, 11 Aug 2016 17:41:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd1982ce8c6c3adad785987785179fe6ed00d255c0dd69375aa1b03fb035dad`  
		Last Modified: Thu, 11 Aug 2016 17:41:47 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be31adf40a10e33f4e998db618404fa430fb78658b2516286bcb5e644dbe94dc`  
		Last Modified: Thu, 11 Aug 2016 17:41:47 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4c0d4d466e56d0500f36e3585dd4fd3252ff2910c70339470e1f6228170cee`  
		Last Modified: Thu, 11 Aug 2016 17:41:47 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9`

```console
$ docker pull jetty@sha256:f3275f9870c7ff14b50bd949a3278b667dadb40a581ea13d79f35cba85f0153f
```

-	Platforms:
	-	linux; amd64

### `jetty:9` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132053917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28118d5bd099a22e56a64ac49eb8172cccf9e618902ced41a25a7048df2ba3f9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:39:59 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 11 Aug 2016 17:39:59 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 11 Aug 2016 17:40:00 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:40:02 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 11 Aug 2016 17:40:03 GMT
WORKDIR /usr/local/jetty
# Thu, 11 Aug 2016 17:41:17 GMT
ENV JETTY_VERSION=9.3.10.v20160621
# Thu, 11 Aug 2016 17:41:18 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.10.v20160621/jetty-distribution-9.3.10.v20160621.tar.gz
# Thu, 11 Aug 2016 17:41:18 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Thu, 11 Aug 2016 17:41:23 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Thu, 11 Aug 2016 17:41:24 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 11 Aug 2016 17:41:26 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 11 Aug 2016 17:41:27 GMT
WORKDIR /var/lib/jetty
# Thu, 11 Aug 2016 17:41:29 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Thu, 11 Aug 2016 17:41:30 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 11 Aug 2016 17:41:32 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Thu, 11 Aug 2016 17:41:33 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in /
# Thu, 11 Aug 2016 17:41:34 GMT
EXPOSE 8080/tcp
# Thu, 11 Aug 2016 17:41:35 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 17:41:36 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0b8bb8877cd85866e881e057492414348e0d40cdb8f531f222c070f97f2708`  
		Last Modified: Thu, 11 Aug 2016 17:40:37 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11007b1085472445c511b578a829164efbc0532736d07e90deb316c0792f791b`  
		Last Modified: Thu, 11 Aug 2016 17:40:37 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e4de71b2524c6c801b459c0c2cc06523ffb63ca1cf63f74be428c8f1f7d64f`  
		Last Modified: Thu, 11 Aug 2016 17:41:50 GMT  
		Size: 7.9 MB (7901615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9422f7b8ed4109ce88ee16686af7acc088c6eebf49c33c19881ee1bdf14ad0`  
		Last Modified: Thu, 11 Aug 2016 17:41:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd1982ce8c6c3adad785987785179fe6ed00d255c0dd69375aa1b03fb035dad`  
		Last Modified: Thu, 11 Aug 2016 17:41:47 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be31adf40a10e33f4e998db618404fa430fb78658b2516286bcb5e644dbe94dc`  
		Last Modified: Thu, 11 Aug 2016 17:41:47 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4c0d4d466e56d0500f36e3585dd4fd3252ff2910c70339470e1f6228170cee`  
		Last Modified: Thu, 11 Aug 2016 17:41:47 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.11-jre8`

**does not exist** (yet?)

## `jetty:9.3-jre8`

```console
$ docker pull jetty@sha256:f3275f9870c7ff14b50bd949a3278b667dadb40a581ea13d79f35cba85f0153f
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3-jre8` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132053917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28118d5bd099a22e56a64ac49eb8172cccf9e618902ced41a25a7048df2ba3f9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:39:59 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 11 Aug 2016 17:39:59 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 11 Aug 2016 17:40:00 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:40:02 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 11 Aug 2016 17:40:03 GMT
WORKDIR /usr/local/jetty
# Thu, 11 Aug 2016 17:41:17 GMT
ENV JETTY_VERSION=9.3.10.v20160621
# Thu, 11 Aug 2016 17:41:18 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.10.v20160621/jetty-distribution-9.3.10.v20160621.tar.gz
# Thu, 11 Aug 2016 17:41:18 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Thu, 11 Aug 2016 17:41:23 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Thu, 11 Aug 2016 17:41:24 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 11 Aug 2016 17:41:26 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 11 Aug 2016 17:41:27 GMT
WORKDIR /var/lib/jetty
# Thu, 11 Aug 2016 17:41:29 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Thu, 11 Aug 2016 17:41:30 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 11 Aug 2016 17:41:32 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Thu, 11 Aug 2016 17:41:33 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in /
# Thu, 11 Aug 2016 17:41:34 GMT
EXPOSE 8080/tcp
# Thu, 11 Aug 2016 17:41:35 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 17:41:36 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0b8bb8877cd85866e881e057492414348e0d40cdb8f531f222c070f97f2708`  
		Last Modified: Thu, 11 Aug 2016 17:40:37 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11007b1085472445c511b578a829164efbc0532736d07e90deb316c0792f791b`  
		Last Modified: Thu, 11 Aug 2016 17:40:37 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e4de71b2524c6c801b459c0c2cc06523ffb63ca1cf63f74be428c8f1f7d64f`  
		Last Modified: Thu, 11 Aug 2016 17:41:50 GMT  
		Size: 7.9 MB (7901615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9422f7b8ed4109ce88ee16686af7acc088c6eebf49c33c19881ee1bdf14ad0`  
		Last Modified: Thu, 11 Aug 2016 17:41:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd1982ce8c6c3adad785987785179fe6ed00d255c0dd69375aa1b03fb035dad`  
		Last Modified: Thu, 11 Aug 2016 17:41:47 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be31adf40a10e33f4e998db618404fa430fb78658b2516286bcb5e644dbe94dc`  
		Last Modified: Thu, 11 Aug 2016 17:41:47 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4c0d4d466e56d0500f36e3585dd4fd3252ff2910c70339470e1f6228170cee`  
		Last Modified: Thu, 11 Aug 2016 17:41:47 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre8`

```console
$ docker pull jetty@sha256:f3275f9870c7ff14b50bd949a3278b667dadb40a581ea13d79f35cba85f0153f
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre8` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132053917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28118d5bd099a22e56a64ac49eb8172cccf9e618902ced41a25a7048df2ba3f9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:39:59 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 11 Aug 2016 17:39:59 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 11 Aug 2016 17:40:00 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:40:02 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 11 Aug 2016 17:40:03 GMT
WORKDIR /usr/local/jetty
# Thu, 11 Aug 2016 17:41:17 GMT
ENV JETTY_VERSION=9.3.10.v20160621
# Thu, 11 Aug 2016 17:41:18 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.10.v20160621/jetty-distribution-9.3.10.v20160621.tar.gz
# Thu, 11 Aug 2016 17:41:18 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Thu, 11 Aug 2016 17:41:23 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Thu, 11 Aug 2016 17:41:24 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 11 Aug 2016 17:41:26 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 11 Aug 2016 17:41:27 GMT
WORKDIR /var/lib/jetty
# Thu, 11 Aug 2016 17:41:29 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Thu, 11 Aug 2016 17:41:30 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 11 Aug 2016 17:41:32 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Thu, 11 Aug 2016 17:41:33 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in /
# Thu, 11 Aug 2016 17:41:34 GMT
EXPOSE 8080/tcp
# Thu, 11 Aug 2016 17:41:35 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 17:41:36 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0b8bb8877cd85866e881e057492414348e0d40cdb8f531f222c070f97f2708`  
		Last Modified: Thu, 11 Aug 2016 17:40:37 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11007b1085472445c511b578a829164efbc0532736d07e90deb316c0792f791b`  
		Last Modified: Thu, 11 Aug 2016 17:40:37 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e4de71b2524c6c801b459c0c2cc06523ffb63ca1cf63f74be428c8f1f7d64f`  
		Last Modified: Thu, 11 Aug 2016 17:41:50 GMT  
		Size: 7.9 MB (7901615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9422f7b8ed4109ce88ee16686af7acc088c6eebf49c33c19881ee1bdf14ad0`  
		Last Modified: Thu, 11 Aug 2016 17:41:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd1982ce8c6c3adad785987785179fe6ed00d255c0dd69375aa1b03fb035dad`  
		Last Modified: Thu, 11 Aug 2016 17:41:47 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be31adf40a10e33f4e998db618404fa430fb78658b2516286bcb5e644dbe94dc`  
		Last Modified: Thu, 11 Aug 2016 17:41:47 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4c0d4d466e56d0500f36e3585dd4fd3252ff2910c70339470e1f6228170cee`  
		Last Modified: Thu, 11 Aug 2016 17:41:47 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:latest`

```console
$ docker pull jetty@sha256:f3275f9870c7ff14b50bd949a3278b667dadb40a581ea13d79f35cba85f0153f
```

-	Platforms:
	-	linux; amd64

### `jetty:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132053917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28118d5bd099a22e56a64ac49eb8172cccf9e618902ced41a25a7048df2ba3f9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:39:59 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 11 Aug 2016 17:39:59 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 11 Aug 2016 17:40:00 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:40:02 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 11 Aug 2016 17:40:03 GMT
WORKDIR /usr/local/jetty
# Thu, 11 Aug 2016 17:41:17 GMT
ENV JETTY_VERSION=9.3.10.v20160621
# Thu, 11 Aug 2016 17:41:18 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.10.v20160621/jetty-distribution-9.3.10.v20160621.tar.gz
# Thu, 11 Aug 2016 17:41:18 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Thu, 11 Aug 2016 17:41:23 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Thu, 11 Aug 2016 17:41:24 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 11 Aug 2016 17:41:26 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 11 Aug 2016 17:41:27 GMT
WORKDIR /var/lib/jetty
# Thu, 11 Aug 2016 17:41:29 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Thu, 11 Aug 2016 17:41:30 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 11 Aug 2016 17:41:32 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Thu, 11 Aug 2016 17:41:33 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in /
# Thu, 11 Aug 2016 17:41:34 GMT
EXPOSE 8080/tcp
# Thu, 11 Aug 2016 17:41:35 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 17:41:36 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0b8bb8877cd85866e881e057492414348e0d40cdb8f531f222c070f97f2708`  
		Last Modified: Thu, 11 Aug 2016 17:40:37 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11007b1085472445c511b578a829164efbc0532736d07e90deb316c0792f791b`  
		Last Modified: Thu, 11 Aug 2016 17:40:37 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e4de71b2524c6c801b459c0c2cc06523ffb63ca1cf63f74be428c8f1f7d64f`  
		Last Modified: Thu, 11 Aug 2016 17:41:50 GMT  
		Size: 7.9 MB (7901615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9422f7b8ed4109ce88ee16686af7acc088c6eebf49c33c19881ee1bdf14ad0`  
		Last Modified: Thu, 11 Aug 2016 17:41:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd1982ce8c6c3adad785987785179fe6ed00d255c0dd69375aa1b03fb035dad`  
		Last Modified: Thu, 11 Aug 2016 17:41:47 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be31adf40a10e33f4e998db618404fa430fb78658b2516286bcb5e644dbe94dc`  
		Last Modified: Thu, 11 Aug 2016 17:41:47 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4c0d4d466e56d0500f36e3585dd4fd3252ff2910c70339470e1f6228170cee`  
		Last Modified: Thu, 11 Aug 2016 17:41:47 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre8`

```console
$ docker pull jetty@sha256:f3275f9870c7ff14b50bd949a3278b667dadb40a581ea13d79f35cba85f0153f
```

-	Platforms:
	-	linux; amd64

### `jetty:jre8` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132053917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28118d5bd099a22e56a64ac49eb8172cccf9e618902ced41a25a7048df2ba3f9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:39:59 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 11 Aug 2016 17:39:59 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 11 Aug 2016 17:40:00 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:40:02 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 11 Aug 2016 17:40:03 GMT
WORKDIR /usr/local/jetty
# Thu, 11 Aug 2016 17:41:17 GMT
ENV JETTY_VERSION=9.3.10.v20160621
# Thu, 11 Aug 2016 17:41:18 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.10.v20160621/jetty-distribution-9.3.10.v20160621.tar.gz
# Thu, 11 Aug 2016 17:41:18 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Thu, 11 Aug 2016 17:41:23 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Thu, 11 Aug 2016 17:41:24 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 11 Aug 2016 17:41:26 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 11 Aug 2016 17:41:27 GMT
WORKDIR /var/lib/jetty
# Thu, 11 Aug 2016 17:41:29 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Thu, 11 Aug 2016 17:41:30 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 11 Aug 2016 17:41:32 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Thu, 11 Aug 2016 17:41:33 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in /
# Thu, 11 Aug 2016 17:41:34 GMT
EXPOSE 8080/tcp
# Thu, 11 Aug 2016 17:41:35 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 17:41:36 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0b8bb8877cd85866e881e057492414348e0d40cdb8f531f222c070f97f2708`  
		Last Modified: Thu, 11 Aug 2016 17:40:37 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11007b1085472445c511b578a829164efbc0532736d07e90deb316c0792f791b`  
		Last Modified: Thu, 11 Aug 2016 17:40:37 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e4de71b2524c6c801b459c0c2cc06523ffb63ca1cf63f74be428c8f1f7d64f`  
		Last Modified: Thu, 11 Aug 2016 17:41:50 GMT  
		Size: 7.9 MB (7901615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9422f7b8ed4109ce88ee16686af7acc088c6eebf49c33c19881ee1bdf14ad0`  
		Last Modified: Thu, 11 Aug 2016 17:41:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd1982ce8c6c3adad785987785179fe6ed00d255c0dd69375aa1b03fb035dad`  
		Last Modified: Thu, 11 Aug 2016 17:41:47 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be31adf40a10e33f4e998db618404fa430fb78658b2516286bcb5e644dbe94dc`  
		Last Modified: Thu, 11 Aug 2016 17:41:47 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4c0d4d466e56d0500f36e3585dd4fd3252ff2910c70339470e1f6228170cee`  
		Last Modified: Thu, 11 Aug 2016 17:41:47 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.11-alpine`

**does not exist** (yet?)

## `jetty:9.3-alpine`

```console
$ docker pull jetty@sha256:0c220ff9c30caacb9ad2e3569a080acecbdbabef292f81ce3d307c126a57eb49
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49915372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b342af3ffe3f3892f107db7478fe39598b4bd3b7d987ee4259987c7e70f99bda`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:34:53 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jun 2016 20:34:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 23 Jun 2016 20:36:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 07 Jul 2016 19:05:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_VERSION=8u92
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Thu, 07 Jul 2016 19:05:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Jul 2016 21:04:34 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 07 Jul 2016 21:04:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 07 Jul 2016 21:04:35 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 21:04:37 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 07 Jul 2016 21:04:38 GMT
WORKDIR /usr/local/jetty
# Thu, 07 Jul 2016 21:04:38 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 07 Jul 2016 21:04:40 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 07 Jul 2016 21:04:40 GMT
ENV JETTY_VERSION=9.3.10.v20160621
# Thu, 07 Jul 2016 21:04:41 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.10.v20160621/jetty-distribution-9.3.10.v20160621.tar.gz
# Thu, 07 Jul 2016 21:04:41 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Thu, 07 Jul 2016 21:04:56 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 07 Jul 2016 21:04:57 GMT
WORKDIR /var/lib/jetty
# Mon, 11 Jul 2016 17:20:05 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 11 Jul 2016 17:20:06 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Mon, 11 Jul 2016 17:20:07 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in /
# Mon, 11 Jul 2016 17:20:07 GMT
EXPOSE 8080/tcp
# Mon, 11 Jul 2016 17:20:07 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Mon, 11 Jul 2016 17:20:08 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745c1cd94ebe79c47147dc3c57bb9cba552a51edb00465b243006e01a1e941a9`  
		Last Modified: Thu, 07 Jul 2016 19:14:28 GMT  
		Size: 39.6 MB (39647617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7748c7147eb6b4ee4126f3f90f3a5789d770f5a4f4bf6c1009773a5ad9b8777f`  
		Last Modified: Thu, 07 Jul 2016 21:05:13 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c7339b50b12915c94358f19a7f27875325afbf72d38401ab08c2c2e7a8a823`  
		Last Modified: Thu, 07 Jul 2016 21:05:10 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5ec396360e0e7fda108b961c4a678ea609c7a754306018e0e6e5ea92407672`  
		Last Modified: Thu, 07 Jul 2016 21:05:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75adb208765bc964ea8ca57a86510bc2b39d39e436f2c0afce488b2b9d17be1f`  
		Last Modified: Thu, 07 Jul 2016 21:05:12 GMT  
		Size: 7.9 MB (7932496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374c30d103bd4f35fa584d4b8109f6b58a9e682d8f589c1ce769ed359379b086`  
		Last Modified: Mon, 11 Jul 2016 17:21:39 GMT  
		Size: 1.8 KB (1755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d365250084c74a2141be1431a825b4853f83cb92268fe71bce17772041b4221`  
		Last Modified: Mon, 11 Jul 2016 17:21:39 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-alpine`

```console
$ docker pull jetty@sha256:0c220ff9c30caacb9ad2e3569a080acecbdbabef292f81ce3d307c126a57eb49
```

-	Platforms:
	-	linux; amd64

### `jetty:9-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49915372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b342af3ffe3f3892f107db7478fe39598b4bd3b7d987ee4259987c7e70f99bda`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:34:53 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jun 2016 20:34:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 23 Jun 2016 20:36:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 07 Jul 2016 19:05:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_VERSION=8u92
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Thu, 07 Jul 2016 19:05:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Jul 2016 21:04:34 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 07 Jul 2016 21:04:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 07 Jul 2016 21:04:35 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 21:04:37 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 07 Jul 2016 21:04:38 GMT
WORKDIR /usr/local/jetty
# Thu, 07 Jul 2016 21:04:38 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 07 Jul 2016 21:04:40 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 07 Jul 2016 21:04:40 GMT
ENV JETTY_VERSION=9.3.10.v20160621
# Thu, 07 Jul 2016 21:04:41 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.10.v20160621/jetty-distribution-9.3.10.v20160621.tar.gz
# Thu, 07 Jul 2016 21:04:41 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Thu, 07 Jul 2016 21:04:56 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 07 Jul 2016 21:04:57 GMT
WORKDIR /var/lib/jetty
# Mon, 11 Jul 2016 17:20:05 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 11 Jul 2016 17:20:06 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Mon, 11 Jul 2016 17:20:07 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in /
# Mon, 11 Jul 2016 17:20:07 GMT
EXPOSE 8080/tcp
# Mon, 11 Jul 2016 17:20:07 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Mon, 11 Jul 2016 17:20:08 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745c1cd94ebe79c47147dc3c57bb9cba552a51edb00465b243006e01a1e941a9`  
		Last Modified: Thu, 07 Jul 2016 19:14:28 GMT  
		Size: 39.6 MB (39647617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7748c7147eb6b4ee4126f3f90f3a5789d770f5a4f4bf6c1009773a5ad9b8777f`  
		Last Modified: Thu, 07 Jul 2016 21:05:13 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c7339b50b12915c94358f19a7f27875325afbf72d38401ab08c2c2e7a8a823`  
		Last Modified: Thu, 07 Jul 2016 21:05:10 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5ec396360e0e7fda108b961c4a678ea609c7a754306018e0e6e5ea92407672`  
		Last Modified: Thu, 07 Jul 2016 21:05:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75adb208765bc964ea8ca57a86510bc2b39d39e436f2c0afce488b2b9d17be1f`  
		Last Modified: Thu, 07 Jul 2016 21:05:12 GMT  
		Size: 7.9 MB (7932496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374c30d103bd4f35fa584d4b8109f6b58a9e682d8f589c1ce769ed359379b086`  
		Last Modified: Mon, 11 Jul 2016 17:21:39 GMT  
		Size: 1.8 KB (1755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d365250084c74a2141be1431a825b4853f83cb92268fe71bce17772041b4221`  
		Last Modified: Mon, 11 Jul 2016 17:21:39 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.11-jre8-alpine`

**does not exist** (yet?)

## `jetty:9.3-jre8-alpine`

```console
$ docker pull jetty@sha256:0c220ff9c30caacb9ad2e3569a080acecbdbabef292f81ce3d307c126a57eb49
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3-jre8-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49915372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b342af3ffe3f3892f107db7478fe39598b4bd3b7d987ee4259987c7e70f99bda`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:34:53 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jun 2016 20:34:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 23 Jun 2016 20:36:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 07 Jul 2016 19:05:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_VERSION=8u92
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Thu, 07 Jul 2016 19:05:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Jul 2016 21:04:34 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 07 Jul 2016 21:04:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 07 Jul 2016 21:04:35 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 21:04:37 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 07 Jul 2016 21:04:38 GMT
WORKDIR /usr/local/jetty
# Thu, 07 Jul 2016 21:04:38 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 07 Jul 2016 21:04:40 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 07 Jul 2016 21:04:40 GMT
ENV JETTY_VERSION=9.3.10.v20160621
# Thu, 07 Jul 2016 21:04:41 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.10.v20160621/jetty-distribution-9.3.10.v20160621.tar.gz
# Thu, 07 Jul 2016 21:04:41 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Thu, 07 Jul 2016 21:04:56 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 07 Jul 2016 21:04:57 GMT
WORKDIR /var/lib/jetty
# Mon, 11 Jul 2016 17:20:05 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 11 Jul 2016 17:20:06 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Mon, 11 Jul 2016 17:20:07 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in /
# Mon, 11 Jul 2016 17:20:07 GMT
EXPOSE 8080/tcp
# Mon, 11 Jul 2016 17:20:07 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Mon, 11 Jul 2016 17:20:08 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745c1cd94ebe79c47147dc3c57bb9cba552a51edb00465b243006e01a1e941a9`  
		Last Modified: Thu, 07 Jul 2016 19:14:28 GMT  
		Size: 39.6 MB (39647617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7748c7147eb6b4ee4126f3f90f3a5789d770f5a4f4bf6c1009773a5ad9b8777f`  
		Last Modified: Thu, 07 Jul 2016 21:05:13 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c7339b50b12915c94358f19a7f27875325afbf72d38401ab08c2c2e7a8a823`  
		Last Modified: Thu, 07 Jul 2016 21:05:10 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5ec396360e0e7fda108b961c4a678ea609c7a754306018e0e6e5ea92407672`  
		Last Modified: Thu, 07 Jul 2016 21:05:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75adb208765bc964ea8ca57a86510bc2b39d39e436f2c0afce488b2b9d17be1f`  
		Last Modified: Thu, 07 Jul 2016 21:05:12 GMT  
		Size: 7.9 MB (7932496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374c30d103bd4f35fa584d4b8109f6b58a9e682d8f589c1ce769ed359379b086`  
		Last Modified: Mon, 11 Jul 2016 17:21:39 GMT  
		Size: 1.8 KB (1755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d365250084c74a2141be1431a825b4853f83cb92268fe71bce17772041b4221`  
		Last Modified: Mon, 11 Jul 2016 17:21:39 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre8-alpine`

```console
$ docker pull jetty@sha256:0c220ff9c30caacb9ad2e3569a080acecbdbabef292f81ce3d307c126a57eb49
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre8-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49915372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b342af3ffe3f3892f107db7478fe39598b4bd3b7d987ee4259987c7e70f99bda`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:34:53 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jun 2016 20:34:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 23 Jun 2016 20:36:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 07 Jul 2016 19:05:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_VERSION=8u92
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Thu, 07 Jul 2016 19:05:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Jul 2016 21:04:34 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 07 Jul 2016 21:04:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 07 Jul 2016 21:04:35 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 21:04:37 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 07 Jul 2016 21:04:38 GMT
WORKDIR /usr/local/jetty
# Thu, 07 Jul 2016 21:04:38 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 07 Jul 2016 21:04:40 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 07 Jul 2016 21:04:40 GMT
ENV JETTY_VERSION=9.3.10.v20160621
# Thu, 07 Jul 2016 21:04:41 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.10.v20160621/jetty-distribution-9.3.10.v20160621.tar.gz
# Thu, 07 Jul 2016 21:04:41 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Thu, 07 Jul 2016 21:04:56 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 07 Jul 2016 21:04:57 GMT
WORKDIR /var/lib/jetty
# Mon, 11 Jul 2016 17:20:05 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 11 Jul 2016 17:20:06 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Mon, 11 Jul 2016 17:20:07 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in /
# Mon, 11 Jul 2016 17:20:07 GMT
EXPOSE 8080/tcp
# Mon, 11 Jul 2016 17:20:07 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Mon, 11 Jul 2016 17:20:08 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745c1cd94ebe79c47147dc3c57bb9cba552a51edb00465b243006e01a1e941a9`  
		Last Modified: Thu, 07 Jul 2016 19:14:28 GMT  
		Size: 39.6 MB (39647617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7748c7147eb6b4ee4126f3f90f3a5789d770f5a4f4bf6c1009773a5ad9b8777f`  
		Last Modified: Thu, 07 Jul 2016 21:05:13 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c7339b50b12915c94358f19a7f27875325afbf72d38401ab08c2c2e7a8a823`  
		Last Modified: Thu, 07 Jul 2016 21:05:10 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5ec396360e0e7fda108b961c4a678ea609c7a754306018e0e6e5ea92407672`  
		Last Modified: Thu, 07 Jul 2016 21:05:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75adb208765bc964ea8ca57a86510bc2b39d39e436f2c0afce488b2b9d17be1f`  
		Last Modified: Thu, 07 Jul 2016 21:05:12 GMT  
		Size: 7.9 MB (7932496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374c30d103bd4f35fa584d4b8109f6b58a9e682d8f589c1ce769ed359379b086`  
		Last Modified: Mon, 11 Jul 2016 17:21:39 GMT  
		Size: 1.8 KB (1755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d365250084c74a2141be1431a825b4853f83cb92268fe71bce17772041b4221`  
		Last Modified: Mon, 11 Jul 2016 17:21:39 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:alpine`

```console
$ docker pull jetty@sha256:0c220ff9c30caacb9ad2e3569a080acecbdbabef292f81ce3d307c126a57eb49
```

-	Platforms:
	-	linux; amd64

### `jetty:alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49915372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b342af3ffe3f3892f107db7478fe39598b4bd3b7d987ee4259987c7e70f99bda`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:34:53 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jun 2016 20:34:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 23 Jun 2016 20:36:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 07 Jul 2016 19:05:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_VERSION=8u92
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Thu, 07 Jul 2016 19:05:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Jul 2016 21:04:34 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 07 Jul 2016 21:04:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 07 Jul 2016 21:04:35 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 21:04:37 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 07 Jul 2016 21:04:38 GMT
WORKDIR /usr/local/jetty
# Thu, 07 Jul 2016 21:04:38 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 07 Jul 2016 21:04:40 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 07 Jul 2016 21:04:40 GMT
ENV JETTY_VERSION=9.3.10.v20160621
# Thu, 07 Jul 2016 21:04:41 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.10.v20160621/jetty-distribution-9.3.10.v20160621.tar.gz
# Thu, 07 Jul 2016 21:04:41 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Thu, 07 Jul 2016 21:04:56 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 07 Jul 2016 21:04:57 GMT
WORKDIR /var/lib/jetty
# Mon, 11 Jul 2016 17:20:05 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 11 Jul 2016 17:20:06 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Mon, 11 Jul 2016 17:20:07 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in /
# Mon, 11 Jul 2016 17:20:07 GMT
EXPOSE 8080/tcp
# Mon, 11 Jul 2016 17:20:07 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Mon, 11 Jul 2016 17:20:08 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745c1cd94ebe79c47147dc3c57bb9cba552a51edb00465b243006e01a1e941a9`  
		Last Modified: Thu, 07 Jul 2016 19:14:28 GMT  
		Size: 39.6 MB (39647617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7748c7147eb6b4ee4126f3f90f3a5789d770f5a4f4bf6c1009773a5ad9b8777f`  
		Last Modified: Thu, 07 Jul 2016 21:05:13 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c7339b50b12915c94358f19a7f27875325afbf72d38401ab08c2c2e7a8a823`  
		Last Modified: Thu, 07 Jul 2016 21:05:10 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5ec396360e0e7fda108b961c4a678ea609c7a754306018e0e6e5ea92407672`  
		Last Modified: Thu, 07 Jul 2016 21:05:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75adb208765bc964ea8ca57a86510bc2b39d39e436f2c0afce488b2b9d17be1f`  
		Last Modified: Thu, 07 Jul 2016 21:05:12 GMT  
		Size: 7.9 MB (7932496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374c30d103bd4f35fa584d4b8109f6b58a9e682d8f589c1ce769ed359379b086`  
		Last Modified: Mon, 11 Jul 2016 17:21:39 GMT  
		Size: 1.8 KB (1755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d365250084c74a2141be1431a825b4853f83cb92268fe71bce17772041b4221`  
		Last Modified: Mon, 11 Jul 2016 17:21:39 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre8-alpine`

```console
$ docker pull jetty@sha256:0c220ff9c30caacb9ad2e3569a080acecbdbabef292f81ce3d307c126a57eb49
```

-	Platforms:
	-	linux; amd64

### `jetty:jre8-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49915372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b342af3ffe3f3892f107db7478fe39598b4bd3b7d987ee4259987c7e70f99bda`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:34:53 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jun 2016 20:34:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 23 Jun 2016 20:36:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 07 Jul 2016 19:05:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_VERSION=8u92
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Thu, 07 Jul 2016 19:05:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Jul 2016 21:04:34 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Thu, 07 Jul 2016 21:04:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 07 Jul 2016 21:04:35 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 21:04:37 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 07 Jul 2016 21:04:38 GMT
WORKDIR /usr/local/jetty
# Thu, 07 Jul 2016 21:04:38 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 07 Jul 2016 21:04:40 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 07 Jul 2016 21:04:40 GMT
ENV JETTY_VERSION=9.3.10.v20160621
# Thu, 07 Jul 2016 21:04:41 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.10.v20160621/jetty-distribution-9.3.10.v20160621.tar.gz
# Thu, 07 Jul 2016 21:04:41 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Thu, 07 Jul 2016 21:04:56 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 07 Jul 2016 21:04:57 GMT
WORKDIR /var/lib/jetty
# Mon, 11 Jul 2016 17:20:05 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 11 Jul 2016 17:20:06 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Mon, 11 Jul 2016 17:20:07 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in /
# Mon, 11 Jul 2016 17:20:07 GMT
EXPOSE 8080/tcp
# Mon, 11 Jul 2016 17:20:07 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Mon, 11 Jul 2016 17:20:08 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745c1cd94ebe79c47147dc3c57bb9cba552a51edb00465b243006e01a1e941a9`  
		Last Modified: Thu, 07 Jul 2016 19:14:28 GMT  
		Size: 39.6 MB (39647617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7748c7147eb6b4ee4126f3f90f3a5789d770f5a4f4bf6c1009773a5ad9b8777f`  
		Last Modified: Thu, 07 Jul 2016 21:05:13 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c7339b50b12915c94358f19a7f27875325afbf72d38401ab08c2c2e7a8a823`  
		Last Modified: Thu, 07 Jul 2016 21:05:10 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5ec396360e0e7fda108b961c4a678ea609c7a754306018e0e6e5ea92407672`  
		Last Modified: Thu, 07 Jul 2016 21:05:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75adb208765bc964ea8ca57a86510bc2b39d39e436f2c0afce488b2b9d17be1f`  
		Last Modified: Thu, 07 Jul 2016 21:05:12 GMT  
		Size: 7.9 MB (7932496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374c30d103bd4f35fa584d4b8109f6b58a9e682d8f589c1ce769ed359379b086`  
		Last Modified: Mon, 11 Jul 2016 17:21:39 GMT  
		Size: 1.8 KB (1755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d365250084c74a2141be1431a825b4853f83cb92268fe71bce17772041b4221`  
		Last Modified: Mon, 11 Jul 2016 17:21:39 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.18`

**does not exist** (yet?)

## `jetty:9.2`

```console
$ docker pull jetty@sha256:731322d8646615c23d3414d2afb3e147061c6930517b730ae54142b5dd5840fb
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134154729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7b6e2ca9e870a4d67d7c31c1f598eb3b0ea57f76f9fda2faed9409fbbea6082`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:39:59 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 11 Aug 2016 17:39:59 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 11 Aug 2016 17:40:00 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:40:02 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 11 Aug 2016 17:40:03 GMT
WORKDIR /usr/local/jetty
# Thu, 11 Aug 2016 17:40:04 GMT
ENV JETTY_VERSION=9.2.17.v20160517
# Thu, 11 Aug 2016 17:40:05 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.17.v20160517/jetty-distribution-9.2.17.v20160517.tar.gz
# Thu, 11 Aug 2016 17:40:06 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Thu, 11 Aug 2016 17:40:10 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Thu, 11 Aug 2016 17:40:11 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 11 Aug 2016 17:40:13 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 11 Aug 2016 17:40:14 GMT
WORKDIR /var/lib/jetty
# Thu, 11 Aug 2016 17:40:17 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Thu, 11 Aug 2016 17:40:18 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 11 Aug 2016 17:40:20 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Thu, 11 Aug 2016 17:40:21 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in /
# Thu, 11 Aug 2016 17:40:22 GMT
EXPOSE 8080/tcp
# Thu, 11 Aug 2016 17:40:23 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 17:40:24 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0b8bb8877cd85866e881e057492414348e0d40cdb8f531f222c070f97f2708`  
		Last Modified: Thu, 11 Aug 2016 17:40:37 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11007b1085472445c511b578a829164efbc0532736d07e90deb316c0792f791b`  
		Last Modified: Thu, 11 Aug 2016 17:40:37 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ebce7f24c804cffd7044822fd038efee731d04756fd276fb660c5c6bf68653`  
		Last Modified: Thu, 11 Aug 2016 17:40:36 GMT  
		Size: 10.0 MB (10002771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2b74a7644b5afbff70d2079c1a499b61d1fa9196adb941b75339c4decf63c1`  
		Last Modified: Thu, 11 Aug 2016 17:40:34 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b021ef82d9032949921f3ed62a48097d54bd212efb89aa5952fd9dcc8033fc9d`  
		Last Modified: Thu, 11 Aug 2016 17:40:34 GMT  
		Size: 1.6 KB (1572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fdb4ae70f932421565f2549ffc476c09b56d3ff0e9a1807944552a541a4e41`  
		Last Modified: Thu, 11 Aug 2016 17:40:34 GMT  
		Size: 1.6 KB (1574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d3f333bf8d47e497e36b4a31e4fe5647e4d3884e772360c28efcc45a072477`  
		Last Modified: Thu, 11 Aug 2016 17:40:34 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.18-jre8`

**does not exist** (yet?)

## `jetty:9.2-jre8`

```console
$ docker pull jetty@sha256:731322d8646615c23d3414d2afb3e147061c6930517b730ae54142b5dd5840fb
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2-jre8` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134154729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7b6e2ca9e870a4d67d7c31c1f598eb3b0ea57f76f9fda2faed9409fbbea6082`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:39:59 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 11 Aug 2016 17:39:59 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 11 Aug 2016 17:40:00 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:40:02 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 11 Aug 2016 17:40:03 GMT
WORKDIR /usr/local/jetty
# Thu, 11 Aug 2016 17:40:04 GMT
ENV JETTY_VERSION=9.2.17.v20160517
# Thu, 11 Aug 2016 17:40:05 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.17.v20160517/jetty-distribution-9.2.17.v20160517.tar.gz
# Thu, 11 Aug 2016 17:40:06 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Thu, 11 Aug 2016 17:40:10 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Thu, 11 Aug 2016 17:40:11 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 11 Aug 2016 17:40:13 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 11 Aug 2016 17:40:14 GMT
WORKDIR /var/lib/jetty
# Thu, 11 Aug 2016 17:40:17 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Thu, 11 Aug 2016 17:40:18 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 11 Aug 2016 17:40:20 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Thu, 11 Aug 2016 17:40:21 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in /
# Thu, 11 Aug 2016 17:40:22 GMT
EXPOSE 8080/tcp
# Thu, 11 Aug 2016 17:40:23 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 17:40:24 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0b8bb8877cd85866e881e057492414348e0d40cdb8f531f222c070f97f2708`  
		Last Modified: Thu, 11 Aug 2016 17:40:37 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11007b1085472445c511b578a829164efbc0532736d07e90deb316c0792f791b`  
		Last Modified: Thu, 11 Aug 2016 17:40:37 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ebce7f24c804cffd7044822fd038efee731d04756fd276fb660c5c6bf68653`  
		Last Modified: Thu, 11 Aug 2016 17:40:36 GMT  
		Size: 10.0 MB (10002771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2b74a7644b5afbff70d2079c1a499b61d1fa9196adb941b75339c4decf63c1`  
		Last Modified: Thu, 11 Aug 2016 17:40:34 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b021ef82d9032949921f3ed62a48097d54bd212efb89aa5952fd9dcc8033fc9d`  
		Last Modified: Thu, 11 Aug 2016 17:40:34 GMT  
		Size: 1.6 KB (1572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fdb4ae70f932421565f2549ffc476c09b56d3ff0e9a1807944552a541a4e41`  
		Last Modified: Thu, 11 Aug 2016 17:40:34 GMT  
		Size: 1.6 KB (1574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d3f333bf8d47e497e36b4a31e4fe5647e4d3884e772360c28efcc45a072477`  
		Last Modified: Thu, 11 Aug 2016 17:40:34 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.18-jre7`

**does not exist** (yet?)

## `jetty:9.2-jre7`

```console
$ docker pull jetty@sha256:b3cd737ca83305232de539c1d4d344e778531495972349b190593b3fd16dc6e1
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2-jre7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158180564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:900af363f3212f6de83b8e171f1c6ed0174981e2bdf0880074aa75d59a24133a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:05:03 GMT
ENV LANG=C.UTF-8
# Fri, 05 Aug 2016 22:05:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 Aug 2016 22:05:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Fri, 05 Aug 2016 22:05:07 GMT
ENV JAVA_VERSION=7u111
# Fri, 05 Aug 2016 22:05:07 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Fri, 05 Aug 2016 22:06:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 08 Aug 2016 17:50:44 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Mon, 08 Aug 2016 17:50:45 GMT
ENV JETTY_HOME=/usr/local/jetty
# Mon, 08 Aug 2016 17:50:45 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 17:50:47 GMT
RUN mkdir -p "$JETTY_HOME"
# Mon, 08 Aug 2016 17:50:48 GMT
WORKDIR /usr/local/jetty
# Mon, 08 Aug 2016 17:50:49 GMT
ENV JETTY_VERSION=9.2.17.v20160517
# Mon, 08 Aug 2016 17:50:50 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.17.v20160517/jetty-distribution-9.2.17.v20160517.tar.gz
# Mon, 08 Aug 2016 17:50:51 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Mon, 08 Aug 2016 17:50:55 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Mon, 08 Aug 2016 17:50:56 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 08 Aug 2016 17:50:58 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 08 Aug 2016 17:50:59 GMT
WORKDIR /var/lib/jetty
# Mon, 08 Aug 2016 17:51:01 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Mon, 08 Aug 2016 17:51:02 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 08 Aug 2016 17:51:04 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Mon, 08 Aug 2016 17:51:05 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in /
# Mon, 08 Aug 2016 17:51:06 GMT
EXPOSE 8080/tcp
# Mon, 08 Aug 2016 17:51:07 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Mon, 08 Aug 2016 17:51:08 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e195c5e4516bd317b5ebe4b42fa95f02a270ab72961125aeb6e406561685aa2`  
		Last Modified: Fri, 05 Aug 2016 22:15:49 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297a64db205e5f6d8d3fb5ee1a09681c51888c39784c095011832c62e4089e5f`  
		Last Modified: Fri, 05 Aug 2016 22:16:02 GMT  
		Size: 77.7 MB (77712169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfef54646a1b986f1eefde1530c6539b052491f12fd2c432e29612fe1e467bbe`  
		Last Modified: Mon, 08 Aug 2016 17:51:19 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdae784448c29034dc3eb32ed7ce8e036f4f6c32e1a3fa22ae733f0edefcfa75`  
		Last Modified: Mon, 08 Aug 2016 17:51:19 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e499c11b4848bbfef77062c41eed7b49490472e13914a9207d4109ddfcb4010`  
		Last Modified: Mon, 08 Aug 2016 17:51:19 GMT  
		Size: 10.0 MB (10002753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f6eb919f90e3fed7a08b30cdab9091fbda75e154f4e398491598c5255a2fab`  
		Last Modified: Mon, 08 Aug 2016 17:51:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fdf86bf555ee23d6dc997a627d081dda47cc965cd7ed84c0b7df5b0f44b4176`  
		Last Modified: Mon, 08 Aug 2016 17:51:17 GMT  
		Size: 1.6 KB (1570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5da4323a9f51442b3462c2e216588364fa35faffc0ee35552be1a115310f5f`  
		Last Modified: Mon, 08 Aug 2016 17:51:17 GMT  
		Size: 1.6 KB (1573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095d0c31ad736e60bcb296a88a933ea886269ea849e5c6177e3ba2cc0249a193`  
		Last Modified: Mon, 08 Aug 2016 17:51:17 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre7`

```console
$ docker pull jetty@sha256:b3cd737ca83305232de539c1d4d344e778531495972349b190593b3fd16dc6e1
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158180564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:900af363f3212f6de83b8e171f1c6ed0174981e2bdf0880074aa75d59a24133a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:05:03 GMT
ENV LANG=C.UTF-8
# Fri, 05 Aug 2016 22:05:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 Aug 2016 22:05:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Fri, 05 Aug 2016 22:05:07 GMT
ENV JAVA_VERSION=7u111
# Fri, 05 Aug 2016 22:05:07 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Fri, 05 Aug 2016 22:06:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 08 Aug 2016 17:50:44 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Mon, 08 Aug 2016 17:50:45 GMT
ENV JETTY_HOME=/usr/local/jetty
# Mon, 08 Aug 2016 17:50:45 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 17:50:47 GMT
RUN mkdir -p "$JETTY_HOME"
# Mon, 08 Aug 2016 17:50:48 GMT
WORKDIR /usr/local/jetty
# Mon, 08 Aug 2016 17:50:49 GMT
ENV JETTY_VERSION=9.2.17.v20160517
# Mon, 08 Aug 2016 17:50:50 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.17.v20160517/jetty-distribution-9.2.17.v20160517.tar.gz
# Mon, 08 Aug 2016 17:50:51 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Mon, 08 Aug 2016 17:50:55 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Mon, 08 Aug 2016 17:50:56 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 08 Aug 2016 17:50:58 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 08 Aug 2016 17:50:59 GMT
WORKDIR /var/lib/jetty
# Mon, 08 Aug 2016 17:51:01 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Mon, 08 Aug 2016 17:51:02 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 08 Aug 2016 17:51:04 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Mon, 08 Aug 2016 17:51:05 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in /
# Mon, 08 Aug 2016 17:51:06 GMT
EXPOSE 8080/tcp
# Mon, 08 Aug 2016 17:51:07 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Mon, 08 Aug 2016 17:51:08 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e195c5e4516bd317b5ebe4b42fa95f02a270ab72961125aeb6e406561685aa2`  
		Last Modified: Fri, 05 Aug 2016 22:15:49 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297a64db205e5f6d8d3fb5ee1a09681c51888c39784c095011832c62e4089e5f`  
		Last Modified: Fri, 05 Aug 2016 22:16:02 GMT  
		Size: 77.7 MB (77712169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfef54646a1b986f1eefde1530c6539b052491f12fd2c432e29612fe1e467bbe`  
		Last Modified: Mon, 08 Aug 2016 17:51:19 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdae784448c29034dc3eb32ed7ce8e036f4f6c32e1a3fa22ae733f0edefcfa75`  
		Last Modified: Mon, 08 Aug 2016 17:51:19 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e499c11b4848bbfef77062c41eed7b49490472e13914a9207d4109ddfcb4010`  
		Last Modified: Mon, 08 Aug 2016 17:51:19 GMT  
		Size: 10.0 MB (10002753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f6eb919f90e3fed7a08b30cdab9091fbda75e154f4e398491598c5255a2fab`  
		Last Modified: Mon, 08 Aug 2016 17:51:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fdf86bf555ee23d6dc997a627d081dda47cc965cd7ed84c0b7df5b0f44b4176`  
		Last Modified: Mon, 08 Aug 2016 17:51:17 GMT  
		Size: 1.6 KB (1570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5da4323a9f51442b3462c2e216588364fa35faffc0ee35552be1a115310f5f`  
		Last Modified: Mon, 08 Aug 2016 17:51:17 GMT  
		Size: 1.6 KB (1573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095d0c31ad736e60bcb296a88a933ea886269ea849e5c6177e3ba2cc0249a193`  
		Last Modified: Mon, 08 Aug 2016 17:51:17 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre7`

```console
$ docker pull jetty@sha256:b3cd737ca83305232de539c1d4d344e778531495972349b190593b3fd16dc6e1
```

-	Platforms:
	-	linux; amd64

### `jetty:jre7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158180564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:900af363f3212f6de83b8e171f1c6ed0174981e2bdf0880074aa75d59a24133a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:05:03 GMT
ENV LANG=C.UTF-8
# Fri, 05 Aug 2016 22:05:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 Aug 2016 22:05:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Fri, 05 Aug 2016 22:05:07 GMT
ENV JAVA_VERSION=7u111
# Fri, 05 Aug 2016 22:05:07 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Fri, 05 Aug 2016 22:06:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 08 Aug 2016 17:50:44 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Mon, 08 Aug 2016 17:50:45 GMT
ENV JETTY_HOME=/usr/local/jetty
# Mon, 08 Aug 2016 17:50:45 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 17:50:47 GMT
RUN mkdir -p "$JETTY_HOME"
# Mon, 08 Aug 2016 17:50:48 GMT
WORKDIR /usr/local/jetty
# Mon, 08 Aug 2016 17:50:49 GMT
ENV JETTY_VERSION=9.2.17.v20160517
# Mon, 08 Aug 2016 17:50:50 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.17.v20160517/jetty-distribution-9.2.17.v20160517.tar.gz
# Mon, 08 Aug 2016 17:50:51 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Mon, 08 Aug 2016 17:50:55 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Mon, 08 Aug 2016 17:50:56 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 08 Aug 2016 17:50:58 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 08 Aug 2016 17:50:59 GMT
WORKDIR /var/lib/jetty
# Mon, 08 Aug 2016 17:51:01 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Mon, 08 Aug 2016 17:51:02 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 08 Aug 2016 17:51:04 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Mon, 08 Aug 2016 17:51:05 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in /
# Mon, 08 Aug 2016 17:51:06 GMT
EXPOSE 8080/tcp
# Mon, 08 Aug 2016 17:51:07 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Mon, 08 Aug 2016 17:51:08 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e195c5e4516bd317b5ebe4b42fa95f02a270ab72961125aeb6e406561685aa2`  
		Last Modified: Fri, 05 Aug 2016 22:15:49 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297a64db205e5f6d8d3fb5ee1a09681c51888c39784c095011832c62e4089e5f`  
		Last Modified: Fri, 05 Aug 2016 22:16:02 GMT  
		Size: 77.7 MB (77712169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfef54646a1b986f1eefde1530c6539b052491f12fd2c432e29612fe1e467bbe`  
		Last Modified: Mon, 08 Aug 2016 17:51:19 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdae784448c29034dc3eb32ed7ce8e036f4f6c32e1a3fa22ae733f0edefcfa75`  
		Last Modified: Mon, 08 Aug 2016 17:51:19 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e499c11b4848bbfef77062c41eed7b49490472e13914a9207d4109ddfcb4010`  
		Last Modified: Mon, 08 Aug 2016 17:51:19 GMT  
		Size: 10.0 MB (10002753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f6eb919f90e3fed7a08b30cdab9091fbda75e154f4e398491598c5255a2fab`  
		Last Modified: Mon, 08 Aug 2016 17:51:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fdf86bf555ee23d6dc997a627d081dda47cc965cd7ed84c0b7df5b0f44b4176`  
		Last Modified: Mon, 08 Aug 2016 17:51:17 GMT  
		Size: 1.6 KB (1570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5da4323a9f51442b3462c2e216588364fa35faffc0ee35552be1a115310f5f`  
		Last Modified: Mon, 08 Aug 2016 17:51:17 GMT  
		Size: 1.6 KB (1573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095d0c31ad736e60bcb296a88a933ea886269ea849e5c6177e3ba2cc0249a193`  
		Last Modified: Mon, 08 Aug 2016 17:51:17 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
