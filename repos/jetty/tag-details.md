<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `jetty`

-	[`jetty:9.3.10`](#jetty9310)
-	[`jetty:9.3`](#jetty93)
-	[`jetty:9`](#jetty9)
-	[`jetty:9.3.10-jre8`](#jetty9310-jre8)
-	[`jetty:9.3-jre8`](#jetty93-jre8)
-	[`jetty:9-jre8`](#jetty9-jre8)
-	[`jetty:latest`](#jettylatest)
-	[`jetty:jre8`](#jettyjre8)
-	[`jetty:9.3.10-alpine`](#jetty9310-alpine)
-	[`jetty:9.3-alpine`](#jetty93-alpine)
-	[`jetty:9-alpine`](#jetty9-alpine)
-	[`jetty:9.3.10-jre8-alpine`](#jetty9310-jre8-alpine)
-	[`jetty:9.3-jre8-alpine`](#jetty93-jre8-alpine)
-	[`jetty:9-jre8-alpine`](#jetty9-jre8-alpine)
-	[`jetty:alpine`](#jettyalpine)
-	[`jetty:jre8-alpine`](#jettyjre8-alpine)
-	[`jetty:9.2.17`](#jetty9217)
-	[`jetty:9.2`](#jetty92)
-	[`jetty:9.2.17-jre8`](#jetty9217-jre8)
-	[`jetty:9.2-jre8`](#jetty92-jre8)
-	[`jetty:9.2.17-jre7`](#jetty9217-jre7)
-	[`jetty:9.2-jre7`](#jetty92-jre7)
-	[`jetty:9-jre7`](#jetty9-jre7)
-	[`jetty:jre7`](#jettyjre7)

## `jetty:9.3.10`

```console
$ docker pull jetty@sha256:f3275f9870c7ff14b50bd949a3278b667dadb40a581ea13d79f35cba85f0153f
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.10` - linux; amd64

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
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:5e0b8bb8877cd85866e881e057492414348e0d40cdb8f531f222c070f97f2708`  
		Last Modified: Thu, 11 Aug 2016 17:40:37 GMT  
		Size: 2.1 KB (2088 bytes)
	-	`sha256:11007b1085472445c511b578a829164efbc0532736d07e90deb316c0792f791b`  
		Last Modified: Thu, 11 Aug 2016 17:40:37 GMT  
		Size: 147.0 B
	-	`sha256:09e4de71b2524c6c801b459c0c2cc06523ffb63ca1cf63f74be428c8f1f7d64f`  
		Last Modified: Thu, 11 Aug 2016 17:41:50 GMT  
		Size: 7.9 MB (7901615 bytes)
	-	`sha256:cf9422f7b8ed4109ce88ee16686af7acc088c6eebf49c33c19881ee1bdf14ad0`  
		Last Modified: Thu, 11 Aug 2016 17:41:46 GMT  
		Size: 129.0 B
	-	`sha256:3bd1982ce8c6c3adad785987785179fe6ed00d255c0dd69375aa1b03fb035dad`  
		Last Modified: Thu, 11 Aug 2016 17:41:47 GMT  
		Size: 1.7 KB (1746 bytes)
	-	`sha256:be31adf40a10e33f4e998db618404fa430fb78658b2516286bcb5e644dbe94dc`  
		Last Modified: Thu, 11 Aug 2016 17:41:47 GMT  
		Size: 1.7 KB (1746 bytes)
	-	`sha256:fb4c0d4d466e56d0500f36e3585dd4fd3252ff2910c70339470e1f6228170cee`  
		Last Modified: Thu, 11 Aug 2016 17:41:47 GMT  
		Size: 570.0 B

## `jetty:9.3`

```console
$ docker pull jetty@sha256:ec7bb23f1384f7f9679b73b09155fa237d2aba23ec269f66529b5ca0cb0511ed
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (132002724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46310258df461f4fa61a0145a45830a9f2156598f616f5cbf4e782e8894268b4`
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
# Fri, 29 Jul 2016 16:49:21 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Fri, 29 Jul 2016 16:49:21 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 29 Jul 2016 16:49:22 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 29 Jul 2016 16:49:24 GMT
RUN mkdir -p "$JETTY_HOME"
# Fri, 29 Jul 2016 16:49:24 GMT
WORKDIR /usr/local/jetty
# Fri, 29 Jul 2016 16:50:29 GMT
ENV JETTY_VERSION=9.3.10.v20160621
# Fri, 29 Jul 2016 16:50:30 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.10.v20160621/jetty-distribution-9.3.10.v20160621.tar.gz
# Fri, 29 Jul 2016 16:50:30 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Fri, 29 Jul 2016 16:50:34 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Fri, 29 Jul 2016 16:50:35 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 29 Jul 2016 16:50:37 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 29 Jul 2016 16:50:38 GMT
WORKDIR /var/lib/jetty
# Fri, 29 Jul 2016 16:50:39 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Fri, 29 Jul 2016 16:50:40 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 29 Jul 2016 16:50:42 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Fri, 29 Jul 2016 16:50:43 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in /
# Fri, 29 Jul 2016 16:50:44 GMT
EXPOSE 8080/tcp
# Fri, 29 Jul 2016 16:50:44 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Fri, 29 Jul 2016 16:50:45 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:e27dcf13956fd46b4ea2781e9e746d73398a973614ca80860fdb776e195a081d`  
		Last Modified: Fri, 29 Jul 2016 16:49:52 GMT  
		Size: 2.1 KB (2081 bytes)
	-	`sha256:44124b97cc162463bfeb05adbc60b31ab042e11d486998eea0b371c7532ba7bc`  
		Last Modified: Fri, 29 Jul 2016 16:49:53 GMT  
		Size: 147.0 B
	-	`sha256:082cad6830472508caa339a7ad72f26c9d9ad1f46860fd31800f4f060c8b2827`  
		Last Modified: Fri, 29 Jul 2016 16:50:55 GMT  
		Size: 7.9 MB (7901623 bytes)
	-	`sha256:2bdad0aaf70d80314002b1df50a764829edde3f21c956f262688b4d7a53dbebc`  
		Last Modified: Fri, 29 Jul 2016 16:50:54 GMT  
		Size: 131.0 B
	-	`sha256:f6998cb347058cf42ab9bf1ad00a6c1ae763330f1f54f0fcfd831dd69d2ba21f`  
		Last Modified: Fri, 29 Jul 2016 16:50:54 GMT  
		Size: 1.7 KB (1745 bytes)
	-	`sha256:5759342a4cf3eb2e2c5d8f94139909917946d30fffa7017c913f2f5c87f30793`  
		Last Modified: Fri, 29 Jul 2016 16:50:54 GMT  
		Size: 1.7 KB (1745 bytes)
	-	`sha256:9b86d7d5502fe7ccf8224fc244bcce4644335815710630a67c77c614cb027671`  
		Last Modified: Fri, 29 Jul 2016 16:50:55 GMT  
		Size: 570.0 B

## `jetty:9`

```console
$ docker pull jetty@sha256:ec7bb23f1384f7f9679b73b09155fa237d2aba23ec269f66529b5ca0cb0511ed
```

-	Platforms:
	-	linux; amd64

### `jetty:9` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (132002724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46310258df461f4fa61a0145a45830a9f2156598f616f5cbf4e782e8894268b4`
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
# Fri, 29 Jul 2016 16:49:21 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Fri, 29 Jul 2016 16:49:21 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 29 Jul 2016 16:49:22 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 29 Jul 2016 16:49:24 GMT
RUN mkdir -p "$JETTY_HOME"
# Fri, 29 Jul 2016 16:49:24 GMT
WORKDIR /usr/local/jetty
# Fri, 29 Jul 2016 16:50:29 GMT
ENV JETTY_VERSION=9.3.10.v20160621
# Fri, 29 Jul 2016 16:50:30 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.10.v20160621/jetty-distribution-9.3.10.v20160621.tar.gz
# Fri, 29 Jul 2016 16:50:30 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Fri, 29 Jul 2016 16:50:34 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Fri, 29 Jul 2016 16:50:35 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 29 Jul 2016 16:50:37 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 29 Jul 2016 16:50:38 GMT
WORKDIR /var/lib/jetty
# Fri, 29 Jul 2016 16:50:39 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Fri, 29 Jul 2016 16:50:40 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 29 Jul 2016 16:50:42 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Fri, 29 Jul 2016 16:50:43 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in /
# Fri, 29 Jul 2016 16:50:44 GMT
EXPOSE 8080/tcp
# Fri, 29 Jul 2016 16:50:44 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Fri, 29 Jul 2016 16:50:45 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:e27dcf13956fd46b4ea2781e9e746d73398a973614ca80860fdb776e195a081d`  
		Last Modified: Fri, 29 Jul 2016 16:49:52 GMT  
		Size: 2.1 KB (2081 bytes)
	-	`sha256:44124b97cc162463bfeb05adbc60b31ab042e11d486998eea0b371c7532ba7bc`  
		Last Modified: Fri, 29 Jul 2016 16:49:53 GMT  
		Size: 147.0 B
	-	`sha256:082cad6830472508caa339a7ad72f26c9d9ad1f46860fd31800f4f060c8b2827`  
		Last Modified: Fri, 29 Jul 2016 16:50:55 GMT  
		Size: 7.9 MB (7901623 bytes)
	-	`sha256:2bdad0aaf70d80314002b1df50a764829edde3f21c956f262688b4d7a53dbebc`  
		Last Modified: Fri, 29 Jul 2016 16:50:54 GMT  
		Size: 131.0 B
	-	`sha256:f6998cb347058cf42ab9bf1ad00a6c1ae763330f1f54f0fcfd831dd69d2ba21f`  
		Last Modified: Fri, 29 Jul 2016 16:50:54 GMT  
		Size: 1.7 KB (1745 bytes)
	-	`sha256:5759342a4cf3eb2e2c5d8f94139909917946d30fffa7017c913f2f5c87f30793`  
		Last Modified: Fri, 29 Jul 2016 16:50:54 GMT  
		Size: 1.7 KB (1745 bytes)
	-	`sha256:9b86d7d5502fe7ccf8224fc244bcce4644335815710630a67c77c614cb027671`  
		Last Modified: Fri, 29 Jul 2016 16:50:55 GMT  
		Size: 570.0 B

## `jetty:9.3.10-jre8`

```console
$ docker pull jetty@sha256:ec7bb23f1384f7f9679b73b09155fa237d2aba23ec269f66529b5ca0cb0511ed
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.10-jre8` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (132002724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46310258df461f4fa61a0145a45830a9f2156598f616f5cbf4e782e8894268b4`
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
# Fri, 29 Jul 2016 16:49:21 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Fri, 29 Jul 2016 16:49:21 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 29 Jul 2016 16:49:22 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 29 Jul 2016 16:49:24 GMT
RUN mkdir -p "$JETTY_HOME"
# Fri, 29 Jul 2016 16:49:24 GMT
WORKDIR /usr/local/jetty
# Fri, 29 Jul 2016 16:50:29 GMT
ENV JETTY_VERSION=9.3.10.v20160621
# Fri, 29 Jul 2016 16:50:30 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.10.v20160621/jetty-distribution-9.3.10.v20160621.tar.gz
# Fri, 29 Jul 2016 16:50:30 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Fri, 29 Jul 2016 16:50:34 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Fri, 29 Jul 2016 16:50:35 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 29 Jul 2016 16:50:37 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 29 Jul 2016 16:50:38 GMT
WORKDIR /var/lib/jetty
# Fri, 29 Jul 2016 16:50:39 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Fri, 29 Jul 2016 16:50:40 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 29 Jul 2016 16:50:42 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Fri, 29 Jul 2016 16:50:43 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in /
# Fri, 29 Jul 2016 16:50:44 GMT
EXPOSE 8080/tcp
# Fri, 29 Jul 2016 16:50:44 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Fri, 29 Jul 2016 16:50:45 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:e27dcf13956fd46b4ea2781e9e746d73398a973614ca80860fdb776e195a081d`  
		Last Modified: Fri, 29 Jul 2016 16:49:52 GMT  
		Size: 2.1 KB (2081 bytes)
	-	`sha256:44124b97cc162463bfeb05adbc60b31ab042e11d486998eea0b371c7532ba7bc`  
		Last Modified: Fri, 29 Jul 2016 16:49:53 GMT  
		Size: 147.0 B
	-	`sha256:082cad6830472508caa339a7ad72f26c9d9ad1f46860fd31800f4f060c8b2827`  
		Last Modified: Fri, 29 Jul 2016 16:50:55 GMT  
		Size: 7.9 MB (7901623 bytes)
	-	`sha256:2bdad0aaf70d80314002b1df50a764829edde3f21c956f262688b4d7a53dbebc`  
		Last Modified: Fri, 29 Jul 2016 16:50:54 GMT  
		Size: 131.0 B
	-	`sha256:f6998cb347058cf42ab9bf1ad00a6c1ae763330f1f54f0fcfd831dd69d2ba21f`  
		Last Modified: Fri, 29 Jul 2016 16:50:54 GMT  
		Size: 1.7 KB (1745 bytes)
	-	`sha256:5759342a4cf3eb2e2c5d8f94139909917946d30fffa7017c913f2f5c87f30793`  
		Last Modified: Fri, 29 Jul 2016 16:50:54 GMT  
		Size: 1.7 KB (1745 bytes)
	-	`sha256:9b86d7d5502fe7ccf8224fc244bcce4644335815710630a67c77c614cb027671`  
		Last Modified: Fri, 29 Jul 2016 16:50:55 GMT  
		Size: 570.0 B

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
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:5e0b8bb8877cd85866e881e057492414348e0d40cdb8f531f222c070f97f2708`  
		Last Modified: Thu, 11 Aug 2016 17:40:37 GMT  
		Size: 2.1 KB (2088 bytes)
	-	`sha256:11007b1085472445c511b578a829164efbc0532736d07e90deb316c0792f791b`  
		Last Modified: Thu, 11 Aug 2016 17:40:37 GMT  
		Size: 147.0 B
	-	`sha256:09e4de71b2524c6c801b459c0c2cc06523ffb63ca1cf63f74be428c8f1f7d64f`  
		Last Modified: Thu, 11 Aug 2016 17:41:50 GMT  
		Size: 7.9 MB (7901615 bytes)
	-	`sha256:cf9422f7b8ed4109ce88ee16686af7acc088c6eebf49c33c19881ee1bdf14ad0`  
		Last Modified: Thu, 11 Aug 2016 17:41:46 GMT  
		Size: 129.0 B
	-	`sha256:3bd1982ce8c6c3adad785987785179fe6ed00d255c0dd69375aa1b03fb035dad`  
		Last Modified: Thu, 11 Aug 2016 17:41:47 GMT  
		Size: 1.7 KB (1746 bytes)
	-	`sha256:be31adf40a10e33f4e998db618404fa430fb78658b2516286bcb5e644dbe94dc`  
		Last Modified: Thu, 11 Aug 2016 17:41:47 GMT  
		Size: 1.7 KB (1746 bytes)
	-	`sha256:fb4c0d4d466e56d0500f36e3585dd4fd3252ff2910c70339470e1f6228170cee`  
		Last Modified: Thu, 11 Aug 2016 17:41:47 GMT  
		Size: 570.0 B

## `jetty:9-jre8`

```console
$ docker pull jetty@sha256:ec7bb23f1384f7f9679b73b09155fa237d2aba23ec269f66529b5ca0cb0511ed
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre8` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (132002724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46310258df461f4fa61a0145a45830a9f2156598f616f5cbf4e782e8894268b4`
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
# Fri, 29 Jul 2016 16:49:21 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Fri, 29 Jul 2016 16:49:21 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 29 Jul 2016 16:49:22 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 29 Jul 2016 16:49:24 GMT
RUN mkdir -p "$JETTY_HOME"
# Fri, 29 Jul 2016 16:49:24 GMT
WORKDIR /usr/local/jetty
# Fri, 29 Jul 2016 16:50:29 GMT
ENV JETTY_VERSION=9.3.10.v20160621
# Fri, 29 Jul 2016 16:50:30 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.10.v20160621/jetty-distribution-9.3.10.v20160621.tar.gz
# Fri, 29 Jul 2016 16:50:30 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Fri, 29 Jul 2016 16:50:34 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Fri, 29 Jul 2016 16:50:35 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 29 Jul 2016 16:50:37 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 29 Jul 2016 16:50:38 GMT
WORKDIR /var/lib/jetty
# Fri, 29 Jul 2016 16:50:39 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Fri, 29 Jul 2016 16:50:40 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 29 Jul 2016 16:50:42 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Fri, 29 Jul 2016 16:50:43 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in /
# Fri, 29 Jul 2016 16:50:44 GMT
EXPOSE 8080/tcp
# Fri, 29 Jul 2016 16:50:44 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Fri, 29 Jul 2016 16:50:45 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:e27dcf13956fd46b4ea2781e9e746d73398a973614ca80860fdb776e195a081d`  
		Last Modified: Fri, 29 Jul 2016 16:49:52 GMT  
		Size: 2.1 KB (2081 bytes)
	-	`sha256:44124b97cc162463bfeb05adbc60b31ab042e11d486998eea0b371c7532ba7bc`  
		Last Modified: Fri, 29 Jul 2016 16:49:53 GMT  
		Size: 147.0 B
	-	`sha256:082cad6830472508caa339a7ad72f26c9d9ad1f46860fd31800f4f060c8b2827`  
		Last Modified: Fri, 29 Jul 2016 16:50:55 GMT  
		Size: 7.9 MB (7901623 bytes)
	-	`sha256:2bdad0aaf70d80314002b1df50a764829edde3f21c956f262688b4d7a53dbebc`  
		Last Modified: Fri, 29 Jul 2016 16:50:54 GMT  
		Size: 131.0 B
	-	`sha256:f6998cb347058cf42ab9bf1ad00a6c1ae763330f1f54f0fcfd831dd69d2ba21f`  
		Last Modified: Fri, 29 Jul 2016 16:50:54 GMT  
		Size: 1.7 KB (1745 bytes)
	-	`sha256:5759342a4cf3eb2e2c5d8f94139909917946d30fffa7017c913f2f5c87f30793`  
		Last Modified: Fri, 29 Jul 2016 16:50:54 GMT  
		Size: 1.7 KB (1745 bytes)
	-	`sha256:9b86d7d5502fe7ccf8224fc244bcce4644335815710630a67c77c614cb027671`  
		Last Modified: Fri, 29 Jul 2016 16:50:55 GMT  
		Size: 570.0 B

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
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:5e0b8bb8877cd85866e881e057492414348e0d40cdb8f531f222c070f97f2708`  
		Last Modified: Thu, 11 Aug 2016 17:40:37 GMT  
		Size: 2.1 KB (2088 bytes)
	-	`sha256:11007b1085472445c511b578a829164efbc0532736d07e90deb316c0792f791b`  
		Last Modified: Thu, 11 Aug 2016 17:40:37 GMT  
		Size: 147.0 B
	-	`sha256:09e4de71b2524c6c801b459c0c2cc06523ffb63ca1cf63f74be428c8f1f7d64f`  
		Last Modified: Thu, 11 Aug 2016 17:41:50 GMT  
		Size: 7.9 MB (7901615 bytes)
	-	`sha256:cf9422f7b8ed4109ce88ee16686af7acc088c6eebf49c33c19881ee1bdf14ad0`  
		Last Modified: Thu, 11 Aug 2016 17:41:46 GMT  
		Size: 129.0 B
	-	`sha256:3bd1982ce8c6c3adad785987785179fe6ed00d255c0dd69375aa1b03fb035dad`  
		Last Modified: Thu, 11 Aug 2016 17:41:47 GMT  
		Size: 1.7 KB (1746 bytes)
	-	`sha256:be31adf40a10e33f4e998db618404fa430fb78658b2516286bcb5e644dbe94dc`  
		Last Modified: Thu, 11 Aug 2016 17:41:47 GMT  
		Size: 1.7 KB (1746 bytes)
	-	`sha256:fb4c0d4d466e56d0500f36e3585dd4fd3252ff2910c70339470e1f6228170cee`  
		Last Modified: Thu, 11 Aug 2016 17:41:47 GMT  
		Size: 570.0 B

## `jetty:jre8`

```console
$ docker pull jetty@sha256:ec7bb23f1384f7f9679b73b09155fa237d2aba23ec269f66529b5ca0cb0511ed
```

-	Platforms:
	-	linux; amd64

### `jetty:jre8` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (132002724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46310258df461f4fa61a0145a45830a9f2156598f616f5cbf4e782e8894268b4`
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
# Fri, 29 Jul 2016 16:49:21 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Fri, 29 Jul 2016 16:49:21 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 29 Jul 2016 16:49:22 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 29 Jul 2016 16:49:24 GMT
RUN mkdir -p "$JETTY_HOME"
# Fri, 29 Jul 2016 16:49:24 GMT
WORKDIR /usr/local/jetty
# Fri, 29 Jul 2016 16:50:29 GMT
ENV JETTY_VERSION=9.3.10.v20160621
# Fri, 29 Jul 2016 16:50:30 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.10.v20160621/jetty-distribution-9.3.10.v20160621.tar.gz
# Fri, 29 Jul 2016 16:50:30 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Fri, 29 Jul 2016 16:50:34 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Fri, 29 Jul 2016 16:50:35 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 29 Jul 2016 16:50:37 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 29 Jul 2016 16:50:38 GMT
WORKDIR /var/lib/jetty
# Fri, 29 Jul 2016 16:50:39 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Fri, 29 Jul 2016 16:50:40 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 29 Jul 2016 16:50:42 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Fri, 29 Jul 2016 16:50:43 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in /
# Fri, 29 Jul 2016 16:50:44 GMT
EXPOSE 8080/tcp
# Fri, 29 Jul 2016 16:50:44 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Fri, 29 Jul 2016 16:50:45 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:e27dcf13956fd46b4ea2781e9e746d73398a973614ca80860fdb776e195a081d`  
		Last Modified: Fri, 29 Jul 2016 16:49:52 GMT  
		Size: 2.1 KB (2081 bytes)
	-	`sha256:44124b97cc162463bfeb05adbc60b31ab042e11d486998eea0b371c7532ba7bc`  
		Last Modified: Fri, 29 Jul 2016 16:49:53 GMT  
		Size: 147.0 B
	-	`sha256:082cad6830472508caa339a7ad72f26c9d9ad1f46860fd31800f4f060c8b2827`  
		Last Modified: Fri, 29 Jul 2016 16:50:55 GMT  
		Size: 7.9 MB (7901623 bytes)
	-	`sha256:2bdad0aaf70d80314002b1df50a764829edde3f21c956f262688b4d7a53dbebc`  
		Last Modified: Fri, 29 Jul 2016 16:50:54 GMT  
		Size: 131.0 B
	-	`sha256:f6998cb347058cf42ab9bf1ad00a6c1ae763330f1f54f0fcfd831dd69d2ba21f`  
		Last Modified: Fri, 29 Jul 2016 16:50:54 GMT  
		Size: 1.7 KB (1745 bytes)
	-	`sha256:5759342a4cf3eb2e2c5d8f94139909917946d30fffa7017c913f2f5c87f30793`  
		Last Modified: Fri, 29 Jul 2016 16:50:54 GMT  
		Size: 1.7 KB (1745 bytes)
	-	`sha256:9b86d7d5502fe7ccf8224fc244bcce4644335815710630a67c77c614cb027671`  
		Last Modified: Fri, 29 Jul 2016 16:50:55 GMT  
		Size: 570.0 B

## `jetty:9.3.10-alpine`

```console
$ docker pull jetty@sha256:0c220ff9c30caacb9ad2e3569a080acecbdbabef292f81ce3d307c126a57eb49
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.10-alpine` - linux; amd64

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
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:745c1cd94ebe79c47147dc3c57bb9cba552a51edb00465b243006e01a1e941a9`  
		Last Modified: Thu, 07 Jul 2016 19:14:28 GMT  
		Size: 39.6 MB (39647617 bytes)
	-	`sha256:7748c7147eb6b4ee4126f3f90f3a5789d770f5a4f4bf6c1009773a5ad9b8777f`  
		Last Modified: Thu, 07 Jul 2016 21:05:13 GMT  
		Size: 22.2 KB (22153 bytes)
	-	`sha256:93c7339b50b12915c94358f19a7f27875325afbf72d38401ab08c2c2e7a8a823`  
		Last Modified: Thu, 07 Jul 2016 21:05:10 GMT  
		Size: 134.0 B
	-	`sha256:7e5ec396360e0e7fda108b961c4a678ea609c7a754306018e0e6e5ea92407672`  
		Last Modified: Thu, 07 Jul 2016 21:05:10 GMT  
		Size: 131.0 B
	-	`sha256:75adb208765bc964ea8ca57a86510bc2b39d39e436f2c0afce488b2b9d17be1f`  
		Last Modified: Thu, 07 Jul 2016 21:05:12 GMT  
		Size: 7.9 MB (7932496 bytes)
	-	`sha256:374c30d103bd4f35fa584d4b8109f6b58a9e682d8f589c1ce769ed359379b086`  
		Last Modified: Mon, 11 Jul 2016 17:21:39 GMT  
		Size: 1.8 KB (1755 bytes)
	-	`sha256:1d365250084c74a2141be1431a825b4853f83cb92268fe71bce17772041b4221`  
		Last Modified: Mon, 11 Jul 2016 17:21:39 GMT  
		Size: 570.0 B

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
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:745c1cd94ebe79c47147dc3c57bb9cba552a51edb00465b243006e01a1e941a9`  
		Last Modified: Thu, 07 Jul 2016 19:14:28 GMT  
		Size: 39.6 MB (39647617 bytes)
	-	`sha256:7748c7147eb6b4ee4126f3f90f3a5789d770f5a4f4bf6c1009773a5ad9b8777f`  
		Last Modified: Thu, 07 Jul 2016 21:05:13 GMT  
		Size: 22.2 KB (22153 bytes)
	-	`sha256:93c7339b50b12915c94358f19a7f27875325afbf72d38401ab08c2c2e7a8a823`  
		Last Modified: Thu, 07 Jul 2016 21:05:10 GMT  
		Size: 134.0 B
	-	`sha256:7e5ec396360e0e7fda108b961c4a678ea609c7a754306018e0e6e5ea92407672`  
		Last Modified: Thu, 07 Jul 2016 21:05:10 GMT  
		Size: 131.0 B
	-	`sha256:75adb208765bc964ea8ca57a86510bc2b39d39e436f2c0afce488b2b9d17be1f`  
		Last Modified: Thu, 07 Jul 2016 21:05:12 GMT  
		Size: 7.9 MB (7932496 bytes)
	-	`sha256:374c30d103bd4f35fa584d4b8109f6b58a9e682d8f589c1ce769ed359379b086`  
		Last Modified: Mon, 11 Jul 2016 17:21:39 GMT  
		Size: 1.8 KB (1755 bytes)
	-	`sha256:1d365250084c74a2141be1431a825b4853f83cb92268fe71bce17772041b4221`  
		Last Modified: Mon, 11 Jul 2016 17:21:39 GMT  
		Size: 570.0 B

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
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:745c1cd94ebe79c47147dc3c57bb9cba552a51edb00465b243006e01a1e941a9`  
		Last Modified: Thu, 07 Jul 2016 19:14:28 GMT  
		Size: 39.6 MB (39647617 bytes)
	-	`sha256:7748c7147eb6b4ee4126f3f90f3a5789d770f5a4f4bf6c1009773a5ad9b8777f`  
		Last Modified: Thu, 07 Jul 2016 21:05:13 GMT  
		Size: 22.2 KB (22153 bytes)
	-	`sha256:93c7339b50b12915c94358f19a7f27875325afbf72d38401ab08c2c2e7a8a823`  
		Last Modified: Thu, 07 Jul 2016 21:05:10 GMT  
		Size: 134.0 B
	-	`sha256:7e5ec396360e0e7fda108b961c4a678ea609c7a754306018e0e6e5ea92407672`  
		Last Modified: Thu, 07 Jul 2016 21:05:10 GMT  
		Size: 131.0 B
	-	`sha256:75adb208765bc964ea8ca57a86510bc2b39d39e436f2c0afce488b2b9d17be1f`  
		Last Modified: Thu, 07 Jul 2016 21:05:12 GMT  
		Size: 7.9 MB (7932496 bytes)
	-	`sha256:374c30d103bd4f35fa584d4b8109f6b58a9e682d8f589c1ce769ed359379b086`  
		Last Modified: Mon, 11 Jul 2016 17:21:39 GMT  
		Size: 1.8 KB (1755 bytes)
	-	`sha256:1d365250084c74a2141be1431a825b4853f83cb92268fe71bce17772041b4221`  
		Last Modified: Mon, 11 Jul 2016 17:21:39 GMT  
		Size: 570.0 B

## `jetty:9.3.10-jre8-alpine`

```console
$ docker pull jetty@sha256:0c220ff9c30caacb9ad2e3569a080acecbdbabef292f81ce3d307c126a57eb49
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.10-jre8-alpine` - linux; amd64

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
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:745c1cd94ebe79c47147dc3c57bb9cba552a51edb00465b243006e01a1e941a9`  
		Last Modified: Thu, 07 Jul 2016 19:14:28 GMT  
		Size: 39.6 MB (39647617 bytes)
	-	`sha256:7748c7147eb6b4ee4126f3f90f3a5789d770f5a4f4bf6c1009773a5ad9b8777f`  
		Last Modified: Thu, 07 Jul 2016 21:05:13 GMT  
		Size: 22.2 KB (22153 bytes)
	-	`sha256:93c7339b50b12915c94358f19a7f27875325afbf72d38401ab08c2c2e7a8a823`  
		Last Modified: Thu, 07 Jul 2016 21:05:10 GMT  
		Size: 134.0 B
	-	`sha256:7e5ec396360e0e7fda108b961c4a678ea609c7a754306018e0e6e5ea92407672`  
		Last Modified: Thu, 07 Jul 2016 21:05:10 GMT  
		Size: 131.0 B
	-	`sha256:75adb208765bc964ea8ca57a86510bc2b39d39e436f2c0afce488b2b9d17be1f`  
		Last Modified: Thu, 07 Jul 2016 21:05:12 GMT  
		Size: 7.9 MB (7932496 bytes)
	-	`sha256:374c30d103bd4f35fa584d4b8109f6b58a9e682d8f589c1ce769ed359379b086`  
		Last Modified: Mon, 11 Jul 2016 17:21:39 GMT  
		Size: 1.8 KB (1755 bytes)
	-	`sha256:1d365250084c74a2141be1431a825b4853f83cb92268fe71bce17772041b4221`  
		Last Modified: Mon, 11 Jul 2016 17:21:39 GMT  
		Size: 570.0 B

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
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:745c1cd94ebe79c47147dc3c57bb9cba552a51edb00465b243006e01a1e941a9`  
		Last Modified: Thu, 07 Jul 2016 19:14:28 GMT  
		Size: 39.6 MB (39647617 bytes)
	-	`sha256:7748c7147eb6b4ee4126f3f90f3a5789d770f5a4f4bf6c1009773a5ad9b8777f`  
		Last Modified: Thu, 07 Jul 2016 21:05:13 GMT  
		Size: 22.2 KB (22153 bytes)
	-	`sha256:93c7339b50b12915c94358f19a7f27875325afbf72d38401ab08c2c2e7a8a823`  
		Last Modified: Thu, 07 Jul 2016 21:05:10 GMT  
		Size: 134.0 B
	-	`sha256:7e5ec396360e0e7fda108b961c4a678ea609c7a754306018e0e6e5ea92407672`  
		Last Modified: Thu, 07 Jul 2016 21:05:10 GMT  
		Size: 131.0 B
	-	`sha256:75adb208765bc964ea8ca57a86510bc2b39d39e436f2c0afce488b2b9d17be1f`  
		Last Modified: Thu, 07 Jul 2016 21:05:12 GMT  
		Size: 7.9 MB (7932496 bytes)
	-	`sha256:374c30d103bd4f35fa584d4b8109f6b58a9e682d8f589c1ce769ed359379b086`  
		Last Modified: Mon, 11 Jul 2016 17:21:39 GMT  
		Size: 1.8 KB (1755 bytes)
	-	`sha256:1d365250084c74a2141be1431a825b4853f83cb92268fe71bce17772041b4221`  
		Last Modified: Mon, 11 Jul 2016 17:21:39 GMT  
		Size: 570.0 B

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
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:745c1cd94ebe79c47147dc3c57bb9cba552a51edb00465b243006e01a1e941a9`  
		Last Modified: Thu, 07 Jul 2016 19:14:28 GMT  
		Size: 39.6 MB (39647617 bytes)
	-	`sha256:7748c7147eb6b4ee4126f3f90f3a5789d770f5a4f4bf6c1009773a5ad9b8777f`  
		Last Modified: Thu, 07 Jul 2016 21:05:13 GMT  
		Size: 22.2 KB (22153 bytes)
	-	`sha256:93c7339b50b12915c94358f19a7f27875325afbf72d38401ab08c2c2e7a8a823`  
		Last Modified: Thu, 07 Jul 2016 21:05:10 GMT  
		Size: 134.0 B
	-	`sha256:7e5ec396360e0e7fda108b961c4a678ea609c7a754306018e0e6e5ea92407672`  
		Last Modified: Thu, 07 Jul 2016 21:05:10 GMT  
		Size: 131.0 B
	-	`sha256:75adb208765bc964ea8ca57a86510bc2b39d39e436f2c0afce488b2b9d17be1f`  
		Last Modified: Thu, 07 Jul 2016 21:05:12 GMT  
		Size: 7.9 MB (7932496 bytes)
	-	`sha256:374c30d103bd4f35fa584d4b8109f6b58a9e682d8f589c1ce769ed359379b086`  
		Last Modified: Mon, 11 Jul 2016 17:21:39 GMT  
		Size: 1.8 KB (1755 bytes)
	-	`sha256:1d365250084c74a2141be1431a825b4853f83cb92268fe71bce17772041b4221`  
		Last Modified: Mon, 11 Jul 2016 17:21:39 GMT  
		Size: 570.0 B

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
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:745c1cd94ebe79c47147dc3c57bb9cba552a51edb00465b243006e01a1e941a9`  
		Last Modified: Thu, 07 Jul 2016 19:14:28 GMT  
		Size: 39.6 MB (39647617 bytes)
	-	`sha256:7748c7147eb6b4ee4126f3f90f3a5789d770f5a4f4bf6c1009773a5ad9b8777f`  
		Last Modified: Thu, 07 Jul 2016 21:05:13 GMT  
		Size: 22.2 KB (22153 bytes)
	-	`sha256:93c7339b50b12915c94358f19a7f27875325afbf72d38401ab08c2c2e7a8a823`  
		Last Modified: Thu, 07 Jul 2016 21:05:10 GMT  
		Size: 134.0 B
	-	`sha256:7e5ec396360e0e7fda108b961c4a678ea609c7a754306018e0e6e5ea92407672`  
		Last Modified: Thu, 07 Jul 2016 21:05:10 GMT  
		Size: 131.0 B
	-	`sha256:75adb208765bc964ea8ca57a86510bc2b39d39e436f2c0afce488b2b9d17be1f`  
		Last Modified: Thu, 07 Jul 2016 21:05:12 GMT  
		Size: 7.9 MB (7932496 bytes)
	-	`sha256:374c30d103bd4f35fa584d4b8109f6b58a9e682d8f589c1ce769ed359379b086`  
		Last Modified: Mon, 11 Jul 2016 17:21:39 GMT  
		Size: 1.8 KB (1755 bytes)
	-	`sha256:1d365250084c74a2141be1431a825b4853f83cb92268fe71bce17772041b4221`  
		Last Modified: Mon, 11 Jul 2016 17:21:39 GMT  
		Size: 570.0 B

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
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:745c1cd94ebe79c47147dc3c57bb9cba552a51edb00465b243006e01a1e941a9`  
		Last Modified: Thu, 07 Jul 2016 19:14:28 GMT  
		Size: 39.6 MB (39647617 bytes)
	-	`sha256:7748c7147eb6b4ee4126f3f90f3a5789d770f5a4f4bf6c1009773a5ad9b8777f`  
		Last Modified: Thu, 07 Jul 2016 21:05:13 GMT  
		Size: 22.2 KB (22153 bytes)
	-	`sha256:93c7339b50b12915c94358f19a7f27875325afbf72d38401ab08c2c2e7a8a823`  
		Last Modified: Thu, 07 Jul 2016 21:05:10 GMT  
		Size: 134.0 B
	-	`sha256:7e5ec396360e0e7fda108b961c4a678ea609c7a754306018e0e6e5ea92407672`  
		Last Modified: Thu, 07 Jul 2016 21:05:10 GMT  
		Size: 131.0 B
	-	`sha256:75adb208765bc964ea8ca57a86510bc2b39d39e436f2c0afce488b2b9d17be1f`  
		Last Modified: Thu, 07 Jul 2016 21:05:12 GMT  
		Size: 7.9 MB (7932496 bytes)
	-	`sha256:374c30d103bd4f35fa584d4b8109f6b58a9e682d8f589c1ce769ed359379b086`  
		Last Modified: Mon, 11 Jul 2016 17:21:39 GMT  
		Size: 1.8 KB (1755 bytes)
	-	`sha256:1d365250084c74a2141be1431a825b4853f83cb92268fe71bce17772041b4221`  
		Last Modified: Mon, 11 Jul 2016 17:21:39 GMT  
		Size: 570.0 B

## `jetty:9.2.17`

```console
$ docker pull jetty@sha256:731322d8646615c23d3414d2afb3e147061c6930517b730ae54142b5dd5840fb
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2.17` - linux; amd64

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
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:5e0b8bb8877cd85866e881e057492414348e0d40cdb8f531f222c070f97f2708`  
		Last Modified: Thu, 11 Aug 2016 17:40:37 GMT  
		Size: 2.1 KB (2088 bytes)
	-	`sha256:11007b1085472445c511b578a829164efbc0532736d07e90deb316c0792f791b`  
		Last Modified: Thu, 11 Aug 2016 17:40:37 GMT  
		Size: 147.0 B
	-	`sha256:81ebce7f24c804cffd7044822fd038efee731d04756fd276fb660c5c6bf68653`  
		Last Modified: Thu, 11 Aug 2016 17:40:36 GMT  
		Size: 10.0 MB (10002771 bytes)
	-	`sha256:ae2b74a7644b5afbff70d2079c1a499b61d1fa9196adb941b75339c4decf63c1`  
		Last Modified: Thu, 11 Aug 2016 17:40:34 GMT  
		Size: 129.0 B
	-	`sha256:b021ef82d9032949921f3ed62a48097d54bd212efb89aa5952fd9dcc8033fc9d`  
		Last Modified: Thu, 11 Aug 2016 17:40:34 GMT  
		Size: 1.6 KB (1572 bytes)
	-	`sha256:00fdb4ae70f932421565f2549ffc476c09b56d3ff0e9a1807944552a541a4e41`  
		Last Modified: Thu, 11 Aug 2016 17:40:34 GMT  
		Size: 1.6 KB (1574 bytes)
	-	`sha256:f3d3f333bf8d47e497e36b4a31e4fe5647e4d3884e772360c28efcc45a072477`  
		Last Modified: Thu, 11 Aug 2016 17:40:34 GMT  
		Size: 572.0 B

## `jetty:9.2`

```console
$ docker pull jetty@sha256:cef0b1b908fe50fd8f9e2e109c538a9602beab88c2e90349f823474e49eba473
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.1 MB (134103517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64ab116fb443613cde61b65df3f4ad375b0880b68f3bf8e0d1de1477fb8ef54f`
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
# Fri, 29 Jul 2016 16:49:21 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Fri, 29 Jul 2016 16:49:21 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 29 Jul 2016 16:49:22 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 29 Jul 2016 16:49:24 GMT
RUN mkdir -p "$JETTY_HOME"
# Fri, 29 Jul 2016 16:49:24 GMT
WORKDIR /usr/local/jetty
# Fri, 29 Jul 2016 16:49:25 GMT
ENV JETTY_VERSION=9.2.17.v20160517
# Fri, 29 Jul 2016 16:49:26 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.17.v20160517/jetty-distribution-9.2.17.v20160517.tar.gz
# Fri, 29 Jul 2016 16:49:26 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Fri, 29 Jul 2016 16:49:31 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Fri, 29 Jul 2016 16:49:31 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 29 Jul 2016 16:49:33 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 29 Jul 2016 16:49:34 GMT
WORKDIR /var/lib/jetty
# Fri, 29 Jul 2016 16:49:36 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Fri, 29 Jul 2016 16:49:36 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 29 Jul 2016 16:49:38 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Fri, 29 Jul 2016 16:49:39 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in /
# Fri, 29 Jul 2016 16:49:40 GMT
EXPOSE 8080/tcp
# Fri, 29 Jul 2016 16:49:40 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Fri, 29 Jul 2016 16:49:41 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:e27dcf13956fd46b4ea2781e9e746d73398a973614ca80860fdb776e195a081d`  
		Last Modified: Fri, 29 Jul 2016 16:49:52 GMT  
		Size: 2.1 KB (2081 bytes)
	-	`sha256:44124b97cc162463bfeb05adbc60b31ab042e11d486998eea0b371c7532ba7bc`  
		Last Modified: Fri, 29 Jul 2016 16:49:53 GMT  
		Size: 147.0 B
	-	`sha256:f0c12477d44994c2e24c538c6603b946f53426b26180f5889ed0dd8dd9aa94b5`  
		Last Modified: Fri, 29 Jul 2016 16:49:52 GMT  
		Size: 10.0 MB (10002756 bytes)
	-	`sha256:11962f517860855cd8e09b3fe029456d5b743de307ebc7f4f94ea8fd5f52a7e0`  
		Last Modified: Fri, 29 Jul 2016 16:49:50 GMT  
		Size: 131.0 B
	-	`sha256:d68a25cd1af74c6730a25051abe7030d475c89a26519fe2645cd7c1fc1bc8be1`  
		Last Modified: Fri, 29 Jul 2016 16:49:50 GMT  
		Size: 1.6 KB (1574 bytes)
	-	`sha256:0daba82767079d1963e049168ef1b5873154109b16bc572d657db5848e427d39`  
		Last Modified: Fri, 29 Jul 2016 16:49:50 GMT  
		Size: 1.6 KB (1575 bytes)
	-	`sha256:fe958e89a24e12129ab2b1406e7097667a904189af2f8d0f3b081c49bf095943`  
		Last Modified: Fri, 29 Jul 2016 16:49:50 GMT  
		Size: 571.0 B

## `jetty:9.2.17-jre8`

```console
$ docker pull jetty@sha256:731322d8646615c23d3414d2afb3e147061c6930517b730ae54142b5dd5840fb
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2.17-jre8` - linux; amd64

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
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:5e0b8bb8877cd85866e881e057492414348e0d40cdb8f531f222c070f97f2708`  
		Last Modified: Thu, 11 Aug 2016 17:40:37 GMT  
		Size: 2.1 KB (2088 bytes)
	-	`sha256:11007b1085472445c511b578a829164efbc0532736d07e90deb316c0792f791b`  
		Last Modified: Thu, 11 Aug 2016 17:40:37 GMT  
		Size: 147.0 B
	-	`sha256:81ebce7f24c804cffd7044822fd038efee731d04756fd276fb660c5c6bf68653`  
		Last Modified: Thu, 11 Aug 2016 17:40:36 GMT  
		Size: 10.0 MB (10002771 bytes)
	-	`sha256:ae2b74a7644b5afbff70d2079c1a499b61d1fa9196adb941b75339c4decf63c1`  
		Last Modified: Thu, 11 Aug 2016 17:40:34 GMT  
		Size: 129.0 B
	-	`sha256:b021ef82d9032949921f3ed62a48097d54bd212efb89aa5952fd9dcc8033fc9d`  
		Last Modified: Thu, 11 Aug 2016 17:40:34 GMT  
		Size: 1.6 KB (1572 bytes)
	-	`sha256:00fdb4ae70f932421565f2549ffc476c09b56d3ff0e9a1807944552a541a4e41`  
		Last Modified: Thu, 11 Aug 2016 17:40:34 GMT  
		Size: 1.6 KB (1574 bytes)
	-	`sha256:f3d3f333bf8d47e497e36b4a31e4fe5647e4d3884e772360c28efcc45a072477`  
		Last Modified: Thu, 11 Aug 2016 17:40:34 GMT  
		Size: 572.0 B

## `jetty:9.2-jre8`

```console
$ docker pull jetty@sha256:cef0b1b908fe50fd8f9e2e109c538a9602beab88c2e90349f823474e49eba473
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2-jre8` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.1 MB (134103517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64ab116fb443613cde61b65df3f4ad375b0880b68f3bf8e0d1de1477fb8ef54f`
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
# Fri, 29 Jul 2016 16:49:21 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Fri, 29 Jul 2016 16:49:21 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 29 Jul 2016 16:49:22 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 29 Jul 2016 16:49:24 GMT
RUN mkdir -p "$JETTY_HOME"
# Fri, 29 Jul 2016 16:49:24 GMT
WORKDIR /usr/local/jetty
# Fri, 29 Jul 2016 16:49:25 GMT
ENV JETTY_VERSION=9.2.17.v20160517
# Fri, 29 Jul 2016 16:49:26 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.17.v20160517/jetty-distribution-9.2.17.v20160517.tar.gz
# Fri, 29 Jul 2016 16:49:26 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Fri, 29 Jul 2016 16:49:31 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Fri, 29 Jul 2016 16:49:31 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 29 Jul 2016 16:49:33 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 29 Jul 2016 16:49:34 GMT
WORKDIR /var/lib/jetty
# Fri, 29 Jul 2016 16:49:36 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Fri, 29 Jul 2016 16:49:36 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 29 Jul 2016 16:49:38 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Fri, 29 Jul 2016 16:49:39 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in /
# Fri, 29 Jul 2016 16:49:40 GMT
EXPOSE 8080/tcp
# Fri, 29 Jul 2016 16:49:40 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Fri, 29 Jul 2016 16:49:41 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:e27dcf13956fd46b4ea2781e9e746d73398a973614ca80860fdb776e195a081d`  
		Last Modified: Fri, 29 Jul 2016 16:49:52 GMT  
		Size: 2.1 KB (2081 bytes)
	-	`sha256:44124b97cc162463bfeb05adbc60b31ab042e11d486998eea0b371c7532ba7bc`  
		Last Modified: Fri, 29 Jul 2016 16:49:53 GMT  
		Size: 147.0 B
	-	`sha256:f0c12477d44994c2e24c538c6603b946f53426b26180f5889ed0dd8dd9aa94b5`  
		Last Modified: Fri, 29 Jul 2016 16:49:52 GMT  
		Size: 10.0 MB (10002756 bytes)
	-	`sha256:11962f517860855cd8e09b3fe029456d5b743de307ebc7f4f94ea8fd5f52a7e0`  
		Last Modified: Fri, 29 Jul 2016 16:49:50 GMT  
		Size: 131.0 B
	-	`sha256:d68a25cd1af74c6730a25051abe7030d475c89a26519fe2645cd7c1fc1bc8be1`  
		Last Modified: Fri, 29 Jul 2016 16:49:50 GMT  
		Size: 1.6 KB (1574 bytes)
	-	`sha256:0daba82767079d1963e049168ef1b5873154109b16bc572d657db5848e427d39`  
		Last Modified: Fri, 29 Jul 2016 16:49:50 GMT  
		Size: 1.6 KB (1575 bytes)
	-	`sha256:fe958e89a24e12129ab2b1406e7097667a904189af2f8d0f3b081c49bf095943`  
		Last Modified: Fri, 29 Jul 2016 16:49:50 GMT  
		Size: 571.0 B

## `jetty:9.2.17-jre7`

```console
$ docker pull jetty@sha256:b3cd737ca83305232de539c1d4d344e778531495972349b190593b3fd16dc6e1
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2.17-jre7` - linux; amd64

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
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:4e195c5e4516bd317b5ebe4b42fa95f02a270ab72961125aeb6e406561685aa2`  
		Last Modified: Fri, 05 Aug 2016 22:15:49 GMT  
		Size: 242.0 B
	-	`sha256:297a64db205e5f6d8d3fb5ee1a09681c51888c39784c095011832c62e4089e5f`  
		Last Modified: Fri, 05 Aug 2016 22:16:02 GMT  
		Size: 77.7 MB (77712169 bytes)
	-	`sha256:dfef54646a1b986f1eefde1530c6539b052491f12fd2c432e29612fe1e467bbe`  
		Last Modified: Mon, 08 Aug 2016 17:51:19 GMT  
		Size: 2.1 KB (2090 bytes)
	-	`sha256:bdae784448c29034dc3eb32ed7ce8e036f4f6c32e1a3fa22ae733f0edefcfa75`  
		Last Modified: Mon, 08 Aug 2016 17:51:19 GMT  
		Size: 147.0 B
	-	`sha256:8e499c11b4848bbfef77062c41eed7b49490472e13914a9207d4109ddfcb4010`  
		Last Modified: Mon, 08 Aug 2016 17:51:19 GMT  
		Size: 10.0 MB (10002753 bytes)
	-	`sha256:81f6eb919f90e3fed7a08b30cdab9091fbda75e154f4e398491598c5255a2fab`  
		Last Modified: Mon, 08 Aug 2016 17:51:17 GMT  
		Size: 131.0 B
	-	`sha256:5fdf86bf555ee23d6dc997a627d081dda47cc965cd7ed84c0b7df5b0f44b4176`  
		Last Modified: Mon, 08 Aug 2016 17:51:17 GMT  
		Size: 1.6 KB (1570 bytes)
	-	`sha256:1e5da4323a9f51442b3462c2e216588364fa35faffc0ee35552be1a115310f5f`  
		Last Modified: Mon, 08 Aug 2016 17:51:17 GMT  
		Size: 1.6 KB (1573 bytes)
	-	`sha256:095d0c31ad736e60bcb296a88a933ea886269ea849e5c6177e3ba2cc0249a193`  
		Last Modified: Mon, 08 Aug 2016 17:51:17 GMT  
		Size: 571.0 B

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
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:4e195c5e4516bd317b5ebe4b42fa95f02a270ab72961125aeb6e406561685aa2`  
		Last Modified: Fri, 05 Aug 2016 22:15:49 GMT  
		Size: 242.0 B
	-	`sha256:297a64db205e5f6d8d3fb5ee1a09681c51888c39784c095011832c62e4089e5f`  
		Last Modified: Fri, 05 Aug 2016 22:16:02 GMT  
		Size: 77.7 MB (77712169 bytes)
	-	`sha256:dfef54646a1b986f1eefde1530c6539b052491f12fd2c432e29612fe1e467bbe`  
		Last Modified: Mon, 08 Aug 2016 17:51:19 GMT  
		Size: 2.1 KB (2090 bytes)
	-	`sha256:bdae784448c29034dc3eb32ed7ce8e036f4f6c32e1a3fa22ae733f0edefcfa75`  
		Last Modified: Mon, 08 Aug 2016 17:51:19 GMT  
		Size: 147.0 B
	-	`sha256:8e499c11b4848bbfef77062c41eed7b49490472e13914a9207d4109ddfcb4010`  
		Last Modified: Mon, 08 Aug 2016 17:51:19 GMT  
		Size: 10.0 MB (10002753 bytes)
	-	`sha256:81f6eb919f90e3fed7a08b30cdab9091fbda75e154f4e398491598c5255a2fab`  
		Last Modified: Mon, 08 Aug 2016 17:51:17 GMT  
		Size: 131.0 B
	-	`sha256:5fdf86bf555ee23d6dc997a627d081dda47cc965cd7ed84c0b7df5b0f44b4176`  
		Last Modified: Mon, 08 Aug 2016 17:51:17 GMT  
		Size: 1.6 KB (1570 bytes)
	-	`sha256:1e5da4323a9f51442b3462c2e216588364fa35faffc0ee35552be1a115310f5f`  
		Last Modified: Mon, 08 Aug 2016 17:51:17 GMT  
		Size: 1.6 KB (1573 bytes)
	-	`sha256:095d0c31ad736e60bcb296a88a933ea886269ea849e5c6177e3ba2cc0249a193`  
		Last Modified: Mon, 08 Aug 2016 17:51:17 GMT  
		Size: 571.0 B

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
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:4e195c5e4516bd317b5ebe4b42fa95f02a270ab72961125aeb6e406561685aa2`  
		Last Modified: Fri, 05 Aug 2016 22:15:49 GMT  
		Size: 242.0 B
	-	`sha256:297a64db205e5f6d8d3fb5ee1a09681c51888c39784c095011832c62e4089e5f`  
		Last Modified: Fri, 05 Aug 2016 22:16:02 GMT  
		Size: 77.7 MB (77712169 bytes)
	-	`sha256:dfef54646a1b986f1eefde1530c6539b052491f12fd2c432e29612fe1e467bbe`  
		Last Modified: Mon, 08 Aug 2016 17:51:19 GMT  
		Size: 2.1 KB (2090 bytes)
	-	`sha256:bdae784448c29034dc3eb32ed7ce8e036f4f6c32e1a3fa22ae733f0edefcfa75`  
		Last Modified: Mon, 08 Aug 2016 17:51:19 GMT  
		Size: 147.0 B
	-	`sha256:8e499c11b4848bbfef77062c41eed7b49490472e13914a9207d4109ddfcb4010`  
		Last Modified: Mon, 08 Aug 2016 17:51:19 GMT  
		Size: 10.0 MB (10002753 bytes)
	-	`sha256:81f6eb919f90e3fed7a08b30cdab9091fbda75e154f4e398491598c5255a2fab`  
		Last Modified: Mon, 08 Aug 2016 17:51:17 GMT  
		Size: 131.0 B
	-	`sha256:5fdf86bf555ee23d6dc997a627d081dda47cc965cd7ed84c0b7df5b0f44b4176`  
		Last Modified: Mon, 08 Aug 2016 17:51:17 GMT  
		Size: 1.6 KB (1570 bytes)
	-	`sha256:1e5da4323a9f51442b3462c2e216588364fa35faffc0ee35552be1a115310f5f`  
		Last Modified: Mon, 08 Aug 2016 17:51:17 GMT  
		Size: 1.6 KB (1573 bytes)
	-	`sha256:095d0c31ad736e60bcb296a88a933ea886269ea849e5c6177e3ba2cc0249a193`  
		Last Modified: Mon, 08 Aug 2016 17:51:17 GMT  
		Size: 571.0 B

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
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:4e195c5e4516bd317b5ebe4b42fa95f02a270ab72961125aeb6e406561685aa2`  
		Last Modified: Fri, 05 Aug 2016 22:15:49 GMT  
		Size: 242.0 B
	-	`sha256:297a64db205e5f6d8d3fb5ee1a09681c51888c39784c095011832c62e4089e5f`  
		Last Modified: Fri, 05 Aug 2016 22:16:02 GMT  
		Size: 77.7 MB (77712169 bytes)
	-	`sha256:dfef54646a1b986f1eefde1530c6539b052491f12fd2c432e29612fe1e467bbe`  
		Last Modified: Mon, 08 Aug 2016 17:51:19 GMT  
		Size: 2.1 KB (2090 bytes)
	-	`sha256:bdae784448c29034dc3eb32ed7ce8e036f4f6c32e1a3fa22ae733f0edefcfa75`  
		Last Modified: Mon, 08 Aug 2016 17:51:19 GMT  
		Size: 147.0 B
	-	`sha256:8e499c11b4848bbfef77062c41eed7b49490472e13914a9207d4109ddfcb4010`  
		Last Modified: Mon, 08 Aug 2016 17:51:19 GMT  
		Size: 10.0 MB (10002753 bytes)
	-	`sha256:81f6eb919f90e3fed7a08b30cdab9091fbda75e154f4e398491598c5255a2fab`  
		Last Modified: Mon, 08 Aug 2016 17:51:17 GMT  
		Size: 131.0 B
	-	`sha256:5fdf86bf555ee23d6dc997a627d081dda47cc965cd7ed84c0b7df5b0f44b4176`  
		Last Modified: Mon, 08 Aug 2016 17:51:17 GMT  
		Size: 1.6 KB (1570 bytes)
	-	`sha256:1e5da4323a9f51442b3462c2e216588364fa35faffc0ee35552be1a115310f5f`  
		Last Modified: Mon, 08 Aug 2016 17:51:17 GMT  
		Size: 1.6 KB (1573 bytes)
	-	`sha256:095d0c31ad736e60bcb296a88a933ea886269ea849e5c6177e3ba2cc0249a193`  
		Last Modified: Mon, 08 Aug 2016 17:51:17 GMT  
		Size: 571.0 B
