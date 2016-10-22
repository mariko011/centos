<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jetty`

-	[`jetty:9.3.12`](#jetty9312)
-	[`jetty:9.3`](#jetty93)
-	[`jetty:9`](#jetty9)
-	[`jetty:9.3.12-jre8`](#jetty9312-jre8)
-	[`jetty:9.3-jre8`](#jetty93-jre8)
-	[`jetty:9-jre8`](#jetty9-jre8)
-	[`jetty:latest`](#jettylatest)
-	[`jetty:jre8`](#jettyjre8)
-	[`jetty:9.3.12-alpine`](#jetty9312-alpine)
-	[`jetty:9.3-alpine`](#jetty93-alpine)
-	[`jetty:9-alpine`](#jetty9-alpine)
-	[`jetty:9.3.12-jre8-alpine`](#jetty9312-jre8-alpine)
-	[`jetty:9.3-jre8-alpine`](#jetty93-jre8-alpine)
-	[`jetty:9-jre8-alpine`](#jetty9-jre8-alpine)
-	[`jetty:alpine`](#jettyalpine)
-	[`jetty:jre8-alpine`](#jettyjre8-alpine)
-	[`jetty:9.2.19`](#jetty9219)
-	[`jetty:9.2`](#jetty92)
-	[`jetty:9.2.19-jre8`](#jetty9219-jre8)
-	[`jetty:9.2-jre8`](#jetty92-jre8)
-	[`jetty:9.2.19-jre7`](#jetty9219-jre7)
-	[`jetty:9.2-jre7`](#jetty92-jre7)
-	[`jetty:9-jre7`](#jetty9-jre7)
-	[`jetty:jre7`](#jettyjre7)

## `jetty:9.3.12`

```console
$ docker pull jetty@sha256:c27e695d53d409b37c9146b91a2be5e51b9236764ad5b1064fbbbd844290e26e
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.12` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132131223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cbad45a1643240e81ffddb6fd385f9282118b7b33fc26eced8ed0a3f2a442ed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Sat, 22 Oct 2016 06:30:07 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 22 Oct 2016 06:30:07 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 22 Oct 2016 06:30:08 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 06:30:09 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 22 Oct 2016 06:30:10 GMT
WORKDIR /usr/local/jetty
# Sat, 22 Oct 2016 06:30:10 GMT
ENV JETTY_VERSION=9.3.12.v20160915
# Sat, 22 Oct 2016 06:30:10 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.12.v20160915/jetty-distribution-9.3.12.v20160915.tar.gz
# Sat, 22 Oct 2016 06:30:11 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Sat, 22 Oct 2016 06:30:15 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Sat, 22 Oct 2016 06:30:16 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 22 Oct 2016 06:30:17 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 22 Oct 2016 06:30:17 GMT
WORKDIR /var/lib/jetty
# Sat, 22 Oct 2016 06:30:23 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Sat, 22 Oct 2016 06:30:24 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 22 Oct 2016 06:30:25 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Sat, 22 Oct 2016 06:30:25 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 22 Oct 2016 06:30:26 GMT
EXPOSE 8080/tcp
# Sat, 22 Oct 2016 06:30:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Oct 2016 06:30:27 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:45debefa05250e49a12129c4d936fc9fa0e2b0cb5fdc328f6fd4a44813bb728c`  
		Last Modified: Sat, 22 Oct 2016 06:30:40 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6e191f39e1a1722f12fd90f3bddf2fc1b14368585709d80e099e54f10e9e8b`  
		Last Modified: Sat, 22 Oct 2016 06:30:40 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebfaabf6fe2e34f084f5ad39b95ee365320dec573b2327f1c28288cea892600`  
		Last Modified: Sat, 22 Oct 2016 06:30:39 GMT  
		Size: 8.0 MB (7952469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cb3f808d032a6e0fe72ae77b300c891923a898a30c66f5df4f291b00abc8d3`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0994d393c7c29050503b64290aef95ca11d81ff522b482bf9e26ae2e3369964`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 1.9 KB (1857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34df852a98b90a07dab8836d94d0d4779693c0ba2610c257e37314b8586872e`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 1.9 KB (1860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ff6163f1c02fa2e234d16fd715dd5be197b0b221ddeaeb91bea7c9ae749820`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3`

```console
$ docker pull jetty@sha256:c27e695d53d409b37c9146b91a2be5e51b9236764ad5b1064fbbbd844290e26e
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132131223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cbad45a1643240e81ffddb6fd385f9282118b7b33fc26eced8ed0a3f2a442ed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Sat, 22 Oct 2016 06:30:07 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 22 Oct 2016 06:30:07 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 22 Oct 2016 06:30:08 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 06:30:09 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 22 Oct 2016 06:30:10 GMT
WORKDIR /usr/local/jetty
# Sat, 22 Oct 2016 06:30:10 GMT
ENV JETTY_VERSION=9.3.12.v20160915
# Sat, 22 Oct 2016 06:30:10 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.12.v20160915/jetty-distribution-9.3.12.v20160915.tar.gz
# Sat, 22 Oct 2016 06:30:11 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Sat, 22 Oct 2016 06:30:15 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Sat, 22 Oct 2016 06:30:16 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 22 Oct 2016 06:30:17 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 22 Oct 2016 06:30:17 GMT
WORKDIR /var/lib/jetty
# Sat, 22 Oct 2016 06:30:23 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Sat, 22 Oct 2016 06:30:24 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 22 Oct 2016 06:30:25 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Sat, 22 Oct 2016 06:30:25 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 22 Oct 2016 06:30:26 GMT
EXPOSE 8080/tcp
# Sat, 22 Oct 2016 06:30:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Oct 2016 06:30:27 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:45debefa05250e49a12129c4d936fc9fa0e2b0cb5fdc328f6fd4a44813bb728c`  
		Last Modified: Sat, 22 Oct 2016 06:30:40 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6e191f39e1a1722f12fd90f3bddf2fc1b14368585709d80e099e54f10e9e8b`  
		Last Modified: Sat, 22 Oct 2016 06:30:40 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebfaabf6fe2e34f084f5ad39b95ee365320dec573b2327f1c28288cea892600`  
		Last Modified: Sat, 22 Oct 2016 06:30:39 GMT  
		Size: 8.0 MB (7952469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cb3f808d032a6e0fe72ae77b300c891923a898a30c66f5df4f291b00abc8d3`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0994d393c7c29050503b64290aef95ca11d81ff522b482bf9e26ae2e3369964`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 1.9 KB (1857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34df852a98b90a07dab8836d94d0d4779693c0ba2610c257e37314b8586872e`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 1.9 KB (1860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ff6163f1c02fa2e234d16fd715dd5be197b0b221ddeaeb91bea7c9ae749820`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9`

```console
$ docker pull jetty@sha256:c27e695d53d409b37c9146b91a2be5e51b9236764ad5b1064fbbbd844290e26e
```

-	Platforms:
	-	linux; amd64

### `jetty:9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132131223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cbad45a1643240e81ffddb6fd385f9282118b7b33fc26eced8ed0a3f2a442ed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Sat, 22 Oct 2016 06:30:07 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 22 Oct 2016 06:30:07 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 22 Oct 2016 06:30:08 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 06:30:09 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 22 Oct 2016 06:30:10 GMT
WORKDIR /usr/local/jetty
# Sat, 22 Oct 2016 06:30:10 GMT
ENV JETTY_VERSION=9.3.12.v20160915
# Sat, 22 Oct 2016 06:30:10 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.12.v20160915/jetty-distribution-9.3.12.v20160915.tar.gz
# Sat, 22 Oct 2016 06:30:11 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Sat, 22 Oct 2016 06:30:15 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Sat, 22 Oct 2016 06:30:16 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 22 Oct 2016 06:30:17 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 22 Oct 2016 06:30:17 GMT
WORKDIR /var/lib/jetty
# Sat, 22 Oct 2016 06:30:23 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Sat, 22 Oct 2016 06:30:24 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 22 Oct 2016 06:30:25 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Sat, 22 Oct 2016 06:30:25 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 22 Oct 2016 06:30:26 GMT
EXPOSE 8080/tcp
# Sat, 22 Oct 2016 06:30:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Oct 2016 06:30:27 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:45debefa05250e49a12129c4d936fc9fa0e2b0cb5fdc328f6fd4a44813bb728c`  
		Last Modified: Sat, 22 Oct 2016 06:30:40 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6e191f39e1a1722f12fd90f3bddf2fc1b14368585709d80e099e54f10e9e8b`  
		Last Modified: Sat, 22 Oct 2016 06:30:40 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebfaabf6fe2e34f084f5ad39b95ee365320dec573b2327f1c28288cea892600`  
		Last Modified: Sat, 22 Oct 2016 06:30:39 GMT  
		Size: 8.0 MB (7952469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cb3f808d032a6e0fe72ae77b300c891923a898a30c66f5df4f291b00abc8d3`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0994d393c7c29050503b64290aef95ca11d81ff522b482bf9e26ae2e3369964`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 1.9 KB (1857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34df852a98b90a07dab8836d94d0d4779693c0ba2610c257e37314b8586872e`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 1.9 KB (1860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ff6163f1c02fa2e234d16fd715dd5be197b0b221ddeaeb91bea7c9ae749820`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.12-jre8`

```console
$ docker pull jetty@sha256:c27e695d53d409b37c9146b91a2be5e51b9236764ad5b1064fbbbd844290e26e
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.12-jre8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132131223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cbad45a1643240e81ffddb6fd385f9282118b7b33fc26eced8ed0a3f2a442ed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Sat, 22 Oct 2016 06:30:07 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 22 Oct 2016 06:30:07 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 22 Oct 2016 06:30:08 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 06:30:09 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 22 Oct 2016 06:30:10 GMT
WORKDIR /usr/local/jetty
# Sat, 22 Oct 2016 06:30:10 GMT
ENV JETTY_VERSION=9.3.12.v20160915
# Sat, 22 Oct 2016 06:30:10 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.12.v20160915/jetty-distribution-9.3.12.v20160915.tar.gz
# Sat, 22 Oct 2016 06:30:11 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Sat, 22 Oct 2016 06:30:15 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Sat, 22 Oct 2016 06:30:16 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 22 Oct 2016 06:30:17 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 22 Oct 2016 06:30:17 GMT
WORKDIR /var/lib/jetty
# Sat, 22 Oct 2016 06:30:23 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Sat, 22 Oct 2016 06:30:24 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 22 Oct 2016 06:30:25 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Sat, 22 Oct 2016 06:30:25 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 22 Oct 2016 06:30:26 GMT
EXPOSE 8080/tcp
# Sat, 22 Oct 2016 06:30:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Oct 2016 06:30:27 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:45debefa05250e49a12129c4d936fc9fa0e2b0cb5fdc328f6fd4a44813bb728c`  
		Last Modified: Sat, 22 Oct 2016 06:30:40 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6e191f39e1a1722f12fd90f3bddf2fc1b14368585709d80e099e54f10e9e8b`  
		Last Modified: Sat, 22 Oct 2016 06:30:40 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebfaabf6fe2e34f084f5ad39b95ee365320dec573b2327f1c28288cea892600`  
		Last Modified: Sat, 22 Oct 2016 06:30:39 GMT  
		Size: 8.0 MB (7952469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cb3f808d032a6e0fe72ae77b300c891923a898a30c66f5df4f291b00abc8d3`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0994d393c7c29050503b64290aef95ca11d81ff522b482bf9e26ae2e3369964`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 1.9 KB (1857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34df852a98b90a07dab8836d94d0d4779693c0ba2610c257e37314b8586872e`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 1.9 KB (1860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ff6163f1c02fa2e234d16fd715dd5be197b0b221ddeaeb91bea7c9ae749820`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-jre8`

```console
$ docker pull jetty@sha256:c27e695d53d409b37c9146b91a2be5e51b9236764ad5b1064fbbbd844290e26e
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3-jre8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132131223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cbad45a1643240e81ffddb6fd385f9282118b7b33fc26eced8ed0a3f2a442ed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Sat, 22 Oct 2016 06:30:07 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 22 Oct 2016 06:30:07 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 22 Oct 2016 06:30:08 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 06:30:09 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 22 Oct 2016 06:30:10 GMT
WORKDIR /usr/local/jetty
# Sat, 22 Oct 2016 06:30:10 GMT
ENV JETTY_VERSION=9.3.12.v20160915
# Sat, 22 Oct 2016 06:30:10 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.12.v20160915/jetty-distribution-9.3.12.v20160915.tar.gz
# Sat, 22 Oct 2016 06:30:11 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Sat, 22 Oct 2016 06:30:15 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Sat, 22 Oct 2016 06:30:16 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 22 Oct 2016 06:30:17 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 22 Oct 2016 06:30:17 GMT
WORKDIR /var/lib/jetty
# Sat, 22 Oct 2016 06:30:23 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Sat, 22 Oct 2016 06:30:24 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 22 Oct 2016 06:30:25 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Sat, 22 Oct 2016 06:30:25 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 22 Oct 2016 06:30:26 GMT
EXPOSE 8080/tcp
# Sat, 22 Oct 2016 06:30:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Oct 2016 06:30:27 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:45debefa05250e49a12129c4d936fc9fa0e2b0cb5fdc328f6fd4a44813bb728c`  
		Last Modified: Sat, 22 Oct 2016 06:30:40 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6e191f39e1a1722f12fd90f3bddf2fc1b14368585709d80e099e54f10e9e8b`  
		Last Modified: Sat, 22 Oct 2016 06:30:40 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebfaabf6fe2e34f084f5ad39b95ee365320dec573b2327f1c28288cea892600`  
		Last Modified: Sat, 22 Oct 2016 06:30:39 GMT  
		Size: 8.0 MB (7952469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cb3f808d032a6e0fe72ae77b300c891923a898a30c66f5df4f291b00abc8d3`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0994d393c7c29050503b64290aef95ca11d81ff522b482bf9e26ae2e3369964`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 1.9 KB (1857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34df852a98b90a07dab8836d94d0d4779693c0ba2610c257e37314b8586872e`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 1.9 KB (1860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ff6163f1c02fa2e234d16fd715dd5be197b0b221ddeaeb91bea7c9ae749820`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre8`

```console
$ docker pull jetty@sha256:c27e695d53d409b37c9146b91a2be5e51b9236764ad5b1064fbbbd844290e26e
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132131223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cbad45a1643240e81ffddb6fd385f9282118b7b33fc26eced8ed0a3f2a442ed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Sat, 22 Oct 2016 06:30:07 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 22 Oct 2016 06:30:07 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 22 Oct 2016 06:30:08 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 06:30:09 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 22 Oct 2016 06:30:10 GMT
WORKDIR /usr/local/jetty
# Sat, 22 Oct 2016 06:30:10 GMT
ENV JETTY_VERSION=9.3.12.v20160915
# Sat, 22 Oct 2016 06:30:10 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.12.v20160915/jetty-distribution-9.3.12.v20160915.tar.gz
# Sat, 22 Oct 2016 06:30:11 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Sat, 22 Oct 2016 06:30:15 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Sat, 22 Oct 2016 06:30:16 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 22 Oct 2016 06:30:17 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 22 Oct 2016 06:30:17 GMT
WORKDIR /var/lib/jetty
# Sat, 22 Oct 2016 06:30:23 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Sat, 22 Oct 2016 06:30:24 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 22 Oct 2016 06:30:25 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Sat, 22 Oct 2016 06:30:25 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 22 Oct 2016 06:30:26 GMT
EXPOSE 8080/tcp
# Sat, 22 Oct 2016 06:30:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Oct 2016 06:30:27 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:45debefa05250e49a12129c4d936fc9fa0e2b0cb5fdc328f6fd4a44813bb728c`  
		Last Modified: Sat, 22 Oct 2016 06:30:40 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6e191f39e1a1722f12fd90f3bddf2fc1b14368585709d80e099e54f10e9e8b`  
		Last Modified: Sat, 22 Oct 2016 06:30:40 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebfaabf6fe2e34f084f5ad39b95ee365320dec573b2327f1c28288cea892600`  
		Last Modified: Sat, 22 Oct 2016 06:30:39 GMT  
		Size: 8.0 MB (7952469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cb3f808d032a6e0fe72ae77b300c891923a898a30c66f5df4f291b00abc8d3`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0994d393c7c29050503b64290aef95ca11d81ff522b482bf9e26ae2e3369964`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 1.9 KB (1857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34df852a98b90a07dab8836d94d0d4779693c0ba2610c257e37314b8586872e`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 1.9 KB (1860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ff6163f1c02fa2e234d16fd715dd5be197b0b221ddeaeb91bea7c9ae749820`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:latest`

```console
$ docker pull jetty@sha256:f7fa1a70fdbd49c72773e7dff8558d5c37ea8116394356422f986a19aaa0c678
```

-	Platforms:
	-	linux; amd64

### `jetty:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132094792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75a25755d66648f463d4ed84c042186a822c4fcf691e574f269a035cad29d16b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 03:51:59 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 24 Sep 2016 03:51:59 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 24 Sep 2016 03:52:00 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 03:52:00 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 24 Sep 2016 03:52:01 GMT
WORKDIR /usr/local/jetty
# Fri, 30 Sep 2016 23:34:57 GMT
ENV JETTY_VERSION=9.3.12.v20160915
# Fri, 30 Sep 2016 23:34:57 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.12.v20160915/jetty-distribution-9.3.12.v20160915.tar.gz
# Fri, 30 Sep 2016 23:34:57 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Fri, 30 Sep 2016 23:35:18 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Fri, 30 Sep 2016 23:35:19 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 30 Sep 2016 23:35:20 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 30 Sep 2016 23:35:20 GMT
WORKDIR /var/lib/jetty
# Fri, 30 Sep 2016 23:35:25 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Fri, 30 Sep 2016 23:35:25 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 30 Sep 2016 23:35:26 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Fri, 30 Sep 2016 23:35:26 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Fri, 30 Sep 2016 23:35:27 GMT
EXPOSE 8080/tcp
# Fri, 30 Sep 2016 23:35:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 30 Sep 2016 23:35:27 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068e405de5426aeb84fdc0c33e5c232c1b102bfa3aa8b7708e388c7962826989`  
		Last Modified: Sat, 24 Sep 2016 03:52:24 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df27b538b890ce1ff1382b2f8fcd58a59de16cee1c24cf0b89f9420879ff9d4`  
		Last Modified: Sat, 24 Sep 2016 03:52:25 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996db283d04b5c09abe389bfdce90a99941b2753afc1d84f67a094bdac37476a`  
		Last Modified: Fri, 30 Sep 2016 23:36:13 GMT  
		Size: 8.0 MB (7952442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ddbc48eca65a40e15ecb0e813e4844e2d587aaeeb7e2922aec4d8574c88c69`  
		Last Modified: Fri, 30 Sep 2016 23:36:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f57574f3104b3242db05807c4d74fbd2ef9719fbd09c3b66b08b13768d207d6`  
		Last Modified: Fri, 30 Sep 2016 23:36:12 GMT  
		Size: 1.9 KB (1861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6552385aad80c1902c1f871e0d66fa82dfc33c3707b01d73af45e3aa672fe21`  
		Last Modified: Fri, 30 Sep 2016 23:36:11 GMT  
		Size: 1.9 KB (1859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aacd7d1c09661f6d8fd17e54f04d7afc638735b106b1cd7161b5c75954be2571`  
		Last Modified: Fri, 30 Sep 2016 23:36:12 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre8`

```console
$ docker pull jetty@sha256:c27e695d53d409b37c9146b91a2be5e51b9236764ad5b1064fbbbd844290e26e
```

-	Platforms:
	-	linux; amd64

### `jetty:jre8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132131223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cbad45a1643240e81ffddb6fd385f9282118b7b33fc26eced8ed0a3f2a442ed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Sat, 22 Oct 2016 06:30:07 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 22 Oct 2016 06:30:07 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 22 Oct 2016 06:30:08 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 06:30:09 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 22 Oct 2016 06:30:10 GMT
WORKDIR /usr/local/jetty
# Sat, 22 Oct 2016 06:30:10 GMT
ENV JETTY_VERSION=9.3.12.v20160915
# Sat, 22 Oct 2016 06:30:10 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.12.v20160915/jetty-distribution-9.3.12.v20160915.tar.gz
# Sat, 22 Oct 2016 06:30:11 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Sat, 22 Oct 2016 06:30:15 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Sat, 22 Oct 2016 06:30:16 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 22 Oct 2016 06:30:17 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 22 Oct 2016 06:30:17 GMT
WORKDIR /var/lib/jetty
# Sat, 22 Oct 2016 06:30:23 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Sat, 22 Oct 2016 06:30:24 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 22 Oct 2016 06:30:25 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Sat, 22 Oct 2016 06:30:25 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 22 Oct 2016 06:30:26 GMT
EXPOSE 8080/tcp
# Sat, 22 Oct 2016 06:30:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Oct 2016 06:30:27 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:45debefa05250e49a12129c4d936fc9fa0e2b0cb5fdc328f6fd4a44813bb728c`  
		Last Modified: Sat, 22 Oct 2016 06:30:40 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6e191f39e1a1722f12fd90f3bddf2fc1b14368585709d80e099e54f10e9e8b`  
		Last Modified: Sat, 22 Oct 2016 06:30:40 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebfaabf6fe2e34f084f5ad39b95ee365320dec573b2327f1c28288cea892600`  
		Last Modified: Sat, 22 Oct 2016 06:30:39 GMT  
		Size: 8.0 MB (7952469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cb3f808d032a6e0fe72ae77b300c891923a898a30c66f5df4f291b00abc8d3`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0994d393c7c29050503b64290aef95ca11d81ff522b482bf9e26ae2e3369964`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 1.9 KB (1857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34df852a98b90a07dab8836d94d0d4779693c0ba2610c257e37314b8586872e`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 1.9 KB (1860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ff6163f1c02fa2e234d16fd715dd5be197b0b221ddeaeb91bea7c9ae749820`  
		Last Modified: Sat, 22 Oct 2016 06:30:37 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.12-alpine`

```console
$ docker pull jetty@sha256:949557ee9b87267a4310d2be8dcb3704a983c53c707565125aba4b8fedc45f92
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.12-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49948779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50d5b667bfb8d550be8c4070b70c31875da9d8e1904ad8077efb794b87e204f5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_VERSION=8u92
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 18 Oct 2016 20:40:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 19 Oct 2016 00:43:46 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 19 Oct 2016 00:43:46 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 19 Oct 2016 00:43:46 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 19 Oct 2016 00:43:47 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 19 Oct 2016 00:43:48 GMT
WORKDIR /usr/local/jetty
# Wed, 19 Oct 2016 00:43:48 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 19 Oct 2016 00:43:49 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 19 Oct 2016 00:43:49 GMT
ENV JETTY_VERSION=9.3.12.v20160915
# Wed, 19 Oct 2016 00:43:50 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.12.v20160915/jetty-distribution-9.3.12.v20160915.tar.gz
# Wed, 19 Oct 2016 00:43:50 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Wed, 19 Oct 2016 00:43:58 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Wed, 19 Oct 2016 00:43:58 GMT
WORKDIR /var/lib/jetty
# Wed, 19 Oct 2016 00:43:58 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 19 Oct 2016 00:43:59 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 19 Oct 2016 00:44:00 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 19 Oct 2016 00:44:00 GMT
EXPOSE 8080/tcp
# Wed, 19 Oct 2016 00:44:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:44:01 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8876cfd96b2fd6c8a3d85d8ed9a02cfce486c97320fd18e3ce681486569ea72`  
		Last Modified: Tue, 18 Oct 2016 20:53:40 GMT  
		Size: 39.6 MB (39648817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f5f5eb8aefd4e57bcd7cf1decd8f8eb03caecad8b42bf4a322adf2d97030a4`  
		Last Modified: Wed, 19 Oct 2016 00:44:13 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77070d37480a6cae71a8e1ed9dbaf4a76f2dd26ead5e33b84b8746088c10b1d5`  
		Last Modified: Wed, 19 Oct 2016 00:44:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c3a23146c682b16618956bb6c25dcedb97f0d838d06839c9133edc33489389`  
		Last Modified: Wed, 19 Oct 2016 00:44:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f241ab8674ceef8481bc38e53cfe282456cc4617b13d707b6f704b3b3d63822e`  
		Last Modified: Wed, 19 Oct 2016 00:44:12 GMT  
		Size: 8.0 MB (7982968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad40c836c53ca8ae4d0628b37063bf6269a36614078b1749b59a415d6338bc95`  
		Last Modified: Wed, 19 Oct 2016 00:44:11 GMT  
		Size: 1.9 KB (1860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c206b19961e2ae64ab64f88bcab0a622443cc64bc90c1086987b7d4ee34035`  
		Last Modified: Wed, 19 Oct 2016 00:44:11 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-alpine`

```console
$ docker pull jetty@sha256:949557ee9b87267a4310d2be8dcb3704a983c53c707565125aba4b8fedc45f92
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49948779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50d5b667bfb8d550be8c4070b70c31875da9d8e1904ad8077efb794b87e204f5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_VERSION=8u92
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 18 Oct 2016 20:40:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 19 Oct 2016 00:43:46 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 19 Oct 2016 00:43:46 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 19 Oct 2016 00:43:46 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 19 Oct 2016 00:43:47 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 19 Oct 2016 00:43:48 GMT
WORKDIR /usr/local/jetty
# Wed, 19 Oct 2016 00:43:48 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 19 Oct 2016 00:43:49 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 19 Oct 2016 00:43:49 GMT
ENV JETTY_VERSION=9.3.12.v20160915
# Wed, 19 Oct 2016 00:43:50 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.12.v20160915/jetty-distribution-9.3.12.v20160915.tar.gz
# Wed, 19 Oct 2016 00:43:50 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Wed, 19 Oct 2016 00:43:58 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Wed, 19 Oct 2016 00:43:58 GMT
WORKDIR /var/lib/jetty
# Wed, 19 Oct 2016 00:43:58 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 19 Oct 2016 00:43:59 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 19 Oct 2016 00:44:00 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 19 Oct 2016 00:44:00 GMT
EXPOSE 8080/tcp
# Wed, 19 Oct 2016 00:44:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:44:01 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8876cfd96b2fd6c8a3d85d8ed9a02cfce486c97320fd18e3ce681486569ea72`  
		Last Modified: Tue, 18 Oct 2016 20:53:40 GMT  
		Size: 39.6 MB (39648817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f5f5eb8aefd4e57bcd7cf1decd8f8eb03caecad8b42bf4a322adf2d97030a4`  
		Last Modified: Wed, 19 Oct 2016 00:44:13 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77070d37480a6cae71a8e1ed9dbaf4a76f2dd26ead5e33b84b8746088c10b1d5`  
		Last Modified: Wed, 19 Oct 2016 00:44:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c3a23146c682b16618956bb6c25dcedb97f0d838d06839c9133edc33489389`  
		Last Modified: Wed, 19 Oct 2016 00:44:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f241ab8674ceef8481bc38e53cfe282456cc4617b13d707b6f704b3b3d63822e`  
		Last Modified: Wed, 19 Oct 2016 00:44:12 GMT  
		Size: 8.0 MB (7982968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad40c836c53ca8ae4d0628b37063bf6269a36614078b1749b59a415d6338bc95`  
		Last Modified: Wed, 19 Oct 2016 00:44:11 GMT  
		Size: 1.9 KB (1860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c206b19961e2ae64ab64f88bcab0a622443cc64bc90c1086987b7d4ee34035`  
		Last Modified: Wed, 19 Oct 2016 00:44:11 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-alpine`

```console
$ docker pull jetty@sha256:949557ee9b87267a4310d2be8dcb3704a983c53c707565125aba4b8fedc45f92
```

-	Platforms:
	-	linux; amd64

### `jetty:9-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49948779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50d5b667bfb8d550be8c4070b70c31875da9d8e1904ad8077efb794b87e204f5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_VERSION=8u92
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 18 Oct 2016 20:40:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 19 Oct 2016 00:43:46 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 19 Oct 2016 00:43:46 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 19 Oct 2016 00:43:46 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 19 Oct 2016 00:43:47 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 19 Oct 2016 00:43:48 GMT
WORKDIR /usr/local/jetty
# Wed, 19 Oct 2016 00:43:48 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 19 Oct 2016 00:43:49 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 19 Oct 2016 00:43:49 GMT
ENV JETTY_VERSION=9.3.12.v20160915
# Wed, 19 Oct 2016 00:43:50 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.12.v20160915/jetty-distribution-9.3.12.v20160915.tar.gz
# Wed, 19 Oct 2016 00:43:50 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Wed, 19 Oct 2016 00:43:58 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Wed, 19 Oct 2016 00:43:58 GMT
WORKDIR /var/lib/jetty
# Wed, 19 Oct 2016 00:43:58 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 19 Oct 2016 00:43:59 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 19 Oct 2016 00:44:00 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 19 Oct 2016 00:44:00 GMT
EXPOSE 8080/tcp
# Wed, 19 Oct 2016 00:44:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:44:01 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8876cfd96b2fd6c8a3d85d8ed9a02cfce486c97320fd18e3ce681486569ea72`  
		Last Modified: Tue, 18 Oct 2016 20:53:40 GMT  
		Size: 39.6 MB (39648817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f5f5eb8aefd4e57bcd7cf1decd8f8eb03caecad8b42bf4a322adf2d97030a4`  
		Last Modified: Wed, 19 Oct 2016 00:44:13 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77070d37480a6cae71a8e1ed9dbaf4a76f2dd26ead5e33b84b8746088c10b1d5`  
		Last Modified: Wed, 19 Oct 2016 00:44:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c3a23146c682b16618956bb6c25dcedb97f0d838d06839c9133edc33489389`  
		Last Modified: Wed, 19 Oct 2016 00:44:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f241ab8674ceef8481bc38e53cfe282456cc4617b13d707b6f704b3b3d63822e`  
		Last Modified: Wed, 19 Oct 2016 00:44:12 GMT  
		Size: 8.0 MB (7982968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad40c836c53ca8ae4d0628b37063bf6269a36614078b1749b59a415d6338bc95`  
		Last Modified: Wed, 19 Oct 2016 00:44:11 GMT  
		Size: 1.9 KB (1860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c206b19961e2ae64ab64f88bcab0a622443cc64bc90c1086987b7d4ee34035`  
		Last Modified: Wed, 19 Oct 2016 00:44:11 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.12-jre8-alpine`

```console
$ docker pull jetty@sha256:949557ee9b87267a4310d2be8dcb3704a983c53c707565125aba4b8fedc45f92
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.12-jre8-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49948779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50d5b667bfb8d550be8c4070b70c31875da9d8e1904ad8077efb794b87e204f5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_VERSION=8u92
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 18 Oct 2016 20:40:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 19 Oct 2016 00:43:46 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 19 Oct 2016 00:43:46 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 19 Oct 2016 00:43:46 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 19 Oct 2016 00:43:47 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 19 Oct 2016 00:43:48 GMT
WORKDIR /usr/local/jetty
# Wed, 19 Oct 2016 00:43:48 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 19 Oct 2016 00:43:49 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 19 Oct 2016 00:43:49 GMT
ENV JETTY_VERSION=9.3.12.v20160915
# Wed, 19 Oct 2016 00:43:50 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.12.v20160915/jetty-distribution-9.3.12.v20160915.tar.gz
# Wed, 19 Oct 2016 00:43:50 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Wed, 19 Oct 2016 00:43:58 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Wed, 19 Oct 2016 00:43:58 GMT
WORKDIR /var/lib/jetty
# Wed, 19 Oct 2016 00:43:58 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 19 Oct 2016 00:43:59 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 19 Oct 2016 00:44:00 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 19 Oct 2016 00:44:00 GMT
EXPOSE 8080/tcp
# Wed, 19 Oct 2016 00:44:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:44:01 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8876cfd96b2fd6c8a3d85d8ed9a02cfce486c97320fd18e3ce681486569ea72`  
		Last Modified: Tue, 18 Oct 2016 20:53:40 GMT  
		Size: 39.6 MB (39648817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f5f5eb8aefd4e57bcd7cf1decd8f8eb03caecad8b42bf4a322adf2d97030a4`  
		Last Modified: Wed, 19 Oct 2016 00:44:13 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77070d37480a6cae71a8e1ed9dbaf4a76f2dd26ead5e33b84b8746088c10b1d5`  
		Last Modified: Wed, 19 Oct 2016 00:44:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c3a23146c682b16618956bb6c25dcedb97f0d838d06839c9133edc33489389`  
		Last Modified: Wed, 19 Oct 2016 00:44:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f241ab8674ceef8481bc38e53cfe282456cc4617b13d707b6f704b3b3d63822e`  
		Last Modified: Wed, 19 Oct 2016 00:44:12 GMT  
		Size: 8.0 MB (7982968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad40c836c53ca8ae4d0628b37063bf6269a36614078b1749b59a415d6338bc95`  
		Last Modified: Wed, 19 Oct 2016 00:44:11 GMT  
		Size: 1.9 KB (1860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c206b19961e2ae64ab64f88bcab0a622443cc64bc90c1086987b7d4ee34035`  
		Last Modified: Wed, 19 Oct 2016 00:44:11 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-jre8-alpine`

```console
$ docker pull jetty@sha256:949557ee9b87267a4310d2be8dcb3704a983c53c707565125aba4b8fedc45f92
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3-jre8-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49948779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50d5b667bfb8d550be8c4070b70c31875da9d8e1904ad8077efb794b87e204f5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_VERSION=8u92
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 18 Oct 2016 20:40:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 19 Oct 2016 00:43:46 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 19 Oct 2016 00:43:46 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 19 Oct 2016 00:43:46 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 19 Oct 2016 00:43:47 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 19 Oct 2016 00:43:48 GMT
WORKDIR /usr/local/jetty
# Wed, 19 Oct 2016 00:43:48 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 19 Oct 2016 00:43:49 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 19 Oct 2016 00:43:49 GMT
ENV JETTY_VERSION=9.3.12.v20160915
# Wed, 19 Oct 2016 00:43:50 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.12.v20160915/jetty-distribution-9.3.12.v20160915.tar.gz
# Wed, 19 Oct 2016 00:43:50 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Wed, 19 Oct 2016 00:43:58 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Wed, 19 Oct 2016 00:43:58 GMT
WORKDIR /var/lib/jetty
# Wed, 19 Oct 2016 00:43:58 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 19 Oct 2016 00:43:59 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 19 Oct 2016 00:44:00 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 19 Oct 2016 00:44:00 GMT
EXPOSE 8080/tcp
# Wed, 19 Oct 2016 00:44:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:44:01 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8876cfd96b2fd6c8a3d85d8ed9a02cfce486c97320fd18e3ce681486569ea72`  
		Last Modified: Tue, 18 Oct 2016 20:53:40 GMT  
		Size: 39.6 MB (39648817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f5f5eb8aefd4e57bcd7cf1decd8f8eb03caecad8b42bf4a322adf2d97030a4`  
		Last Modified: Wed, 19 Oct 2016 00:44:13 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77070d37480a6cae71a8e1ed9dbaf4a76f2dd26ead5e33b84b8746088c10b1d5`  
		Last Modified: Wed, 19 Oct 2016 00:44:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c3a23146c682b16618956bb6c25dcedb97f0d838d06839c9133edc33489389`  
		Last Modified: Wed, 19 Oct 2016 00:44:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f241ab8674ceef8481bc38e53cfe282456cc4617b13d707b6f704b3b3d63822e`  
		Last Modified: Wed, 19 Oct 2016 00:44:12 GMT  
		Size: 8.0 MB (7982968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad40c836c53ca8ae4d0628b37063bf6269a36614078b1749b59a415d6338bc95`  
		Last Modified: Wed, 19 Oct 2016 00:44:11 GMT  
		Size: 1.9 KB (1860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c206b19961e2ae64ab64f88bcab0a622443cc64bc90c1086987b7d4ee34035`  
		Last Modified: Wed, 19 Oct 2016 00:44:11 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre8-alpine`

```console
$ docker pull jetty@sha256:949557ee9b87267a4310d2be8dcb3704a983c53c707565125aba4b8fedc45f92
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre8-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49948779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50d5b667bfb8d550be8c4070b70c31875da9d8e1904ad8077efb794b87e204f5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_VERSION=8u92
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 18 Oct 2016 20:40:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 19 Oct 2016 00:43:46 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 19 Oct 2016 00:43:46 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 19 Oct 2016 00:43:46 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 19 Oct 2016 00:43:47 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 19 Oct 2016 00:43:48 GMT
WORKDIR /usr/local/jetty
# Wed, 19 Oct 2016 00:43:48 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 19 Oct 2016 00:43:49 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 19 Oct 2016 00:43:49 GMT
ENV JETTY_VERSION=9.3.12.v20160915
# Wed, 19 Oct 2016 00:43:50 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.12.v20160915/jetty-distribution-9.3.12.v20160915.tar.gz
# Wed, 19 Oct 2016 00:43:50 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Wed, 19 Oct 2016 00:43:58 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Wed, 19 Oct 2016 00:43:58 GMT
WORKDIR /var/lib/jetty
# Wed, 19 Oct 2016 00:43:58 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 19 Oct 2016 00:43:59 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 19 Oct 2016 00:44:00 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 19 Oct 2016 00:44:00 GMT
EXPOSE 8080/tcp
# Wed, 19 Oct 2016 00:44:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:44:01 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8876cfd96b2fd6c8a3d85d8ed9a02cfce486c97320fd18e3ce681486569ea72`  
		Last Modified: Tue, 18 Oct 2016 20:53:40 GMT  
		Size: 39.6 MB (39648817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f5f5eb8aefd4e57bcd7cf1decd8f8eb03caecad8b42bf4a322adf2d97030a4`  
		Last Modified: Wed, 19 Oct 2016 00:44:13 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77070d37480a6cae71a8e1ed9dbaf4a76f2dd26ead5e33b84b8746088c10b1d5`  
		Last Modified: Wed, 19 Oct 2016 00:44:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c3a23146c682b16618956bb6c25dcedb97f0d838d06839c9133edc33489389`  
		Last Modified: Wed, 19 Oct 2016 00:44:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f241ab8674ceef8481bc38e53cfe282456cc4617b13d707b6f704b3b3d63822e`  
		Last Modified: Wed, 19 Oct 2016 00:44:12 GMT  
		Size: 8.0 MB (7982968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad40c836c53ca8ae4d0628b37063bf6269a36614078b1749b59a415d6338bc95`  
		Last Modified: Wed, 19 Oct 2016 00:44:11 GMT  
		Size: 1.9 KB (1860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c206b19961e2ae64ab64f88bcab0a622443cc64bc90c1086987b7d4ee34035`  
		Last Modified: Wed, 19 Oct 2016 00:44:11 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:alpine`

```console
$ docker pull jetty@sha256:949557ee9b87267a4310d2be8dcb3704a983c53c707565125aba4b8fedc45f92
```

-	Platforms:
	-	linux; amd64

### `jetty:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49948779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50d5b667bfb8d550be8c4070b70c31875da9d8e1904ad8077efb794b87e204f5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_VERSION=8u92
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 18 Oct 2016 20:40:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 19 Oct 2016 00:43:46 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 19 Oct 2016 00:43:46 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 19 Oct 2016 00:43:46 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 19 Oct 2016 00:43:47 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 19 Oct 2016 00:43:48 GMT
WORKDIR /usr/local/jetty
# Wed, 19 Oct 2016 00:43:48 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 19 Oct 2016 00:43:49 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 19 Oct 2016 00:43:49 GMT
ENV JETTY_VERSION=9.3.12.v20160915
# Wed, 19 Oct 2016 00:43:50 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.12.v20160915/jetty-distribution-9.3.12.v20160915.tar.gz
# Wed, 19 Oct 2016 00:43:50 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Wed, 19 Oct 2016 00:43:58 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Wed, 19 Oct 2016 00:43:58 GMT
WORKDIR /var/lib/jetty
# Wed, 19 Oct 2016 00:43:58 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 19 Oct 2016 00:43:59 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 19 Oct 2016 00:44:00 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 19 Oct 2016 00:44:00 GMT
EXPOSE 8080/tcp
# Wed, 19 Oct 2016 00:44:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:44:01 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8876cfd96b2fd6c8a3d85d8ed9a02cfce486c97320fd18e3ce681486569ea72`  
		Last Modified: Tue, 18 Oct 2016 20:53:40 GMT  
		Size: 39.6 MB (39648817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f5f5eb8aefd4e57bcd7cf1decd8f8eb03caecad8b42bf4a322adf2d97030a4`  
		Last Modified: Wed, 19 Oct 2016 00:44:13 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77070d37480a6cae71a8e1ed9dbaf4a76f2dd26ead5e33b84b8746088c10b1d5`  
		Last Modified: Wed, 19 Oct 2016 00:44:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c3a23146c682b16618956bb6c25dcedb97f0d838d06839c9133edc33489389`  
		Last Modified: Wed, 19 Oct 2016 00:44:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f241ab8674ceef8481bc38e53cfe282456cc4617b13d707b6f704b3b3d63822e`  
		Last Modified: Wed, 19 Oct 2016 00:44:12 GMT  
		Size: 8.0 MB (7982968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad40c836c53ca8ae4d0628b37063bf6269a36614078b1749b59a415d6338bc95`  
		Last Modified: Wed, 19 Oct 2016 00:44:11 GMT  
		Size: 1.9 KB (1860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c206b19961e2ae64ab64f88bcab0a622443cc64bc90c1086987b7d4ee34035`  
		Last Modified: Wed, 19 Oct 2016 00:44:11 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre8-alpine`

```console
$ docker pull jetty@sha256:949557ee9b87267a4310d2be8dcb3704a983c53c707565125aba4b8fedc45f92
```

-	Platforms:
	-	linux; amd64

### `jetty:jre8-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49948779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50d5b667bfb8d550be8c4070b70c31875da9d8e1904ad8077efb794b87e204f5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_VERSION=8u92
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 18 Oct 2016 20:40:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 19 Oct 2016 00:43:46 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 19 Oct 2016 00:43:46 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 19 Oct 2016 00:43:46 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 19 Oct 2016 00:43:47 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 19 Oct 2016 00:43:48 GMT
WORKDIR /usr/local/jetty
# Wed, 19 Oct 2016 00:43:48 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 19 Oct 2016 00:43:49 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 19 Oct 2016 00:43:49 GMT
ENV JETTY_VERSION=9.3.12.v20160915
# Wed, 19 Oct 2016 00:43:50 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.12.v20160915/jetty-distribution-9.3.12.v20160915.tar.gz
# Wed, 19 Oct 2016 00:43:50 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Wed, 19 Oct 2016 00:43:58 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Wed, 19 Oct 2016 00:43:58 GMT
WORKDIR /var/lib/jetty
# Wed, 19 Oct 2016 00:43:58 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 19 Oct 2016 00:43:59 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 19 Oct 2016 00:44:00 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 19 Oct 2016 00:44:00 GMT
EXPOSE 8080/tcp
# Wed, 19 Oct 2016 00:44:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:44:01 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8876cfd96b2fd6c8a3d85d8ed9a02cfce486c97320fd18e3ce681486569ea72`  
		Last Modified: Tue, 18 Oct 2016 20:53:40 GMT  
		Size: 39.6 MB (39648817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f5f5eb8aefd4e57bcd7cf1decd8f8eb03caecad8b42bf4a322adf2d97030a4`  
		Last Modified: Wed, 19 Oct 2016 00:44:13 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77070d37480a6cae71a8e1ed9dbaf4a76f2dd26ead5e33b84b8746088c10b1d5`  
		Last Modified: Wed, 19 Oct 2016 00:44:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c3a23146c682b16618956bb6c25dcedb97f0d838d06839c9133edc33489389`  
		Last Modified: Wed, 19 Oct 2016 00:44:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f241ab8674ceef8481bc38e53cfe282456cc4617b13d707b6f704b3b3d63822e`  
		Last Modified: Wed, 19 Oct 2016 00:44:12 GMT  
		Size: 8.0 MB (7982968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad40c836c53ca8ae4d0628b37063bf6269a36614078b1749b59a415d6338bc95`  
		Last Modified: Wed, 19 Oct 2016 00:44:11 GMT  
		Size: 1.9 KB (1860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c206b19961e2ae64ab64f88bcab0a622443cc64bc90c1086987b7d4ee34035`  
		Last Modified: Wed, 19 Oct 2016 00:44:11 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.19`

```console
$ docker pull jetty@sha256:26b37ad525b8f2e7496efded6da8dad9fb6a3cabeff770f558f0c546cb75de24
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2.19` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134154370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b83323aaf67d8f139b867e1b1781d5cc3f659f8f3af9a4177dd740174359ba8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 03:51:59 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 24 Sep 2016 03:51:59 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 24 Sep 2016 03:52:00 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 03:52:00 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 24 Sep 2016 03:52:01 GMT
WORKDIR /usr/local/jetty
# Fri, 30 Sep 2016 23:35:45 GMT
ENV JETTY_VERSION=9.2.19.v20160908
# Fri, 30 Sep 2016 23:35:45 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.19.v20160908/jetty-distribution-9.2.19.v20160908.tar.gz
# Fri, 30 Sep 2016 23:35:45 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Fri, 30 Sep 2016 23:35:48 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Fri, 30 Sep 2016 23:35:48 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 30 Sep 2016 23:35:49 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 30 Sep 2016 23:35:49 GMT
WORKDIR /var/lib/jetty
# Fri, 30 Sep 2016 23:35:50 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Fri, 30 Sep 2016 23:35:50 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 30 Sep 2016 23:35:51 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Fri, 30 Sep 2016 23:35:52 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Fri, 30 Sep 2016 23:35:52 GMT
EXPOSE 8080/tcp
# Fri, 30 Sep 2016 23:35:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 30 Sep 2016 23:35:53 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068e405de5426aeb84fdc0c33e5c232c1b102bfa3aa8b7708e388c7962826989`  
		Last Modified: Sat, 24 Sep 2016 03:52:24 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df27b538b890ce1ff1382b2f8fcd58a59de16cee1c24cf0b89f9420879ff9d4`  
		Last Modified: Sat, 24 Sep 2016 03:52:25 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a44a22fee76926f40ad06c0c32ad99750bc4fefa0106ee6c0ca8c9837f5698`  
		Last Modified: Fri, 30 Sep 2016 23:39:15 GMT  
		Size: 10.0 MB (10012593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8824c68f8bea352c611b378bb59899b911b9e52157369856b983458814b389`  
		Last Modified: Fri, 30 Sep 2016 23:39:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608c53d15caffbbcb206d0ac2f7a3944ecb99fc2432b0e48d4c588447327f38f`  
		Last Modified: Fri, 30 Sep 2016 23:39:14 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5424462203b687a066c5086d2c1be6d01bb1f2e45479cde86d6bb7beebcef54e`  
		Last Modified: Fri, 30 Sep 2016 23:39:12 GMT  
		Size: 1.6 KB (1571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6016105bd8a6a667b46ebed9f6ee87e3356f2a7492f8cbd27d9b63ed70a743db`  
		Last Modified: Fri, 30 Sep 2016 23:39:11 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2`

```console
$ docker pull jetty@sha256:26b37ad525b8f2e7496efded6da8dad9fb6a3cabeff770f558f0c546cb75de24
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134154370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b83323aaf67d8f139b867e1b1781d5cc3f659f8f3af9a4177dd740174359ba8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 03:51:59 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 24 Sep 2016 03:51:59 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 24 Sep 2016 03:52:00 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 03:52:00 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 24 Sep 2016 03:52:01 GMT
WORKDIR /usr/local/jetty
# Fri, 30 Sep 2016 23:35:45 GMT
ENV JETTY_VERSION=9.2.19.v20160908
# Fri, 30 Sep 2016 23:35:45 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.19.v20160908/jetty-distribution-9.2.19.v20160908.tar.gz
# Fri, 30 Sep 2016 23:35:45 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Fri, 30 Sep 2016 23:35:48 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Fri, 30 Sep 2016 23:35:48 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 30 Sep 2016 23:35:49 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 30 Sep 2016 23:35:49 GMT
WORKDIR /var/lib/jetty
# Fri, 30 Sep 2016 23:35:50 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Fri, 30 Sep 2016 23:35:50 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 30 Sep 2016 23:35:51 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Fri, 30 Sep 2016 23:35:52 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Fri, 30 Sep 2016 23:35:52 GMT
EXPOSE 8080/tcp
# Fri, 30 Sep 2016 23:35:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 30 Sep 2016 23:35:53 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068e405de5426aeb84fdc0c33e5c232c1b102bfa3aa8b7708e388c7962826989`  
		Last Modified: Sat, 24 Sep 2016 03:52:24 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df27b538b890ce1ff1382b2f8fcd58a59de16cee1c24cf0b89f9420879ff9d4`  
		Last Modified: Sat, 24 Sep 2016 03:52:25 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a44a22fee76926f40ad06c0c32ad99750bc4fefa0106ee6c0ca8c9837f5698`  
		Last Modified: Fri, 30 Sep 2016 23:39:15 GMT  
		Size: 10.0 MB (10012593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8824c68f8bea352c611b378bb59899b911b9e52157369856b983458814b389`  
		Last Modified: Fri, 30 Sep 2016 23:39:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608c53d15caffbbcb206d0ac2f7a3944ecb99fc2432b0e48d4c588447327f38f`  
		Last Modified: Fri, 30 Sep 2016 23:39:14 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5424462203b687a066c5086d2c1be6d01bb1f2e45479cde86d6bb7beebcef54e`  
		Last Modified: Fri, 30 Sep 2016 23:39:12 GMT  
		Size: 1.6 KB (1571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6016105bd8a6a667b46ebed9f6ee87e3356f2a7492f8cbd27d9b63ed70a743db`  
		Last Modified: Fri, 30 Sep 2016 23:39:11 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.19-jre8`

```console
$ docker pull jetty@sha256:26b37ad525b8f2e7496efded6da8dad9fb6a3cabeff770f558f0c546cb75de24
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2.19-jre8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134154370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b83323aaf67d8f139b867e1b1781d5cc3f659f8f3af9a4177dd740174359ba8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 03:51:59 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 24 Sep 2016 03:51:59 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 24 Sep 2016 03:52:00 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 03:52:00 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 24 Sep 2016 03:52:01 GMT
WORKDIR /usr/local/jetty
# Fri, 30 Sep 2016 23:35:45 GMT
ENV JETTY_VERSION=9.2.19.v20160908
# Fri, 30 Sep 2016 23:35:45 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.19.v20160908/jetty-distribution-9.2.19.v20160908.tar.gz
# Fri, 30 Sep 2016 23:35:45 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Fri, 30 Sep 2016 23:35:48 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Fri, 30 Sep 2016 23:35:48 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 30 Sep 2016 23:35:49 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 30 Sep 2016 23:35:49 GMT
WORKDIR /var/lib/jetty
# Fri, 30 Sep 2016 23:35:50 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Fri, 30 Sep 2016 23:35:50 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 30 Sep 2016 23:35:51 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Fri, 30 Sep 2016 23:35:52 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Fri, 30 Sep 2016 23:35:52 GMT
EXPOSE 8080/tcp
# Fri, 30 Sep 2016 23:35:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 30 Sep 2016 23:35:53 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068e405de5426aeb84fdc0c33e5c232c1b102bfa3aa8b7708e388c7962826989`  
		Last Modified: Sat, 24 Sep 2016 03:52:24 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df27b538b890ce1ff1382b2f8fcd58a59de16cee1c24cf0b89f9420879ff9d4`  
		Last Modified: Sat, 24 Sep 2016 03:52:25 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a44a22fee76926f40ad06c0c32ad99750bc4fefa0106ee6c0ca8c9837f5698`  
		Last Modified: Fri, 30 Sep 2016 23:39:15 GMT  
		Size: 10.0 MB (10012593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8824c68f8bea352c611b378bb59899b911b9e52157369856b983458814b389`  
		Last Modified: Fri, 30 Sep 2016 23:39:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608c53d15caffbbcb206d0ac2f7a3944ecb99fc2432b0e48d4c588447327f38f`  
		Last Modified: Fri, 30 Sep 2016 23:39:14 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5424462203b687a066c5086d2c1be6d01bb1f2e45479cde86d6bb7beebcef54e`  
		Last Modified: Fri, 30 Sep 2016 23:39:12 GMT  
		Size: 1.6 KB (1571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6016105bd8a6a667b46ebed9f6ee87e3356f2a7492f8cbd27d9b63ed70a743db`  
		Last Modified: Fri, 30 Sep 2016 23:39:11 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2-jre8`

```console
$ docker pull jetty@sha256:26b37ad525b8f2e7496efded6da8dad9fb6a3cabeff770f558f0c546cb75de24
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2-jre8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134154370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b83323aaf67d8f139b867e1b1781d5cc3f659f8f3af9a4177dd740174359ba8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 03:51:59 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 24 Sep 2016 03:51:59 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 24 Sep 2016 03:52:00 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 03:52:00 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 24 Sep 2016 03:52:01 GMT
WORKDIR /usr/local/jetty
# Fri, 30 Sep 2016 23:35:45 GMT
ENV JETTY_VERSION=9.2.19.v20160908
# Fri, 30 Sep 2016 23:35:45 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.19.v20160908/jetty-distribution-9.2.19.v20160908.tar.gz
# Fri, 30 Sep 2016 23:35:45 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Fri, 30 Sep 2016 23:35:48 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Fri, 30 Sep 2016 23:35:48 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 30 Sep 2016 23:35:49 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 30 Sep 2016 23:35:49 GMT
WORKDIR /var/lib/jetty
# Fri, 30 Sep 2016 23:35:50 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Fri, 30 Sep 2016 23:35:50 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 30 Sep 2016 23:35:51 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Fri, 30 Sep 2016 23:35:52 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Fri, 30 Sep 2016 23:35:52 GMT
EXPOSE 8080/tcp
# Fri, 30 Sep 2016 23:35:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 30 Sep 2016 23:35:53 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068e405de5426aeb84fdc0c33e5c232c1b102bfa3aa8b7708e388c7962826989`  
		Last Modified: Sat, 24 Sep 2016 03:52:24 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df27b538b890ce1ff1382b2f8fcd58a59de16cee1c24cf0b89f9420879ff9d4`  
		Last Modified: Sat, 24 Sep 2016 03:52:25 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a44a22fee76926f40ad06c0c32ad99750bc4fefa0106ee6c0ca8c9837f5698`  
		Last Modified: Fri, 30 Sep 2016 23:39:15 GMT  
		Size: 10.0 MB (10012593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8824c68f8bea352c611b378bb59899b911b9e52157369856b983458814b389`  
		Last Modified: Fri, 30 Sep 2016 23:39:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608c53d15caffbbcb206d0ac2f7a3944ecb99fc2432b0e48d4c588447327f38f`  
		Last Modified: Fri, 30 Sep 2016 23:39:14 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5424462203b687a066c5086d2c1be6d01bb1f2e45479cde86d6bb7beebcef54e`  
		Last Modified: Fri, 30 Sep 2016 23:39:12 GMT  
		Size: 1.6 KB (1571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6016105bd8a6a667b46ebed9f6ee87e3356f2a7492f8cbd27d9b63ed70a743db`  
		Last Modified: Fri, 30 Sep 2016 23:39:11 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.19-jre7`

```console
$ docker pull jetty@sha256:2ed9cef0abf82d69866cfc51e53bb9327f423cb5a9ed6bef82fc9c9dd2f69015
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2.19-jre7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158180518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ab8160e1cebdccaee0e1368ae3bb3ab10daefd0759cfd4395ee0eb588b8bcf9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:32:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:32:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:32:53 GMT
ENV JAVA_VERSION=7u111
# Fri, 23 Sep 2016 19:32:53 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Fri, 23 Sep 2016 19:33:30 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 24 Sep 2016 03:53:41 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 24 Sep 2016 03:53:41 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 24 Sep 2016 03:53:42 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 03:53:42 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 24 Sep 2016 03:53:43 GMT
WORKDIR /usr/local/jetty
# Fri, 30 Sep 2016 23:35:53 GMT
ENV JETTY_VERSION=9.2.19.v20160908
# Fri, 30 Sep 2016 23:35:53 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.19.v20160908/jetty-distribution-9.2.19.v20160908.tar.gz
# Fri, 30 Sep 2016 23:35:54 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Fri, 30 Sep 2016 23:35:56 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Fri, 30 Sep 2016 23:35:56 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 30 Sep 2016 23:35:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 30 Sep 2016 23:35:57 GMT
WORKDIR /var/lib/jetty
# Fri, 30 Sep 2016 23:36:00 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Fri, 30 Sep 2016 23:36:01 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 30 Sep 2016 23:36:01 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Fri, 30 Sep 2016 23:36:02 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Fri, 30 Sep 2016 23:36:02 GMT
EXPOSE 8080/tcp
# Fri, 30 Sep 2016 23:36:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 30 Sep 2016 23:36:03 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae3b0638638646d213f6edc2c16e52ddb60e20e07e4c2f091ff7e2928b10bd0`  
		Last Modified: Fri, 23 Sep 2016 19:33:37 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab678d1c6f004857bf4dbca219e8111b0a5699350e84a2edeaaf7327612f66eb`  
		Last Modified: Fri, 23 Sep 2016 19:33:51 GMT  
		Size: 77.7 MB (77712461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ed3951a8d1a0b45f2633c7a97acf6750623f379fc4bfac649faef645be1ec3`  
		Last Modified: Sat, 24 Sep 2016 03:54:06 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3154c65b3e2e9097d18db27f63956db509a35cac0cada2014a77a954742d81d8`  
		Last Modified: Sat, 24 Sep 2016 03:54:09 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6422a3635ef522a855808f346a271160be376de58bd064f8067dfba3e2ff325a`  
		Last Modified: Fri, 30 Sep 2016 23:40:05 GMT  
		Size: 10.0 MB (10012568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0797b55735247b038902355bdb842fab694f673a2ca4aa540a32aa3c2c7a6b8`  
		Last Modified: Fri, 30 Sep 2016 23:40:01 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add3e9d15084d2d425dfddfafdaa82c77a5cc8f6916074bc0ee374fc6fd15345`  
		Last Modified: Fri, 30 Sep 2016 23:40:02 GMT  
		Size: 1.6 KB (1575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b27b74554fe03e81ce6ae4a6f348602b05162113b5d99bccf1500a8e386834`  
		Last Modified: Fri, 30 Sep 2016 23:40:01 GMT  
		Size: 1.6 KB (1573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6eccf07f0c1f274942566bde27e46f0aa56a40b3a85e88ba66b1f41e6089e5`  
		Last Modified: Fri, 30 Sep 2016 23:40:01 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2-jre7`

```console
$ docker pull jetty@sha256:2ed9cef0abf82d69866cfc51e53bb9327f423cb5a9ed6bef82fc9c9dd2f69015
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2-jre7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158180518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ab8160e1cebdccaee0e1368ae3bb3ab10daefd0759cfd4395ee0eb588b8bcf9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:32:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:32:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:32:53 GMT
ENV JAVA_VERSION=7u111
# Fri, 23 Sep 2016 19:32:53 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Fri, 23 Sep 2016 19:33:30 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 24 Sep 2016 03:53:41 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 24 Sep 2016 03:53:41 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 24 Sep 2016 03:53:42 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 03:53:42 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 24 Sep 2016 03:53:43 GMT
WORKDIR /usr/local/jetty
# Fri, 30 Sep 2016 23:35:53 GMT
ENV JETTY_VERSION=9.2.19.v20160908
# Fri, 30 Sep 2016 23:35:53 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.19.v20160908/jetty-distribution-9.2.19.v20160908.tar.gz
# Fri, 30 Sep 2016 23:35:54 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Fri, 30 Sep 2016 23:35:56 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Fri, 30 Sep 2016 23:35:56 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 30 Sep 2016 23:35:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 30 Sep 2016 23:35:57 GMT
WORKDIR /var/lib/jetty
# Fri, 30 Sep 2016 23:36:00 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Fri, 30 Sep 2016 23:36:01 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 30 Sep 2016 23:36:01 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Fri, 30 Sep 2016 23:36:02 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Fri, 30 Sep 2016 23:36:02 GMT
EXPOSE 8080/tcp
# Fri, 30 Sep 2016 23:36:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 30 Sep 2016 23:36:03 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae3b0638638646d213f6edc2c16e52ddb60e20e07e4c2f091ff7e2928b10bd0`  
		Last Modified: Fri, 23 Sep 2016 19:33:37 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab678d1c6f004857bf4dbca219e8111b0a5699350e84a2edeaaf7327612f66eb`  
		Last Modified: Fri, 23 Sep 2016 19:33:51 GMT  
		Size: 77.7 MB (77712461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ed3951a8d1a0b45f2633c7a97acf6750623f379fc4bfac649faef645be1ec3`  
		Last Modified: Sat, 24 Sep 2016 03:54:06 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3154c65b3e2e9097d18db27f63956db509a35cac0cada2014a77a954742d81d8`  
		Last Modified: Sat, 24 Sep 2016 03:54:09 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6422a3635ef522a855808f346a271160be376de58bd064f8067dfba3e2ff325a`  
		Last Modified: Fri, 30 Sep 2016 23:40:05 GMT  
		Size: 10.0 MB (10012568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0797b55735247b038902355bdb842fab694f673a2ca4aa540a32aa3c2c7a6b8`  
		Last Modified: Fri, 30 Sep 2016 23:40:01 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add3e9d15084d2d425dfddfafdaa82c77a5cc8f6916074bc0ee374fc6fd15345`  
		Last Modified: Fri, 30 Sep 2016 23:40:02 GMT  
		Size: 1.6 KB (1575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b27b74554fe03e81ce6ae4a6f348602b05162113b5d99bccf1500a8e386834`  
		Last Modified: Fri, 30 Sep 2016 23:40:01 GMT  
		Size: 1.6 KB (1573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6eccf07f0c1f274942566bde27e46f0aa56a40b3a85e88ba66b1f41e6089e5`  
		Last Modified: Fri, 30 Sep 2016 23:40:01 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre7`

```console
$ docker pull jetty@sha256:2ed9cef0abf82d69866cfc51e53bb9327f423cb5a9ed6bef82fc9c9dd2f69015
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158180518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ab8160e1cebdccaee0e1368ae3bb3ab10daefd0759cfd4395ee0eb588b8bcf9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:32:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:32:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:32:53 GMT
ENV JAVA_VERSION=7u111
# Fri, 23 Sep 2016 19:32:53 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Fri, 23 Sep 2016 19:33:30 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 24 Sep 2016 03:53:41 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 24 Sep 2016 03:53:41 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 24 Sep 2016 03:53:42 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 03:53:42 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 24 Sep 2016 03:53:43 GMT
WORKDIR /usr/local/jetty
# Fri, 30 Sep 2016 23:35:53 GMT
ENV JETTY_VERSION=9.2.19.v20160908
# Fri, 30 Sep 2016 23:35:53 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.19.v20160908/jetty-distribution-9.2.19.v20160908.tar.gz
# Fri, 30 Sep 2016 23:35:54 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Fri, 30 Sep 2016 23:35:56 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Fri, 30 Sep 2016 23:35:56 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 30 Sep 2016 23:35:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 30 Sep 2016 23:35:57 GMT
WORKDIR /var/lib/jetty
# Fri, 30 Sep 2016 23:36:00 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Fri, 30 Sep 2016 23:36:01 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 30 Sep 2016 23:36:01 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Fri, 30 Sep 2016 23:36:02 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Fri, 30 Sep 2016 23:36:02 GMT
EXPOSE 8080/tcp
# Fri, 30 Sep 2016 23:36:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 30 Sep 2016 23:36:03 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae3b0638638646d213f6edc2c16e52ddb60e20e07e4c2f091ff7e2928b10bd0`  
		Last Modified: Fri, 23 Sep 2016 19:33:37 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab678d1c6f004857bf4dbca219e8111b0a5699350e84a2edeaaf7327612f66eb`  
		Last Modified: Fri, 23 Sep 2016 19:33:51 GMT  
		Size: 77.7 MB (77712461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ed3951a8d1a0b45f2633c7a97acf6750623f379fc4bfac649faef645be1ec3`  
		Last Modified: Sat, 24 Sep 2016 03:54:06 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3154c65b3e2e9097d18db27f63956db509a35cac0cada2014a77a954742d81d8`  
		Last Modified: Sat, 24 Sep 2016 03:54:09 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6422a3635ef522a855808f346a271160be376de58bd064f8067dfba3e2ff325a`  
		Last Modified: Fri, 30 Sep 2016 23:40:05 GMT  
		Size: 10.0 MB (10012568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0797b55735247b038902355bdb842fab694f673a2ca4aa540a32aa3c2c7a6b8`  
		Last Modified: Fri, 30 Sep 2016 23:40:01 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add3e9d15084d2d425dfddfafdaa82c77a5cc8f6916074bc0ee374fc6fd15345`  
		Last Modified: Fri, 30 Sep 2016 23:40:02 GMT  
		Size: 1.6 KB (1575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b27b74554fe03e81ce6ae4a6f348602b05162113b5d99bccf1500a8e386834`  
		Last Modified: Fri, 30 Sep 2016 23:40:01 GMT  
		Size: 1.6 KB (1573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6eccf07f0c1f274942566bde27e46f0aa56a40b3a85e88ba66b1f41e6089e5`  
		Last Modified: Fri, 30 Sep 2016 23:40:01 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre7`

```console
$ docker pull jetty@sha256:2ed9cef0abf82d69866cfc51e53bb9327f423cb5a9ed6bef82fc9c9dd2f69015
```

-	Platforms:
	-	linux; amd64

### `jetty:jre7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158180518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ab8160e1cebdccaee0e1368ae3bb3ab10daefd0759cfd4395ee0eb588b8bcf9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:32:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:32:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:32:53 GMT
ENV JAVA_VERSION=7u111
# Fri, 23 Sep 2016 19:32:53 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Fri, 23 Sep 2016 19:33:30 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 24 Sep 2016 03:53:41 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 24 Sep 2016 03:53:41 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 24 Sep 2016 03:53:42 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 03:53:42 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 24 Sep 2016 03:53:43 GMT
WORKDIR /usr/local/jetty
# Fri, 30 Sep 2016 23:35:53 GMT
ENV JETTY_VERSION=9.2.19.v20160908
# Fri, 30 Sep 2016 23:35:53 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.19.v20160908/jetty-distribution-9.2.19.v20160908.tar.gz
# Fri, 30 Sep 2016 23:35:54 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Fri, 30 Sep 2016 23:35:56 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Fri, 30 Sep 2016 23:35:56 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 30 Sep 2016 23:35:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 30 Sep 2016 23:35:57 GMT
WORKDIR /var/lib/jetty
# Fri, 30 Sep 2016 23:36:00 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Fri, 30 Sep 2016 23:36:01 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 30 Sep 2016 23:36:01 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Fri, 30 Sep 2016 23:36:02 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Fri, 30 Sep 2016 23:36:02 GMT
EXPOSE 8080/tcp
# Fri, 30 Sep 2016 23:36:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 30 Sep 2016 23:36:03 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae3b0638638646d213f6edc2c16e52ddb60e20e07e4c2f091ff7e2928b10bd0`  
		Last Modified: Fri, 23 Sep 2016 19:33:37 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab678d1c6f004857bf4dbca219e8111b0a5699350e84a2edeaaf7327612f66eb`  
		Last Modified: Fri, 23 Sep 2016 19:33:51 GMT  
		Size: 77.7 MB (77712461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ed3951a8d1a0b45f2633c7a97acf6750623f379fc4bfac649faef645be1ec3`  
		Last Modified: Sat, 24 Sep 2016 03:54:06 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3154c65b3e2e9097d18db27f63956db509a35cac0cada2014a77a954742d81d8`  
		Last Modified: Sat, 24 Sep 2016 03:54:09 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6422a3635ef522a855808f346a271160be376de58bd064f8067dfba3e2ff325a`  
		Last Modified: Fri, 30 Sep 2016 23:40:05 GMT  
		Size: 10.0 MB (10012568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0797b55735247b038902355bdb842fab694f673a2ca4aa540a32aa3c2c7a6b8`  
		Last Modified: Fri, 30 Sep 2016 23:40:01 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add3e9d15084d2d425dfddfafdaa82c77a5cc8f6916074bc0ee374fc6fd15345`  
		Last Modified: Fri, 30 Sep 2016 23:40:02 GMT  
		Size: 1.6 KB (1575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b27b74554fe03e81ce6ae4a6f348602b05162113b5d99bccf1500a8e386834`  
		Last Modified: Fri, 30 Sep 2016 23:40:01 GMT  
		Size: 1.6 KB (1573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6eccf07f0c1f274942566bde27e46f0aa56a40b3a85e88ba66b1f41e6089e5`  
		Last Modified: Fri, 30 Sep 2016 23:40:01 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
