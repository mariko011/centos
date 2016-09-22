<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

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

```console
$ docker pull jetty@sha256:6b26059045bec19afebee6ebd06a7dd0531dd9c9252530a764ab047b18f03414
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.11` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132051245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e501936755e672cd5e5362189d3166b34009d25bb007d13182a4ae777da61b0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:30:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:32:41 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 20 Sep 2016 16:32:41 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 16:32:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 20 Sep 2016 16:32:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 20 Sep 2016 16:33:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:33:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Sep 2016 19:01:26 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Sep 2016 19:01:27 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Sep 2016 19:01:27 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 19:01:28 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Sep 2016 19:01:28 GMT
WORKDIR /usr/local/jetty
# Tue, 20 Sep 2016 19:01:28 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 20 Sep 2016 19:01:29 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 20 Sep 2016 19:01:29 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 20 Sep 2016 19:01:32 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 20 Sep 2016 19:01:32 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 20 Sep 2016 19:01:33 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:33 GMT
WORKDIR /var/lib/jetty
# Tue, 20 Sep 2016 19:01:34 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 20 Sep 2016 19:01:35 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 20 Sep 2016 19:01:35 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:36 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 20 Sep 2016 19:01:36 GMT
EXPOSE 8080/tcp
# Tue, 20 Sep 2016 19:01:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 19:01:37 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87f2f89c161af8dfa0770ee0e44ec93a98d6c15e168d9f05dda67de7276cec1`  
		Last Modified: Tue, 20 Sep 2016 17:51:51 GMT  
		Size: 566.5 KB (566473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99229495b0d91514a9718bfbf95be433fb260463d4e2752210bc575fc56bcb02`  
		Last Modified: Tue, 20 Sep 2016 17:51:50 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6265be8411bd9cfcbfad197fa68f3e053a024c7c7a7928cb14c60c74b104387`  
		Last Modified: Tue, 20 Sep 2016 17:51:48 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657d2fa38148c2704ec1bb7dfa31601c92a495a70e830d99d64820512d64566`  
		Last Modified: Tue, 20 Sep 2016 17:52:02 GMT  
		Size: 53.4 MB (53401890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ae83b1cf879f87ed280704ebddbd44a982952afe3eaec80ddfaceb0979bc82`  
		Last Modified: Tue, 20 Sep 2016 17:51:47 GMT  
		Size: 284.2 KB (284200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c34cc75afb6689d6302f38cc307138b400fa62a365373e821d145a9dd452815`  
		Last Modified: Thu, 22 Sep 2016 18:22:06 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa96ec166cb65f31a0972ae7050e51641b292aff06c2bdebcd54bfa25bd6791`  
		Last Modified: Thu, 22 Sep 2016 18:22:04 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ffd53d73563dec1e26f55060ff85f1c1585c0e3323accf53745b1518e66b6a`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 7.9 MB (7909437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef1ecc18d82d9f17a83b3586d47f41f113fb76e36af3d00949e5cc22111e6ba`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c4b7c9c2ecc9ac6febcc1d261eae1cfdb289589be8112944896198c5bed8d2`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c352baf5f6ddaf597eb5f1ff9b48386cea929a98448c6a0780fffb548e3ddd`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b5c50d8f535f9eb00ef1345173c9fbc1a1efdc4de455cc51965217fe16497b`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3`

```console
$ docker pull jetty@sha256:6b26059045bec19afebee6ebd06a7dd0531dd9c9252530a764ab047b18f03414
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132051245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e501936755e672cd5e5362189d3166b34009d25bb007d13182a4ae777da61b0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:30:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:32:41 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 20 Sep 2016 16:32:41 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 16:32:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 20 Sep 2016 16:32:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 20 Sep 2016 16:33:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:33:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Sep 2016 19:01:26 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Sep 2016 19:01:27 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Sep 2016 19:01:27 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 19:01:28 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Sep 2016 19:01:28 GMT
WORKDIR /usr/local/jetty
# Tue, 20 Sep 2016 19:01:28 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 20 Sep 2016 19:01:29 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 20 Sep 2016 19:01:29 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 20 Sep 2016 19:01:32 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 20 Sep 2016 19:01:32 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 20 Sep 2016 19:01:33 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:33 GMT
WORKDIR /var/lib/jetty
# Tue, 20 Sep 2016 19:01:34 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 20 Sep 2016 19:01:35 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 20 Sep 2016 19:01:35 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:36 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 20 Sep 2016 19:01:36 GMT
EXPOSE 8080/tcp
# Tue, 20 Sep 2016 19:01:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 19:01:37 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87f2f89c161af8dfa0770ee0e44ec93a98d6c15e168d9f05dda67de7276cec1`  
		Last Modified: Tue, 20 Sep 2016 17:51:51 GMT  
		Size: 566.5 KB (566473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99229495b0d91514a9718bfbf95be433fb260463d4e2752210bc575fc56bcb02`  
		Last Modified: Tue, 20 Sep 2016 17:51:50 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6265be8411bd9cfcbfad197fa68f3e053a024c7c7a7928cb14c60c74b104387`  
		Last Modified: Tue, 20 Sep 2016 17:51:48 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657d2fa38148c2704ec1bb7dfa31601c92a495a70e830d99d64820512d64566`  
		Last Modified: Tue, 20 Sep 2016 17:52:02 GMT  
		Size: 53.4 MB (53401890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ae83b1cf879f87ed280704ebddbd44a982952afe3eaec80ddfaceb0979bc82`  
		Last Modified: Tue, 20 Sep 2016 17:51:47 GMT  
		Size: 284.2 KB (284200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c34cc75afb6689d6302f38cc307138b400fa62a365373e821d145a9dd452815`  
		Last Modified: Thu, 22 Sep 2016 18:22:06 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa96ec166cb65f31a0972ae7050e51641b292aff06c2bdebcd54bfa25bd6791`  
		Last Modified: Thu, 22 Sep 2016 18:22:04 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ffd53d73563dec1e26f55060ff85f1c1585c0e3323accf53745b1518e66b6a`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 7.9 MB (7909437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef1ecc18d82d9f17a83b3586d47f41f113fb76e36af3d00949e5cc22111e6ba`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c4b7c9c2ecc9ac6febcc1d261eae1cfdb289589be8112944896198c5bed8d2`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c352baf5f6ddaf597eb5f1ff9b48386cea929a98448c6a0780fffb548e3ddd`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b5c50d8f535f9eb00ef1345173c9fbc1a1efdc4de455cc51965217fe16497b`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9`

```console
$ docker pull jetty@sha256:6b26059045bec19afebee6ebd06a7dd0531dd9c9252530a764ab047b18f03414
```

-	Platforms:
	-	linux; amd64

### `jetty:9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132051245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e501936755e672cd5e5362189d3166b34009d25bb007d13182a4ae777da61b0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:30:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:32:41 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 20 Sep 2016 16:32:41 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 16:32:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 20 Sep 2016 16:32:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 20 Sep 2016 16:33:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:33:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Sep 2016 19:01:26 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Sep 2016 19:01:27 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Sep 2016 19:01:27 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 19:01:28 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Sep 2016 19:01:28 GMT
WORKDIR /usr/local/jetty
# Tue, 20 Sep 2016 19:01:28 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 20 Sep 2016 19:01:29 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 20 Sep 2016 19:01:29 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 20 Sep 2016 19:01:32 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 20 Sep 2016 19:01:32 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 20 Sep 2016 19:01:33 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:33 GMT
WORKDIR /var/lib/jetty
# Tue, 20 Sep 2016 19:01:34 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 20 Sep 2016 19:01:35 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 20 Sep 2016 19:01:35 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:36 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 20 Sep 2016 19:01:36 GMT
EXPOSE 8080/tcp
# Tue, 20 Sep 2016 19:01:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 19:01:37 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87f2f89c161af8dfa0770ee0e44ec93a98d6c15e168d9f05dda67de7276cec1`  
		Last Modified: Tue, 20 Sep 2016 17:51:51 GMT  
		Size: 566.5 KB (566473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99229495b0d91514a9718bfbf95be433fb260463d4e2752210bc575fc56bcb02`  
		Last Modified: Tue, 20 Sep 2016 17:51:50 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6265be8411bd9cfcbfad197fa68f3e053a024c7c7a7928cb14c60c74b104387`  
		Last Modified: Tue, 20 Sep 2016 17:51:48 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657d2fa38148c2704ec1bb7dfa31601c92a495a70e830d99d64820512d64566`  
		Last Modified: Tue, 20 Sep 2016 17:52:02 GMT  
		Size: 53.4 MB (53401890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ae83b1cf879f87ed280704ebddbd44a982952afe3eaec80ddfaceb0979bc82`  
		Last Modified: Tue, 20 Sep 2016 17:51:47 GMT  
		Size: 284.2 KB (284200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c34cc75afb6689d6302f38cc307138b400fa62a365373e821d145a9dd452815`  
		Last Modified: Thu, 22 Sep 2016 18:22:06 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa96ec166cb65f31a0972ae7050e51641b292aff06c2bdebcd54bfa25bd6791`  
		Last Modified: Thu, 22 Sep 2016 18:22:04 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ffd53d73563dec1e26f55060ff85f1c1585c0e3323accf53745b1518e66b6a`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 7.9 MB (7909437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef1ecc18d82d9f17a83b3586d47f41f113fb76e36af3d00949e5cc22111e6ba`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c4b7c9c2ecc9ac6febcc1d261eae1cfdb289589be8112944896198c5bed8d2`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c352baf5f6ddaf597eb5f1ff9b48386cea929a98448c6a0780fffb548e3ddd`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b5c50d8f535f9eb00ef1345173c9fbc1a1efdc4de455cc51965217fe16497b`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.11-jre8`

```console
$ docker pull jetty@sha256:6b26059045bec19afebee6ebd06a7dd0531dd9c9252530a764ab047b18f03414
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.11-jre8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132051245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e501936755e672cd5e5362189d3166b34009d25bb007d13182a4ae777da61b0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:30:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:32:41 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 20 Sep 2016 16:32:41 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 16:32:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 20 Sep 2016 16:32:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 20 Sep 2016 16:33:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:33:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Sep 2016 19:01:26 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Sep 2016 19:01:27 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Sep 2016 19:01:27 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 19:01:28 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Sep 2016 19:01:28 GMT
WORKDIR /usr/local/jetty
# Tue, 20 Sep 2016 19:01:28 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 20 Sep 2016 19:01:29 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 20 Sep 2016 19:01:29 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 20 Sep 2016 19:01:32 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 20 Sep 2016 19:01:32 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 20 Sep 2016 19:01:33 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:33 GMT
WORKDIR /var/lib/jetty
# Tue, 20 Sep 2016 19:01:34 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 20 Sep 2016 19:01:35 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 20 Sep 2016 19:01:35 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:36 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 20 Sep 2016 19:01:36 GMT
EXPOSE 8080/tcp
# Tue, 20 Sep 2016 19:01:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 19:01:37 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87f2f89c161af8dfa0770ee0e44ec93a98d6c15e168d9f05dda67de7276cec1`  
		Last Modified: Tue, 20 Sep 2016 17:51:51 GMT  
		Size: 566.5 KB (566473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99229495b0d91514a9718bfbf95be433fb260463d4e2752210bc575fc56bcb02`  
		Last Modified: Tue, 20 Sep 2016 17:51:50 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6265be8411bd9cfcbfad197fa68f3e053a024c7c7a7928cb14c60c74b104387`  
		Last Modified: Tue, 20 Sep 2016 17:51:48 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657d2fa38148c2704ec1bb7dfa31601c92a495a70e830d99d64820512d64566`  
		Last Modified: Tue, 20 Sep 2016 17:52:02 GMT  
		Size: 53.4 MB (53401890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ae83b1cf879f87ed280704ebddbd44a982952afe3eaec80ddfaceb0979bc82`  
		Last Modified: Tue, 20 Sep 2016 17:51:47 GMT  
		Size: 284.2 KB (284200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c34cc75afb6689d6302f38cc307138b400fa62a365373e821d145a9dd452815`  
		Last Modified: Thu, 22 Sep 2016 18:22:06 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa96ec166cb65f31a0972ae7050e51641b292aff06c2bdebcd54bfa25bd6791`  
		Last Modified: Thu, 22 Sep 2016 18:22:04 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ffd53d73563dec1e26f55060ff85f1c1585c0e3323accf53745b1518e66b6a`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 7.9 MB (7909437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef1ecc18d82d9f17a83b3586d47f41f113fb76e36af3d00949e5cc22111e6ba`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c4b7c9c2ecc9ac6febcc1d261eae1cfdb289589be8112944896198c5bed8d2`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c352baf5f6ddaf597eb5f1ff9b48386cea929a98448c6a0780fffb548e3ddd`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b5c50d8f535f9eb00ef1345173c9fbc1a1efdc4de455cc51965217fe16497b`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-jre8`

```console
$ docker pull jetty@sha256:6b26059045bec19afebee6ebd06a7dd0531dd9c9252530a764ab047b18f03414
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3-jre8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132051245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e501936755e672cd5e5362189d3166b34009d25bb007d13182a4ae777da61b0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:30:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:32:41 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 20 Sep 2016 16:32:41 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 16:32:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 20 Sep 2016 16:32:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 20 Sep 2016 16:33:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:33:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Sep 2016 19:01:26 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Sep 2016 19:01:27 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Sep 2016 19:01:27 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 19:01:28 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Sep 2016 19:01:28 GMT
WORKDIR /usr/local/jetty
# Tue, 20 Sep 2016 19:01:28 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 20 Sep 2016 19:01:29 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 20 Sep 2016 19:01:29 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 20 Sep 2016 19:01:32 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 20 Sep 2016 19:01:32 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 20 Sep 2016 19:01:33 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:33 GMT
WORKDIR /var/lib/jetty
# Tue, 20 Sep 2016 19:01:34 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 20 Sep 2016 19:01:35 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 20 Sep 2016 19:01:35 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:36 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 20 Sep 2016 19:01:36 GMT
EXPOSE 8080/tcp
# Tue, 20 Sep 2016 19:01:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 19:01:37 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87f2f89c161af8dfa0770ee0e44ec93a98d6c15e168d9f05dda67de7276cec1`  
		Last Modified: Tue, 20 Sep 2016 17:51:51 GMT  
		Size: 566.5 KB (566473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99229495b0d91514a9718bfbf95be433fb260463d4e2752210bc575fc56bcb02`  
		Last Modified: Tue, 20 Sep 2016 17:51:50 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6265be8411bd9cfcbfad197fa68f3e053a024c7c7a7928cb14c60c74b104387`  
		Last Modified: Tue, 20 Sep 2016 17:51:48 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657d2fa38148c2704ec1bb7dfa31601c92a495a70e830d99d64820512d64566`  
		Last Modified: Tue, 20 Sep 2016 17:52:02 GMT  
		Size: 53.4 MB (53401890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ae83b1cf879f87ed280704ebddbd44a982952afe3eaec80ddfaceb0979bc82`  
		Last Modified: Tue, 20 Sep 2016 17:51:47 GMT  
		Size: 284.2 KB (284200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c34cc75afb6689d6302f38cc307138b400fa62a365373e821d145a9dd452815`  
		Last Modified: Thu, 22 Sep 2016 18:22:06 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa96ec166cb65f31a0972ae7050e51641b292aff06c2bdebcd54bfa25bd6791`  
		Last Modified: Thu, 22 Sep 2016 18:22:04 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ffd53d73563dec1e26f55060ff85f1c1585c0e3323accf53745b1518e66b6a`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 7.9 MB (7909437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef1ecc18d82d9f17a83b3586d47f41f113fb76e36af3d00949e5cc22111e6ba`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c4b7c9c2ecc9ac6febcc1d261eae1cfdb289589be8112944896198c5bed8d2`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c352baf5f6ddaf597eb5f1ff9b48386cea929a98448c6a0780fffb548e3ddd`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b5c50d8f535f9eb00ef1345173c9fbc1a1efdc4de455cc51965217fe16497b`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre8`

```console
$ docker pull jetty@sha256:6b26059045bec19afebee6ebd06a7dd0531dd9c9252530a764ab047b18f03414
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132051245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e501936755e672cd5e5362189d3166b34009d25bb007d13182a4ae777da61b0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:30:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:32:41 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 20 Sep 2016 16:32:41 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 16:32:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 20 Sep 2016 16:32:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 20 Sep 2016 16:33:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:33:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Sep 2016 19:01:26 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Sep 2016 19:01:27 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Sep 2016 19:01:27 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 19:01:28 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Sep 2016 19:01:28 GMT
WORKDIR /usr/local/jetty
# Tue, 20 Sep 2016 19:01:28 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 20 Sep 2016 19:01:29 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 20 Sep 2016 19:01:29 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 20 Sep 2016 19:01:32 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 20 Sep 2016 19:01:32 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 20 Sep 2016 19:01:33 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:33 GMT
WORKDIR /var/lib/jetty
# Tue, 20 Sep 2016 19:01:34 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 20 Sep 2016 19:01:35 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 20 Sep 2016 19:01:35 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:36 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 20 Sep 2016 19:01:36 GMT
EXPOSE 8080/tcp
# Tue, 20 Sep 2016 19:01:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 19:01:37 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87f2f89c161af8dfa0770ee0e44ec93a98d6c15e168d9f05dda67de7276cec1`  
		Last Modified: Tue, 20 Sep 2016 17:51:51 GMT  
		Size: 566.5 KB (566473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99229495b0d91514a9718bfbf95be433fb260463d4e2752210bc575fc56bcb02`  
		Last Modified: Tue, 20 Sep 2016 17:51:50 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6265be8411bd9cfcbfad197fa68f3e053a024c7c7a7928cb14c60c74b104387`  
		Last Modified: Tue, 20 Sep 2016 17:51:48 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657d2fa38148c2704ec1bb7dfa31601c92a495a70e830d99d64820512d64566`  
		Last Modified: Tue, 20 Sep 2016 17:52:02 GMT  
		Size: 53.4 MB (53401890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ae83b1cf879f87ed280704ebddbd44a982952afe3eaec80ddfaceb0979bc82`  
		Last Modified: Tue, 20 Sep 2016 17:51:47 GMT  
		Size: 284.2 KB (284200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c34cc75afb6689d6302f38cc307138b400fa62a365373e821d145a9dd452815`  
		Last Modified: Thu, 22 Sep 2016 18:22:06 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa96ec166cb65f31a0972ae7050e51641b292aff06c2bdebcd54bfa25bd6791`  
		Last Modified: Thu, 22 Sep 2016 18:22:04 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ffd53d73563dec1e26f55060ff85f1c1585c0e3323accf53745b1518e66b6a`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 7.9 MB (7909437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef1ecc18d82d9f17a83b3586d47f41f113fb76e36af3d00949e5cc22111e6ba`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c4b7c9c2ecc9ac6febcc1d261eae1cfdb289589be8112944896198c5bed8d2`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c352baf5f6ddaf597eb5f1ff9b48386cea929a98448c6a0780fffb548e3ddd`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b5c50d8f535f9eb00ef1345173c9fbc1a1efdc4de455cc51965217fe16497b`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:latest`

```console
$ docker pull jetty@sha256:6b26059045bec19afebee6ebd06a7dd0531dd9c9252530a764ab047b18f03414
```

-	Platforms:
	-	linux; amd64

### `jetty:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132051245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e501936755e672cd5e5362189d3166b34009d25bb007d13182a4ae777da61b0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:30:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:32:41 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 20 Sep 2016 16:32:41 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 16:32:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 20 Sep 2016 16:32:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 20 Sep 2016 16:33:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:33:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Sep 2016 19:01:26 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Sep 2016 19:01:27 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Sep 2016 19:01:27 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 19:01:28 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Sep 2016 19:01:28 GMT
WORKDIR /usr/local/jetty
# Tue, 20 Sep 2016 19:01:28 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 20 Sep 2016 19:01:29 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 20 Sep 2016 19:01:29 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 20 Sep 2016 19:01:32 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 20 Sep 2016 19:01:32 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 20 Sep 2016 19:01:33 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:33 GMT
WORKDIR /var/lib/jetty
# Tue, 20 Sep 2016 19:01:34 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 20 Sep 2016 19:01:35 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 20 Sep 2016 19:01:35 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:36 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 20 Sep 2016 19:01:36 GMT
EXPOSE 8080/tcp
# Tue, 20 Sep 2016 19:01:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 19:01:37 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87f2f89c161af8dfa0770ee0e44ec93a98d6c15e168d9f05dda67de7276cec1`  
		Last Modified: Tue, 20 Sep 2016 17:51:51 GMT  
		Size: 566.5 KB (566473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99229495b0d91514a9718bfbf95be433fb260463d4e2752210bc575fc56bcb02`  
		Last Modified: Tue, 20 Sep 2016 17:51:50 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6265be8411bd9cfcbfad197fa68f3e053a024c7c7a7928cb14c60c74b104387`  
		Last Modified: Tue, 20 Sep 2016 17:51:48 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657d2fa38148c2704ec1bb7dfa31601c92a495a70e830d99d64820512d64566`  
		Last Modified: Tue, 20 Sep 2016 17:52:02 GMT  
		Size: 53.4 MB (53401890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ae83b1cf879f87ed280704ebddbd44a982952afe3eaec80ddfaceb0979bc82`  
		Last Modified: Tue, 20 Sep 2016 17:51:47 GMT  
		Size: 284.2 KB (284200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c34cc75afb6689d6302f38cc307138b400fa62a365373e821d145a9dd452815`  
		Last Modified: Thu, 22 Sep 2016 18:22:06 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa96ec166cb65f31a0972ae7050e51641b292aff06c2bdebcd54bfa25bd6791`  
		Last Modified: Thu, 22 Sep 2016 18:22:04 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ffd53d73563dec1e26f55060ff85f1c1585c0e3323accf53745b1518e66b6a`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 7.9 MB (7909437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef1ecc18d82d9f17a83b3586d47f41f113fb76e36af3d00949e5cc22111e6ba`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c4b7c9c2ecc9ac6febcc1d261eae1cfdb289589be8112944896198c5bed8d2`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c352baf5f6ddaf597eb5f1ff9b48386cea929a98448c6a0780fffb548e3ddd`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b5c50d8f535f9eb00ef1345173c9fbc1a1efdc4de455cc51965217fe16497b`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre8`

```console
$ docker pull jetty@sha256:6b26059045bec19afebee6ebd06a7dd0531dd9c9252530a764ab047b18f03414
```

-	Platforms:
	-	linux; amd64

### `jetty:jre8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132051245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e501936755e672cd5e5362189d3166b34009d25bb007d13182a4ae777da61b0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:30:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:32:41 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 20 Sep 2016 16:32:41 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 16:32:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 20 Sep 2016 16:32:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 20 Sep 2016 16:33:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:33:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Sep 2016 19:01:26 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Sep 2016 19:01:27 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Sep 2016 19:01:27 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 19:01:28 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Sep 2016 19:01:28 GMT
WORKDIR /usr/local/jetty
# Tue, 20 Sep 2016 19:01:28 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 20 Sep 2016 19:01:29 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 20 Sep 2016 19:01:29 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 20 Sep 2016 19:01:32 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 20 Sep 2016 19:01:32 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 20 Sep 2016 19:01:33 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:33 GMT
WORKDIR /var/lib/jetty
# Tue, 20 Sep 2016 19:01:34 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 20 Sep 2016 19:01:35 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 20 Sep 2016 19:01:35 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:36 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 20 Sep 2016 19:01:36 GMT
EXPOSE 8080/tcp
# Tue, 20 Sep 2016 19:01:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 19:01:37 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87f2f89c161af8dfa0770ee0e44ec93a98d6c15e168d9f05dda67de7276cec1`  
		Last Modified: Tue, 20 Sep 2016 17:51:51 GMT  
		Size: 566.5 KB (566473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99229495b0d91514a9718bfbf95be433fb260463d4e2752210bc575fc56bcb02`  
		Last Modified: Tue, 20 Sep 2016 17:51:50 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6265be8411bd9cfcbfad197fa68f3e053a024c7c7a7928cb14c60c74b104387`  
		Last Modified: Tue, 20 Sep 2016 17:51:48 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657d2fa38148c2704ec1bb7dfa31601c92a495a70e830d99d64820512d64566`  
		Last Modified: Tue, 20 Sep 2016 17:52:02 GMT  
		Size: 53.4 MB (53401890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ae83b1cf879f87ed280704ebddbd44a982952afe3eaec80ddfaceb0979bc82`  
		Last Modified: Tue, 20 Sep 2016 17:51:47 GMT  
		Size: 284.2 KB (284200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c34cc75afb6689d6302f38cc307138b400fa62a365373e821d145a9dd452815`  
		Last Modified: Thu, 22 Sep 2016 18:22:06 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa96ec166cb65f31a0972ae7050e51641b292aff06c2bdebcd54bfa25bd6791`  
		Last Modified: Thu, 22 Sep 2016 18:22:04 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ffd53d73563dec1e26f55060ff85f1c1585c0e3323accf53745b1518e66b6a`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 7.9 MB (7909437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef1ecc18d82d9f17a83b3586d47f41f113fb76e36af3d00949e5cc22111e6ba`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c4b7c9c2ecc9ac6febcc1d261eae1cfdb289589be8112944896198c5bed8d2`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c352baf5f6ddaf597eb5f1ff9b48386cea929a98448c6a0780fffb548e3ddd`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b5c50d8f535f9eb00ef1345173c9fbc1a1efdc4de455cc51965217fe16497b`  
		Last Modified: Thu, 22 Sep 2016 18:22:02 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.11-alpine`

```console
$ docker pull jetty@sha256:8c4014de680d384ffa796e9c74da2bd879d2af5e08976b77516ff47d347af9d8
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.11-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49905773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32625c53a6f0b5b59932a6af9e0bc25519fd9a55e7eff41296978c331d0b5508`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:20:18 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 00:20:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 00:22:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 20 Sep 2016 00:22:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 00:22:18 GMT
ENV JAVA_VERSION=8u92
# Tue, 20 Sep 2016 00:22:18 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 20 Sep 2016 00:22:24 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:46:54 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 20 Sep 2016 16:46:54 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Sep 2016 16:46:54 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 16:46:55 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Sep 2016 16:46:56 GMT
WORKDIR /usr/local/jetty
# Tue, 20 Sep 2016 16:46:56 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 20 Sep 2016 16:46:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 20 Sep 2016 16:46:57 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 20 Sep 2016 16:46:57 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 20 Sep 2016 16:46:58 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 20 Sep 2016 16:47:14 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 20 Sep 2016 16:47:15 GMT
WORKDIR /var/lib/jetty
# Tue, 20 Sep 2016 16:47:15 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 20 Sep 2016 16:47:16 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 20 Sep 2016 16:47:16 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 20 Sep 2016 16:47:17 GMT
EXPOSE 8080/tcp
# Tue, 20 Sep 2016 16:47:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 16:47:18 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187ddf52152d8d92e51722e536dd02ec43d2f66b476ea87b4151c382fc922fea`  
		Last Modified: Tue, 20 Sep 2016 00:20:42 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8683d194f24ffa0db978701ad158c94aa3be060828f18c5c2e4465e97bfe2dba`  
		Last Modified: Tue, 20 Sep 2016 00:22:48 GMT  
		Size: 39.6 MB (39647591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b705fb22ebec815112c4a6e83274e2f2d92f8357d785aa599f7d872286873181`  
		Last Modified: Tue, 20 Sep 2016 16:47:28 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04656be67a35581820bf9b52c79bf0f31bb2231841cd2dbef75500efec1181c2`  
		Last Modified: Tue, 20 Sep 2016 16:47:24 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7988c2985c1eed0476f0f14a72f8b5888af50623daef0bd2109c3d0f40af96`  
		Last Modified: Tue, 20 Sep 2016 16:47:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cada2e6fbff710c127c29709234f012260d57c52d55e2e347447a5324c1cba4`  
		Last Modified: Tue, 20 Sep 2016 16:47:28 GMT  
		Size: 7.9 MB (7943125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14acf1bbd3f2eddc33c44136efe9529ab755b5793fd1e61f5b556da621ff2cdf`  
		Last Modified: Tue, 20 Sep 2016 16:47:24 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c55187001f11c535f9bb0a89ea49e6a6ad40f9391c3493a5cb817bfcf4ea497`  
		Last Modified: Tue, 20 Sep 2016 16:47:25 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-alpine`

```console
$ docker pull jetty@sha256:8c4014de680d384ffa796e9c74da2bd879d2af5e08976b77516ff47d347af9d8
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49905773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32625c53a6f0b5b59932a6af9e0bc25519fd9a55e7eff41296978c331d0b5508`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:20:18 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 00:20:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 00:22:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 20 Sep 2016 00:22:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 00:22:18 GMT
ENV JAVA_VERSION=8u92
# Tue, 20 Sep 2016 00:22:18 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 20 Sep 2016 00:22:24 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:46:54 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 20 Sep 2016 16:46:54 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Sep 2016 16:46:54 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 16:46:55 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Sep 2016 16:46:56 GMT
WORKDIR /usr/local/jetty
# Tue, 20 Sep 2016 16:46:56 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 20 Sep 2016 16:46:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 20 Sep 2016 16:46:57 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 20 Sep 2016 16:46:57 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 20 Sep 2016 16:46:58 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 20 Sep 2016 16:47:14 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 20 Sep 2016 16:47:15 GMT
WORKDIR /var/lib/jetty
# Tue, 20 Sep 2016 16:47:15 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 20 Sep 2016 16:47:16 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 20 Sep 2016 16:47:16 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 20 Sep 2016 16:47:17 GMT
EXPOSE 8080/tcp
# Tue, 20 Sep 2016 16:47:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 16:47:18 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187ddf52152d8d92e51722e536dd02ec43d2f66b476ea87b4151c382fc922fea`  
		Last Modified: Tue, 20 Sep 2016 00:20:42 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8683d194f24ffa0db978701ad158c94aa3be060828f18c5c2e4465e97bfe2dba`  
		Last Modified: Tue, 20 Sep 2016 00:22:48 GMT  
		Size: 39.6 MB (39647591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b705fb22ebec815112c4a6e83274e2f2d92f8357d785aa599f7d872286873181`  
		Last Modified: Tue, 20 Sep 2016 16:47:28 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04656be67a35581820bf9b52c79bf0f31bb2231841cd2dbef75500efec1181c2`  
		Last Modified: Tue, 20 Sep 2016 16:47:24 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7988c2985c1eed0476f0f14a72f8b5888af50623daef0bd2109c3d0f40af96`  
		Last Modified: Tue, 20 Sep 2016 16:47:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cada2e6fbff710c127c29709234f012260d57c52d55e2e347447a5324c1cba4`  
		Last Modified: Tue, 20 Sep 2016 16:47:28 GMT  
		Size: 7.9 MB (7943125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14acf1bbd3f2eddc33c44136efe9529ab755b5793fd1e61f5b556da621ff2cdf`  
		Last Modified: Tue, 20 Sep 2016 16:47:24 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c55187001f11c535f9bb0a89ea49e6a6ad40f9391c3493a5cb817bfcf4ea497`  
		Last Modified: Tue, 20 Sep 2016 16:47:25 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-alpine`

```console
$ docker pull jetty@sha256:8c4014de680d384ffa796e9c74da2bd879d2af5e08976b77516ff47d347af9d8
```

-	Platforms:
	-	linux; amd64

### `jetty:9-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49905773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32625c53a6f0b5b59932a6af9e0bc25519fd9a55e7eff41296978c331d0b5508`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:20:18 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 00:20:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 00:22:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 20 Sep 2016 00:22:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 00:22:18 GMT
ENV JAVA_VERSION=8u92
# Tue, 20 Sep 2016 00:22:18 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 20 Sep 2016 00:22:24 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:46:54 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 20 Sep 2016 16:46:54 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Sep 2016 16:46:54 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 16:46:55 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Sep 2016 16:46:56 GMT
WORKDIR /usr/local/jetty
# Tue, 20 Sep 2016 16:46:56 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 20 Sep 2016 16:46:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 20 Sep 2016 16:46:57 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 20 Sep 2016 16:46:57 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 20 Sep 2016 16:46:58 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 20 Sep 2016 16:47:14 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 20 Sep 2016 16:47:15 GMT
WORKDIR /var/lib/jetty
# Tue, 20 Sep 2016 16:47:15 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 20 Sep 2016 16:47:16 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 20 Sep 2016 16:47:16 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 20 Sep 2016 16:47:17 GMT
EXPOSE 8080/tcp
# Tue, 20 Sep 2016 16:47:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 16:47:18 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187ddf52152d8d92e51722e536dd02ec43d2f66b476ea87b4151c382fc922fea`  
		Last Modified: Tue, 20 Sep 2016 00:20:42 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8683d194f24ffa0db978701ad158c94aa3be060828f18c5c2e4465e97bfe2dba`  
		Last Modified: Tue, 20 Sep 2016 00:22:48 GMT  
		Size: 39.6 MB (39647591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b705fb22ebec815112c4a6e83274e2f2d92f8357d785aa599f7d872286873181`  
		Last Modified: Tue, 20 Sep 2016 16:47:28 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04656be67a35581820bf9b52c79bf0f31bb2231841cd2dbef75500efec1181c2`  
		Last Modified: Tue, 20 Sep 2016 16:47:24 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7988c2985c1eed0476f0f14a72f8b5888af50623daef0bd2109c3d0f40af96`  
		Last Modified: Tue, 20 Sep 2016 16:47:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cada2e6fbff710c127c29709234f012260d57c52d55e2e347447a5324c1cba4`  
		Last Modified: Tue, 20 Sep 2016 16:47:28 GMT  
		Size: 7.9 MB (7943125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14acf1bbd3f2eddc33c44136efe9529ab755b5793fd1e61f5b556da621ff2cdf`  
		Last Modified: Tue, 20 Sep 2016 16:47:24 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c55187001f11c535f9bb0a89ea49e6a6ad40f9391c3493a5cb817bfcf4ea497`  
		Last Modified: Tue, 20 Sep 2016 16:47:25 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.11-jre8-alpine`

```console
$ docker pull jetty@sha256:8c4014de680d384ffa796e9c74da2bd879d2af5e08976b77516ff47d347af9d8
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.11-jre8-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49905773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32625c53a6f0b5b59932a6af9e0bc25519fd9a55e7eff41296978c331d0b5508`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:20:18 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 00:20:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 00:22:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 20 Sep 2016 00:22:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 00:22:18 GMT
ENV JAVA_VERSION=8u92
# Tue, 20 Sep 2016 00:22:18 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 20 Sep 2016 00:22:24 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:46:54 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 20 Sep 2016 16:46:54 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Sep 2016 16:46:54 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 16:46:55 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Sep 2016 16:46:56 GMT
WORKDIR /usr/local/jetty
# Tue, 20 Sep 2016 16:46:56 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 20 Sep 2016 16:46:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 20 Sep 2016 16:46:57 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 20 Sep 2016 16:46:57 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 20 Sep 2016 16:46:58 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 20 Sep 2016 16:47:14 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 20 Sep 2016 16:47:15 GMT
WORKDIR /var/lib/jetty
# Tue, 20 Sep 2016 16:47:15 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 20 Sep 2016 16:47:16 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 20 Sep 2016 16:47:16 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 20 Sep 2016 16:47:17 GMT
EXPOSE 8080/tcp
# Tue, 20 Sep 2016 16:47:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 16:47:18 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187ddf52152d8d92e51722e536dd02ec43d2f66b476ea87b4151c382fc922fea`  
		Last Modified: Tue, 20 Sep 2016 00:20:42 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8683d194f24ffa0db978701ad158c94aa3be060828f18c5c2e4465e97bfe2dba`  
		Last Modified: Tue, 20 Sep 2016 00:22:48 GMT  
		Size: 39.6 MB (39647591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b705fb22ebec815112c4a6e83274e2f2d92f8357d785aa599f7d872286873181`  
		Last Modified: Tue, 20 Sep 2016 16:47:28 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04656be67a35581820bf9b52c79bf0f31bb2231841cd2dbef75500efec1181c2`  
		Last Modified: Tue, 20 Sep 2016 16:47:24 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7988c2985c1eed0476f0f14a72f8b5888af50623daef0bd2109c3d0f40af96`  
		Last Modified: Tue, 20 Sep 2016 16:47:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cada2e6fbff710c127c29709234f012260d57c52d55e2e347447a5324c1cba4`  
		Last Modified: Tue, 20 Sep 2016 16:47:28 GMT  
		Size: 7.9 MB (7943125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14acf1bbd3f2eddc33c44136efe9529ab755b5793fd1e61f5b556da621ff2cdf`  
		Last Modified: Tue, 20 Sep 2016 16:47:24 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c55187001f11c535f9bb0a89ea49e6a6ad40f9391c3493a5cb817bfcf4ea497`  
		Last Modified: Tue, 20 Sep 2016 16:47:25 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-jre8-alpine`

```console
$ docker pull jetty@sha256:8c4014de680d384ffa796e9c74da2bd879d2af5e08976b77516ff47d347af9d8
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3-jre8-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49905773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32625c53a6f0b5b59932a6af9e0bc25519fd9a55e7eff41296978c331d0b5508`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:20:18 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 00:20:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 00:22:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 20 Sep 2016 00:22:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 00:22:18 GMT
ENV JAVA_VERSION=8u92
# Tue, 20 Sep 2016 00:22:18 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 20 Sep 2016 00:22:24 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:46:54 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 20 Sep 2016 16:46:54 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Sep 2016 16:46:54 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 16:46:55 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Sep 2016 16:46:56 GMT
WORKDIR /usr/local/jetty
# Tue, 20 Sep 2016 16:46:56 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 20 Sep 2016 16:46:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 20 Sep 2016 16:46:57 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 20 Sep 2016 16:46:57 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 20 Sep 2016 16:46:58 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 20 Sep 2016 16:47:14 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 20 Sep 2016 16:47:15 GMT
WORKDIR /var/lib/jetty
# Tue, 20 Sep 2016 16:47:15 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 20 Sep 2016 16:47:16 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 20 Sep 2016 16:47:16 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 20 Sep 2016 16:47:17 GMT
EXPOSE 8080/tcp
# Tue, 20 Sep 2016 16:47:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 16:47:18 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187ddf52152d8d92e51722e536dd02ec43d2f66b476ea87b4151c382fc922fea`  
		Last Modified: Tue, 20 Sep 2016 00:20:42 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8683d194f24ffa0db978701ad158c94aa3be060828f18c5c2e4465e97bfe2dba`  
		Last Modified: Tue, 20 Sep 2016 00:22:48 GMT  
		Size: 39.6 MB (39647591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b705fb22ebec815112c4a6e83274e2f2d92f8357d785aa599f7d872286873181`  
		Last Modified: Tue, 20 Sep 2016 16:47:28 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04656be67a35581820bf9b52c79bf0f31bb2231841cd2dbef75500efec1181c2`  
		Last Modified: Tue, 20 Sep 2016 16:47:24 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7988c2985c1eed0476f0f14a72f8b5888af50623daef0bd2109c3d0f40af96`  
		Last Modified: Tue, 20 Sep 2016 16:47:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cada2e6fbff710c127c29709234f012260d57c52d55e2e347447a5324c1cba4`  
		Last Modified: Tue, 20 Sep 2016 16:47:28 GMT  
		Size: 7.9 MB (7943125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14acf1bbd3f2eddc33c44136efe9529ab755b5793fd1e61f5b556da621ff2cdf`  
		Last Modified: Tue, 20 Sep 2016 16:47:24 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c55187001f11c535f9bb0a89ea49e6a6ad40f9391c3493a5cb817bfcf4ea497`  
		Last Modified: Tue, 20 Sep 2016 16:47:25 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre8-alpine`

```console
$ docker pull jetty@sha256:8c4014de680d384ffa796e9c74da2bd879d2af5e08976b77516ff47d347af9d8
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre8-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49905773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32625c53a6f0b5b59932a6af9e0bc25519fd9a55e7eff41296978c331d0b5508`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:20:18 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 00:20:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 00:22:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 20 Sep 2016 00:22:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 00:22:18 GMT
ENV JAVA_VERSION=8u92
# Tue, 20 Sep 2016 00:22:18 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 20 Sep 2016 00:22:24 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:46:54 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 20 Sep 2016 16:46:54 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Sep 2016 16:46:54 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 16:46:55 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Sep 2016 16:46:56 GMT
WORKDIR /usr/local/jetty
# Tue, 20 Sep 2016 16:46:56 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 20 Sep 2016 16:46:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 20 Sep 2016 16:46:57 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 20 Sep 2016 16:46:57 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 20 Sep 2016 16:46:58 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 20 Sep 2016 16:47:14 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 20 Sep 2016 16:47:15 GMT
WORKDIR /var/lib/jetty
# Tue, 20 Sep 2016 16:47:15 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 20 Sep 2016 16:47:16 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 20 Sep 2016 16:47:16 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 20 Sep 2016 16:47:17 GMT
EXPOSE 8080/tcp
# Tue, 20 Sep 2016 16:47:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 16:47:18 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187ddf52152d8d92e51722e536dd02ec43d2f66b476ea87b4151c382fc922fea`  
		Last Modified: Tue, 20 Sep 2016 00:20:42 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8683d194f24ffa0db978701ad158c94aa3be060828f18c5c2e4465e97bfe2dba`  
		Last Modified: Tue, 20 Sep 2016 00:22:48 GMT  
		Size: 39.6 MB (39647591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b705fb22ebec815112c4a6e83274e2f2d92f8357d785aa599f7d872286873181`  
		Last Modified: Tue, 20 Sep 2016 16:47:28 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04656be67a35581820bf9b52c79bf0f31bb2231841cd2dbef75500efec1181c2`  
		Last Modified: Tue, 20 Sep 2016 16:47:24 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7988c2985c1eed0476f0f14a72f8b5888af50623daef0bd2109c3d0f40af96`  
		Last Modified: Tue, 20 Sep 2016 16:47:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cada2e6fbff710c127c29709234f012260d57c52d55e2e347447a5324c1cba4`  
		Last Modified: Tue, 20 Sep 2016 16:47:28 GMT  
		Size: 7.9 MB (7943125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14acf1bbd3f2eddc33c44136efe9529ab755b5793fd1e61f5b556da621ff2cdf`  
		Last Modified: Tue, 20 Sep 2016 16:47:24 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c55187001f11c535f9bb0a89ea49e6a6ad40f9391c3493a5cb817bfcf4ea497`  
		Last Modified: Tue, 20 Sep 2016 16:47:25 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:alpine`

```console
$ docker pull jetty@sha256:8c4014de680d384ffa796e9c74da2bd879d2af5e08976b77516ff47d347af9d8
```

-	Platforms:
	-	linux; amd64

### `jetty:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49905773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32625c53a6f0b5b59932a6af9e0bc25519fd9a55e7eff41296978c331d0b5508`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:20:18 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 00:20:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 00:22:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 20 Sep 2016 00:22:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 00:22:18 GMT
ENV JAVA_VERSION=8u92
# Tue, 20 Sep 2016 00:22:18 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 20 Sep 2016 00:22:24 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:46:54 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 20 Sep 2016 16:46:54 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Sep 2016 16:46:54 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 16:46:55 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Sep 2016 16:46:56 GMT
WORKDIR /usr/local/jetty
# Tue, 20 Sep 2016 16:46:56 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 20 Sep 2016 16:46:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 20 Sep 2016 16:46:57 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 20 Sep 2016 16:46:57 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 20 Sep 2016 16:46:58 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 20 Sep 2016 16:47:14 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 20 Sep 2016 16:47:15 GMT
WORKDIR /var/lib/jetty
# Tue, 20 Sep 2016 16:47:15 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 20 Sep 2016 16:47:16 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 20 Sep 2016 16:47:16 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 20 Sep 2016 16:47:17 GMT
EXPOSE 8080/tcp
# Tue, 20 Sep 2016 16:47:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 16:47:18 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187ddf52152d8d92e51722e536dd02ec43d2f66b476ea87b4151c382fc922fea`  
		Last Modified: Tue, 20 Sep 2016 00:20:42 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8683d194f24ffa0db978701ad158c94aa3be060828f18c5c2e4465e97bfe2dba`  
		Last Modified: Tue, 20 Sep 2016 00:22:48 GMT  
		Size: 39.6 MB (39647591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b705fb22ebec815112c4a6e83274e2f2d92f8357d785aa599f7d872286873181`  
		Last Modified: Tue, 20 Sep 2016 16:47:28 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04656be67a35581820bf9b52c79bf0f31bb2231841cd2dbef75500efec1181c2`  
		Last Modified: Tue, 20 Sep 2016 16:47:24 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7988c2985c1eed0476f0f14a72f8b5888af50623daef0bd2109c3d0f40af96`  
		Last Modified: Tue, 20 Sep 2016 16:47:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cada2e6fbff710c127c29709234f012260d57c52d55e2e347447a5324c1cba4`  
		Last Modified: Tue, 20 Sep 2016 16:47:28 GMT  
		Size: 7.9 MB (7943125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14acf1bbd3f2eddc33c44136efe9529ab755b5793fd1e61f5b556da621ff2cdf`  
		Last Modified: Tue, 20 Sep 2016 16:47:24 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c55187001f11c535f9bb0a89ea49e6a6ad40f9391c3493a5cb817bfcf4ea497`  
		Last Modified: Tue, 20 Sep 2016 16:47:25 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre8-alpine`

```console
$ docker pull jetty@sha256:8c4014de680d384ffa796e9c74da2bd879d2af5e08976b77516ff47d347af9d8
```

-	Platforms:
	-	linux; amd64

### `jetty:jre8-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49905773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32625c53a6f0b5b59932a6af9e0bc25519fd9a55e7eff41296978c331d0b5508`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:20:18 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 00:20:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 00:22:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 20 Sep 2016 00:22:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 00:22:18 GMT
ENV JAVA_VERSION=8u92
# Tue, 20 Sep 2016 00:22:18 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 20 Sep 2016 00:22:24 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:46:54 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 20 Sep 2016 16:46:54 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Sep 2016 16:46:54 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 16:46:55 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Sep 2016 16:46:56 GMT
WORKDIR /usr/local/jetty
# Tue, 20 Sep 2016 16:46:56 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 20 Sep 2016 16:46:57 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 20 Sep 2016 16:46:57 GMT
ENV JETTY_VERSION=9.3.11.v20160721
# Tue, 20 Sep 2016 16:46:57 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.11.v20160721/jetty-distribution-9.3.11.v20160721.tar.gz
# Tue, 20 Sep 2016 16:46:58 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 20 Sep 2016 16:47:14 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 20 Sep 2016 16:47:15 GMT
WORKDIR /var/lib/jetty
# Tue, 20 Sep 2016 16:47:15 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 20 Sep 2016 16:47:16 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 20 Sep 2016 16:47:16 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 20 Sep 2016 16:47:17 GMT
EXPOSE 8080/tcp
# Tue, 20 Sep 2016 16:47:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 16:47:18 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187ddf52152d8d92e51722e536dd02ec43d2f66b476ea87b4151c382fc922fea`  
		Last Modified: Tue, 20 Sep 2016 00:20:42 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8683d194f24ffa0db978701ad158c94aa3be060828f18c5c2e4465e97bfe2dba`  
		Last Modified: Tue, 20 Sep 2016 00:22:48 GMT  
		Size: 39.6 MB (39647591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b705fb22ebec815112c4a6e83274e2f2d92f8357d785aa599f7d872286873181`  
		Last Modified: Tue, 20 Sep 2016 16:47:28 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04656be67a35581820bf9b52c79bf0f31bb2231841cd2dbef75500efec1181c2`  
		Last Modified: Tue, 20 Sep 2016 16:47:24 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7988c2985c1eed0476f0f14a72f8b5888af50623daef0bd2109c3d0f40af96`  
		Last Modified: Tue, 20 Sep 2016 16:47:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cada2e6fbff710c127c29709234f012260d57c52d55e2e347447a5324c1cba4`  
		Last Modified: Tue, 20 Sep 2016 16:47:28 GMT  
		Size: 7.9 MB (7943125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14acf1bbd3f2eddc33c44136efe9529ab755b5793fd1e61f5b556da621ff2cdf`  
		Last Modified: Tue, 20 Sep 2016 16:47:24 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c55187001f11c535f9bb0a89ea49e6a6ad40f9391c3493a5cb817bfcf4ea497`  
		Last Modified: Tue, 20 Sep 2016 16:47:25 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.18`

```console
$ docker pull jetty@sha256:f60190d73efde0d40e874b5806321a2ff2dc4b565eccbc26d906a427f52913e1
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2.18` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.1 MB (134145524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f468db3014f29fae85b2d27b5cd47fa97ff02045762d79c113b5fc07d186d5a9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:30:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:32:41 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 20 Sep 2016 16:32:41 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 16:32:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 20 Sep 2016 16:32:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 20 Sep 2016 16:33:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:33:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Sep 2016 19:01:26 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Sep 2016 19:01:27 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Sep 2016 19:01:27 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 19:01:28 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Sep 2016 19:01:28 GMT
WORKDIR /usr/local/jetty
# Tue, 20 Sep 2016 19:01:49 GMT
ENV JETTY_VERSION=9.2.18.v20160721
# Tue, 20 Sep 2016 19:01:49 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.18.v20160721/jetty-distribution-9.2.18.v20160721.tar.gz
# Tue, 20 Sep 2016 19:01:49 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 20 Sep 2016 19:01:52 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 20 Sep 2016 19:01:52 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 20 Sep 2016 19:01:53 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:53 GMT
WORKDIR /var/lib/jetty
# Tue, 20 Sep 2016 19:01:54 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 20 Sep 2016 19:01:55 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 20 Sep 2016 19:01:55 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:56 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 20 Sep 2016 19:01:56 GMT
EXPOSE 8080/tcp
# Tue, 20 Sep 2016 19:01:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 19:01:57 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87f2f89c161af8dfa0770ee0e44ec93a98d6c15e168d9f05dda67de7276cec1`  
		Last Modified: Tue, 20 Sep 2016 17:51:51 GMT  
		Size: 566.5 KB (566473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99229495b0d91514a9718bfbf95be433fb260463d4e2752210bc575fc56bcb02`  
		Last Modified: Tue, 20 Sep 2016 17:51:50 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6265be8411bd9cfcbfad197fa68f3e053a024c7c7a7928cb14c60c74b104387`  
		Last Modified: Tue, 20 Sep 2016 17:51:48 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657d2fa38148c2704ec1bb7dfa31601c92a495a70e830d99d64820512d64566`  
		Last Modified: Tue, 20 Sep 2016 17:52:02 GMT  
		Size: 53.4 MB (53401890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ae83b1cf879f87ed280704ebddbd44a982952afe3eaec80ddfaceb0979bc82`  
		Last Modified: Tue, 20 Sep 2016 17:51:47 GMT  
		Size: 284.2 KB (284200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c34cc75afb6689d6302f38cc307138b400fa62a365373e821d145a9dd452815`  
		Last Modified: Thu, 22 Sep 2016 18:22:06 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa96ec166cb65f31a0972ae7050e51641b292aff06c2bdebcd54bfa25bd6791`  
		Last Modified: Thu, 22 Sep 2016 18:22:04 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a93c8d39a2d8b4a6e228cbd775ffdae2b8aa2b59013a418e5c7f0a5d484cac`  
		Last Modified: Thu, 22 Sep 2016 18:25:27 GMT  
		Size: 10.0 MB (10004226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dee1c00d520d01087d70cc8df96c85ebd8123aa2e3f5d848c9d46f8d03306f1`  
		Last Modified: Thu, 22 Sep 2016 18:25:19 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8d26871e44c4f667c90eadde54f2a342d518fcf9fe108c9db52868c3cbc17b`  
		Last Modified: Thu, 22 Sep 2016 18:25:19 GMT  
		Size: 1.6 KB (1574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb7e2eff6a091d9d675c71dd5f917d9a94f3f339e9dba5226a91023dcb1e12c`  
		Last Modified: Thu, 22 Sep 2016 18:25:18 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f28aa7a7bd625072640cbdaf4de13e653b5cb2eaae5ab94dafeeac43e39a4f`  
		Last Modified: Thu, 22 Sep 2016 18:25:19 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2`

```console
$ docker pull jetty@sha256:f60190d73efde0d40e874b5806321a2ff2dc4b565eccbc26d906a427f52913e1
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.1 MB (134145524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f468db3014f29fae85b2d27b5cd47fa97ff02045762d79c113b5fc07d186d5a9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:30:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:32:41 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 20 Sep 2016 16:32:41 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 16:32:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 20 Sep 2016 16:32:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 20 Sep 2016 16:33:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:33:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Sep 2016 19:01:26 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Sep 2016 19:01:27 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Sep 2016 19:01:27 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 19:01:28 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Sep 2016 19:01:28 GMT
WORKDIR /usr/local/jetty
# Tue, 20 Sep 2016 19:01:49 GMT
ENV JETTY_VERSION=9.2.18.v20160721
# Tue, 20 Sep 2016 19:01:49 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.18.v20160721/jetty-distribution-9.2.18.v20160721.tar.gz
# Tue, 20 Sep 2016 19:01:49 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 20 Sep 2016 19:01:52 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 20 Sep 2016 19:01:52 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 20 Sep 2016 19:01:53 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:53 GMT
WORKDIR /var/lib/jetty
# Tue, 20 Sep 2016 19:01:54 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 20 Sep 2016 19:01:55 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 20 Sep 2016 19:01:55 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:56 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 20 Sep 2016 19:01:56 GMT
EXPOSE 8080/tcp
# Tue, 20 Sep 2016 19:01:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 19:01:57 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87f2f89c161af8dfa0770ee0e44ec93a98d6c15e168d9f05dda67de7276cec1`  
		Last Modified: Tue, 20 Sep 2016 17:51:51 GMT  
		Size: 566.5 KB (566473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99229495b0d91514a9718bfbf95be433fb260463d4e2752210bc575fc56bcb02`  
		Last Modified: Tue, 20 Sep 2016 17:51:50 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6265be8411bd9cfcbfad197fa68f3e053a024c7c7a7928cb14c60c74b104387`  
		Last Modified: Tue, 20 Sep 2016 17:51:48 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657d2fa38148c2704ec1bb7dfa31601c92a495a70e830d99d64820512d64566`  
		Last Modified: Tue, 20 Sep 2016 17:52:02 GMT  
		Size: 53.4 MB (53401890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ae83b1cf879f87ed280704ebddbd44a982952afe3eaec80ddfaceb0979bc82`  
		Last Modified: Tue, 20 Sep 2016 17:51:47 GMT  
		Size: 284.2 KB (284200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c34cc75afb6689d6302f38cc307138b400fa62a365373e821d145a9dd452815`  
		Last Modified: Thu, 22 Sep 2016 18:22:06 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa96ec166cb65f31a0972ae7050e51641b292aff06c2bdebcd54bfa25bd6791`  
		Last Modified: Thu, 22 Sep 2016 18:22:04 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a93c8d39a2d8b4a6e228cbd775ffdae2b8aa2b59013a418e5c7f0a5d484cac`  
		Last Modified: Thu, 22 Sep 2016 18:25:27 GMT  
		Size: 10.0 MB (10004226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dee1c00d520d01087d70cc8df96c85ebd8123aa2e3f5d848c9d46f8d03306f1`  
		Last Modified: Thu, 22 Sep 2016 18:25:19 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8d26871e44c4f667c90eadde54f2a342d518fcf9fe108c9db52868c3cbc17b`  
		Last Modified: Thu, 22 Sep 2016 18:25:19 GMT  
		Size: 1.6 KB (1574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb7e2eff6a091d9d675c71dd5f917d9a94f3f339e9dba5226a91023dcb1e12c`  
		Last Modified: Thu, 22 Sep 2016 18:25:18 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f28aa7a7bd625072640cbdaf4de13e653b5cb2eaae5ab94dafeeac43e39a4f`  
		Last Modified: Thu, 22 Sep 2016 18:25:19 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.18-jre8`

```console
$ docker pull jetty@sha256:f60190d73efde0d40e874b5806321a2ff2dc4b565eccbc26d906a427f52913e1
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2.18-jre8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.1 MB (134145524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f468db3014f29fae85b2d27b5cd47fa97ff02045762d79c113b5fc07d186d5a9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:30:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:32:41 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 20 Sep 2016 16:32:41 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 16:32:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 20 Sep 2016 16:32:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 20 Sep 2016 16:33:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:33:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Sep 2016 19:01:26 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Sep 2016 19:01:27 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Sep 2016 19:01:27 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 19:01:28 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Sep 2016 19:01:28 GMT
WORKDIR /usr/local/jetty
# Tue, 20 Sep 2016 19:01:49 GMT
ENV JETTY_VERSION=9.2.18.v20160721
# Tue, 20 Sep 2016 19:01:49 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.18.v20160721/jetty-distribution-9.2.18.v20160721.tar.gz
# Tue, 20 Sep 2016 19:01:49 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 20 Sep 2016 19:01:52 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 20 Sep 2016 19:01:52 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 20 Sep 2016 19:01:53 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:53 GMT
WORKDIR /var/lib/jetty
# Tue, 20 Sep 2016 19:01:54 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 20 Sep 2016 19:01:55 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 20 Sep 2016 19:01:55 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:56 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 20 Sep 2016 19:01:56 GMT
EXPOSE 8080/tcp
# Tue, 20 Sep 2016 19:01:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 19:01:57 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87f2f89c161af8dfa0770ee0e44ec93a98d6c15e168d9f05dda67de7276cec1`  
		Last Modified: Tue, 20 Sep 2016 17:51:51 GMT  
		Size: 566.5 KB (566473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99229495b0d91514a9718bfbf95be433fb260463d4e2752210bc575fc56bcb02`  
		Last Modified: Tue, 20 Sep 2016 17:51:50 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6265be8411bd9cfcbfad197fa68f3e053a024c7c7a7928cb14c60c74b104387`  
		Last Modified: Tue, 20 Sep 2016 17:51:48 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657d2fa38148c2704ec1bb7dfa31601c92a495a70e830d99d64820512d64566`  
		Last Modified: Tue, 20 Sep 2016 17:52:02 GMT  
		Size: 53.4 MB (53401890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ae83b1cf879f87ed280704ebddbd44a982952afe3eaec80ddfaceb0979bc82`  
		Last Modified: Tue, 20 Sep 2016 17:51:47 GMT  
		Size: 284.2 KB (284200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c34cc75afb6689d6302f38cc307138b400fa62a365373e821d145a9dd452815`  
		Last Modified: Thu, 22 Sep 2016 18:22:06 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa96ec166cb65f31a0972ae7050e51641b292aff06c2bdebcd54bfa25bd6791`  
		Last Modified: Thu, 22 Sep 2016 18:22:04 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a93c8d39a2d8b4a6e228cbd775ffdae2b8aa2b59013a418e5c7f0a5d484cac`  
		Last Modified: Thu, 22 Sep 2016 18:25:27 GMT  
		Size: 10.0 MB (10004226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dee1c00d520d01087d70cc8df96c85ebd8123aa2e3f5d848c9d46f8d03306f1`  
		Last Modified: Thu, 22 Sep 2016 18:25:19 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8d26871e44c4f667c90eadde54f2a342d518fcf9fe108c9db52868c3cbc17b`  
		Last Modified: Thu, 22 Sep 2016 18:25:19 GMT  
		Size: 1.6 KB (1574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb7e2eff6a091d9d675c71dd5f917d9a94f3f339e9dba5226a91023dcb1e12c`  
		Last Modified: Thu, 22 Sep 2016 18:25:18 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f28aa7a7bd625072640cbdaf4de13e653b5cb2eaae5ab94dafeeac43e39a4f`  
		Last Modified: Thu, 22 Sep 2016 18:25:19 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2-jre8`

```console
$ docker pull jetty@sha256:f60190d73efde0d40e874b5806321a2ff2dc4b565eccbc26d906a427f52913e1
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2-jre8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.1 MB (134145524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f468db3014f29fae85b2d27b5cd47fa97ff02045762d79c113b5fc07d186d5a9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:30:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:32:41 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 20 Sep 2016 16:32:41 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 16:32:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 20 Sep 2016 16:32:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 20 Sep 2016 16:32:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 20 Sep 2016 16:33:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:33:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Sep 2016 19:01:26 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Sep 2016 19:01:27 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Sep 2016 19:01:27 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 19:01:28 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Sep 2016 19:01:28 GMT
WORKDIR /usr/local/jetty
# Tue, 20 Sep 2016 19:01:49 GMT
ENV JETTY_VERSION=9.2.18.v20160721
# Tue, 20 Sep 2016 19:01:49 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.18.v20160721/jetty-distribution-9.2.18.v20160721.tar.gz
# Tue, 20 Sep 2016 19:01:49 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 20 Sep 2016 19:01:52 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 20 Sep 2016 19:01:52 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 20 Sep 2016 19:01:53 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:53 GMT
WORKDIR /var/lib/jetty
# Tue, 20 Sep 2016 19:01:54 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 20 Sep 2016 19:01:55 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 20 Sep 2016 19:01:55 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:56 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 20 Sep 2016 19:01:56 GMT
EXPOSE 8080/tcp
# Tue, 20 Sep 2016 19:01:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 19:01:57 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87f2f89c161af8dfa0770ee0e44ec93a98d6c15e168d9f05dda67de7276cec1`  
		Last Modified: Tue, 20 Sep 2016 17:51:51 GMT  
		Size: 566.5 KB (566473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99229495b0d91514a9718bfbf95be433fb260463d4e2752210bc575fc56bcb02`  
		Last Modified: Tue, 20 Sep 2016 17:51:50 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6265be8411bd9cfcbfad197fa68f3e053a024c7c7a7928cb14c60c74b104387`  
		Last Modified: Tue, 20 Sep 2016 17:51:48 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657d2fa38148c2704ec1bb7dfa31601c92a495a70e830d99d64820512d64566`  
		Last Modified: Tue, 20 Sep 2016 17:52:02 GMT  
		Size: 53.4 MB (53401890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ae83b1cf879f87ed280704ebddbd44a982952afe3eaec80ddfaceb0979bc82`  
		Last Modified: Tue, 20 Sep 2016 17:51:47 GMT  
		Size: 284.2 KB (284200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c34cc75afb6689d6302f38cc307138b400fa62a365373e821d145a9dd452815`  
		Last Modified: Thu, 22 Sep 2016 18:22:06 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa96ec166cb65f31a0972ae7050e51641b292aff06c2bdebcd54bfa25bd6791`  
		Last Modified: Thu, 22 Sep 2016 18:22:04 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a93c8d39a2d8b4a6e228cbd775ffdae2b8aa2b59013a418e5c7f0a5d484cac`  
		Last Modified: Thu, 22 Sep 2016 18:25:27 GMT  
		Size: 10.0 MB (10004226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dee1c00d520d01087d70cc8df96c85ebd8123aa2e3f5d848c9d46f8d03306f1`  
		Last Modified: Thu, 22 Sep 2016 18:25:19 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8d26871e44c4f667c90eadde54f2a342d518fcf9fe108c9db52868c3cbc17b`  
		Last Modified: Thu, 22 Sep 2016 18:25:19 GMT  
		Size: 1.6 KB (1574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb7e2eff6a091d9d675c71dd5f917d9a94f3f339e9dba5226a91023dcb1e12c`  
		Last Modified: Thu, 22 Sep 2016 18:25:18 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f28aa7a7bd625072640cbdaf4de13e653b5cb2eaae5ab94dafeeac43e39a4f`  
		Last Modified: Thu, 22 Sep 2016 18:25:19 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.18-jre7`

```console
$ docker pull jetty@sha256:0a11c427c30b263d91eef3bb6514390b86ef3672b9e74e3c32fae5823e64d333
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2.18-jre7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158171588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff76b9a960b8c387eed8046927ad1658d7b5cb2f6c21e15ba2f68c833a940946`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:30:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:30:49 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 16:30:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 16:30:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 20 Sep 2016 16:30:51 GMT
ENV JAVA_VERSION=7u111
# Tue, 20 Sep 2016 16:30:51 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Tue, 20 Sep 2016 16:31:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 19:01:38 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Sep 2016 19:01:38 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Sep 2016 19:01:39 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 19:01:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Sep 2016 19:01:40 GMT
WORKDIR /usr/local/jetty
# Tue, 20 Sep 2016 19:01:40 GMT
ENV JETTY_VERSION=9.2.18.v20160721
# Tue, 20 Sep 2016 19:01:40 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.18.v20160721/jetty-distribution-9.2.18.v20160721.tar.gz
# Tue, 20 Sep 2016 19:01:40 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 20 Sep 2016 19:01:43 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 20 Sep 2016 19:01:43 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 20 Sep 2016 19:01:44 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:44 GMT
WORKDIR /var/lib/jetty
# Tue, 20 Sep 2016 19:01:46 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 20 Sep 2016 19:01:46 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 20 Sep 2016 19:01:47 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:47 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 20 Sep 2016 19:01:48 GMT
EXPOSE 8080/tcp
# Tue, 20 Sep 2016 19:01:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 19:01:48 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87f2f89c161af8dfa0770ee0e44ec93a98d6c15e168d9f05dda67de7276cec1`  
		Last Modified: Tue, 20 Sep 2016 17:51:51 GMT  
		Size: 566.5 KB (566473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818d498b9713add59b4abadeba59d820dc875924913669266c242c29a8b8e1d9`  
		Last Modified: Wed, 21 Sep 2016 22:57:13 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd673cdbe71463679cafe30cfd8fbe8f57ac586f83fa3703e6aca0c608ff1a5`  
		Last Modified: Wed, 21 Sep 2016 22:57:29 GMT  
		Size: 77.7 MB (77712374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6eac237e7649a1d3da0eb2030a0647b180b0e862254a02eb67236119f952fcc`  
		Last Modified: Thu, 22 Sep 2016 18:23:28 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811781c8245935f8f9ff0742c0da6b7e011699914043bd35cdb5b60de65b7184`  
		Last Modified: Thu, 22 Sep 2016 18:23:27 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25d3d885ede93437782b48964fcb254cc93a7aae620fbc9d8237305b0bb5709`  
		Last Modified: Thu, 22 Sep 2016 18:23:25 GMT  
		Size: 10.0 MB (10004224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7a866b4f9041d5b2420c95dcc67f4131392182d200735d68a8823db7dd73c2`  
		Last Modified: Thu, 22 Sep 2016 18:23:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c648bafdeedac08f78e3803de60fa89a16f83486e19d7378eaa4742f6555526`  
		Last Modified: Thu, 22 Sep 2016 18:23:25 GMT  
		Size: 1.6 KB (1570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ee8a9605d9a362622cb4afaf341272b462f3cc13a102430a03afe5bdc3311a`  
		Last Modified: Thu, 22 Sep 2016 18:23:23 GMT  
		Size: 1.6 KB (1574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546022fca340e9db74b2e5b6cdc0ab30cc55c82cafecd2cc99e5bad51455a1e3`  
		Last Modified: Thu, 22 Sep 2016 18:23:24 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2-jre7`

```console
$ docker pull jetty@sha256:0a11c427c30b263d91eef3bb6514390b86ef3672b9e74e3c32fae5823e64d333
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2-jre7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158171588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff76b9a960b8c387eed8046927ad1658d7b5cb2f6c21e15ba2f68c833a940946`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:30:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:30:49 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 16:30:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 16:30:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 20 Sep 2016 16:30:51 GMT
ENV JAVA_VERSION=7u111
# Tue, 20 Sep 2016 16:30:51 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Tue, 20 Sep 2016 16:31:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 19:01:38 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Sep 2016 19:01:38 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Sep 2016 19:01:39 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 19:01:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Sep 2016 19:01:40 GMT
WORKDIR /usr/local/jetty
# Tue, 20 Sep 2016 19:01:40 GMT
ENV JETTY_VERSION=9.2.18.v20160721
# Tue, 20 Sep 2016 19:01:40 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.18.v20160721/jetty-distribution-9.2.18.v20160721.tar.gz
# Tue, 20 Sep 2016 19:01:40 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 20 Sep 2016 19:01:43 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 20 Sep 2016 19:01:43 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 20 Sep 2016 19:01:44 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:44 GMT
WORKDIR /var/lib/jetty
# Tue, 20 Sep 2016 19:01:46 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 20 Sep 2016 19:01:46 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 20 Sep 2016 19:01:47 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:47 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 20 Sep 2016 19:01:48 GMT
EXPOSE 8080/tcp
# Tue, 20 Sep 2016 19:01:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 19:01:48 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87f2f89c161af8dfa0770ee0e44ec93a98d6c15e168d9f05dda67de7276cec1`  
		Last Modified: Tue, 20 Sep 2016 17:51:51 GMT  
		Size: 566.5 KB (566473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818d498b9713add59b4abadeba59d820dc875924913669266c242c29a8b8e1d9`  
		Last Modified: Wed, 21 Sep 2016 22:57:13 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd673cdbe71463679cafe30cfd8fbe8f57ac586f83fa3703e6aca0c608ff1a5`  
		Last Modified: Wed, 21 Sep 2016 22:57:29 GMT  
		Size: 77.7 MB (77712374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6eac237e7649a1d3da0eb2030a0647b180b0e862254a02eb67236119f952fcc`  
		Last Modified: Thu, 22 Sep 2016 18:23:28 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811781c8245935f8f9ff0742c0da6b7e011699914043bd35cdb5b60de65b7184`  
		Last Modified: Thu, 22 Sep 2016 18:23:27 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25d3d885ede93437782b48964fcb254cc93a7aae620fbc9d8237305b0bb5709`  
		Last Modified: Thu, 22 Sep 2016 18:23:25 GMT  
		Size: 10.0 MB (10004224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7a866b4f9041d5b2420c95dcc67f4131392182d200735d68a8823db7dd73c2`  
		Last Modified: Thu, 22 Sep 2016 18:23:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c648bafdeedac08f78e3803de60fa89a16f83486e19d7378eaa4742f6555526`  
		Last Modified: Thu, 22 Sep 2016 18:23:25 GMT  
		Size: 1.6 KB (1570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ee8a9605d9a362622cb4afaf341272b462f3cc13a102430a03afe5bdc3311a`  
		Last Modified: Thu, 22 Sep 2016 18:23:23 GMT  
		Size: 1.6 KB (1574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546022fca340e9db74b2e5b6cdc0ab30cc55c82cafecd2cc99e5bad51455a1e3`  
		Last Modified: Thu, 22 Sep 2016 18:23:24 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre7`

```console
$ docker pull jetty@sha256:0a11c427c30b263d91eef3bb6514390b86ef3672b9e74e3c32fae5823e64d333
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158171588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff76b9a960b8c387eed8046927ad1658d7b5cb2f6c21e15ba2f68c833a940946`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:30:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:30:49 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 16:30:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 16:30:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 20 Sep 2016 16:30:51 GMT
ENV JAVA_VERSION=7u111
# Tue, 20 Sep 2016 16:30:51 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Tue, 20 Sep 2016 16:31:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 19:01:38 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Sep 2016 19:01:38 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Sep 2016 19:01:39 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 19:01:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Sep 2016 19:01:40 GMT
WORKDIR /usr/local/jetty
# Tue, 20 Sep 2016 19:01:40 GMT
ENV JETTY_VERSION=9.2.18.v20160721
# Tue, 20 Sep 2016 19:01:40 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.18.v20160721/jetty-distribution-9.2.18.v20160721.tar.gz
# Tue, 20 Sep 2016 19:01:40 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 20 Sep 2016 19:01:43 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 20 Sep 2016 19:01:43 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 20 Sep 2016 19:01:44 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:44 GMT
WORKDIR /var/lib/jetty
# Tue, 20 Sep 2016 19:01:46 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 20 Sep 2016 19:01:46 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 20 Sep 2016 19:01:47 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:47 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 20 Sep 2016 19:01:48 GMT
EXPOSE 8080/tcp
# Tue, 20 Sep 2016 19:01:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 19:01:48 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87f2f89c161af8dfa0770ee0e44ec93a98d6c15e168d9f05dda67de7276cec1`  
		Last Modified: Tue, 20 Sep 2016 17:51:51 GMT  
		Size: 566.5 KB (566473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818d498b9713add59b4abadeba59d820dc875924913669266c242c29a8b8e1d9`  
		Last Modified: Wed, 21 Sep 2016 22:57:13 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd673cdbe71463679cafe30cfd8fbe8f57ac586f83fa3703e6aca0c608ff1a5`  
		Last Modified: Wed, 21 Sep 2016 22:57:29 GMT  
		Size: 77.7 MB (77712374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6eac237e7649a1d3da0eb2030a0647b180b0e862254a02eb67236119f952fcc`  
		Last Modified: Thu, 22 Sep 2016 18:23:28 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811781c8245935f8f9ff0742c0da6b7e011699914043bd35cdb5b60de65b7184`  
		Last Modified: Thu, 22 Sep 2016 18:23:27 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25d3d885ede93437782b48964fcb254cc93a7aae620fbc9d8237305b0bb5709`  
		Last Modified: Thu, 22 Sep 2016 18:23:25 GMT  
		Size: 10.0 MB (10004224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7a866b4f9041d5b2420c95dcc67f4131392182d200735d68a8823db7dd73c2`  
		Last Modified: Thu, 22 Sep 2016 18:23:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c648bafdeedac08f78e3803de60fa89a16f83486e19d7378eaa4742f6555526`  
		Last Modified: Thu, 22 Sep 2016 18:23:25 GMT  
		Size: 1.6 KB (1570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ee8a9605d9a362622cb4afaf341272b462f3cc13a102430a03afe5bdc3311a`  
		Last Modified: Thu, 22 Sep 2016 18:23:23 GMT  
		Size: 1.6 KB (1574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546022fca340e9db74b2e5b6cdc0ab30cc55c82cafecd2cc99e5bad51455a1e3`  
		Last Modified: Thu, 22 Sep 2016 18:23:24 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre7`

```console
$ docker pull jetty@sha256:0a11c427c30b263d91eef3bb6514390b86ef3672b9e74e3c32fae5823e64d333
```

-	Platforms:
	-	linux; amd64

### `jetty:jre7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158171588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff76b9a960b8c387eed8046927ad1658d7b5cb2f6c21e15ba2f68c833a940946`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:30:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:30:49 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 16:30:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 16:30:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 20 Sep 2016 16:30:51 GMT
ENV JAVA_VERSION=7u111
# Tue, 20 Sep 2016 16:30:51 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Tue, 20 Sep 2016 16:31:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 19:01:38 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 20 Sep 2016 19:01:38 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 20 Sep 2016 19:01:39 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 19:01:39 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 20 Sep 2016 19:01:40 GMT
WORKDIR /usr/local/jetty
# Tue, 20 Sep 2016 19:01:40 GMT
ENV JETTY_VERSION=9.2.18.v20160721
# Tue, 20 Sep 2016 19:01:40 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.18.v20160721/jetty-distribution-9.2.18.v20160721.tar.gz
# Tue, 20 Sep 2016 19:01:40 GMT
ENV JETTY_GPG_KEYS=B59B67FD7904984367F931800818D9D68FB67BAC 	5DE533CB43DAF8BC3E372283E7AE839CD7C58886
# Tue, 20 Sep 2016 19:01:43 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Tue, 20 Sep 2016 19:01:43 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 20 Sep 2016 19:01:44 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:44 GMT
WORKDIR /var/lib/jetty
# Tue, 20 Sep 2016 19:01:46 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Tue, 20 Sep 2016 19:01:46 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 20 Sep 2016 19:01:47 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 20 Sep 2016 19:01:47 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 20 Sep 2016 19:01:48 GMT
EXPOSE 8080/tcp
# Tue, 20 Sep 2016 19:01:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 19:01:48 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87f2f89c161af8dfa0770ee0e44ec93a98d6c15e168d9f05dda67de7276cec1`  
		Last Modified: Tue, 20 Sep 2016 17:51:51 GMT  
		Size: 566.5 KB (566473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818d498b9713add59b4abadeba59d820dc875924913669266c242c29a8b8e1d9`  
		Last Modified: Wed, 21 Sep 2016 22:57:13 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd673cdbe71463679cafe30cfd8fbe8f57ac586f83fa3703e6aca0c608ff1a5`  
		Last Modified: Wed, 21 Sep 2016 22:57:29 GMT  
		Size: 77.7 MB (77712374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6eac237e7649a1d3da0eb2030a0647b180b0e862254a02eb67236119f952fcc`  
		Last Modified: Thu, 22 Sep 2016 18:23:28 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811781c8245935f8f9ff0742c0da6b7e011699914043bd35cdb5b60de65b7184`  
		Last Modified: Thu, 22 Sep 2016 18:23:27 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25d3d885ede93437782b48964fcb254cc93a7aae620fbc9d8237305b0bb5709`  
		Last Modified: Thu, 22 Sep 2016 18:23:25 GMT  
		Size: 10.0 MB (10004224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7a866b4f9041d5b2420c95dcc67f4131392182d200735d68a8823db7dd73c2`  
		Last Modified: Thu, 22 Sep 2016 18:23:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c648bafdeedac08f78e3803de60fa89a16f83486e19d7378eaa4742f6555526`  
		Last Modified: Thu, 22 Sep 2016 18:23:25 GMT  
		Size: 1.6 KB (1570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ee8a9605d9a362622cb4afaf341272b462f3cc13a102430a03afe5bdc3311a`  
		Last Modified: Thu, 22 Sep 2016 18:23:23 GMT  
		Size: 1.6 KB (1574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546022fca340e9db74b2e5b6cdc0ab30cc55c82cafecd2cc99e5bad51455a1e3`  
		Last Modified: Thu, 22 Sep 2016 18:23:24 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
