<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jetty`

-	[`jetty:9.4.2`](#jetty942)
-	[`jetty:9.4`](#jetty94)
-	[`jetty:9`](#jetty9)
-	[`jetty:9.4.2-jre8`](#jetty942-jre8)
-	[`jetty:9.4-jre8`](#jetty94-jre8)
-	[`jetty:9-jre8`](#jetty9-jre8)
-	[`jetty:latest`](#jettylatest)
-	[`jetty:jre8`](#jettyjre8)
-	[`jetty:9.4.2-alpine`](#jetty942-alpine)
-	[`jetty:9.4-alpine`](#jetty94-alpine)
-	[`jetty:9-alpine`](#jetty9-alpine)
-	[`jetty:9.4.2-jre8-alpine`](#jetty942-jre8-alpine)
-	[`jetty:9.4-jre8-alpine`](#jetty94-jre8-alpine)
-	[`jetty:9-jre8-alpine`](#jetty9-jre8-alpine)
-	[`jetty:alpine`](#jettyalpine)
-	[`jetty:jre8-alpine`](#jettyjre8-alpine)
-	[`jetty:9.3.16`](#jetty9316)
-	[`jetty:9.3`](#jetty93)
-	[`jetty:9.3.16-jre8`](#jetty9316-jre8)
-	[`jetty:9.3-jre8`](#jetty93-jre8)
-	[`jetty:9.3.16-alpine`](#jetty9316-alpine)
-	[`jetty:9.3-alpine`](#jetty93-alpine)
-	[`jetty:9.3.16-jre8-alpine`](#jetty9316-jre8-alpine)
-	[`jetty:9.3-jre8-alpine`](#jetty93-jre8-alpine)
-	[`jetty:9.2.21`](#jetty9221)
-	[`jetty:9.2`](#jetty92)
-	[`jetty:9.2.21-jre8`](#jetty9221-jre8)
-	[`jetty:9.2-jre8`](#jetty92-jre8)
-	[`jetty:9.2.21-jre7`](#jetty9221-jre7)
-	[`jetty:9.2-jre7`](#jetty92-jre7)
-	[`jetty:9-jre7`](#jetty9-jre7)
-	[`jetty:jre7`](#jettyjre7)

## `jetty:9.4.2`

```console
$ docker pull jetty@sha256:0e2c11dde5cc610038cf7c1aa8a3d1f0007578e4f5fc8d101db500110cc45aa6
```

-	Platforms:
	-	linux; amd64

### `jetty:9.4.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132302720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6894329a9dd3b224600599969da2aabd9bd705c15099f1d104a381ddfca8fa5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 07 Feb 2017 20:04:19 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:04:20 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:04:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:01:52 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Feb 2017 21:01:54 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Feb 2017 21:01:55 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:19:40 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Mon, 27 Feb 2017 17:19:41 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Mon, 27 Feb 2017 17:19:41 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:19:47 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:19:48 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:19:49 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:19:49 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:19:55 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:19:55 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:19:56 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:19:57 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:19:58 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:19:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:19:59 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d33418bd6dfef0afdb2cd8bdefaf5454f79d8c30a0500c68851211b5454483`  
		Last Modified: Tue, 07 Feb 2017 20:14:15 GMT  
		Size: 53.5 MB (53518255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e10cce36e52ebab8c1bb53f163e26db55b99273eda92c3f169d1f6cf13d6304`  
		Last Modified: Tue, 07 Feb 2017 20:14:03 GMT  
		Size: 289.0 KB (289036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e9fcec11071cd2565ba05310669615a65a19882a25593a04c86b06e02928c7`  
		Last Modified: Tue, 07 Feb 2017 21:03:00 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13af213a4b519a023b4511924eaace59bdb65d7c7ec19e3698205bea453bacdc`  
		Last Modified: Tue, 07 Feb 2017 21:02:59 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb2f172d5e69beff9fedec8076e91b79a0e66dc6deeabb1253cb223ffea836b`  
		Last Modified: Mon, 27 Feb 2017 17:21:54 GMT  
		Size: 8.0 MB (8026349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f78f9ac99cf497553169a4d445158092ffae3b4b334124329566af8b726f2b`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d001a130f3e44350ba38f9d65fa425b04e32f1e2ccd3299329f9cc905177543`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 2.2 KB (2240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b398245b8a93f6e7023814665a95a397411e9eac871093a0d2a22f9be892224`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43698d2d576267c27764919000abc62965d298912b8e8764c1f1d30e61381128`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4`

```console
$ docker pull jetty@sha256:0e2c11dde5cc610038cf7c1aa8a3d1f0007578e4f5fc8d101db500110cc45aa6
```

-	Platforms:
	-	linux; amd64

### `jetty:9.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132302720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6894329a9dd3b224600599969da2aabd9bd705c15099f1d104a381ddfca8fa5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 07 Feb 2017 20:04:19 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:04:20 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:04:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:01:52 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Feb 2017 21:01:54 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Feb 2017 21:01:55 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:19:40 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Mon, 27 Feb 2017 17:19:41 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Mon, 27 Feb 2017 17:19:41 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:19:47 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:19:48 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:19:49 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:19:49 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:19:55 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:19:55 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:19:56 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:19:57 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:19:58 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:19:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:19:59 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d33418bd6dfef0afdb2cd8bdefaf5454f79d8c30a0500c68851211b5454483`  
		Last Modified: Tue, 07 Feb 2017 20:14:15 GMT  
		Size: 53.5 MB (53518255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e10cce36e52ebab8c1bb53f163e26db55b99273eda92c3f169d1f6cf13d6304`  
		Last Modified: Tue, 07 Feb 2017 20:14:03 GMT  
		Size: 289.0 KB (289036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e9fcec11071cd2565ba05310669615a65a19882a25593a04c86b06e02928c7`  
		Last Modified: Tue, 07 Feb 2017 21:03:00 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13af213a4b519a023b4511924eaace59bdb65d7c7ec19e3698205bea453bacdc`  
		Last Modified: Tue, 07 Feb 2017 21:02:59 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb2f172d5e69beff9fedec8076e91b79a0e66dc6deeabb1253cb223ffea836b`  
		Last Modified: Mon, 27 Feb 2017 17:21:54 GMT  
		Size: 8.0 MB (8026349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f78f9ac99cf497553169a4d445158092ffae3b4b334124329566af8b726f2b`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d001a130f3e44350ba38f9d65fa425b04e32f1e2ccd3299329f9cc905177543`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 2.2 KB (2240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b398245b8a93f6e7023814665a95a397411e9eac871093a0d2a22f9be892224`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43698d2d576267c27764919000abc62965d298912b8e8764c1f1d30e61381128`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9`

```console
$ docker pull jetty@sha256:0e2c11dde5cc610038cf7c1aa8a3d1f0007578e4f5fc8d101db500110cc45aa6
```

-	Platforms:
	-	linux; amd64

### `jetty:9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132302720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6894329a9dd3b224600599969da2aabd9bd705c15099f1d104a381ddfca8fa5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 07 Feb 2017 20:04:19 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:04:20 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:04:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:01:52 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Feb 2017 21:01:54 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Feb 2017 21:01:55 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:19:40 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Mon, 27 Feb 2017 17:19:41 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Mon, 27 Feb 2017 17:19:41 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:19:47 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:19:48 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:19:49 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:19:49 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:19:55 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:19:55 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:19:56 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:19:57 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:19:58 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:19:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:19:59 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d33418bd6dfef0afdb2cd8bdefaf5454f79d8c30a0500c68851211b5454483`  
		Last Modified: Tue, 07 Feb 2017 20:14:15 GMT  
		Size: 53.5 MB (53518255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e10cce36e52ebab8c1bb53f163e26db55b99273eda92c3f169d1f6cf13d6304`  
		Last Modified: Tue, 07 Feb 2017 20:14:03 GMT  
		Size: 289.0 KB (289036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e9fcec11071cd2565ba05310669615a65a19882a25593a04c86b06e02928c7`  
		Last Modified: Tue, 07 Feb 2017 21:03:00 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13af213a4b519a023b4511924eaace59bdb65d7c7ec19e3698205bea453bacdc`  
		Last Modified: Tue, 07 Feb 2017 21:02:59 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb2f172d5e69beff9fedec8076e91b79a0e66dc6deeabb1253cb223ffea836b`  
		Last Modified: Mon, 27 Feb 2017 17:21:54 GMT  
		Size: 8.0 MB (8026349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f78f9ac99cf497553169a4d445158092ffae3b4b334124329566af8b726f2b`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d001a130f3e44350ba38f9d65fa425b04e32f1e2ccd3299329f9cc905177543`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 2.2 KB (2240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b398245b8a93f6e7023814665a95a397411e9eac871093a0d2a22f9be892224`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43698d2d576267c27764919000abc62965d298912b8e8764c1f1d30e61381128`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4.2-jre8`

```console
$ docker pull jetty@sha256:0e2c11dde5cc610038cf7c1aa8a3d1f0007578e4f5fc8d101db500110cc45aa6
```

-	Platforms:
	-	linux; amd64

### `jetty:9.4.2-jre8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132302720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6894329a9dd3b224600599969da2aabd9bd705c15099f1d104a381ddfca8fa5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 07 Feb 2017 20:04:19 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:04:20 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:04:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:01:52 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Feb 2017 21:01:54 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Feb 2017 21:01:55 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:19:40 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Mon, 27 Feb 2017 17:19:41 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Mon, 27 Feb 2017 17:19:41 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:19:47 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:19:48 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:19:49 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:19:49 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:19:55 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:19:55 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:19:56 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:19:57 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:19:58 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:19:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:19:59 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d33418bd6dfef0afdb2cd8bdefaf5454f79d8c30a0500c68851211b5454483`  
		Last Modified: Tue, 07 Feb 2017 20:14:15 GMT  
		Size: 53.5 MB (53518255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e10cce36e52ebab8c1bb53f163e26db55b99273eda92c3f169d1f6cf13d6304`  
		Last Modified: Tue, 07 Feb 2017 20:14:03 GMT  
		Size: 289.0 KB (289036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e9fcec11071cd2565ba05310669615a65a19882a25593a04c86b06e02928c7`  
		Last Modified: Tue, 07 Feb 2017 21:03:00 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13af213a4b519a023b4511924eaace59bdb65d7c7ec19e3698205bea453bacdc`  
		Last Modified: Tue, 07 Feb 2017 21:02:59 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb2f172d5e69beff9fedec8076e91b79a0e66dc6deeabb1253cb223ffea836b`  
		Last Modified: Mon, 27 Feb 2017 17:21:54 GMT  
		Size: 8.0 MB (8026349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f78f9ac99cf497553169a4d445158092ffae3b4b334124329566af8b726f2b`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d001a130f3e44350ba38f9d65fa425b04e32f1e2ccd3299329f9cc905177543`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 2.2 KB (2240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b398245b8a93f6e7023814665a95a397411e9eac871093a0d2a22f9be892224`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43698d2d576267c27764919000abc62965d298912b8e8764c1f1d30e61381128`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4-jre8`

```console
$ docker pull jetty@sha256:0e2c11dde5cc610038cf7c1aa8a3d1f0007578e4f5fc8d101db500110cc45aa6
```

-	Platforms:
	-	linux; amd64

### `jetty:9.4-jre8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132302720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6894329a9dd3b224600599969da2aabd9bd705c15099f1d104a381ddfca8fa5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 07 Feb 2017 20:04:19 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:04:20 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:04:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:01:52 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Feb 2017 21:01:54 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Feb 2017 21:01:55 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:19:40 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Mon, 27 Feb 2017 17:19:41 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Mon, 27 Feb 2017 17:19:41 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:19:47 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:19:48 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:19:49 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:19:49 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:19:55 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:19:55 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:19:56 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:19:57 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:19:58 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:19:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:19:59 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d33418bd6dfef0afdb2cd8bdefaf5454f79d8c30a0500c68851211b5454483`  
		Last Modified: Tue, 07 Feb 2017 20:14:15 GMT  
		Size: 53.5 MB (53518255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e10cce36e52ebab8c1bb53f163e26db55b99273eda92c3f169d1f6cf13d6304`  
		Last Modified: Tue, 07 Feb 2017 20:14:03 GMT  
		Size: 289.0 KB (289036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e9fcec11071cd2565ba05310669615a65a19882a25593a04c86b06e02928c7`  
		Last Modified: Tue, 07 Feb 2017 21:03:00 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13af213a4b519a023b4511924eaace59bdb65d7c7ec19e3698205bea453bacdc`  
		Last Modified: Tue, 07 Feb 2017 21:02:59 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb2f172d5e69beff9fedec8076e91b79a0e66dc6deeabb1253cb223ffea836b`  
		Last Modified: Mon, 27 Feb 2017 17:21:54 GMT  
		Size: 8.0 MB (8026349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f78f9ac99cf497553169a4d445158092ffae3b4b334124329566af8b726f2b`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d001a130f3e44350ba38f9d65fa425b04e32f1e2ccd3299329f9cc905177543`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 2.2 KB (2240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b398245b8a93f6e7023814665a95a397411e9eac871093a0d2a22f9be892224`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43698d2d576267c27764919000abc62965d298912b8e8764c1f1d30e61381128`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre8`

```console
$ docker pull jetty@sha256:0e2c11dde5cc610038cf7c1aa8a3d1f0007578e4f5fc8d101db500110cc45aa6
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132302720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6894329a9dd3b224600599969da2aabd9bd705c15099f1d104a381ddfca8fa5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 07 Feb 2017 20:04:19 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:04:20 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:04:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:01:52 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Feb 2017 21:01:54 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Feb 2017 21:01:55 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:19:40 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Mon, 27 Feb 2017 17:19:41 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Mon, 27 Feb 2017 17:19:41 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:19:47 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:19:48 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:19:49 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:19:49 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:19:55 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:19:55 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:19:56 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:19:57 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:19:58 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:19:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:19:59 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d33418bd6dfef0afdb2cd8bdefaf5454f79d8c30a0500c68851211b5454483`  
		Last Modified: Tue, 07 Feb 2017 20:14:15 GMT  
		Size: 53.5 MB (53518255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e10cce36e52ebab8c1bb53f163e26db55b99273eda92c3f169d1f6cf13d6304`  
		Last Modified: Tue, 07 Feb 2017 20:14:03 GMT  
		Size: 289.0 KB (289036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e9fcec11071cd2565ba05310669615a65a19882a25593a04c86b06e02928c7`  
		Last Modified: Tue, 07 Feb 2017 21:03:00 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13af213a4b519a023b4511924eaace59bdb65d7c7ec19e3698205bea453bacdc`  
		Last Modified: Tue, 07 Feb 2017 21:02:59 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb2f172d5e69beff9fedec8076e91b79a0e66dc6deeabb1253cb223ffea836b`  
		Last Modified: Mon, 27 Feb 2017 17:21:54 GMT  
		Size: 8.0 MB (8026349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f78f9ac99cf497553169a4d445158092ffae3b4b334124329566af8b726f2b`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d001a130f3e44350ba38f9d65fa425b04e32f1e2ccd3299329f9cc905177543`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 2.2 KB (2240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b398245b8a93f6e7023814665a95a397411e9eac871093a0d2a22f9be892224`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43698d2d576267c27764919000abc62965d298912b8e8764c1f1d30e61381128`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:latest`

```console
$ docker pull jetty@sha256:0e2c11dde5cc610038cf7c1aa8a3d1f0007578e4f5fc8d101db500110cc45aa6
```

-	Platforms:
	-	linux; amd64

### `jetty:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132302720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6894329a9dd3b224600599969da2aabd9bd705c15099f1d104a381ddfca8fa5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 07 Feb 2017 20:04:19 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:04:20 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:04:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:01:52 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Feb 2017 21:01:54 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Feb 2017 21:01:55 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:19:40 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Mon, 27 Feb 2017 17:19:41 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Mon, 27 Feb 2017 17:19:41 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:19:47 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:19:48 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:19:49 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:19:49 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:19:55 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:19:55 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:19:56 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:19:57 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:19:58 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:19:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:19:59 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d33418bd6dfef0afdb2cd8bdefaf5454f79d8c30a0500c68851211b5454483`  
		Last Modified: Tue, 07 Feb 2017 20:14:15 GMT  
		Size: 53.5 MB (53518255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e10cce36e52ebab8c1bb53f163e26db55b99273eda92c3f169d1f6cf13d6304`  
		Last Modified: Tue, 07 Feb 2017 20:14:03 GMT  
		Size: 289.0 KB (289036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e9fcec11071cd2565ba05310669615a65a19882a25593a04c86b06e02928c7`  
		Last Modified: Tue, 07 Feb 2017 21:03:00 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13af213a4b519a023b4511924eaace59bdb65d7c7ec19e3698205bea453bacdc`  
		Last Modified: Tue, 07 Feb 2017 21:02:59 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb2f172d5e69beff9fedec8076e91b79a0e66dc6deeabb1253cb223ffea836b`  
		Last Modified: Mon, 27 Feb 2017 17:21:54 GMT  
		Size: 8.0 MB (8026349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f78f9ac99cf497553169a4d445158092ffae3b4b334124329566af8b726f2b`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d001a130f3e44350ba38f9d65fa425b04e32f1e2ccd3299329f9cc905177543`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 2.2 KB (2240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b398245b8a93f6e7023814665a95a397411e9eac871093a0d2a22f9be892224`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43698d2d576267c27764919000abc62965d298912b8e8764c1f1d30e61381128`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre8`

```console
$ docker pull jetty@sha256:0e2c11dde5cc610038cf7c1aa8a3d1f0007578e4f5fc8d101db500110cc45aa6
```

-	Platforms:
	-	linux; amd64

### `jetty:jre8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132302720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6894329a9dd3b224600599969da2aabd9bd705c15099f1d104a381ddfca8fa5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 07 Feb 2017 20:04:19 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:04:20 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:04:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:01:52 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Feb 2017 21:01:54 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Feb 2017 21:01:55 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:19:40 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Mon, 27 Feb 2017 17:19:41 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Mon, 27 Feb 2017 17:19:41 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:19:47 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:19:48 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:19:49 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:19:49 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:19:55 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:19:55 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:19:56 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:19:57 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:19:58 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:19:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:19:59 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d33418bd6dfef0afdb2cd8bdefaf5454f79d8c30a0500c68851211b5454483`  
		Last Modified: Tue, 07 Feb 2017 20:14:15 GMT  
		Size: 53.5 MB (53518255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e10cce36e52ebab8c1bb53f163e26db55b99273eda92c3f169d1f6cf13d6304`  
		Last Modified: Tue, 07 Feb 2017 20:14:03 GMT  
		Size: 289.0 KB (289036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e9fcec11071cd2565ba05310669615a65a19882a25593a04c86b06e02928c7`  
		Last Modified: Tue, 07 Feb 2017 21:03:00 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13af213a4b519a023b4511924eaace59bdb65d7c7ec19e3698205bea453bacdc`  
		Last Modified: Tue, 07 Feb 2017 21:02:59 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb2f172d5e69beff9fedec8076e91b79a0e66dc6deeabb1253cb223ffea836b`  
		Last Modified: Mon, 27 Feb 2017 17:21:54 GMT  
		Size: 8.0 MB (8026349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f78f9ac99cf497553169a4d445158092ffae3b4b334124329566af8b726f2b`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d001a130f3e44350ba38f9d65fa425b04e32f1e2ccd3299329f9cc905177543`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 2.2 KB (2240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b398245b8a93f6e7023814665a95a397411e9eac871093a0d2a22f9be892224`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43698d2d576267c27764919000abc62965d298912b8e8764c1f1d30e61381128`  
		Last Modified: Mon, 27 Feb 2017 17:21:53 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4.2-alpine`

```console
$ docker pull jetty@sha256:c7e2351d5c32dd14386da290c6ea60b287b044cd2d0db0004100e6d49944a180
```

-	Platforms:
	-	linux; amd64

### `jetty:9.4.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50041145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c935e980e26709025c87914e033f0a25ccafe283693217a60c781ba1483f05b1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:16:14 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 27 Dec 2016 22:16:15 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 27 Dec 2016 22:16:15 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 22:16:16 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 27 Dec 2016 22:16:17 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:20:00 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Mon, 27 Feb 2017 17:20:01 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Mon, 27 Feb 2017 17:20:01 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:20:10 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:10 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:20:11 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:20:12 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:20:17 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:18 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:20:19 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:20:19 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:20:20 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:20:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:20:21 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16a335b6c55a25183088fc9efd3b012626d93c19d1f9985d0532afcdaac59c3`  
		Last Modified: Tue, 27 Dec 2016 22:45:14 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca846774f35a4e5ee9b3d461a5132a52ad21587a65966201e5dbce9867d8ee31`  
		Last Modified: Tue, 27 Dec 2016 22:45:11 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f5f05412c4eca09801777c53e9eb2f87f8ce97886b02add2b7ea422be4a40e`  
		Last Modified: Mon, 27 Feb 2017 17:24:25 GMT  
		Size: 8.1 MB (8053311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:236bcdcca65cef905ce4fc1494e034ea5bc50549afa77f592de30b2ac75801fa`  
		Last Modified: Mon, 27 Feb 2017 17:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1caddca80d44699de703836d0ef2df65201b675796bbc0f7586d5d2b6c24a8b6`  
		Last Modified: Mon, 27 Feb 2017 17:24:23 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949998fdefe5b757135be8dd5b20d49f1c578bf9d45cc82844be8025bcd420e4`  
		Last Modified: Mon, 27 Feb 2017 17:24:24 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb77774f0e656a2e8b3d60abc29af2674734ab95134b3233de85565f9c15935`  
		Last Modified: Mon, 27 Feb 2017 17:24:24 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4-alpine`

```console
$ docker pull jetty@sha256:c7e2351d5c32dd14386da290c6ea60b287b044cd2d0db0004100e6d49944a180
```

-	Platforms:
	-	linux; amd64

### `jetty:9.4-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50041145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c935e980e26709025c87914e033f0a25ccafe283693217a60c781ba1483f05b1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:16:14 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 27 Dec 2016 22:16:15 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 27 Dec 2016 22:16:15 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 22:16:16 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 27 Dec 2016 22:16:17 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:20:00 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Mon, 27 Feb 2017 17:20:01 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Mon, 27 Feb 2017 17:20:01 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:20:10 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:10 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:20:11 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:20:12 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:20:17 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:18 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:20:19 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:20:19 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:20:20 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:20:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:20:21 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16a335b6c55a25183088fc9efd3b012626d93c19d1f9985d0532afcdaac59c3`  
		Last Modified: Tue, 27 Dec 2016 22:45:14 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca846774f35a4e5ee9b3d461a5132a52ad21587a65966201e5dbce9867d8ee31`  
		Last Modified: Tue, 27 Dec 2016 22:45:11 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f5f05412c4eca09801777c53e9eb2f87f8ce97886b02add2b7ea422be4a40e`  
		Last Modified: Mon, 27 Feb 2017 17:24:25 GMT  
		Size: 8.1 MB (8053311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:236bcdcca65cef905ce4fc1494e034ea5bc50549afa77f592de30b2ac75801fa`  
		Last Modified: Mon, 27 Feb 2017 17:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1caddca80d44699de703836d0ef2df65201b675796bbc0f7586d5d2b6c24a8b6`  
		Last Modified: Mon, 27 Feb 2017 17:24:23 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949998fdefe5b757135be8dd5b20d49f1c578bf9d45cc82844be8025bcd420e4`  
		Last Modified: Mon, 27 Feb 2017 17:24:24 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb77774f0e656a2e8b3d60abc29af2674734ab95134b3233de85565f9c15935`  
		Last Modified: Mon, 27 Feb 2017 17:24:24 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-alpine`

```console
$ docker pull jetty@sha256:c7e2351d5c32dd14386da290c6ea60b287b044cd2d0db0004100e6d49944a180
```

-	Platforms:
	-	linux; amd64

### `jetty:9-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50041145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c935e980e26709025c87914e033f0a25ccafe283693217a60c781ba1483f05b1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:16:14 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 27 Dec 2016 22:16:15 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 27 Dec 2016 22:16:15 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 22:16:16 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 27 Dec 2016 22:16:17 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:20:00 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Mon, 27 Feb 2017 17:20:01 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Mon, 27 Feb 2017 17:20:01 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:20:10 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:10 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:20:11 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:20:12 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:20:17 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:18 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:20:19 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:20:19 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:20:20 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:20:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:20:21 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16a335b6c55a25183088fc9efd3b012626d93c19d1f9985d0532afcdaac59c3`  
		Last Modified: Tue, 27 Dec 2016 22:45:14 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca846774f35a4e5ee9b3d461a5132a52ad21587a65966201e5dbce9867d8ee31`  
		Last Modified: Tue, 27 Dec 2016 22:45:11 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f5f05412c4eca09801777c53e9eb2f87f8ce97886b02add2b7ea422be4a40e`  
		Last Modified: Mon, 27 Feb 2017 17:24:25 GMT  
		Size: 8.1 MB (8053311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:236bcdcca65cef905ce4fc1494e034ea5bc50549afa77f592de30b2ac75801fa`  
		Last Modified: Mon, 27 Feb 2017 17:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1caddca80d44699de703836d0ef2df65201b675796bbc0f7586d5d2b6c24a8b6`  
		Last Modified: Mon, 27 Feb 2017 17:24:23 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949998fdefe5b757135be8dd5b20d49f1c578bf9d45cc82844be8025bcd420e4`  
		Last Modified: Mon, 27 Feb 2017 17:24:24 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb77774f0e656a2e8b3d60abc29af2674734ab95134b3233de85565f9c15935`  
		Last Modified: Mon, 27 Feb 2017 17:24:24 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4.2-jre8-alpine`

```console
$ docker pull jetty@sha256:c7e2351d5c32dd14386da290c6ea60b287b044cd2d0db0004100e6d49944a180
```

-	Platforms:
	-	linux; amd64

### `jetty:9.4.2-jre8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50041145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c935e980e26709025c87914e033f0a25ccafe283693217a60c781ba1483f05b1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:16:14 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 27 Dec 2016 22:16:15 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 27 Dec 2016 22:16:15 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 22:16:16 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 27 Dec 2016 22:16:17 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:20:00 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Mon, 27 Feb 2017 17:20:01 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Mon, 27 Feb 2017 17:20:01 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:20:10 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:10 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:20:11 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:20:12 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:20:17 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:18 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:20:19 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:20:19 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:20:20 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:20:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:20:21 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16a335b6c55a25183088fc9efd3b012626d93c19d1f9985d0532afcdaac59c3`  
		Last Modified: Tue, 27 Dec 2016 22:45:14 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca846774f35a4e5ee9b3d461a5132a52ad21587a65966201e5dbce9867d8ee31`  
		Last Modified: Tue, 27 Dec 2016 22:45:11 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f5f05412c4eca09801777c53e9eb2f87f8ce97886b02add2b7ea422be4a40e`  
		Last Modified: Mon, 27 Feb 2017 17:24:25 GMT  
		Size: 8.1 MB (8053311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:236bcdcca65cef905ce4fc1494e034ea5bc50549afa77f592de30b2ac75801fa`  
		Last Modified: Mon, 27 Feb 2017 17:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1caddca80d44699de703836d0ef2df65201b675796bbc0f7586d5d2b6c24a8b6`  
		Last Modified: Mon, 27 Feb 2017 17:24:23 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949998fdefe5b757135be8dd5b20d49f1c578bf9d45cc82844be8025bcd420e4`  
		Last Modified: Mon, 27 Feb 2017 17:24:24 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb77774f0e656a2e8b3d60abc29af2674734ab95134b3233de85565f9c15935`  
		Last Modified: Mon, 27 Feb 2017 17:24:24 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4-jre8-alpine`

```console
$ docker pull jetty@sha256:c7e2351d5c32dd14386da290c6ea60b287b044cd2d0db0004100e6d49944a180
```

-	Platforms:
	-	linux; amd64

### `jetty:9.4-jre8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50041145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c935e980e26709025c87914e033f0a25ccafe283693217a60c781ba1483f05b1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:16:14 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 27 Dec 2016 22:16:15 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 27 Dec 2016 22:16:15 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 22:16:16 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 27 Dec 2016 22:16:17 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:20:00 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Mon, 27 Feb 2017 17:20:01 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Mon, 27 Feb 2017 17:20:01 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:20:10 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:10 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:20:11 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:20:12 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:20:17 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:18 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:20:19 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:20:19 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:20:20 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:20:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:20:21 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16a335b6c55a25183088fc9efd3b012626d93c19d1f9985d0532afcdaac59c3`  
		Last Modified: Tue, 27 Dec 2016 22:45:14 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca846774f35a4e5ee9b3d461a5132a52ad21587a65966201e5dbce9867d8ee31`  
		Last Modified: Tue, 27 Dec 2016 22:45:11 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f5f05412c4eca09801777c53e9eb2f87f8ce97886b02add2b7ea422be4a40e`  
		Last Modified: Mon, 27 Feb 2017 17:24:25 GMT  
		Size: 8.1 MB (8053311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:236bcdcca65cef905ce4fc1494e034ea5bc50549afa77f592de30b2ac75801fa`  
		Last Modified: Mon, 27 Feb 2017 17:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1caddca80d44699de703836d0ef2df65201b675796bbc0f7586d5d2b6c24a8b6`  
		Last Modified: Mon, 27 Feb 2017 17:24:23 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949998fdefe5b757135be8dd5b20d49f1c578bf9d45cc82844be8025bcd420e4`  
		Last Modified: Mon, 27 Feb 2017 17:24:24 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb77774f0e656a2e8b3d60abc29af2674734ab95134b3233de85565f9c15935`  
		Last Modified: Mon, 27 Feb 2017 17:24:24 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre8-alpine`

```console
$ docker pull jetty@sha256:c7e2351d5c32dd14386da290c6ea60b287b044cd2d0db0004100e6d49944a180
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50041145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c935e980e26709025c87914e033f0a25ccafe283693217a60c781ba1483f05b1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:16:14 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 27 Dec 2016 22:16:15 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 27 Dec 2016 22:16:15 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 22:16:16 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 27 Dec 2016 22:16:17 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:20:00 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Mon, 27 Feb 2017 17:20:01 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Mon, 27 Feb 2017 17:20:01 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:20:10 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:10 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:20:11 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:20:12 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:20:17 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:18 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:20:19 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:20:19 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:20:20 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:20:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:20:21 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16a335b6c55a25183088fc9efd3b012626d93c19d1f9985d0532afcdaac59c3`  
		Last Modified: Tue, 27 Dec 2016 22:45:14 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca846774f35a4e5ee9b3d461a5132a52ad21587a65966201e5dbce9867d8ee31`  
		Last Modified: Tue, 27 Dec 2016 22:45:11 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f5f05412c4eca09801777c53e9eb2f87f8ce97886b02add2b7ea422be4a40e`  
		Last Modified: Mon, 27 Feb 2017 17:24:25 GMT  
		Size: 8.1 MB (8053311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:236bcdcca65cef905ce4fc1494e034ea5bc50549afa77f592de30b2ac75801fa`  
		Last Modified: Mon, 27 Feb 2017 17:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1caddca80d44699de703836d0ef2df65201b675796bbc0f7586d5d2b6c24a8b6`  
		Last Modified: Mon, 27 Feb 2017 17:24:23 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949998fdefe5b757135be8dd5b20d49f1c578bf9d45cc82844be8025bcd420e4`  
		Last Modified: Mon, 27 Feb 2017 17:24:24 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb77774f0e656a2e8b3d60abc29af2674734ab95134b3233de85565f9c15935`  
		Last Modified: Mon, 27 Feb 2017 17:24:24 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:alpine`

```console
$ docker pull jetty@sha256:c7e2351d5c32dd14386da290c6ea60b287b044cd2d0db0004100e6d49944a180
```

-	Platforms:
	-	linux; amd64

### `jetty:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50041145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c935e980e26709025c87914e033f0a25ccafe283693217a60c781ba1483f05b1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:16:14 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 27 Dec 2016 22:16:15 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 27 Dec 2016 22:16:15 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 22:16:16 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 27 Dec 2016 22:16:17 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:20:00 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Mon, 27 Feb 2017 17:20:01 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Mon, 27 Feb 2017 17:20:01 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:20:10 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:10 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:20:11 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:20:12 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:20:17 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:18 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:20:19 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:20:19 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:20:20 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:20:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:20:21 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16a335b6c55a25183088fc9efd3b012626d93c19d1f9985d0532afcdaac59c3`  
		Last Modified: Tue, 27 Dec 2016 22:45:14 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca846774f35a4e5ee9b3d461a5132a52ad21587a65966201e5dbce9867d8ee31`  
		Last Modified: Tue, 27 Dec 2016 22:45:11 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f5f05412c4eca09801777c53e9eb2f87f8ce97886b02add2b7ea422be4a40e`  
		Last Modified: Mon, 27 Feb 2017 17:24:25 GMT  
		Size: 8.1 MB (8053311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:236bcdcca65cef905ce4fc1494e034ea5bc50549afa77f592de30b2ac75801fa`  
		Last Modified: Mon, 27 Feb 2017 17:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1caddca80d44699de703836d0ef2df65201b675796bbc0f7586d5d2b6c24a8b6`  
		Last Modified: Mon, 27 Feb 2017 17:24:23 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949998fdefe5b757135be8dd5b20d49f1c578bf9d45cc82844be8025bcd420e4`  
		Last Modified: Mon, 27 Feb 2017 17:24:24 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb77774f0e656a2e8b3d60abc29af2674734ab95134b3233de85565f9c15935`  
		Last Modified: Mon, 27 Feb 2017 17:24:24 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre8-alpine`

```console
$ docker pull jetty@sha256:c7e2351d5c32dd14386da290c6ea60b287b044cd2d0db0004100e6d49944a180
```

-	Platforms:
	-	linux; amd64

### `jetty:jre8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50041145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c935e980e26709025c87914e033f0a25ccafe283693217a60c781ba1483f05b1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:16:14 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 27 Dec 2016 22:16:15 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 27 Dec 2016 22:16:15 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 22:16:16 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 27 Dec 2016 22:16:17 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:20:00 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Mon, 27 Feb 2017 17:20:01 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Mon, 27 Feb 2017 17:20:01 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:20:10 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:10 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:20:11 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:20:12 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:20:17 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:18 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:20:19 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:20:19 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:20:20 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:20:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:20:21 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16a335b6c55a25183088fc9efd3b012626d93c19d1f9985d0532afcdaac59c3`  
		Last Modified: Tue, 27 Dec 2016 22:45:14 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca846774f35a4e5ee9b3d461a5132a52ad21587a65966201e5dbce9867d8ee31`  
		Last Modified: Tue, 27 Dec 2016 22:45:11 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f5f05412c4eca09801777c53e9eb2f87f8ce97886b02add2b7ea422be4a40e`  
		Last Modified: Mon, 27 Feb 2017 17:24:25 GMT  
		Size: 8.1 MB (8053311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:236bcdcca65cef905ce4fc1494e034ea5bc50549afa77f592de30b2ac75801fa`  
		Last Modified: Mon, 27 Feb 2017 17:24:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1caddca80d44699de703836d0ef2df65201b675796bbc0f7586d5d2b6c24a8b6`  
		Last Modified: Mon, 27 Feb 2017 17:24:23 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949998fdefe5b757135be8dd5b20d49f1c578bf9d45cc82844be8025bcd420e4`  
		Last Modified: Mon, 27 Feb 2017 17:24:24 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb77774f0e656a2e8b3d60abc29af2674734ab95134b3233de85565f9c15935`  
		Last Modified: Mon, 27 Feb 2017 17:24:24 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.16`

```console
$ docker pull jetty@sha256:589f9117081a7f99f44b08d6efac36a49fd3c8bbeecebeb7dacb04eb6491acc1
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.16` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132284009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4465ac5be3ee74f33c1194d3fa8654bf6049d59b15818599399dceff1a1309ae`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 07 Feb 2017 20:04:19 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:04:20 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:04:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:01:52 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Feb 2017 21:01:54 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Feb 2017 21:01:55 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:20:22 GMT
ENV JETTY_VERSION=9.3.16.v20170120
# Mon, 27 Feb 2017 17:20:23 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.16.v20170120/jetty-distribution-9.3.16.v20170120.tar.gz
# Mon, 27 Feb 2017 17:20:23 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:20:29 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:29 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:20:30 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:20:31 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:20:33 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:33 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:20:34 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:20:35 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:20:36 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:20:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:20:37 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d33418bd6dfef0afdb2cd8bdefaf5454f79d8c30a0500c68851211b5454483`  
		Last Modified: Tue, 07 Feb 2017 20:14:15 GMT  
		Size: 53.5 MB (53518255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e10cce36e52ebab8c1bb53f163e26db55b99273eda92c3f169d1f6cf13d6304`  
		Last Modified: Tue, 07 Feb 2017 20:14:03 GMT  
		Size: 289.0 KB (289036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e9fcec11071cd2565ba05310669615a65a19882a25593a04c86b06e02928c7`  
		Last Modified: Tue, 07 Feb 2017 21:03:00 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13af213a4b519a023b4511924eaace59bdb65d7c7ec19e3698205bea453bacdc`  
		Last Modified: Tue, 07 Feb 2017 21:02:59 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f59c51342d665e216d1e92cda25d0d30c8c570821056226da893cdcd03d5bb`  
		Last Modified: Mon, 27 Feb 2017 17:27:49 GMT  
		Size: 8.0 MB (8008043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba42e52d8e231d98dfa202e800a6ab2bfe9b467cc43bfd8d5332dd1f0dcaeb5`  
		Last Modified: Mon, 27 Feb 2017 17:27:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a638521d6913a93965e12568006ccd7456a47d195e6303ec9370586677cca1`  
		Last Modified: Mon, 27 Feb 2017 17:27:48 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda827d3902e8b613694a988e2fcddf274f08213f7be8e8e1018e16c7c8f1948`  
		Last Modified: Mon, 27 Feb 2017 17:27:49 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085eac396c564ab21cf81bfd5b930fac455c811e65d417f1e25ddd52d78a4eb3`  
		Last Modified: Mon, 27 Feb 2017 17:27:49 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3`

```console
$ docker pull jetty@sha256:589f9117081a7f99f44b08d6efac36a49fd3c8bbeecebeb7dacb04eb6491acc1
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132284009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4465ac5be3ee74f33c1194d3fa8654bf6049d59b15818599399dceff1a1309ae`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 07 Feb 2017 20:04:19 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:04:20 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:04:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:01:52 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Feb 2017 21:01:54 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Feb 2017 21:01:55 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:20:22 GMT
ENV JETTY_VERSION=9.3.16.v20170120
# Mon, 27 Feb 2017 17:20:23 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.16.v20170120/jetty-distribution-9.3.16.v20170120.tar.gz
# Mon, 27 Feb 2017 17:20:23 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:20:29 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:29 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:20:30 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:20:31 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:20:33 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:33 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:20:34 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:20:35 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:20:36 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:20:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:20:37 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d33418bd6dfef0afdb2cd8bdefaf5454f79d8c30a0500c68851211b5454483`  
		Last Modified: Tue, 07 Feb 2017 20:14:15 GMT  
		Size: 53.5 MB (53518255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e10cce36e52ebab8c1bb53f163e26db55b99273eda92c3f169d1f6cf13d6304`  
		Last Modified: Tue, 07 Feb 2017 20:14:03 GMT  
		Size: 289.0 KB (289036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e9fcec11071cd2565ba05310669615a65a19882a25593a04c86b06e02928c7`  
		Last Modified: Tue, 07 Feb 2017 21:03:00 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13af213a4b519a023b4511924eaace59bdb65d7c7ec19e3698205bea453bacdc`  
		Last Modified: Tue, 07 Feb 2017 21:02:59 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f59c51342d665e216d1e92cda25d0d30c8c570821056226da893cdcd03d5bb`  
		Last Modified: Mon, 27 Feb 2017 17:27:49 GMT  
		Size: 8.0 MB (8008043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba42e52d8e231d98dfa202e800a6ab2bfe9b467cc43bfd8d5332dd1f0dcaeb5`  
		Last Modified: Mon, 27 Feb 2017 17:27:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a638521d6913a93965e12568006ccd7456a47d195e6303ec9370586677cca1`  
		Last Modified: Mon, 27 Feb 2017 17:27:48 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda827d3902e8b613694a988e2fcddf274f08213f7be8e8e1018e16c7c8f1948`  
		Last Modified: Mon, 27 Feb 2017 17:27:49 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085eac396c564ab21cf81bfd5b930fac455c811e65d417f1e25ddd52d78a4eb3`  
		Last Modified: Mon, 27 Feb 2017 17:27:49 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.16-jre8`

```console
$ docker pull jetty@sha256:589f9117081a7f99f44b08d6efac36a49fd3c8bbeecebeb7dacb04eb6491acc1
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.16-jre8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132284009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4465ac5be3ee74f33c1194d3fa8654bf6049d59b15818599399dceff1a1309ae`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 07 Feb 2017 20:04:19 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:04:20 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:04:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:01:52 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Feb 2017 21:01:54 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Feb 2017 21:01:55 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:20:22 GMT
ENV JETTY_VERSION=9.3.16.v20170120
# Mon, 27 Feb 2017 17:20:23 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.16.v20170120/jetty-distribution-9.3.16.v20170120.tar.gz
# Mon, 27 Feb 2017 17:20:23 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:20:29 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:29 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:20:30 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:20:31 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:20:33 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:33 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:20:34 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:20:35 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:20:36 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:20:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:20:37 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d33418bd6dfef0afdb2cd8bdefaf5454f79d8c30a0500c68851211b5454483`  
		Last Modified: Tue, 07 Feb 2017 20:14:15 GMT  
		Size: 53.5 MB (53518255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e10cce36e52ebab8c1bb53f163e26db55b99273eda92c3f169d1f6cf13d6304`  
		Last Modified: Tue, 07 Feb 2017 20:14:03 GMT  
		Size: 289.0 KB (289036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e9fcec11071cd2565ba05310669615a65a19882a25593a04c86b06e02928c7`  
		Last Modified: Tue, 07 Feb 2017 21:03:00 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13af213a4b519a023b4511924eaace59bdb65d7c7ec19e3698205bea453bacdc`  
		Last Modified: Tue, 07 Feb 2017 21:02:59 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f59c51342d665e216d1e92cda25d0d30c8c570821056226da893cdcd03d5bb`  
		Last Modified: Mon, 27 Feb 2017 17:27:49 GMT  
		Size: 8.0 MB (8008043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba42e52d8e231d98dfa202e800a6ab2bfe9b467cc43bfd8d5332dd1f0dcaeb5`  
		Last Modified: Mon, 27 Feb 2017 17:27:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a638521d6913a93965e12568006ccd7456a47d195e6303ec9370586677cca1`  
		Last Modified: Mon, 27 Feb 2017 17:27:48 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda827d3902e8b613694a988e2fcddf274f08213f7be8e8e1018e16c7c8f1948`  
		Last Modified: Mon, 27 Feb 2017 17:27:49 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085eac396c564ab21cf81bfd5b930fac455c811e65d417f1e25ddd52d78a4eb3`  
		Last Modified: Mon, 27 Feb 2017 17:27:49 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-jre8`

```console
$ docker pull jetty@sha256:589f9117081a7f99f44b08d6efac36a49fd3c8bbeecebeb7dacb04eb6491acc1
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3-jre8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132284009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4465ac5be3ee74f33c1194d3fa8654bf6049d59b15818599399dceff1a1309ae`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 07 Feb 2017 20:04:19 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:04:20 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:04:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:01:52 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Feb 2017 21:01:54 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Feb 2017 21:01:55 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:20:22 GMT
ENV JETTY_VERSION=9.3.16.v20170120
# Mon, 27 Feb 2017 17:20:23 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.16.v20170120/jetty-distribution-9.3.16.v20170120.tar.gz
# Mon, 27 Feb 2017 17:20:23 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:20:29 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:29 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:20:30 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:20:31 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:20:33 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:33 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:20:34 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:20:35 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:20:36 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:20:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:20:37 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d33418bd6dfef0afdb2cd8bdefaf5454f79d8c30a0500c68851211b5454483`  
		Last Modified: Tue, 07 Feb 2017 20:14:15 GMT  
		Size: 53.5 MB (53518255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e10cce36e52ebab8c1bb53f163e26db55b99273eda92c3f169d1f6cf13d6304`  
		Last Modified: Tue, 07 Feb 2017 20:14:03 GMT  
		Size: 289.0 KB (289036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e9fcec11071cd2565ba05310669615a65a19882a25593a04c86b06e02928c7`  
		Last Modified: Tue, 07 Feb 2017 21:03:00 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13af213a4b519a023b4511924eaace59bdb65d7c7ec19e3698205bea453bacdc`  
		Last Modified: Tue, 07 Feb 2017 21:02:59 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f59c51342d665e216d1e92cda25d0d30c8c570821056226da893cdcd03d5bb`  
		Last Modified: Mon, 27 Feb 2017 17:27:49 GMT  
		Size: 8.0 MB (8008043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba42e52d8e231d98dfa202e800a6ab2bfe9b467cc43bfd8d5332dd1f0dcaeb5`  
		Last Modified: Mon, 27 Feb 2017 17:27:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a638521d6913a93965e12568006ccd7456a47d195e6303ec9370586677cca1`  
		Last Modified: Mon, 27 Feb 2017 17:27:48 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda827d3902e8b613694a988e2fcddf274f08213f7be8e8e1018e16c7c8f1948`  
		Last Modified: Mon, 27 Feb 2017 17:27:49 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085eac396c564ab21cf81bfd5b930fac455c811e65d417f1e25ddd52d78a4eb3`  
		Last Modified: Mon, 27 Feb 2017 17:27:49 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.16-alpine`

```console
$ docker pull jetty@sha256:52ea376244f277c5a70a18ceb1656c13576755d90b5a29f2d2184dd3d0e3a5eb
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.16-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50055668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b73e423b269b80cd55a8babf133cf767c50a8728ebde1e62b42f7d8d90685086`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:16:14 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 27 Dec 2016 22:16:15 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 27 Dec 2016 22:16:15 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 22:16:16 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 27 Dec 2016 22:16:17 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:20:38 GMT
ENV JETTY_VERSION=9.3.16.v20170120
# Mon, 27 Feb 2017 17:20:38 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.16.v20170120/jetty-distribution-9.3.16.v20170120.tar.gz
# Mon, 27 Feb 2017 17:20:39 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:20:48 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:49 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:20:50 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:20:50 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:20:52 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:53 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:20:54 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:20:54 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:20:55 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:20:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:20:57 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16a335b6c55a25183088fc9efd3b012626d93c19d1f9985d0532afcdaac59c3`  
		Last Modified: Tue, 27 Dec 2016 22:45:14 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca846774f35a4e5ee9b3d461a5132a52ad21587a65966201e5dbce9867d8ee31`  
		Last Modified: Tue, 27 Dec 2016 22:45:11 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342b9e228cc52b7e9d891196c6d1b5f52e0751003af36f3ba477cbf0ce03cfc9`  
		Last Modified: Mon, 27 Feb 2017 17:29:47 GMT  
		Size: 8.0 MB (8037955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c9ef89fec11a6f5e8e4b7cea03b1e232700df8663f4d5995fdb03feed2e914`  
		Last Modified: Mon, 27 Feb 2017 17:29:46 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa221bac1c6295c5ca1ddc8d99d7f9d51410487d7475f8c5fc38cc7098a878b`  
		Last Modified: Mon, 27 Feb 2017 17:29:46 GMT  
		Size: 32.1 KB (32116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c07701891e98d9d6d3fce48d329e950f575699fde00964ae671f01aa4fed09`  
		Last Modified: Mon, 27 Feb 2017 17:29:46 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2773c1232ac9078a75f9c5362dfd87f021a5d49790d671066dc310d7720101`  
		Last Modified: Mon, 27 Feb 2017 17:29:45 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-alpine`

```console
$ docker pull jetty@sha256:52ea376244f277c5a70a18ceb1656c13576755d90b5a29f2d2184dd3d0e3a5eb
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50055668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b73e423b269b80cd55a8babf133cf767c50a8728ebde1e62b42f7d8d90685086`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:16:14 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 27 Dec 2016 22:16:15 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 27 Dec 2016 22:16:15 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 22:16:16 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 27 Dec 2016 22:16:17 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:20:38 GMT
ENV JETTY_VERSION=9.3.16.v20170120
# Mon, 27 Feb 2017 17:20:38 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.16.v20170120/jetty-distribution-9.3.16.v20170120.tar.gz
# Mon, 27 Feb 2017 17:20:39 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:20:48 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:49 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:20:50 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:20:50 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:20:52 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:53 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:20:54 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:20:54 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:20:55 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:20:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:20:57 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16a335b6c55a25183088fc9efd3b012626d93c19d1f9985d0532afcdaac59c3`  
		Last Modified: Tue, 27 Dec 2016 22:45:14 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca846774f35a4e5ee9b3d461a5132a52ad21587a65966201e5dbce9867d8ee31`  
		Last Modified: Tue, 27 Dec 2016 22:45:11 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342b9e228cc52b7e9d891196c6d1b5f52e0751003af36f3ba477cbf0ce03cfc9`  
		Last Modified: Mon, 27 Feb 2017 17:29:47 GMT  
		Size: 8.0 MB (8037955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c9ef89fec11a6f5e8e4b7cea03b1e232700df8663f4d5995fdb03feed2e914`  
		Last Modified: Mon, 27 Feb 2017 17:29:46 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa221bac1c6295c5ca1ddc8d99d7f9d51410487d7475f8c5fc38cc7098a878b`  
		Last Modified: Mon, 27 Feb 2017 17:29:46 GMT  
		Size: 32.1 KB (32116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c07701891e98d9d6d3fce48d329e950f575699fde00964ae671f01aa4fed09`  
		Last Modified: Mon, 27 Feb 2017 17:29:46 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2773c1232ac9078a75f9c5362dfd87f021a5d49790d671066dc310d7720101`  
		Last Modified: Mon, 27 Feb 2017 17:29:45 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.16-jre8-alpine`

```console
$ docker pull jetty@sha256:52ea376244f277c5a70a18ceb1656c13576755d90b5a29f2d2184dd3d0e3a5eb
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.16-jre8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50055668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b73e423b269b80cd55a8babf133cf767c50a8728ebde1e62b42f7d8d90685086`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:16:14 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 27 Dec 2016 22:16:15 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 27 Dec 2016 22:16:15 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 22:16:16 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 27 Dec 2016 22:16:17 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:20:38 GMT
ENV JETTY_VERSION=9.3.16.v20170120
# Mon, 27 Feb 2017 17:20:38 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.16.v20170120/jetty-distribution-9.3.16.v20170120.tar.gz
# Mon, 27 Feb 2017 17:20:39 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:20:48 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:49 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:20:50 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:20:50 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:20:52 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:53 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:20:54 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:20:54 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:20:55 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:20:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:20:57 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16a335b6c55a25183088fc9efd3b012626d93c19d1f9985d0532afcdaac59c3`  
		Last Modified: Tue, 27 Dec 2016 22:45:14 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca846774f35a4e5ee9b3d461a5132a52ad21587a65966201e5dbce9867d8ee31`  
		Last Modified: Tue, 27 Dec 2016 22:45:11 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342b9e228cc52b7e9d891196c6d1b5f52e0751003af36f3ba477cbf0ce03cfc9`  
		Last Modified: Mon, 27 Feb 2017 17:29:47 GMT  
		Size: 8.0 MB (8037955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c9ef89fec11a6f5e8e4b7cea03b1e232700df8663f4d5995fdb03feed2e914`  
		Last Modified: Mon, 27 Feb 2017 17:29:46 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa221bac1c6295c5ca1ddc8d99d7f9d51410487d7475f8c5fc38cc7098a878b`  
		Last Modified: Mon, 27 Feb 2017 17:29:46 GMT  
		Size: 32.1 KB (32116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c07701891e98d9d6d3fce48d329e950f575699fde00964ae671f01aa4fed09`  
		Last Modified: Mon, 27 Feb 2017 17:29:46 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2773c1232ac9078a75f9c5362dfd87f021a5d49790d671066dc310d7720101`  
		Last Modified: Mon, 27 Feb 2017 17:29:45 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-jre8-alpine`

```console
$ docker pull jetty@sha256:52ea376244f277c5a70a18ceb1656c13576755d90b5a29f2d2184dd3d0e3a5eb
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3-jre8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50055668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b73e423b269b80cd55a8babf133cf767c50a8728ebde1e62b42f7d8d90685086`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:16:14 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 27 Dec 2016 22:16:15 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 27 Dec 2016 22:16:15 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 22:16:16 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 27 Dec 2016 22:16:17 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:20:38 GMT
ENV JETTY_VERSION=9.3.16.v20170120
# Mon, 27 Feb 2017 17:20:38 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.16.v20170120/jetty-distribution-9.3.16.v20170120.tar.gz
# Mon, 27 Feb 2017 17:20:39 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:20:48 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:49 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:20:50 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:20:50 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:20:52 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:20:53 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:20:54 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:20:54 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:20:55 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:20:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:20:57 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16a335b6c55a25183088fc9efd3b012626d93c19d1f9985d0532afcdaac59c3`  
		Last Modified: Tue, 27 Dec 2016 22:45:14 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca846774f35a4e5ee9b3d461a5132a52ad21587a65966201e5dbce9867d8ee31`  
		Last Modified: Tue, 27 Dec 2016 22:45:11 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342b9e228cc52b7e9d891196c6d1b5f52e0751003af36f3ba477cbf0ce03cfc9`  
		Last Modified: Mon, 27 Feb 2017 17:29:47 GMT  
		Size: 8.0 MB (8037955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c9ef89fec11a6f5e8e4b7cea03b1e232700df8663f4d5995fdb03feed2e914`  
		Last Modified: Mon, 27 Feb 2017 17:29:46 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa221bac1c6295c5ca1ddc8d99d7f9d51410487d7475f8c5fc38cc7098a878b`  
		Last Modified: Mon, 27 Feb 2017 17:29:46 GMT  
		Size: 32.1 KB (32116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c07701891e98d9d6d3fce48d329e950f575699fde00964ae671f01aa4fed09`  
		Last Modified: Mon, 27 Feb 2017 17:29:46 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad2773c1232ac9078a75f9c5362dfd87f021a5d49790d671066dc310d7720101`  
		Last Modified: Mon, 27 Feb 2017 17:29:45 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.21`

```console
$ docker pull jetty@sha256:53e9b0eba21846a2ed30ecccacb33d464ca19c31706699540b09085724902d6e
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2.21` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134294608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2634ceee1198abbc5650d185a1e5699e7ff7f2ed1a61904be98832fcac1e850`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 07 Feb 2017 20:04:19 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:04:20 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:04:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:01:52 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Feb 2017 21:01:54 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Feb 2017 21:01:55 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:20:58 GMT
ENV JETTY_VERSION=9.2.21.v20170120
# Mon, 27 Feb 2017 17:20:58 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.21.v20170120/jetty-distribution-9.2.21.v20170120.tar.gz
# Mon, 27 Feb 2017 17:20:59 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:21:04 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:21:05 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:21:06 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:21:06 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:21:08 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:21:08 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:21:09 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:21:10 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:21:11 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:21:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:21:12 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d33418bd6dfef0afdb2cd8bdefaf5454f79d8c30a0500c68851211b5454483`  
		Last Modified: Tue, 07 Feb 2017 20:14:15 GMT  
		Size: 53.5 MB (53518255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e10cce36e52ebab8c1bb53f163e26db55b99273eda92c3f169d1f6cf13d6304`  
		Last Modified: Tue, 07 Feb 2017 20:14:03 GMT  
		Size: 289.0 KB (289036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e9fcec11071cd2565ba05310669615a65a19882a25593a04c86b06e02928c7`  
		Last Modified: Tue, 07 Feb 2017 21:03:00 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13af213a4b519a023b4511924eaace59bdb65d7c7ec19e3698205bea453bacdc`  
		Last Modified: Tue, 07 Feb 2017 21:02:59 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce732fa36c8820142f3ba2071e00697b8dca3632785c1ae99e48036087f21b9`  
		Last Modified: Mon, 27 Feb 2017 17:31:36 GMT  
		Size: 10.0 MB (10018933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7556e5d353783d1fcf5d137b0f9d18bc1752a9eb6d55ee7d0e5dc72b68a4e78`  
		Last Modified: Mon, 27 Feb 2017 17:31:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d083f695f4c7b6162afcc7af8130970ee00c6ee424caaa44ddfddbc7adabaa`  
		Last Modified: Mon, 27 Feb 2017 17:31:34 GMT  
		Size: 1.5 KB (1549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c79cc401b81ab00647d03a05dd0086734086d8682ab92f8c21af243c68e87869`  
		Last Modified: Mon, 27 Feb 2017 17:31:34 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6f28dc8d79a025b22d541a36f87c788860b5f70863772b8a0159164da4001f`  
		Last Modified: Mon, 27 Feb 2017 17:31:34 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2`

```console
$ docker pull jetty@sha256:53e9b0eba21846a2ed30ecccacb33d464ca19c31706699540b09085724902d6e
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134294608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2634ceee1198abbc5650d185a1e5699e7ff7f2ed1a61904be98832fcac1e850`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 07 Feb 2017 20:04:19 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:04:20 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:04:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:01:52 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Feb 2017 21:01:54 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Feb 2017 21:01:55 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:20:58 GMT
ENV JETTY_VERSION=9.2.21.v20170120
# Mon, 27 Feb 2017 17:20:58 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.21.v20170120/jetty-distribution-9.2.21.v20170120.tar.gz
# Mon, 27 Feb 2017 17:20:59 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:21:04 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:21:05 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:21:06 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:21:06 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:21:08 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:21:08 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:21:09 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:21:10 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:21:11 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:21:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:21:12 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d33418bd6dfef0afdb2cd8bdefaf5454f79d8c30a0500c68851211b5454483`  
		Last Modified: Tue, 07 Feb 2017 20:14:15 GMT  
		Size: 53.5 MB (53518255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e10cce36e52ebab8c1bb53f163e26db55b99273eda92c3f169d1f6cf13d6304`  
		Last Modified: Tue, 07 Feb 2017 20:14:03 GMT  
		Size: 289.0 KB (289036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e9fcec11071cd2565ba05310669615a65a19882a25593a04c86b06e02928c7`  
		Last Modified: Tue, 07 Feb 2017 21:03:00 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13af213a4b519a023b4511924eaace59bdb65d7c7ec19e3698205bea453bacdc`  
		Last Modified: Tue, 07 Feb 2017 21:02:59 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce732fa36c8820142f3ba2071e00697b8dca3632785c1ae99e48036087f21b9`  
		Last Modified: Mon, 27 Feb 2017 17:31:36 GMT  
		Size: 10.0 MB (10018933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7556e5d353783d1fcf5d137b0f9d18bc1752a9eb6d55ee7d0e5dc72b68a4e78`  
		Last Modified: Mon, 27 Feb 2017 17:31:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d083f695f4c7b6162afcc7af8130970ee00c6ee424caaa44ddfddbc7adabaa`  
		Last Modified: Mon, 27 Feb 2017 17:31:34 GMT  
		Size: 1.5 KB (1549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c79cc401b81ab00647d03a05dd0086734086d8682ab92f8c21af243c68e87869`  
		Last Modified: Mon, 27 Feb 2017 17:31:34 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6f28dc8d79a025b22d541a36f87c788860b5f70863772b8a0159164da4001f`  
		Last Modified: Mon, 27 Feb 2017 17:31:34 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.21-jre8`

```console
$ docker pull jetty@sha256:53e9b0eba21846a2ed30ecccacb33d464ca19c31706699540b09085724902d6e
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2.21-jre8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134294608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2634ceee1198abbc5650d185a1e5699e7ff7f2ed1a61904be98832fcac1e850`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 07 Feb 2017 20:04:19 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:04:20 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:04:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:01:52 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Feb 2017 21:01:54 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Feb 2017 21:01:55 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:20:58 GMT
ENV JETTY_VERSION=9.2.21.v20170120
# Mon, 27 Feb 2017 17:20:58 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.21.v20170120/jetty-distribution-9.2.21.v20170120.tar.gz
# Mon, 27 Feb 2017 17:20:59 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:21:04 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:21:05 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:21:06 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:21:06 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:21:08 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:21:08 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:21:09 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:21:10 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:21:11 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:21:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:21:12 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d33418bd6dfef0afdb2cd8bdefaf5454f79d8c30a0500c68851211b5454483`  
		Last Modified: Tue, 07 Feb 2017 20:14:15 GMT  
		Size: 53.5 MB (53518255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e10cce36e52ebab8c1bb53f163e26db55b99273eda92c3f169d1f6cf13d6304`  
		Last Modified: Tue, 07 Feb 2017 20:14:03 GMT  
		Size: 289.0 KB (289036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e9fcec11071cd2565ba05310669615a65a19882a25593a04c86b06e02928c7`  
		Last Modified: Tue, 07 Feb 2017 21:03:00 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13af213a4b519a023b4511924eaace59bdb65d7c7ec19e3698205bea453bacdc`  
		Last Modified: Tue, 07 Feb 2017 21:02:59 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce732fa36c8820142f3ba2071e00697b8dca3632785c1ae99e48036087f21b9`  
		Last Modified: Mon, 27 Feb 2017 17:31:36 GMT  
		Size: 10.0 MB (10018933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7556e5d353783d1fcf5d137b0f9d18bc1752a9eb6d55ee7d0e5dc72b68a4e78`  
		Last Modified: Mon, 27 Feb 2017 17:31:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d083f695f4c7b6162afcc7af8130970ee00c6ee424caaa44ddfddbc7adabaa`  
		Last Modified: Mon, 27 Feb 2017 17:31:34 GMT  
		Size: 1.5 KB (1549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c79cc401b81ab00647d03a05dd0086734086d8682ab92f8c21af243c68e87869`  
		Last Modified: Mon, 27 Feb 2017 17:31:34 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6f28dc8d79a025b22d541a36f87c788860b5f70863772b8a0159164da4001f`  
		Last Modified: Mon, 27 Feb 2017 17:31:34 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2-jre8`

```console
$ docker pull jetty@sha256:53e9b0eba21846a2ed30ecccacb33d464ca19c31706699540b09085724902d6e
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2-jre8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134294608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2634ceee1198abbc5650d185a1e5699e7ff7f2ed1a61904be98832fcac1e850`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:52:56 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 07 Feb 2017 20:04:19 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:04:20 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:04:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:01:52 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 07 Feb 2017 21:01:53 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Feb 2017 21:01:54 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 07 Feb 2017 21:01:55 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:20:58 GMT
ENV JETTY_VERSION=9.2.21.v20170120
# Mon, 27 Feb 2017 17:20:58 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.21.v20170120/jetty-distribution-9.2.21.v20170120.tar.gz
# Mon, 27 Feb 2017 17:20:59 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:21:04 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:21:05 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:21:06 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:21:06 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:21:08 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:21:08 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:21:09 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:21:10 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:21:11 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:21:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:21:12 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0da797ba4835d69468574d4530e9196bc867b4418d179a7563c1a9c312774a`  
		Last Modified: Tue, 17 Jan 2017 21:37:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9b17433752f2b9654fd4914f974c8b1681217db13e1f8f877ee73f3b0c2f0c`  
		Last Modified: Tue, 17 Jan 2017 21:37:10 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d33418bd6dfef0afdb2cd8bdefaf5454f79d8c30a0500c68851211b5454483`  
		Last Modified: Tue, 07 Feb 2017 20:14:15 GMT  
		Size: 53.5 MB (53518255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e10cce36e52ebab8c1bb53f163e26db55b99273eda92c3f169d1f6cf13d6304`  
		Last Modified: Tue, 07 Feb 2017 20:14:03 GMT  
		Size: 289.0 KB (289036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e9fcec11071cd2565ba05310669615a65a19882a25593a04c86b06e02928c7`  
		Last Modified: Tue, 07 Feb 2017 21:03:00 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13af213a4b519a023b4511924eaace59bdb65d7c7ec19e3698205bea453bacdc`  
		Last Modified: Tue, 07 Feb 2017 21:02:59 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce732fa36c8820142f3ba2071e00697b8dca3632785c1ae99e48036087f21b9`  
		Last Modified: Mon, 27 Feb 2017 17:31:36 GMT  
		Size: 10.0 MB (10018933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7556e5d353783d1fcf5d137b0f9d18bc1752a9eb6d55ee7d0e5dc72b68a4e78`  
		Last Modified: Mon, 27 Feb 2017 17:31:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d083f695f4c7b6162afcc7af8130970ee00c6ee424caaa44ddfddbc7adabaa`  
		Last Modified: Mon, 27 Feb 2017 17:31:34 GMT  
		Size: 1.5 KB (1549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c79cc401b81ab00647d03a05dd0086734086d8682ab92f8c21af243c68e87869`  
		Last Modified: Mon, 27 Feb 2017 17:31:34 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6f28dc8d79a025b22d541a36f87c788860b5f70863772b8a0159164da4001f`  
		Last Modified: Mon, 27 Feb 2017 17:31:34 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.21-jre7`

```console
$ docker pull jetty@sha256:96002639bed62ad68c5cf6c0a7513aaecd3f3dd32003c4511b3d3918b3413c12
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2.21-jre7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158300296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62d14edd288546624eb7df4d03bd67f9c4316139da881cf715525ccfbdcae4e9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Wed, 08 Feb 2017 22:16:54 GMT
ENV JAVA_VERSION=7u121
# Wed, 08 Feb 2017 22:16:55 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 08 Feb 2017 22:17:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 08 Feb 2017 22:55:50 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 08 Feb 2017 22:55:51 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 08 Feb 2017 22:55:51 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 Feb 2017 22:55:53 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 08 Feb 2017 22:55:53 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:21:13 GMT
ENV JETTY_VERSION=9.2.21.v20170120
# Mon, 27 Feb 2017 17:21:14 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.21.v20170120/jetty-distribution-9.2.21.v20170120.tar.gz
# Mon, 27 Feb 2017 17:21:14 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:21:22 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:21:22 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:21:24 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:21:24 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:21:28 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:21:28 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:21:30 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:21:31 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:21:31 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:21:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:21:32 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9789263043d1903b4bfb12d55378dce8182df44901ba747f53b662dfbddd0f10`  
		Last Modified: Wed, 18 Jan 2017 05:27:33 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6ea13aad1573ad87eb6d2f38f7c42ea634532edc51d19039f4e57e82d3c549`  
		Last Modified: Wed, 08 Feb 2017 22:22:10 GMT  
		Size: 77.8 MB (77813197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43dcf834c20b6902b8a546d554f47014558b1bf72773773a72f7889a46cbd85`  
		Last Modified: Wed, 08 Feb 2017 22:57:34 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb5e53b241119b81f225fc02c9d40c1ffe3e261058f4b3bfa1dfcb762443702`  
		Last Modified: Wed, 08 Feb 2017 22:57:34 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5d1cde37bcfdce7b5c0a98f4a7d7987f6bfb3efc4b74c2d0664cdd0ca0c332`  
		Last Modified: Mon, 27 Feb 2017 17:33:16 GMT  
		Size: 10.0 MB (10018946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3cbccefcae0efe18956cfee018ce46cfec798b0227a28888bea70a90962c56`  
		Last Modified: Mon, 27 Feb 2017 17:33:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc38d1bf7e1b5ddab5efb47772945b90af3249873b5e7c3bd703f63b16021b9`  
		Last Modified: Mon, 27 Feb 2017 17:33:16 GMT  
		Size: 1.5 KB (1549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca792744e59fa21b001109b423544b7216b782bec37e82a17ca858a82d9561ac`  
		Last Modified: Mon, 27 Feb 2017 17:33:16 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a1140db8a7ec10231e999fc8c6b31636c7091acd8b43152466824ec3e46c75`  
		Last Modified: Mon, 27 Feb 2017 17:33:15 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2-jre7`

```console
$ docker pull jetty@sha256:96002639bed62ad68c5cf6c0a7513aaecd3f3dd32003c4511b3d3918b3413c12
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2-jre7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158300296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62d14edd288546624eb7df4d03bd67f9c4316139da881cf715525ccfbdcae4e9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Wed, 08 Feb 2017 22:16:54 GMT
ENV JAVA_VERSION=7u121
# Wed, 08 Feb 2017 22:16:55 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 08 Feb 2017 22:17:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 08 Feb 2017 22:55:50 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 08 Feb 2017 22:55:51 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 08 Feb 2017 22:55:51 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 Feb 2017 22:55:53 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 08 Feb 2017 22:55:53 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:21:13 GMT
ENV JETTY_VERSION=9.2.21.v20170120
# Mon, 27 Feb 2017 17:21:14 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.21.v20170120/jetty-distribution-9.2.21.v20170120.tar.gz
# Mon, 27 Feb 2017 17:21:14 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:21:22 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:21:22 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:21:24 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:21:24 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:21:28 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:21:28 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:21:30 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:21:31 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:21:31 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:21:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:21:32 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9789263043d1903b4bfb12d55378dce8182df44901ba747f53b662dfbddd0f10`  
		Last Modified: Wed, 18 Jan 2017 05:27:33 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6ea13aad1573ad87eb6d2f38f7c42ea634532edc51d19039f4e57e82d3c549`  
		Last Modified: Wed, 08 Feb 2017 22:22:10 GMT  
		Size: 77.8 MB (77813197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43dcf834c20b6902b8a546d554f47014558b1bf72773773a72f7889a46cbd85`  
		Last Modified: Wed, 08 Feb 2017 22:57:34 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb5e53b241119b81f225fc02c9d40c1ffe3e261058f4b3bfa1dfcb762443702`  
		Last Modified: Wed, 08 Feb 2017 22:57:34 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5d1cde37bcfdce7b5c0a98f4a7d7987f6bfb3efc4b74c2d0664cdd0ca0c332`  
		Last Modified: Mon, 27 Feb 2017 17:33:16 GMT  
		Size: 10.0 MB (10018946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3cbccefcae0efe18956cfee018ce46cfec798b0227a28888bea70a90962c56`  
		Last Modified: Mon, 27 Feb 2017 17:33:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc38d1bf7e1b5ddab5efb47772945b90af3249873b5e7c3bd703f63b16021b9`  
		Last Modified: Mon, 27 Feb 2017 17:33:16 GMT  
		Size: 1.5 KB (1549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca792744e59fa21b001109b423544b7216b782bec37e82a17ca858a82d9561ac`  
		Last Modified: Mon, 27 Feb 2017 17:33:16 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a1140db8a7ec10231e999fc8c6b31636c7091acd8b43152466824ec3e46c75`  
		Last Modified: Mon, 27 Feb 2017 17:33:15 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre7`

```console
$ docker pull jetty@sha256:96002639bed62ad68c5cf6c0a7513aaecd3f3dd32003c4511b3d3918b3413c12
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158300296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62d14edd288546624eb7df4d03bd67f9c4316139da881cf715525ccfbdcae4e9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Wed, 08 Feb 2017 22:16:54 GMT
ENV JAVA_VERSION=7u121
# Wed, 08 Feb 2017 22:16:55 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 08 Feb 2017 22:17:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 08 Feb 2017 22:55:50 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 08 Feb 2017 22:55:51 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 08 Feb 2017 22:55:51 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 Feb 2017 22:55:53 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 08 Feb 2017 22:55:53 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:21:13 GMT
ENV JETTY_VERSION=9.2.21.v20170120
# Mon, 27 Feb 2017 17:21:14 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.21.v20170120/jetty-distribution-9.2.21.v20170120.tar.gz
# Mon, 27 Feb 2017 17:21:14 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:21:22 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:21:22 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:21:24 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:21:24 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:21:28 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:21:28 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:21:30 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:21:31 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:21:31 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:21:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:21:32 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9789263043d1903b4bfb12d55378dce8182df44901ba747f53b662dfbddd0f10`  
		Last Modified: Wed, 18 Jan 2017 05:27:33 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6ea13aad1573ad87eb6d2f38f7c42ea634532edc51d19039f4e57e82d3c549`  
		Last Modified: Wed, 08 Feb 2017 22:22:10 GMT  
		Size: 77.8 MB (77813197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43dcf834c20b6902b8a546d554f47014558b1bf72773773a72f7889a46cbd85`  
		Last Modified: Wed, 08 Feb 2017 22:57:34 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb5e53b241119b81f225fc02c9d40c1ffe3e261058f4b3bfa1dfcb762443702`  
		Last Modified: Wed, 08 Feb 2017 22:57:34 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5d1cde37bcfdce7b5c0a98f4a7d7987f6bfb3efc4b74c2d0664cdd0ca0c332`  
		Last Modified: Mon, 27 Feb 2017 17:33:16 GMT  
		Size: 10.0 MB (10018946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3cbccefcae0efe18956cfee018ce46cfec798b0227a28888bea70a90962c56`  
		Last Modified: Mon, 27 Feb 2017 17:33:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc38d1bf7e1b5ddab5efb47772945b90af3249873b5e7c3bd703f63b16021b9`  
		Last Modified: Mon, 27 Feb 2017 17:33:16 GMT  
		Size: 1.5 KB (1549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca792744e59fa21b001109b423544b7216b782bec37e82a17ca858a82d9561ac`  
		Last Modified: Mon, 27 Feb 2017 17:33:16 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a1140db8a7ec10231e999fc8c6b31636c7091acd8b43152466824ec3e46c75`  
		Last Modified: Mon, 27 Feb 2017 17:33:15 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre7`

```console
$ docker pull jetty@sha256:96002639bed62ad68c5cf6c0a7513aaecd3f3dd32003c4511b3d3918b3413c12
```

-	Platforms:
	-	linux; amd64

### `jetty:jre7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158300296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62d14edd288546624eb7df4d03bd67f9c4316139da881cf715525ccfbdcae4e9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:05 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Wed, 08 Feb 2017 22:16:54 GMT
ENV JAVA_VERSION=7u121
# Wed, 08 Feb 2017 22:16:55 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 08 Feb 2017 22:17:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 08 Feb 2017 22:55:50 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 08 Feb 2017 22:55:51 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 08 Feb 2017 22:55:51 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 Feb 2017 22:55:53 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 08 Feb 2017 22:55:53 GMT
WORKDIR /usr/local/jetty
# Mon, 27 Feb 2017 17:21:13 GMT
ENV JETTY_VERSION=9.2.21.v20170120
# Mon, 27 Feb 2017 17:21:14 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.21.v20170120/jetty-distribution-9.2.21.v20170120.tar.gz
# Mon, 27 Feb 2017 17:21:14 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Mon, 27 Feb 2017 17:21:22 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:21:22 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Feb 2017 17:21:24 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 27 Feb 2017 17:21:24 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Feb 2017 17:21:28 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 27 Feb 2017 17:21:28 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Feb 2017 17:21:30 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 27 Feb 2017 17:21:31 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Mon, 27 Feb 2017 17:21:31 GMT
EXPOSE 8080/tcp
# Mon, 27 Feb 2017 17:21:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Feb 2017 17:21:32 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42794440453cbec048425a8d20efae4d6f57b629bbbf4f1793131e91088eb46`  
		Last Modified: Tue, 17 Jan 2017 21:37:12 GMT  
		Size: 566.7 KB (566657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9789263043d1903b4bfb12d55378dce8182df44901ba747f53b662dfbddd0f10`  
		Last Modified: Wed, 18 Jan 2017 05:27:33 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6ea13aad1573ad87eb6d2f38f7c42ea634532edc51d19039f4e57e82d3c549`  
		Last Modified: Wed, 08 Feb 2017 22:22:10 GMT  
		Size: 77.8 MB (77813197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43dcf834c20b6902b8a546d554f47014558b1bf72773773a72f7889a46cbd85`  
		Last Modified: Wed, 08 Feb 2017 22:57:34 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb5e53b241119b81f225fc02c9d40c1ffe3e261058f4b3bfa1dfcb762443702`  
		Last Modified: Wed, 08 Feb 2017 22:57:34 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5d1cde37bcfdce7b5c0a98f4a7d7987f6bfb3efc4b74c2d0664cdd0ca0c332`  
		Last Modified: Mon, 27 Feb 2017 17:33:16 GMT  
		Size: 10.0 MB (10018946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3cbccefcae0efe18956cfee018ce46cfec798b0227a28888bea70a90962c56`  
		Last Modified: Mon, 27 Feb 2017 17:33:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc38d1bf7e1b5ddab5efb47772945b90af3249873b5e7c3bd703f63b16021b9`  
		Last Modified: Mon, 27 Feb 2017 17:33:16 GMT  
		Size: 1.5 KB (1549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca792744e59fa21b001109b423544b7216b782bec37e82a17ca858a82d9561ac`  
		Last Modified: Mon, 27 Feb 2017 17:33:16 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a1140db8a7ec10231e999fc8c6b31636c7091acd8b43152466824ec3e46c75`  
		Last Modified: Mon, 27 Feb 2017 17:33:15 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
