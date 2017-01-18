<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jetty`

-	[`jetty:9.3.15`](#jetty9315)
-	[`jetty:9.3`](#jetty93)
-	[`jetty:9`](#jetty9)
-	[`jetty:9.3.15-jre8`](#jetty9315-jre8)
-	[`jetty:9.3-jre8`](#jetty93-jre8)
-	[`jetty:9-jre8`](#jetty9-jre8)
-	[`jetty:latest`](#jettylatest)
-	[`jetty:jre8`](#jettyjre8)
-	[`jetty:9.3.15-alpine`](#jetty9315-alpine)
-	[`jetty:9.3-alpine`](#jetty93-alpine)
-	[`jetty:9-alpine`](#jetty9-alpine)
-	[`jetty:9.3.15-jre8-alpine`](#jetty9315-jre8-alpine)
-	[`jetty:9.3-jre8-alpine`](#jetty93-jre8-alpine)
-	[`jetty:9-jre8-alpine`](#jetty9-jre8-alpine)
-	[`jetty:alpine`](#jettyalpine)
-	[`jetty:jre8-alpine`](#jettyjre8-alpine)
-	[`jetty:9.2.20`](#jetty9220)
-	[`jetty:9.2`](#jetty92)
-	[`jetty:9.2.20-jre8`](#jetty9220-jre8)
-	[`jetty:9.2-jre8`](#jetty92-jre8)
-	[`jetty:9.2.20-jre7`](#jetty9220-jre7)
-	[`jetty:9.2-jre7`](#jetty92-jre7)
-	[`jetty:9-jre7`](#jetty9-jre7)
-	[`jetty:jre7`](#jettyjre7)

## `jetty:9.3.15`

```console
$ docker pull jetty@sha256:bac8bcb78388e0640e8b95c2390744bdffbaee4ecd36242cb26826178dcac98b
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.15` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132207353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9642e13a1a5e26bd2308d2d0e11e0eb985f47d03a30f2e6af75ad300f3cad7c8`
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
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:53:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:53:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 18 Jan 2017 00:38:25 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 18 Jan 2017 00:38:26 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 18 Jan 2017 00:38:26 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 00:38:27 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 18 Jan 2017 00:38:27 GMT
WORKDIR /usr/local/jetty
# Wed, 18 Jan 2017 00:38:28 GMT
ENV JETTY_VERSION=9.3.15.v20161220
# Wed, 18 Jan 2017 00:38:28 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.15.v20161220/jetty-distribution-9.3.15.v20161220.tar.gz
# Wed, 18 Jan 2017 00:38:28 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 18 Jan 2017 00:38:34 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 18 Jan 2017 00:38:34 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 18 Jan 2017 00:38:35 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 18 Jan 2017 00:38:35 GMT
WORKDIR /var/lib/jetty
# Wed, 18 Jan 2017 00:38:40 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 18 Jan 2017 00:38:41 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 18 Jan 2017 00:38:42 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 18 Jan 2017 00:38:42 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 18 Jan 2017 00:38:43 GMT
EXPOSE 8080/tcp
# Wed, 18 Jan 2017 00:38:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 00:38:43 GMT
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
	-	`sha256:114e02586e63258b0507ccf765d9093c274280e237f2dc4f900856a42299ce75`  
		Last Modified: Tue, 17 Jan 2017 21:37:24 GMT  
		Size: 53.5 MB (53468548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c663802e9abbf7c5e9b65f86dd4af24eb825e52f8c6c6f16c96f2beec46fac`  
		Last Modified: Tue, 17 Jan 2017 21:37:09 GMT  
		Size: 289.1 KB (289067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e59370e0f15d09b53909ba2301358f36843651f3a3e38c041ac3bd91f5d65f6`  
		Last Modified: Wed, 18 Jan 2017 08:24:34 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f15fa1ad43993f93882e9bc4004cad1388505acf472cb9d2e097aea51761d0`  
		Last Modified: Wed, 18 Jan 2017 08:24:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581a0b1397df37f5140e946e652c81e2044a178c77710d528f981dcc53ffbad8`  
		Last Modified: Wed, 18 Jan 2017 08:26:47 GMT  
		Size: 8.0 MB (7979308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d23638c0c9335ffc7e78127ff2bfdbdced404335a36893a9659a3926352457f`  
		Last Modified: Wed, 18 Jan 2017 08:26:44 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8e3c53ee0bd2469602b7b2825579d3fd43299995a718464607b1c4190f2ad4`  
		Last Modified: Wed, 18 Jan 2017 08:26:45 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff363a540ab0f17a6db498c9e573cc1d64dbb48c42a53507c5fd8f35d3d678a7`  
		Last Modified: Wed, 18 Jan 2017 08:26:44 GMT  
		Size: 1.9 KB (1862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28cea2a6eaea6d85c153bd2d3fd8f5c691a7fa20ad9da117dbd56d7c63584079`  
		Last Modified: Wed, 18 Jan 2017 08:26:45 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3`

```console
$ docker pull jetty@sha256:bac8bcb78388e0640e8b95c2390744bdffbaee4ecd36242cb26826178dcac98b
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132207353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9642e13a1a5e26bd2308d2d0e11e0eb985f47d03a30f2e6af75ad300f3cad7c8`
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
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:53:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:53:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 18 Jan 2017 00:38:25 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 18 Jan 2017 00:38:26 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 18 Jan 2017 00:38:26 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 00:38:27 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 18 Jan 2017 00:38:27 GMT
WORKDIR /usr/local/jetty
# Wed, 18 Jan 2017 00:38:28 GMT
ENV JETTY_VERSION=9.3.15.v20161220
# Wed, 18 Jan 2017 00:38:28 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.15.v20161220/jetty-distribution-9.3.15.v20161220.tar.gz
# Wed, 18 Jan 2017 00:38:28 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 18 Jan 2017 00:38:34 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 18 Jan 2017 00:38:34 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 18 Jan 2017 00:38:35 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 18 Jan 2017 00:38:35 GMT
WORKDIR /var/lib/jetty
# Wed, 18 Jan 2017 00:38:40 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 18 Jan 2017 00:38:41 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 18 Jan 2017 00:38:42 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 18 Jan 2017 00:38:42 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 18 Jan 2017 00:38:43 GMT
EXPOSE 8080/tcp
# Wed, 18 Jan 2017 00:38:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 00:38:43 GMT
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
	-	`sha256:114e02586e63258b0507ccf765d9093c274280e237f2dc4f900856a42299ce75`  
		Last Modified: Tue, 17 Jan 2017 21:37:24 GMT  
		Size: 53.5 MB (53468548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c663802e9abbf7c5e9b65f86dd4af24eb825e52f8c6c6f16c96f2beec46fac`  
		Last Modified: Tue, 17 Jan 2017 21:37:09 GMT  
		Size: 289.1 KB (289067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e59370e0f15d09b53909ba2301358f36843651f3a3e38c041ac3bd91f5d65f6`  
		Last Modified: Wed, 18 Jan 2017 08:24:34 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f15fa1ad43993f93882e9bc4004cad1388505acf472cb9d2e097aea51761d0`  
		Last Modified: Wed, 18 Jan 2017 08:24:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581a0b1397df37f5140e946e652c81e2044a178c77710d528f981dcc53ffbad8`  
		Last Modified: Wed, 18 Jan 2017 08:26:47 GMT  
		Size: 8.0 MB (7979308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d23638c0c9335ffc7e78127ff2bfdbdced404335a36893a9659a3926352457f`  
		Last Modified: Wed, 18 Jan 2017 08:26:44 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8e3c53ee0bd2469602b7b2825579d3fd43299995a718464607b1c4190f2ad4`  
		Last Modified: Wed, 18 Jan 2017 08:26:45 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff363a540ab0f17a6db498c9e573cc1d64dbb48c42a53507c5fd8f35d3d678a7`  
		Last Modified: Wed, 18 Jan 2017 08:26:44 GMT  
		Size: 1.9 KB (1862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28cea2a6eaea6d85c153bd2d3fd8f5c691a7fa20ad9da117dbd56d7c63584079`  
		Last Modified: Wed, 18 Jan 2017 08:26:45 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9`

```console
$ docker pull jetty@sha256:bac8bcb78388e0640e8b95c2390744bdffbaee4ecd36242cb26826178dcac98b
```

-	Platforms:
	-	linux; amd64

### `jetty:9` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132207353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9642e13a1a5e26bd2308d2d0e11e0eb985f47d03a30f2e6af75ad300f3cad7c8`
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
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:53:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:53:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 18 Jan 2017 00:38:25 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 18 Jan 2017 00:38:26 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 18 Jan 2017 00:38:26 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 00:38:27 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 18 Jan 2017 00:38:27 GMT
WORKDIR /usr/local/jetty
# Wed, 18 Jan 2017 00:38:28 GMT
ENV JETTY_VERSION=9.3.15.v20161220
# Wed, 18 Jan 2017 00:38:28 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.15.v20161220/jetty-distribution-9.3.15.v20161220.tar.gz
# Wed, 18 Jan 2017 00:38:28 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 18 Jan 2017 00:38:34 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 18 Jan 2017 00:38:34 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 18 Jan 2017 00:38:35 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 18 Jan 2017 00:38:35 GMT
WORKDIR /var/lib/jetty
# Wed, 18 Jan 2017 00:38:40 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 18 Jan 2017 00:38:41 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 18 Jan 2017 00:38:42 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 18 Jan 2017 00:38:42 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 18 Jan 2017 00:38:43 GMT
EXPOSE 8080/tcp
# Wed, 18 Jan 2017 00:38:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 00:38:43 GMT
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
	-	`sha256:114e02586e63258b0507ccf765d9093c274280e237f2dc4f900856a42299ce75`  
		Last Modified: Tue, 17 Jan 2017 21:37:24 GMT  
		Size: 53.5 MB (53468548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c663802e9abbf7c5e9b65f86dd4af24eb825e52f8c6c6f16c96f2beec46fac`  
		Last Modified: Tue, 17 Jan 2017 21:37:09 GMT  
		Size: 289.1 KB (289067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e59370e0f15d09b53909ba2301358f36843651f3a3e38c041ac3bd91f5d65f6`  
		Last Modified: Wed, 18 Jan 2017 08:24:34 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f15fa1ad43993f93882e9bc4004cad1388505acf472cb9d2e097aea51761d0`  
		Last Modified: Wed, 18 Jan 2017 08:24:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581a0b1397df37f5140e946e652c81e2044a178c77710d528f981dcc53ffbad8`  
		Last Modified: Wed, 18 Jan 2017 08:26:47 GMT  
		Size: 8.0 MB (7979308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d23638c0c9335ffc7e78127ff2bfdbdced404335a36893a9659a3926352457f`  
		Last Modified: Wed, 18 Jan 2017 08:26:44 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8e3c53ee0bd2469602b7b2825579d3fd43299995a718464607b1c4190f2ad4`  
		Last Modified: Wed, 18 Jan 2017 08:26:45 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff363a540ab0f17a6db498c9e573cc1d64dbb48c42a53507c5fd8f35d3d678a7`  
		Last Modified: Wed, 18 Jan 2017 08:26:44 GMT  
		Size: 1.9 KB (1862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28cea2a6eaea6d85c153bd2d3fd8f5c691a7fa20ad9da117dbd56d7c63584079`  
		Last Modified: Wed, 18 Jan 2017 08:26:45 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.15-jre8`

```console
$ docker pull jetty@sha256:bac8bcb78388e0640e8b95c2390744bdffbaee4ecd36242cb26826178dcac98b
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.15-jre8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132207353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9642e13a1a5e26bd2308d2d0e11e0eb985f47d03a30f2e6af75ad300f3cad7c8`
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
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:53:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:53:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 18 Jan 2017 00:38:25 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 18 Jan 2017 00:38:26 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 18 Jan 2017 00:38:26 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 00:38:27 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 18 Jan 2017 00:38:27 GMT
WORKDIR /usr/local/jetty
# Wed, 18 Jan 2017 00:38:28 GMT
ENV JETTY_VERSION=9.3.15.v20161220
# Wed, 18 Jan 2017 00:38:28 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.15.v20161220/jetty-distribution-9.3.15.v20161220.tar.gz
# Wed, 18 Jan 2017 00:38:28 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 18 Jan 2017 00:38:34 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 18 Jan 2017 00:38:34 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 18 Jan 2017 00:38:35 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 18 Jan 2017 00:38:35 GMT
WORKDIR /var/lib/jetty
# Wed, 18 Jan 2017 00:38:40 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 18 Jan 2017 00:38:41 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 18 Jan 2017 00:38:42 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 18 Jan 2017 00:38:42 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 18 Jan 2017 00:38:43 GMT
EXPOSE 8080/tcp
# Wed, 18 Jan 2017 00:38:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 00:38:43 GMT
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
	-	`sha256:114e02586e63258b0507ccf765d9093c274280e237f2dc4f900856a42299ce75`  
		Last Modified: Tue, 17 Jan 2017 21:37:24 GMT  
		Size: 53.5 MB (53468548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c663802e9abbf7c5e9b65f86dd4af24eb825e52f8c6c6f16c96f2beec46fac`  
		Last Modified: Tue, 17 Jan 2017 21:37:09 GMT  
		Size: 289.1 KB (289067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e59370e0f15d09b53909ba2301358f36843651f3a3e38c041ac3bd91f5d65f6`  
		Last Modified: Wed, 18 Jan 2017 08:24:34 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f15fa1ad43993f93882e9bc4004cad1388505acf472cb9d2e097aea51761d0`  
		Last Modified: Wed, 18 Jan 2017 08:24:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581a0b1397df37f5140e946e652c81e2044a178c77710d528f981dcc53ffbad8`  
		Last Modified: Wed, 18 Jan 2017 08:26:47 GMT  
		Size: 8.0 MB (7979308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d23638c0c9335ffc7e78127ff2bfdbdced404335a36893a9659a3926352457f`  
		Last Modified: Wed, 18 Jan 2017 08:26:44 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8e3c53ee0bd2469602b7b2825579d3fd43299995a718464607b1c4190f2ad4`  
		Last Modified: Wed, 18 Jan 2017 08:26:45 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff363a540ab0f17a6db498c9e573cc1d64dbb48c42a53507c5fd8f35d3d678a7`  
		Last Modified: Wed, 18 Jan 2017 08:26:44 GMT  
		Size: 1.9 KB (1862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28cea2a6eaea6d85c153bd2d3fd8f5c691a7fa20ad9da117dbd56d7c63584079`  
		Last Modified: Wed, 18 Jan 2017 08:26:45 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-jre8`

```console
$ docker pull jetty@sha256:bac8bcb78388e0640e8b95c2390744bdffbaee4ecd36242cb26826178dcac98b
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3-jre8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132207353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9642e13a1a5e26bd2308d2d0e11e0eb985f47d03a30f2e6af75ad300f3cad7c8`
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
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:53:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:53:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 18 Jan 2017 00:38:25 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 18 Jan 2017 00:38:26 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 18 Jan 2017 00:38:26 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 00:38:27 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 18 Jan 2017 00:38:27 GMT
WORKDIR /usr/local/jetty
# Wed, 18 Jan 2017 00:38:28 GMT
ENV JETTY_VERSION=9.3.15.v20161220
# Wed, 18 Jan 2017 00:38:28 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.15.v20161220/jetty-distribution-9.3.15.v20161220.tar.gz
# Wed, 18 Jan 2017 00:38:28 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 18 Jan 2017 00:38:34 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 18 Jan 2017 00:38:34 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 18 Jan 2017 00:38:35 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 18 Jan 2017 00:38:35 GMT
WORKDIR /var/lib/jetty
# Wed, 18 Jan 2017 00:38:40 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 18 Jan 2017 00:38:41 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 18 Jan 2017 00:38:42 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 18 Jan 2017 00:38:42 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 18 Jan 2017 00:38:43 GMT
EXPOSE 8080/tcp
# Wed, 18 Jan 2017 00:38:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 00:38:43 GMT
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
	-	`sha256:114e02586e63258b0507ccf765d9093c274280e237f2dc4f900856a42299ce75`  
		Last Modified: Tue, 17 Jan 2017 21:37:24 GMT  
		Size: 53.5 MB (53468548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c663802e9abbf7c5e9b65f86dd4af24eb825e52f8c6c6f16c96f2beec46fac`  
		Last Modified: Tue, 17 Jan 2017 21:37:09 GMT  
		Size: 289.1 KB (289067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e59370e0f15d09b53909ba2301358f36843651f3a3e38c041ac3bd91f5d65f6`  
		Last Modified: Wed, 18 Jan 2017 08:24:34 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f15fa1ad43993f93882e9bc4004cad1388505acf472cb9d2e097aea51761d0`  
		Last Modified: Wed, 18 Jan 2017 08:24:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581a0b1397df37f5140e946e652c81e2044a178c77710d528f981dcc53ffbad8`  
		Last Modified: Wed, 18 Jan 2017 08:26:47 GMT  
		Size: 8.0 MB (7979308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d23638c0c9335ffc7e78127ff2bfdbdced404335a36893a9659a3926352457f`  
		Last Modified: Wed, 18 Jan 2017 08:26:44 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8e3c53ee0bd2469602b7b2825579d3fd43299995a718464607b1c4190f2ad4`  
		Last Modified: Wed, 18 Jan 2017 08:26:45 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff363a540ab0f17a6db498c9e573cc1d64dbb48c42a53507c5fd8f35d3d678a7`  
		Last Modified: Wed, 18 Jan 2017 08:26:44 GMT  
		Size: 1.9 KB (1862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28cea2a6eaea6d85c153bd2d3fd8f5c691a7fa20ad9da117dbd56d7c63584079`  
		Last Modified: Wed, 18 Jan 2017 08:26:45 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre8`

```console
$ docker pull jetty@sha256:bac8bcb78388e0640e8b95c2390744bdffbaee4ecd36242cb26826178dcac98b
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132207353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9642e13a1a5e26bd2308d2d0e11e0eb985f47d03a30f2e6af75ad300f3cad7c8`
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
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:53:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:53:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 18 Jan 2017 00:38:25 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 18 Jan 2017 00:38:26 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 18 Jan 2017 00:38:26 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 00:38:27 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 18 Jan 2017 00:38:27 GMT
WORKDIR /usr/local/jetty
# Wed, 18 Jan 2017 00:38:28 GMT
ENV JETTY_VERSION=9.3.15.v20161220
# Wed, 18 Jan 2017 00:38:28 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.15.v20161220/jetty-distribution-9.3.15.v20161220.tar.gz
# Wed, 18 Jan 2017 00:38:28 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 18 Jan 2017 00:38:34 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 18 Jan 2017 00:38:34 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 18 Jan 2017 00:38:35 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 18 Jan 2017 00:38:35 GMT
WORKDIR /var/lib/jetty
# Wed, 18 Jan 2017 00:38:40 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 18 Jan 2017 00:38:41 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 18 Jan 2017 00:38:42 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 18 Jan 2017 00:38:42 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 18 Jan 2017 00:38:43 GMT
EXPOSE 8080/tcp
# Wed, 18 Jan 2017 00:38:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 00:38:43 GMT
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
	-	`sha256:114e02586e63258b0507ccf765d9093c274280e237f2dc4f900856a42299ce75`  
		Last Modified: Tue, 17 Jan 2017 21:37:24 GMT  
		Size: 53.5 MB (53468548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c663802e9abbf7c5e9b65f86dd4af24eb825e52f8c6c6f16c96f2beec46fac`  
		Last Modified: Tue, 17 Jan 2017 21:37:09 GMT  
		Size: 289.1 KB (289067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e59370e0f15d09b53909ba2301358f36843651f3a3e38c041ac3bd91f5d65f6`  
		Last Modified: Wed, 18 Jan 2017 08:24:34 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f15fa1ad43993f93882e9bc4004cad1388505acf472cb9d2e097aea51761d0`  
		Last Modified: Wed, 18 Jan 2017 08:24:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581a0b1397df37f5140e946e652c81e2044a178c77710d528f981dcc53ffbad8`  
		Last Modified: Wed, 18 Jan 2017 08:26:47 GMT  
		Size: 8.0 MB (7979308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d23638c0c9335ffc7e78127ff2bfdbdced404335a36893a9659a3926352457f`  
		Last Modified: Wed, 18 Jan 2017 08:26:44 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8e3c53ee0bd2469602b7b2825579d3fd43299995a718464607b1c4190f2ad4`  
		Last Modified: Wed, 18 Jan 2017 08:26:45 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff363a540ab0f17a6db498c9e573cc1d64dbb48c42a53507c5fd8f35d3d678a7`  
		Last Modified: Wed, 18 Jan 2017 08:26:44 GMT  
		Size: 1.9 KB (1862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28cea2a6eaea6d85c153bd2d3fd8f5c691a7fa20ad9da117dbd56d7c63584079`  
		Last Modified: Wed, 18 Jan 2017 08:26:45 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:latest`

```console
$ docker pull jetty@sha256:bac8bcb78388e0640e8b95c2390744bdffbaee4ecd36242cb26826178dcac98b
```

-	Platforms:
	-	linux; amd64

### `jetty:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132207353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9642e13a1a5e26bd2308d2d0e11e0eb985f47d03a30f2e6af75ad300f3cad7c8`
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
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:53:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:53:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 18 Jan 2017 00:38:25 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 18 Jan 2017 00:38:26 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 18 Jan 2017 00:38:26 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 00:38:27 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 18 Jan 2017 00:38:27 GMT
WORKDIR /usr/local/jetty
# Wed, 18 Jan 2017 00:38:28 GMT
ENV JETTY_VERSION=9.3.15.v20161220
# Wed, 18 Jan 2017 00:38:28 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.15.v20161220/jetty-distribution-9.3.15.v20161220.tar.gz
# Wed, 18 Jan 2017 00:38:28 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 18 Jan 2017 00:38:34 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 18 Jan 2017 00:38:34 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 18 Jan 2017 00:38:35 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 18 Jan 2017 00:38:35 GMT
WORKDIR /var/lib/jetty
# Wed, 18 Jan 2017 00:38:40 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 18 Jan 2017 00:38:41 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 18 Jan 2017 00:38:42 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 18 Jan 2017 00:38:42 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 18 Jan 2017 00:38:43 GMT
EXPOSE 8080/tcp
# Wed, 18 Jan 2017 00:38:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 00:38:43 GMT
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
	-	`sha256:114e02586e63258b0507ccf765d9093c274280e237f2dc4f900856a42299ce75`  
		Last Modified: Tue, 17 Jan 2017 21:37:24 GMT  
		Size: 53.5 MB (53468548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c663802e9abbf7c5e9b65f86dd4af24eb825e52f8c6c6f16c96f2beec46fac`  
		Last Modified: Tue, 17 Jan 2017 21:37:09 GMT  
		Size: 289.1 KB (289067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e59370e0f15d09b53909ba2301358f36843651f3a3e38c041ac3bd91f5d65f6`  
		Last Modified: Wed, 18 Jan 2017 08:24:34 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f15fa1ad43993f93882e9bc4004cad1388505acf472cb9d2e097aea51761d0`  
		Last Modified: Wed, 18 Jan 2017 08:24:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581a0b1397df37f5140e946e652c81e2044a178c77710d528f981dcc53ffbad8`  
		Last Modified: Wed, 18 Jan 2017 08:26:47 GMT  
		Size: 8.0 MB (7979308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d23638c0c9335ffc7e78127ff2bfdbdced404335a36893a9659a3926352457f`  
		Last Modified: Wed, 18 Jan 2017 08:26:44 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8e3c53ee0bd2469602b7b2825579d3fd43299995a718464607b1c4190f2ad4`  
		Last Modified: Wed, 18 Jan 2017 08:26:45 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff363a540ab0f17a6db498c9e573cc1d64dbb48c42a53507c5fd8f35d3d678a7`  
		Last Modified: Wed, 18 Jan 2017 08:26:44 GMT  
		Size: 1.9 KB (1862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28cea2a6eaea6d85c153bd2d3fd8f5c691a7fa20ad9da117dbd56d7c63584079`  
		Last Modified: Wed, 18 Jan 2017 08:26:45 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre8`

```console
$ docker pull jetty@sha256:bac8bcb78388e0640e8b95c2390744bdffbaee4ecd36242cb26826178dcac98b
```

-	Platforms:
	-	linux; amd64

### `jetty:jre8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132207353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9642e13a1a5e26bd2308d2d0e11e0eb985f47d03a30f2e6af75ad300f3cad7c8`
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
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:53:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:53:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 18 Jan 2017 00:38:25 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 18 Jan 2017 00:38:26 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 18 Jan 2017 00:38:26 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 00:38:27 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 18 Jan 2017 00:38:27 GMT
WORKDIR /usr/local/jetty
# Wed, 18 Jan 2017 00:38:28 GMT
ENV JETTY_VERSION=9.3.15.v20161220
# Wed, 18 Jan 2017 00:38:28 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.15.v20161220/jetty-distribution-9.3.15.v20161220.tar.gz
# Wed, 18 Jan 2017 00:38:28 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 18 Jan 2017 00:38:34 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 18 Jan 2017 00:38:34 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 18 Jan 2017 00:38:35 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 18 Jan 2017 00:38:35 GMT
WORKDIR /var/lib/jetty
# Wed, 18 Jan 2017 00:38:40 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 18 Jan 2017 00:38:41 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 18 Jan 2017 00:38:42 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 18 Jan 2017 00:38:42 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 18 Jan 2017 00:38:43 GMT
EXPOSE 8080/tcp
# Wed, 18 Jan 2017 00:38:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 00:38:43 GMT
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
	-	`sha256:114e02586e63258b0507ccf765d9093c274280e237f2dc4f900856a42299ce75`  
		Last Modified: Tue, 17 Jan 2017 21:37:24 GMT  
		Size: 53.5 MB (53468548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c663802e9abbf7c5e9b65f86dd4af24eb825e52f8c6c6f16c96f2beec46fac`  
		Last Modified: Tue, 17 Jan 2017 21:37:09 GMT  
		Size: 289.1 KB (289067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e59370e0f15d09b53909ba2301358f36843651f3a3e38c041ac3bd91f5d65f6`  
		Last Modified: Wed, 18 Jan 2017 08:24:34 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f15fa1ad43993f93882e9bc4004cad1388505acf472cb9d2e097aea51761d0`  
		Last Modified: Wed, 18 Jan 2017 08:24:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581a0b1397df37f5140e946e652c81e2044a178c77710d528f981dcc53ffbad8`  
		Last Modified: Wed, 18 Jan 2017 08:26:47 GMT  
		Size: 8.0 MB (7979308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d23638c0c9335ffc7e78127ff2bfdbdced404335a36893a9659a3926352457f`  
		Last Modified: Wed, 18 Jan 2017 08:26:44 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8e3c53ee0bd2469602b7b2825579d3fd43299995a718464607b1c4190f2ad4`  
		Last Modified: Wed, 18 Jan 2017 08:26:45 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff363a540ab0f17a6db498c9e573cc1d64dbb48c42a53507c5fd8f35d3d678a7`  
		Last Modified: Wed, 18 Jan 2017 08:26:44 GMT  
		Size: 1.9 KB (1862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28cea2a6eaea6d85c153bd2d3fd8f5c691a7fa20ad9da117dbd56d7c63584079`  
		Last Modified: Wed, 18 Jan 2017 08:26:45 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.15-alpine`

```console
$ docker pull jetty@sha256:f32fff783f1626360438eb45de383c4c0ea4259a69b403b90d718bb7bf51b30c
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.15-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (49999722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9db3279ebc54ffd07f652d06d11caaacd3676bdb32443a7074a08c0aa4ca376`
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
# Tue, 27 Dec 2016 22:16:17 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 27 Dec 2016 22:16:19 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 27 Dec 2016 22:16:19 GMT
ENV JETTY_VERSION=9.3.15.v20161220
# Tue, 27 Dec 2016 22:16:20 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.15.v20161220/jetty-distribution-9.3.15.v20161220.tar.gz
# Tue, 27 Dec 2016 22:16:20 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Tue, 27 Dec 2016 22:16:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 27 Dec 2016 22:16:36 GMT
WORKDIR /var/lib/jetty
# Tue, 27 Dec 2016 22:16:37 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 27 Dec 2016 22:16:38 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 27 Dec 2016 22:16:39 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 27 Dec 2016 22:16:50 GMT
EXPOSE 8080/tcp
# Tue, 27 Dec 2016 22:16:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:16:51 GMT
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
	-	`sha256:556ab6b7fd63fdc96508ab3ea97b47b07d367160c77039c890adf341a30d6fa3`  
		Last Modified: Tue, 27 Dec 2016 22:45:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01f35cefa41f885359182df460ddffe0930efcde9971b0c28454a6fde445554`  
		Last Modified: Tue, 27 Dec 2016 22:45:12 GMT  
		Size: 8.0 MB (8012385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1334e08dec5b9e1014a8795a97efdf76b18943a695937f4f23d374b5577d254f`  
		Last Modified: Tue, 27 Dec 2016 22:45:11 GMT  
		Size: 1.9 KB (1865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624a0edf4cb8ff57e4a7a85ad947171ae07fb4f9fe17955becf2b4dfe2271bd4`  
		Last Modified: Tue, 27 Dec 2016 22:45:11 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-alpine`

```console
$ docker pull jetty@sha256:f32fff783f1626360438eb45de383c4c0ea4259a69b403b90d718bb7bf51b30c
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (49999722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9db3279ebc54ffd07f652d06d11caaacd3676bdb32443a7074a08c0aa4ca376`
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
# Tue, 27 Dec 2016 22:16:17 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 27 Dec 2016 22:16:19 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 27 Dec 2016 22:16:19 GMT
ENV JETTY_VERSION=9.3.15.v20161220
# Tue, 27 Dec 2016 22:16:20 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.15.v20161220/jetty-distribution-9.3.15.v20161220.tar.gz
# Tue, 27 Dec 2016 22:16:20 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Tue, 27 Dec 2016 22:16:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 27 Dec 2016 22:16:36 GMT
WORKDIR /var/lib/jetty
# Tue, 27 Dec 2016 22:16:37 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 27 Dec 2016 22:16:38 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 27 Dec 2016 22:16:39 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 27 Dec 2016 22:16:50 GMT
EXPOSE 8080/tcp
# Tue, 27 Dec 2016 22:16:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:16:51 GMT
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
	-	`sha256:556ab6b7fd63fdc96508ab3ea97b47b07d367160c77039c890adf341a30d6fa3`  
		Last Modified: Tue, 27 Dec 2016 22:45:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01f35cefa41f885359182df460ddffe0930efcde9971b0c28454a6fde445554`  
		Last Modified: Tue, 27 Dec 2016 22:45:12 GMT  
		Size: 8.0 MB (8012385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1334e08dec5b9e1014a8795a97efdf76b18943a695937f4f23d374b5577d254f`  
		Last Modified: Tue, 27 Dec 2016 22:45:11 GMT  
		Size: 1.9 KB (1865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624a0edf4cb8ff57e4a7a85ad947171ae07fb4f9fe17955becf2b4dfe2271bd4`  
		Last Modified: Tue, 27 Dec 2016 22:45:11 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-alpine`

```console
$ docker pull jetty@sha256:f32fff783f1626360438eb45de383c4c0ea4259a69b403b90d718bb7bf51b30c
```

-	Platforms:
	-	linux; amd64

### `jetty:9-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (49999722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9db3279ebc54ffd07f652d06d11caaacd3676bdb32443a7074a08c0aa4ca376`
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
# Tue, 27 Dec 2016 22:16:17 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 27 Dec 2016 22:16:19 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 27 Dec 2016 22:16:19 GMT
ENV JETTY_VERSION=9.3.15.v20161220
# Tue, 27 Dec 2016 22:16:20 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.15.v20161220/jetty-distribution-9.3.15.v20161220.tar.gz
# Tue, 27 Dec 2016 22:16:20 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Tue, 27 Dec 2016 22:16:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 27 Dec 2016 22:16:36 GMT
WORKDIR /var/lib/jetty
# Tue, 27 Dec 2016 22:16:37 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 27 Dec 2016 22:16:38 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 27 Dec 2016 22:16:39 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 27 Dec 2016 22:16:50 GMT
EXPOSE 8080/tcp
# Tue, 27 Dec 2016 22:16:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:16:51 GMT
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
	-	`sha256:556ab6b7fd63fdc96508ab3ea97b47b07d367160c77039c890adf341a30d6fa3`  
		Last Modified: Tue, 27 Dec 2016 22:45:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01f35cefa41f885359182df460ddffe0930efcde9971b0c28454a6fde445554`  
		Last Modified: Tue, 27 Dec 2016 22:45:12 GMT  
		Size: 8.0 MB (8012385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1334e08dec5b9e1014a8795a97efdf76b18943a695937f4f23d374b5577d254f`  
		Last Modified: Tue, 27 Dec 2016 22:45:11 GMT  
		Size: 1.9 KB (1865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624a0edf4cb8ff57e4a7a85ad947171ae07fb4f9fe17955becf2b4dfe2271bd4`  
		Last Modified: Tue, 27 Dec 2016 22:45:11 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.15-jre8-alpine`

```console
$ docker pull jetty@sha256:f32fff783f1626360438eb45de383c4c0ea4259a69b403b90d718bb7bf51b30c
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.15-jre8-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (49999722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9db3279ebc54ffd07f652d06d11caaacd3676bdb32443a7074a08c0aa4ca376`
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
# Tue, 27 Dec 2016 22:16:17 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 27 Dec 2016 22:16:19 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 27 Dec 2016 22:16:19 GMT
ENV JETTY_VERSION=9.3.15.v20161220
# Tue, 27 Dec 2016 22:16:20 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.15.v20161220/jetty-distribution-9.3.15.v20161220.tar.gz
# Tue, 27 Dec 2016 22:16:20 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Tue, 27 Dec 2016 22:16:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 27 Dec 2016 22:16:36 GMT
WORKDIR /var/lib/jetty
# Tue, 27 Dec 2016 22:16:37 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 27 Dec 2016 22:16:38 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 27 Dec 2016 22:16:39 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 27 Dec 2016 22:16:50 GMT
EXPOSE 8080/tcp
# Tue, 27 Dec 2016 22:16:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:16:51 GMT
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
	-	`sha256:556ab6b7fd63fdc96508ab3ea97b47b07d367160c77039c890adf341a30d6fa3`  
		Last Modified: Tue, 27 Dec 2016 22:45:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01f35cefa41f885359182df460ddffe0930efcde9971b0c28454a6fde445554`  
		Last Modified: Tue, 27 Dec 2016 22:45:12 GMT  
		Size: 8.0 MB (8012385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1334e08dec5b9e1014a8795a97efdf76b18943a695937f4f23d374b5577d254f`  
		Last Modified: Tue, 27 Dec 2016 22:45:11 GMT  
		Size: 1.9 KB (1865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624a0edf4cb8ff57e4a7a85ad947171ae07fb4f9fe17955becf2b4dfe2271bd4`  
		Last Modified: Tue, 27 Dec 2016 22:45:11 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-jre8-alpine`

```console
$ docker pull jetty@sha256:f32fff783f1626360438eb45de383c4c0ea4259a69b403b90d718bb7bf51b30c
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3-jre8-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (49999722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9db3279ebc54ffd07f652d06d11caaacd3676bdb32443a7074a08c0aa4ca376`
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
# Tue, 27 Dec 2016 22:16:17 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 27 Dec 2016 22:16:19 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 27 Dec 2016 22:16:19 GMT
ENV JETTY_VERSION=9.3.15.v20161220
# Tue, 27 Dec 2016 22:16:20 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.15.v20161220/jetty-distribution-9.3.15.v20161220.tar.gz
# Tue, 27 Dec 2016 22:16:20 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Tue, 27 Dec 2016 22:16:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 27 Dec 2016 22:16:36 GMT
WORKDIR /var/lib/jetty
# Tue, 27 Dec 2016 22:16:37 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 27 Dec 2016 22:16:38 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 27 Dec 2016 22:16:39 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 27 Dec 2016 22:16:50 GMT
EXPOSE 8080/tcp
# Tue, 27 Dec 2016 22:16:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:16:51 GMT
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
	-	`sha256:556ab6b7fd63fdc96508ab3ea97b47b07d367160c77039c890adf341a30d6fa3`  
		Last Modified: Tue, 27 Dec 2016 22:45:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01f35cefa41f885359182df460ddffe0930efcde9971b0c28454a6fde445554`  
		Last Modified: Tue, 27 Dec 2016 22:45:12 GMT  
		Size: 8.0 MB (8012385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1334e08dec5b9e1014a8795a97efdf76b18943a695937f4f23d374b5577d254f`  
		Last Modified: Tue, 27 Dec 2016 22:45:11 GMT  
		Size: 1.9 KB (1865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624a0edf4cb8ff57e4a7a85ad947171ae07fb4f9fe17955becf2b4dfe2271bd4`  
		Last Modified: Tue, 27 Dec 2016 22:45:11 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre8-alpine`

```console
$ docker pull jetty@sha256:f32fff783f1626360438eb45de383c4c0ea4259a69b403b90d718bb7bf51b30c
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre8-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (49999722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9db3279ebc54ffd07f652d06d11caaacd3676bdb32443a7074a08c0aa4ca376`
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
# Tue, 27 Dec 2016 22:16:17 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 27 Dec 2016 22:16:19 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 27 Dec 2016 22:16:19 GMT
ENV JETTY_VERSION=9.3.15.v20161220
# Tue, 27 Dec 2016 22:16:20 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.15.v20161220/jetty-distribution-9.3.15.v20161220.tar.gz
# Tue, 27 Dec 2016 22:16:20 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Tue, 27 Dec 2016 22:16:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 27 Dec 2016 22:16:36 GMT
WORKDIR /var/lib/jetty
# Tue, 27 Dec 2016 22:16:37 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 27 Dec 2016 22:16:38 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 27 Dec 2016 22:16:39 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 27 Dec 2016 22:16:50 GMT
EXPOSE 8080/tcp
# Tue, 27 Dec 2016 22:16:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:16:51 GMT
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
	-	`sha256:556ab6b7fd63fdc96508ab3ea97b47b07d367160c77039c890adf341a30d6fa3`  
		Last Modified: Tue, 27 Dec 2016 22:45:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01f35cefa41f885359182df460ddffe0930efcde9971b0c28454a6fde445554`  
		Last Modified: Tue, 27 Dec 2016 22:45:12 GMT  
		Size: 8.0 MB (8012385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1334e08dec5b9e1014a8795a97efdf76b18943a695937f4f23d374b5577d254f`  
		Last Modified: Tue, 27 Dec 2016 22:45:11 GMT  
		Size: 1.9 KB (1865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624a0edf4cb8ff57e4a7a85ad947171ae07fb4f9fe17955becf2b4dfe2271bd4`  
		Last Modified: Tue, 27 Dec 2016 22:45:11 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:alpine`

```console
$ docker pull jetty@sha256:f32fff783f1626360438eb45de383c4c0ea4259a69b403b90d718bb7bf51b30c
```

-	Platforms:
	-	linux; amd64

### `jetty:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (49999722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9db3279ebc54ffd07f652d06d11caaacd3676bdb32443a7074a08c0aa4ca376`
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
# Tue, 27 Dec 2016 22:16:17 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 27 Dec 2016 22:16:19 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 27 Dec 2016 22:16:19 GMT
ENV JETTY_VERSION=9.3.15.v20161220
# Tue, 27 Dec 2016 22:16:20 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.15.v20161220/jetty-distribution-9.3.15.v20161220.tar.gz
# Tue, 27 Dec 2016 22:16:20 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Tue, 27 Dec 2016 22:16:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 27 Dec 2016 22:16:36 GMT
WORKDIR /var/lib/jetty
# Tue, 27 Dec 2016 22:16:37 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 27 Dec 2016 22:16:38 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 27 Dec 2016 22:16:39 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 27 Dec 2016 22:16:50 GMT
EXPOSE 8080/tcp
# Tue, 27 Dec 2016 22:16:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:16:51 GMT
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
	-	`sha256:556ab6b7fd63fdc96508ab3ea97b47b07d367160c77039c890adf341a30d6fa3`  
		Last Modified: Tue, 27 Dec 2016 22:45:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01f35cefa41f885359182df460ddffe0930efcde9971b0c28454a6fde445554`  
		Last Modified: Tue, 27 Dec 2016 22:45:12 GMT  
		Size: 8.0 MB (8012385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1334e08dec5b9e1014a8795a97efdf76b18943a695937f4f23d374b5577d254f`  
		Last Modified: Tue, 27 Dec 2016 22:45:11 GMT  
		Size: 1.9 KB (1865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624a0edf4cb8ff57e4a7a85ad947171ae07fb4f9fe17955becf2b4dfe2271bd4`  
		Last Modified: Tue, 27 Dec 2016 22:45:11 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre8-alpine`

```console
$ docker pull jetty@sha256:f32fff783f1626360438eb45de383c4c0ea4259a69b403b90d718bb7bf51b30c
```

-	Platforms:
	-	linux; amd64

### `jetty:jre8-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (49999722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9db3279ebc54ffd07f652d06d11caaacd3676bdb32443a7074a08c0aa4ca376`
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
# Tue, 27 Dec 2016 22:16:17 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 27 Dec 2016 22:16:19 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 27 Dec 2016 22:16:19 GMT
ENV JETTY_VERSION=9.3.15.v20161220
# Tue, 27 Dec 2016 22:16:20 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.15.v20161220/jetty-distribution-9.3.15.v20161220.tar.gz
# Tue, 27 Dec 2016 22:16:20 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Tue, 27 Dec 2016 22:16:31 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg coreutils curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& cd $JETTY_BASE 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 27 Dec 2016 22:16:36 GMT
WORKDIR /var/lib/jetty
# Tue, 27 Dec 2016 22:16:37 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 27 Dec 2016 22:16:38 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Tue, 27 Dec 2016 22:16:39 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Tue, 27 Dec 2016 22:16:50 GMT
EXPOSE 8080/tcp
# Tue, 27 Dec 2016 22:16:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:16:51 GMT
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
	-	`sha256:556ab6b7fd63fdc96508ab3ea97b47b07d367160c77039c890adf341a30d6fa3`  
		Last Modified: Tue, 27 Dec 2016 22:45:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01f35cefa41f885359182df460ddffe0930efcde9971b0c28454a6fde445554`  
		Last Modified: Tue, 27 Dec 2016 22:45:12 GMT  
		Size: 8.0 MB (8012385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1334e08dec5b9e1014a8795a97efdf76b18943a695937f4f23d374b5577d254f`  
		Last Modified: Tue, 27 Dec 2016 22:45:11 GMT  
		Size: 1.9 KB (1865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624a0edf4cb8ff57e4a7a85ad947171ae07fb4f9fe17955becf2b4dfe2271bd4`  
		Last Modified: Tue, 27 Dec 2016 22:45:11 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.20`

```console
$ docker pull jetty@sha256:110a097fef7862866187a478e1d2bf91ccca66a9f8b27550288db525fbedd701
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2.20` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134246057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e150963c7fc47f862a4b602fba268975a1a7f676e8c2c18bcf265fb0a0f1d20`
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
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:53:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:53:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 18 Jan 2017 00:38:25 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 18 Jan 2017 00:38:26 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 18 Jan 2017 00:38:26 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 00:38:27 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 18 Jan 2017 00:38:27 GMT
WORKDIR /usr/local/jetty
# Wed, 18 Jan 2017 00:39:02 GMT
ENV JETTY_VERSION=9.2.20.v20161216
# Wed, 18 Jan 2017 00:39:03 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.20.v20161216/jetty-distribution-9.2.20.v20161216.tar.gz
# Wed, 18 Jan 2017 00:39:03 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 18 Jan 2017 00:39:08 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 18 Jan 2017 00:39:08 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 18 Jan 2017 00:39:09 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 18 Jan 2017 00:39:10 GMT
WORKDIR /var/lib/jetty
# Wed, 18 Jan 2017 00:39:11 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 18 Jan 2017 00:39:12 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 18 Jan 2017 00:39:12 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 18 Jan 2017 00:39:13 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 18 Jan 2017 00:39:13 GMT
EXPOSE 8080/tcp
# Wed, 18 Jan 2017 00:39:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 00:39:14 GMT
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
	-	`sha256:114e02586e63258b0507ccf765d9093c274280e237f2dc4f900856a42299ce75`  
		Last Modified: Tue, 17 Jan 2017 21:37:24 GMT  
		Size: 53.5 MB (53468548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c663802e9abbf7c5e9b65f86dd4af24eb825e52f8c6c6f16c96f2beec46fac`  
		Last Modified: Tue, 17 Jan 2017 21:37:09 GMT  
		Size: 289.1 KB (289067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e59370e0f15d09b53909ba2301358f36843651f3a3e38c041ac3bd91f5d65f6`  
		Last Modified: Wed, 18 Jan 2017 08:24:34 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f15fa1ad43993f93882e9bc4004cad1388505acf472cb9d2e097aea51761d0`  
		Last Modified: Wed, 18 Jan 2017 08:24:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096bc7c784c9e027d861a58261ae50802a3e489e00be4578e119979865e68192`  
		Last Modified: Wed, 18 Jan 2017 08:24:34 GMT  
		Size: 10.0 MB (10018577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be1bc2519e0639cb4524db94d210319730d4075dbaa482032cff23f6aa7029bd`  
		Last Modified: Wed, 18 Jan 2017 08:24:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb007576e637a1fbba8c10cb3fe818b37aeb13eca166a92646f8c8926d5293bd`  
		Last Modified: Wed, 18 Jan 2017 08:24:32 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee22bc9e456efeb20c38e790f9415467b1012cb8ad48933caa604be388f1919c`  
		Last Modified: Wed, 18 Jan 2017 08:24:33 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f31e6a058be5c900eb6b6b55453ecaccc711b426143c409971299ceb72afeb8`  
		Last Modified: Wed, 18 Jan 2017 08:24:32 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2`

```console
$ docker pull jetty@sha256:110a097fef7862866187a478e1d2bf91ccca66a9f8b27550288db525fbedd701
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134246057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e150963c7fc47f862a4b602fba268975a1a7f676e8c2c18bcf265fb0a0f1d20`
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
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:53:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:53:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 18 Jan 2017 00:38:25 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 18 Jan 2017 00:38:26 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 18 Jan 2017 00:38:26 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 00:38:27 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 18 Jan 2017 00:38:27 GMT
WORKDIR /usr/local/jetty
# Wed, 18 Jan 2017 00:39:02 GMT
ENV JETTY_VERSION=9.2.20.v20161216
# Wed, 18 Jan 2017 00:39:03 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.20.v20161216/jetty-distribution-9.2.20.v20161216.tar.gz
# Wed, 18 Jan 2017 00:39:03 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 18 Jan 2017 00:39:08 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 18 Jan 2017 00:39:08 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 18 Jan 2017 00:39:09 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 18 Jan 2017 00:39:10 GMT
WORKDIR /var/lib/jetty
# Wed, 18 Jan 2017 00:39:11 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 18 Jan 2017 00:39:12 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 18 Jan 2017 00:39:12 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 18 Jan 2017 00:39:13 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 18 Jan 2017 00:39:13 GMT
EXPOSE 8080/tcp
# Wed, 18 Jan 2017 00:39:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 00:39:14 GMT
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
	-	`sha256:114e02586e63258b0507ccf765d9093c274280e237f2dc4f900856a42299ce75`  
		Last Modified: Tue, 17 Jan 2017 21:37:24 GMT  
		Size: 53.5 MB (53468548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c663802e9abbf7c5e9b65f86dd4af24eb825e52f8c6c6f16c96f2beec46fac`  
		Last Modified: Tue, 17 Jan 2017 21:37:09 GMT  
		Size: 289.1 KB (289067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e59370e0f15d09b53909ba2301358f36843651f3a3e38c041ac3bd91f5d65f6`  
		Last Modified: Wed, 18 Jan 2017 08:24:34 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f15fa1ad43993f93882e9bc4004cad1388505acf472cb9d2e097aea51761d0`  
		Last Modified: Wed, 18 Jan 2017 08:24:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096bc7c784c9e027d861a58261ae50802a3e489e00be4578e119979865e68192`  
		Last Modified: Wed, 18 Jan 2017 08:24:34 GMT  
		Size: 10.0 MB (10018577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be1bc2519e0639cb4524db94d210319730d4075dbaa482032cff23f6aa7029bd`  
		Last Modified: Wed, 18 Jan 2017 08:24:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb007576e637a1fbba8c10cb3fe818b37aeb13eca166a92646f8c8926d5293bd`  
		Last Modified: Wed, 18 Jan 2017 08:24:32 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee22bc9e456efeb20c38e790f9415467b1012cb8ad48933caa604be388f1919c`  
		Last Modified: Wed, 18 Jan 2017 08:24:33 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f31e6a058be5c900eb6b6b55453ecaccc711b426143c409971299ceb72afeb8`  
		Last Modified: Wed, 18 Jan 2017 08:24:32 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.20-jre8`

```console
$ docker pull jetty@sha256:110a097fef7862866187a478e1d2bf91ccca66a9f8b27550288db525fbedd701
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2.20-jre8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134246057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e150963c7fc47f862a4b602fba268975a1a7f676e8c2c18bcf265fb0a0f1d20`
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
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:53:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:53:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 18 Jan 2017 00:38:25 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 18 Jan 2017 00:38:26 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 18 Jan 2017 00:38:26 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 00:38:27 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 18 Jan 2017 00:38:27 GMT
WORKDIR /usr/local/jetty
# Wed, 18 Jan 2017 00:39:02 GMT
ENV JETTY_VERSION=9.2.20.v20161216
# Wed, 18 Jan 2017 00:39:03 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.20.v20161216/jetty-distribution-9.2.20.v20161216.tar.gz
# Wed, 18 Jan 2017 00:39:03 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 18 Jan 2017 00:39:08 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 18 Jan 2017 00:39:08 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 18 Jan 2017 00:39:09 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 18 Jan 2017 00:39:10 GMT
WORKDIR /var/lib/jetty
# Wed, 18 Jan 2017 00:39:11 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 18 Jan 2017 00:39:12 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 18 Jan 2017 00:39:12 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 18 Jan 2017 00:39:13 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 18 Jan 2017 00:39:13 GMT
EXPOSE 8080/tcp
# Wed, 18 Jan 2017 00:39:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 00:39:14 GMT
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
	-	`sha256:114e02586e63258b0507ccf765d9093c274280e237f2dc4f900856a42299ce75`  
		Last Modified: Tue, 17 Jan 2017 21:37:24 GMT  
		Size: 53.5 MB (53468548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c663802e9abbf7c5e9b65f86dd4af24eb825e52f8c6c6f16c96f2beec46fac`  
		Last Modified: Tue, 17 Jan 2017 21:37:09 GMT  
		Size: 289.1 KB (289067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e59370e0f15d09b53909ba2301358f36843651f3a3e38c041ac3bd91f5d65f6`  
		Last Modified: Wed, 18 Jan 2017 08:24:34 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f15fa1ad43993f93882e9bc4004cad1388505acf472cb9d2e097aea51761d0`  
		Last Modified: Wed, 18 Jan 2017 08:24:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096bc7c784c9e027d861a58261ae50802a3e489e00be4578e119979865e68192`  
		Last Modified: Wed, 18 Jan 2017 08:24:34 GMT  
		Size: 10.0 MB (10018577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be1bc2519e0639cb4524db94d210319730d4075dbaa482032cff23f6aa7029bd`  
		Last Modified: Wed, 18 Jan 2017 08:24:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb007576e637a1fbba8c10cb3fe818b37aeb13eca166a92646f8c8926d5293bd`  
		Last Modified: Wed, 18 Jan 2017 08:24:32 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee22bc9e456efeb20c38e790f9415467b1012cb8ad48933caa604be388f1919c`  
		Last Modified: Wed, 18 Jan 2017 08:24:33 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f31e6a058be5c900eb6b6b55453ecaccc711b426143c409971299ceb72afeb8`  
		Last Modified: Wed, 18 Jan 2017 08:24:32 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2-jre8`

```console
$ docker pull jetty@sha256:110a097fef7862866187a478e1d2bf91ccca66a9f8b27550288db525fbedd701
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2-jre8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134246057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e150963c7fc47f862a4b602fba268975a1a7f676e8c2c18bcf265fb0a0f1d20`
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
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:53:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:53:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 18 Jan 2017 00:38:25 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 18 Jan 2017 00:38:26 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 18 Jan 2017 00:38:26 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 00:38:27 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 18 Jan 2017 00:38:27 GMT
WORKDIR /usr/local/jetty
# Wed, 18 Jan 2017 00:39:02 GMT
ENV JETTY_VERSION=9.2.20.v20161216
# Wed, 18 Jan 2017 00:39:03 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.20.v20161216/jetty-distribution-9.2.20.v20161216.tar.gz
# Wed, 18 Jan 2017 00:39:03 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 18 Jan 2017 00:39:08 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 18 Jan 2017 00:39:08 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 18 Jan 2017 00:39:09 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 18 Jan 2017 00:39:10 GMT
WORKDIR /var/lib/jetty
# Wed, 18 Jan 2017 00:39:11 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 18 Jan 2017 00:39:12 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 18 Jan 2017 00:39:12 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 18 Jan 2017 00:39:13 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 18 Jan 2017 00:39:13 GMT
EXPOSE 8080/tcp
# Wed, 18 Jan 2017 00:39:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 00:39:14 GMT
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
	-	`sha256:114e02586e63258b0507ccf765d9093c274280e237f2dc4f900856a42299ce75`  
		Last Modified: Tue, 17 Jan 2017 21:37:24 GMT  
		Size: 53.5 MB (53468548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c663802e9abbf7c5e9b65f86dd4af24eb825e52f8c6c6f16c96f2beec46fac`  
		Last Modified: Tue, 17 Jan 2017 21:37:09 GMT  
		Size: 289.1 KB (289067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e59370e0f15d09b53909ba2301358f36843651f3a3e38c041ac3bd91f5d65f6`  
		Last Modified: Wed, 18 Jan 2017 08:24:34 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f15fa1ad43993f93882e9bc4004cad1388505acf472cb9d2e097aea51761d0`  
		Last Modified: Wed, 18 Jan 2017 08:24:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096bc7c784c9e027d861a58261ae50802a3e489e00be4578e119979865e68192`  
		Last Modified: Wed, 18 Jan 2017 08:24:34 GMT  
		Size: 10.0 MB (10018577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be1bc2519e0639cb4524db94d210319730d4075dbaa482032cff23f6aa7029bd`  
		Last Modified: Wed, 18 Jan 2017 08:24:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb007576e637a1fbba8c10cb3fe818b37aeb13eca166a92646f8c8926d5293bd`  
		Last Modified: Wed, 18 Jan 2017 08:24:32 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee22bc9e456efeb20c38e790f9415467b1012cb8ad48933caa604be388f1919c`  
		Last Modified: Wed, 18 Jan 2017 08:24:33 GMT  
		Size: 1.6 KB (1578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f31e6a058be5c900eb6b6b55453ecaccc711b426143c409971299ceb72afeb8`  
		Last Modified: Wed, 18 Jan 2017 08:24:32 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.20-jre7`

```console
$ docker pull jetty@sha256:111a775a289d6a3af62528488c973203f0fc6f6813259f90e55e2f5e255528c5
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2.20-jre7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158249061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80b5caf2bc04759592effc3f09a6825ee3dcd999c68e030f8a9da2fca2be6356`
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
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_VERSION=7u111
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-2~deb8u1
# Tue, 17 Jan 2017 00:51:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 18 Jan 2017 00:38:45 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 18 Jan 2017 00:38:46 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 18 Jan 2017 00:38:46 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 00:38:47 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 18 Jan 2017 00:38:47 GMT
WORKDIR /usr/local/jetty
# Wed, 18 Jan 2017 00:38:48 GMT
ENV JETTY_VERSION=9.2.20.v20161216
# Wed, 18 Jan 2017 00:38:48 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.20.v20161216/jetty-distribution-9.2.20.v20161216.tar.gz
# Wed, 18 Jan 2017 00:38:48 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 18 Jan 2017 00:38:54 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 18 Jan 2017 00:38:54 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 18 Jan 2017 00:38:55 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 18 Jan 2017 00:38:56 GMT
WORKDIR /var/lib/jetty
# Wed, 18 Jan 2017 00:38:59 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 18 Jan 2017 00:38:59 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 18 Jan 2017 00:39:00 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 18 Jan 2017 00:39:01 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 18 Jan 2017 00:39:01 GMT
EXPOSE 8080/tcp
# Wed, 18 Jan 2017 00:39:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 00:39:02 GMT
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
	-	`sha256:028c93201aa7082fcfa16582dbc2ecd8d6f54dc56d46603688bd7ff7f3c60c1f`  
		Last Modified: Wed, 18 Jan 2017 05:28:06 GMT  
		Size: 77.8 MB (77760846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f17517de399b265dfbaa04761f4d3c4407a333185aea00645ba3fb0560d4d0`  
		Last Modified: Wed, 18 Jan 2017 08:25:42 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec3025ae836bbac18daaab748cf1f113f078cf05106b6ddc647d38382d963e9`  
		Last Modified: Wed, 18 Jan 2017 08:25:42 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2aa3dab4b64b0b24b22d36966bfa51180785131d21892f5056e74e6a5013095`  
		Last Modified: Wed, 18 Jan 2017 08:25:41 GMT  
		Size: 10.0 MB (10018577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc10f536ef13c77323405e43945c3e558813716a38ba8115fc3c66919f5e5cc1`  
		Last Modified: Wed, 18 Jan 2017 08:25:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a098dea165e6a17e26d44753ded1dbf4ad026db60ddf39b8fdf51762a32e322`  
		Last Modified: Wed, 18 Jan 2017 08:25:39 GMT  
		Size: 1.6 KB (1575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:220a12f72899bf9d98956758fdf91e37c1de0e3bd1528491aeb061411284cabd`  
		Last Modified: Wed, 18 Jan 2017 08:25:39 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83839bba1c48a191739e4d269a57f613150799eae9a7f621f286a15f8736966`  
		Last Modified: Wed, 18 Jan 2017 08:25:39 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2-jre7`

```console
$ docker pull jetty@sha256:111a775a289d6a3af62528488c973203f0fc6f6813259f90e55e2f5e255528c5
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2-jre7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158249061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80b5caf2bc04759592effc3f09a6825ee3dcd999c68e030f8a9da2fca2be6356`
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
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_VERSION=7u111
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-2~deb8u1
# Tue, 17 Jan 2017 00:51:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 18 Jan 2017 00:38:45 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 18 Jan 2017 00:38:46 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 18 Jan 2017 00:38:46 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 00:38:47 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 18 Jan 2017 00:38:47 GMT
WORKDIR /usr/local/jetty
# Wed, 18 Jan 2017 00:38:48 GMT
ENV JETTY_VERSION=9.2.20.v20161216
# Wed, 18 Jan 2017 00:38:48 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.20.v20161216/jetty-distribution-9.2.20.v20161216.tar.gz
# Wed, 18 Jan 2017 00:38:48 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 18 Jan 2017 00:38:54 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 18 Jan 2017 00:38:54 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 18 Jan 2017 00:38:55 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 18 Jan 2017 00:38:56 GMT
WORKDIR /var/lib/jetty
# Wed, 18 Jan 2017 00:38:59 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 18 Jan 2017 00:38:59 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 18 Jan 2017 00:39:00 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 18 Jan 2017 00:39:01 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 18 Jan 2017 00:39:01 GMT
EXPOSE 8080/tcp
# Wed, 18 Jan 2017 00:39:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 00:39:02 GMT
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
	-	`sha256:028c93201aa7082fcfa16582dbc2ecd8d6f54dc56d46603688bd7ff7f3c60c1f`  
		Last Modified: Wed, 18 Jan 2017 05:28:06 GMT  
		Size: 77.8 MB (77760846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f17517de399b265dfbaa04761f4d3c4407a333185aea00645ba3fb0560d4d0`  
		Last Modified: Wed, 18 Jan 2017 08:25:42 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec3025ae836bbac18daaab748cf1f113f078cf05106b6ddc647d38382d963e9`  
		Last Modified: Wed, 18 Jan 2017 08:25:42 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2aa3dab4b64b0b24b22d36966bfa51180785131d21892f5056e74e6a5013095`  
		Last Modified: Wed, 18 Jan 2017 08:25:41 GMT  
		Size: 10.0 MB (10018577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc10f536ef13c77323405e43945c3e558813716a38ba8115fc3c66919f5e5cc1`  
		Last Modified: Wed, 18 Jan 2017 08:25:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a098dea165e6a17e26d44753ded1dbf4ad026db60ddf39b8fdf51762a32e322`  
		Last Modified: Wed, 18 Jan 2017 08:25:39 GMT  
		Size: 1.6 KB (1575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:220a12f72899bf9d98956758fdf91e37c1de0e3bd1528491aeb061411284cabd`  
		Last Modified: Wed, 18 Jan 2017 08:25:39 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83839bba1c48a191739e4d269a57f613150799eae9a7f621f286a15f8736966`  
		Last Modified: Wed, 18 Jan 2017 08:25:39 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre7`

```console
$ docker pull jetty@sha256:111a775a289d6a3af62528488c973203f0fc6f6813259f90e55e2f5e255528c5
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158249061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80b5caf2bc04759592effc3f09a6825ee3dcd999c68e030f8a9da2fca2be6356`
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
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_VERSION=7u111
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-2~deb8u1
# Tue, 17 Jan 2017 00:51:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 18 Jan 2017 00:38:45 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 18 Jan 2017 00:38:46 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 18 Jan 2017 00:38:46 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 00:38:47 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 18 Jan 2017 00:38:47 GMT
WORKDIR /usr/local/jetty
# Wed, 18 Jan 2017 00:38:48 GMT
ENV JETTY_VERSION=9.2.20.v20161216
# Wed, 18 Jan 2017 00:38:48 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.20.v20161216/jetty-distribution-9.2.20.v20161216.tar.gz
# Wed, 18 Jan 2017 00:38:48 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 18 Jan 2017 00:38:54 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 18 Jan 2017 00:38:54 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 18 Jan 2017 00:38:55 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 18 Jan 2017 00:38:56 GMT
WORKDIR /var/lib/jetty
# Wed, 18 Jan 2017 00:38:59 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 18 Jan 2017 00:38:59 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 18 Jan 2017 00:39:00 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 18 Jan 2017 00:39:01 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 18 Jan 2017 00:39:01 GMT
EXPOSE 8080/tcp
# Wed, 18 Jan 2017 00:39:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 00:39:02 GMT
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
	-	`sha256:028c93201aa7082fcfa16582dbc2ecd8d6f54dc56d46603688bd7ff7f3c60c1f`  
		Last Modified: Wed, 18 Jan 2017 05:28:06 GMT  
		Size: 77.8 MB (77760846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f17517de399b265dfbaa04761f4d3c4407a333185aea00645ba3fb0560d4d0`  
		Last Modified: Wed, 18 Jan 2017 08:25:42 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec3025ae836bbac18daaab748cf1f113f078cf05106b6ddc647d38382d963e9`  
		Last Modified: Wed, 18 Jan 2017 08:25:42 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2aa3dab4b64b0b24b22d36966bfa51180785131d21892f5056e74e6a5013095`  
		Last Modified: Wed, 18 Jan 2017 08:25:41 GMT  
		Size: 10.0 MB (10018577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc10f536ef13c77323405e43945c3e558813716a38ba8115fc3c66919f5e5cc1`  
		Last Modified: Wed, 18 Jan 2017 08:25:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a098dea165e6a17e26d44753ded1dbf4ad026db60ddf39b8fdf51762a32e322`  
		Last Modified: Wed, 18 Jan 2017 08:25:39 GMT  
		Size: 1.6 KB (1575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:220a12f72899bf9d98956758fdf91e37c1de0e3bd1528491aeb061411284cabd`  
		Last Modified: Wed, 18 Jan 2017 08:25:39 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83839bba1c48a191739e4d269a57f613150799eae9a7f621f286a15f8736966`  
		Last Modified: Wed, 18 Jan 2017 08:25:39 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre7`

```console
$ docker pull jetty@sha256:111a775a289d6a3af62528488c973203f0fc6f6813259f90e55e2f5e255528c5
```

-	Platforms:
	-	linux; amd64

### `jetty:jre7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158249061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80b5caf2bc04759592effc3f09a6825ee3dcd999c68e030f8a9da2fca2be6356`
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
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_VERSION=7u111
# Tue, 17 Jan 2017 00:51:07 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-2~deb8u1
# Tue, 17 Jan 2017 00:51:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 18 Jan 2017 00:38:45 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 18 Jan 2017 00:38:46 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 18 Jan 2017 00:38:46 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Jan 2017 00:38:47 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 18 Jan 2017 00:38:47 GMT
WORKDIR /usr/local/jetty
# Wed, 18 Jan 2017 00:38:48 GMT
ENV JETTY_VERSION=9.2.20.v20161216
# Wed, 18 Jan 2017 00:38:48 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.20.v20161216/jetty-distribution-9.2.20.v20161216.tar.gz
# Wed, 18 Jan 2017 00:38:48 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 18 Jan 2017 00:38:54 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz*
# Wed, 18 Jan 2017 00:38:54 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 18 Jan 2017 00:38:55 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 18 Jan 2017 00:38:56 GMT
WORKDIR /var/lib/jetty
# Wed, 18 Jan 2017 00:38:59 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid"
# Wed, 18 Jan 2017 00:38:59 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 18 Jan 2017 00:39:00 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR" "$JETTY_BASE"
# Wed, 18 Jan 2017 00:39:01 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 18 Jan 2017 00:39:01 GMT
EXPOSE 8080/tcp
# Wed, 18 Jan 2017 00:39:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2017 00:39:02 GMT
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
	-	`sha256:028c93201aa7082fcfa16582dbc2ecd8d6f54dc56d46603688bd7ff7f3c60c1f`  
		Last Modified: Wed, 18 Jan 2017 05:28:06 GMT  
		Size: 77.8 MB (77760846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f17517de399b265dfbaa04761f4d3c4407a333185aea00645ba3fb0560d4d0`  
		Last Modified: Wed, 18 Jan 2017 08:25:42 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec3025ae836bbac18daaab748cf1f113f078cf05106b6ddc647d38382d963e9`  
		Last Modified: Wed, 18 Jan 2017 08:25:42 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2aa3dab4b64b0b24b22d36966bfa51180785131d21892f5056e74e6a5013095`  
		Last Modified: Wed, 18 Jan 2017 08:25:41 GMT  
		Size: 10.0 MB (10018577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc10f536ef13c77323405e43945c3e558813716a38ba8115fc3c66919f5e5cc1`  
		Last Modified: Wed, 18 Jan 2017 08:25:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a098dea165e6a17e26d44753ded1dbf4ad026db60ddf39b8fdf51762a32e322`  
		Last Modified: Wed, 18 Jan 2017 08:25:39 GMT  
		Size: 1.6 KB (1575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:220a12f72899bf9d98956758fdf91e37c1de0e3bd1528491aeb061411284cabd`  
		Last Modified: Wed, 18 Jan 2017 08:25:39 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83839bba1c48a191739e4d269a57f613150799eae9a7f621f286a15f8736966`  
		Last Modified: Wed, 18 Jan 2017 08:25:39 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
