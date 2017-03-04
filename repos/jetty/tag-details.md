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
$ docker pull jetty@sha256:62bb3ea19271c4d545ad4fea0ea3bf55fcc8187672a266fc7c019808799f4687
```

-	Platforms:
	-	linux; amd64

### `jetty:9.4.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132305847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22db04a05555f16d9f2ae5cdcda50e0cbaf657601be16777e2a1938eca4525d7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:41:39 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 01 Mar 2017 15:41:39 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 01 Mar 2017 15:41:40 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 15:41:41 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 01 Mar 2017 15:41:41 GMT
WORKDIR /usr/local/jetty
# Wed, 01 Mar 2017 15:41:41 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Wed, 01 Mar 2017 15:41:41 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Wed, 01 Mar 2017 15:41:42 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 01 Mar 2017 15:41:46 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:41:46 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 01 Mar 2017 15:41:47 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 01 Mar 2017 15:41:48 GMT
WORKDIR /var/lib/jetty
# Wed, 01 Mar 2017 15:41:53 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:41:53 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 01 Mar 2017 15:41:54 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 01 Mar 2017 15:41:55 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 01 Mar 2017 15:41:55 GMT
EXPOSE 8080/tcp
# Wed, 01 Mar 2017 15:41:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 15:41:56 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25294f71fad0aeada7d930f880b8a38f6b4d5a5881ebc74a5b1cd8cff811f46b`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd0ac07e1d493f9947502dbe443cf88c0464ee65da1e09b81da67f63cd488dd`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71427be1462c232b70cfb674ce461c66b50cfaa2bbec1b4f9325b3b0dce5f3e1`  
		Last Modified: Thu, 02 Mar 2017 05:39:34 GMT  
		Size: 8.0 MB (8026343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb77e406f8cf00c6e95bf45b06fe7b77da436efddb3a70a7bd53b379a59c22b6`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ad86ab3b531a54b23e47b35772acb1fc1cd2f1e57cb22c32dfd19d058601e4`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 2.2 KB (2236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e243e8633b5dd437e2432a70241fb18cd927179899792a50d35f20e5fa915e`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28e2f5010046390db1430d2dd6da883cecf53d1f4e0f789e0c83f0f547914b1`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4`

```console
$ docker pull jetty@sha256:62bb3ea19271c4d545ad4fea0ea3bf55fcc8187672a266fc7c019808799f4687
```

-	Platforms:
	-	linux; amd64

### `jetty:9.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132305847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22db04a05555f16d9f2ae5cdcda50e0cbaf657601be16777e2a1938eca4525d7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:41:39 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 01 Mar 2017 15:41:39 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 01 Mar 2017 15:41:40 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 15:41:41 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 01 Mar 2017 15:41:41 GMT
WORKDIR /usr/local/jetty
# Wed, 01 Mar 2017 15:41:41 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Wed, 01 Mar 2017 15:41:41 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Wed, 01 Mar 2017 15:41:42 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 01 Mar 2017 15:41:46 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:41:46 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 01 Mar 2017 15:41:47 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 01 Mar 2017 15:41:48 GMT
WORKDIR /var/lib/jetty
# Wed, 01 Mar 2017 15:41:53 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:41:53 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 01 Mar 2017 15:41:54 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 01 Mar 2017 15:41:55 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 01 Mar 2017 15:41:55 GMT
EXPOSE 8080/tcp
# Wed, 01 Mar 2017 15:41:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 15:41:56 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25294f71fad0aeada7d930f880b8a38f6b4d5a5881ebc74a5b1cd8cff811f46b`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd0ac07e1d493f9947502dbe443cf88c0464ee65da1e09b81da67f63cd488dd`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71427be1462c232b70cfb674ce461c66b50cfaa2bbec1b4f9325b3b0dce5f3e1`  
		Last Modified: Thu, 02 Mar 2017 05:39:34 GMT  
		Size: 8.0 MB (8026343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb77e406f8cf00c6e95bf45b06fe7b77da436efddb3a70a7bd53b379a59c22b6`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ad86ab3b531a54b23e47b35772acb1fc1cd2f1e57cb22c32dfd19d058601e4`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 2.2 KB (2236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e243e8633b5dd437e2432a70241fb18cd927179899792a50d35f20e5fa915e`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28e2f5010046390db1430d2dd6da883cecf53d1f4e0f789e0c83f0f547914b1`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9`

```console
$ docker pull jetty@sha256:62bb3ea19271c4d545ad4fea0ea3bf55fcc8187672a266fc7c019808799f4687
```

-	Platforms:
	-	linux; amd64

### `jetty:9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132305847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22db04a05555f16d9f2ae5cdcda50e0cbaf657601be16777e2a1938eca4525d7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:41:39 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 01 Mar 2017 15:41:39 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 01 Mar 2017 15:41:40 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 15:41:41 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 01 Mar 2017 15:41:41 GMT
WORKDIR /usr/local/jetty
# Wed, 01 Mar 2017 15:41:41 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Wed, 01 Mar 2017 15:41:41 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Wed, 01 Mar 2017 15:41:42 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 01 Mar 2017 15:41:46 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:41:46 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 01 Mar 2017 15:41:47 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 01 Mar 2017 15:41:48 GMT
WORKDIR /var/lib/jetty
# Wed, 01 Mar 2017 15:41:53 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:41:53 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 01 Mar 2017 15:41:54 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 01 Mar 2017 15:41:55 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 01 Mar 2017 15:41:55 GMT
EXPOSE 8080/tcp
# Wed, 01 Mar 2017 15:41:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 15:41:56 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25294f71fad0aeada7d930f880b8a38f6b4d5a5881ebc74a5b1cd8cff811f46b`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd0ac07e1d493f9947502dbe443cf88c0464ee65da1e09b81da67f63cd488dd`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71427be1462c232b70cfb674ce461c66b50cfaa2bbec1b4f9325b3b0dce5f3e1`  
		Last Modified: Thu, 02 Mar 2017 05:39:34 GMT  
		Size: 8.0 MB (8026343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb77e406f8cf00c6e95bf45b06fe7b77da436efddb3a70a7bd53b379a59c22b6`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ad86ab3b531a54b23e47b35772acb1fc1cd2f1e57cb22c32dfd19d058601e4`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 2.2 KB (2236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e243e8633b5dd437e2432a70241fb18cd927179899792a50d35f20e5fa915e`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28e2f5010046390db1430d2dd6da883cecf53d1f4e0f789e0c83f0f547914b1`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4.2-jre8`

```console
$ docker pull jetty@sha256:62bb3ea19271c4d545ad4fea0ea3bf55fcc8187672a266fc7c019808799f4687
```

-	Platforms:
	-	linux; amd64

### `jetty:9.4.2-jre8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132305847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22db04a05555f16d9f2ae5cdcda50e0cbaf657601be16777e2a1938eca4525d7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:41:39 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 01 Mar 2017 15:41:39 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 01 Mar 2017 15:41:40 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 15:41:41 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 01 Mar 2017 15:41:41 GMT
WORKDIR /usr/local/jetty
# Wed, 01 Mar 2017 15:41:41 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Wed, 01 Mar 2017 15:41:41 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Wed, 01 Mar 2017 15:41:42 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 01 Mar 2017 15:41:46 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:41:46 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 01 Mar 2017 15:41:47 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 01 Mar 2017 15:41:48 GMT
WORKDIR /var/lib/jetty
# Wed, 01 Mar 2017 15:41:53 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:41:53 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 01 Mar 2017 15:41:54 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 01 Mar 2017 15:41:55 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 01 Mar 2017 15:41:55 GMT
EXPOSE 8080/tcp
# Wed, 01 Mar 2017 15:41:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 15:41:56 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25294f71fad0aeada7d930f880b8a38f6b4d5a5881ebc74a5b1cd8cff811f46b`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd0ac07e1d493f9947502dbe443cf88c0464ee65da1e09b81da67f63cd488dd`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71427be1462c232b70cfb674ce461c66b50cfaa2bbec1b4f9325b3b0dce5f3e1`  
		Last Modified: Thu, 02 Mar 2017 05:39:34 GMT  
		Size: 8.0 MB (8026343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb77e406f8cf00c6e95bf45b06fe7b77da436efddb3a70a7bd53b379a59c22b6`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ad86ab3b531a54b23e47b35772acb1fc1cd2f1e57cb22c32dfd19d058601e4`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 2.2 KB (2236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e243e8633b5dd437e2432a70241fb18cd927179899792a50d35f20e5fa915e`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28e2f5010046390db1430d2dd6da883cecf53d1f4e0f789e0c83f0f547914b1`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4-jre8`

```console
$ docker pull jetty@sha256:62bb3ea19271c4d545ad4fea0ea3bf55fcc8187672a266fc7c019808799f4687
```

-	Platforms:
	-	linux; amd64

### `jetty:9.4-jre8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132305847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22db04a05555f16d9f2ae5cdcda50e0cbaf657601be16777e2a1938eca4525d7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:41:39 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 01 Mar 2017 15:41:39 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 01 Mar 2017 15:41:40 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 15:41:41 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 01 Mar 2017 15:41:41 GMT
WORKDIR /usr/local/jetty
# Wed, 01 Mar 2017 15:41:41 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Wed, 01 Mar 2017 15:41:41 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Wed, 01 Mar 2017 15:41:42 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 01 Mar 2017 15:41:46 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:41:46 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 01 Mar 2017 15:41:47 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 01 Mar 2017 15:41:48 GMT
WORKDIR /var/lib/jetty
# Wed, 01 Mar 2017 15:41:53 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:41:53 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 01 Mar 2017 15:41:54 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 01 Mar 2017 15:41:55 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 01 Mar 2017 15:41:55 GMT
EXPOSE 8080/tcp
# Wed, 01 Mar 2017 15:41:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 15:41:56 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25294f71fad0aeada7d930f880b8a38f6b4d5a5881ebc74a5b1cd8cff811f46b`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd0ac07e1d493f9947502dbe443cf88c0464ee65da1e09b81da67f63cd488dd`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71427be1462c232b70cfb674ce461c66b50cfaa2bbec1b4f9325b3b0dce5f3e1`  
		Last Modified: Thu, 02 Mar 2017 05:39:34 GMT  
		Size: 8.0 MB (8026343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb77e406f8cf00c6e95bf45b06fe7b77da436efddb3a70a7bd53b379a59c22b6`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ad86ab3b531a54b23e47b35772acb1fc1cd2f1e57cb22c32dfd19d058601e4`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 2.2 KB (2236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e243e8633b5dd437e2432a70241fb18cd927179899792a50d35f20e5fa915e`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28e2f5010046390db1430d2dd6da883cecf53d1f4e0f789e0c83f0f547914b1`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre8`

```console
$ docker pull jetty@sha256:62bb3ea19271c4d545ad4fea0ea3bf55fcc8187672a266fc7c019808799f4687
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132305847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22db04a05555f16d9f2ae5cdcda50e0cbaf657601be16777e2a1938eca4525d7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:41:39 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 01 Mar 2017 15:41:39 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 01 Mar 2017 15:41:40 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 15:41:41 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 01 Mar 2017 15:41:41 GMT
WORKDIR /usr/local/jetty
# Wed, 01 Mar 2017 15:41:41 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Wed, 01 Mar 2017 15:41:41 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Wed, 01 Mar 2017 15:41:42 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 01 Mar 2017 15:41:46 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:41:46 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 01 Mar 2017 15:41:47 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 01 Mar 2017 15:41:48 GMT
WORKDIR /var/lib/jetty
# Wed, 01 Mar 2017 15:41:53 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:41:53 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 01 Mar 2017 15:41:54 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 01 Mar 2017 15:41:55 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 01 Mar 2017 15:41:55 GMT
EXPOSE 8080/tcp
# Wed, 01 Mar 2017 15:41:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 15:41:56 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25294f71fad0aeada7d930f880b8a38f6b4d5a5881ebc74a5b1cd8cff811f46b`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd0ac07e1d493f9947502dbe443cf88c0464ee65da1e09b81da67f63cd488dd`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71427be1462c232b70cfb674ce461c66b50cfaa2bbec1b4f9325b3b0dce5f3e1`  
		Last Modified: Thu, 02 Mar 2017 05:39:34 GMT  
		Size: 8.0 MB (8026343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb77e406f8cf00c6e95bf45b06fe7b77da436efddb3a70a7bd53b379a59c22b6`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ad86ab3b531a54b23e47b35772acb1fc1cd2f1e57cb22c32dfd19d058601e4`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 2.2 KB (2236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e243e8633b5dd437e2432a70241fb18cd927179899792a50d35f20e5fa915e`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28e2f5010046390db1430d2dd6da883cecf53d1f4e0f789e0c83f0f547914b1`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:latest`

```console
$ docker pull jetty@sha256:62bb3ea19271c4d545ad4fea0ea3bf55fcc8187672a266fc7c019808799f4687
```

-	Platforms:
	-	linux; amd64

### `jetty:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132305847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22db04a05555f16d9f2ae5cdcda50e0cbaf657601be16777e2a1938eca4525d7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:41:39 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 01 Mar 2017 15:41:39 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 01 Mar 2017 15:41:40 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 15:41:41 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 01 Mar 2017 15:41:41 GMT
WORKDIR /usr/local/jetty
# Wed, 01 Mar 2017 15:41:41 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Wed, 01 Mar 2017 15:41:41 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Wed, 01 Mar 2017 15:41:42 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 01 Mar 2017 15:41:46 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:41:46 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 01 Mar 2017 15:41:47 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 01 Mar 2017 15:41:48 GMT
WORKDIR /var/lib/jetty
# Wed, 01 Mar 2017 15:41:53 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:41:53 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 01 Mar 2017 15:41:54 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 01 Mar 2017 15:41:55 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 01 Mar 2017 15:41:55 GMT
EXPOSE 8080/tcp
# Wed, 01 Mar 2017 15:41:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 15:41:56 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25294f71fad0aeada7d930f880b8a38f6b4d5a5881ebc74a5b1cd8cff811f46b`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd0ac07e1d493f9947502dbe443cf88c0464ee65da1e09b81da67f63cd488dd`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71427be1462c232b70cfb674ce461c66b50cfaa2bbec1b4f9325b3b0dce5f3e1`  
		Last Modified: Thu, 02 Mar 2017 05:39:34 GMT  
		Size: 8.0 MB (8026343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb77e406f8cf00c6e95bf45b06fe7b77da436efddb3a70a7bd53b379a59c22b6`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ad86ab3b531a54b23e47b35772acb1fc1cd2f1e57cb22c32dfd19d058601e4`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 2.2 KB (2236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e243e8633b5dd437e2432a70241fb18cd927179899792a50d35f20e5fa915e`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28e2f5010046390db1430d2dd6da883cecf53d1f4e0f789e0c83f0f547914b1`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre8`

```console
$ docker pull jetty@sha256:62bb3ea19271c4d545ad4fea0ea3bf55fcc8187672a266fc7c019808799f4687
```

-	Platforms:
	-	linux; amd64

### `jetty:jre8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132305847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22db04a05555f16d9f2ae5cdcda50e0cbaf657601be16777e2a1938eca4525d7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:41:39 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 01 Mar 2017 15:41:39 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 01 Mar 2017 15:41:40 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 15:41:41 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 01 Mar 2017 15:41:41 GMT
WORKDIR /usr/local/jetty
# Wed, 01 Mar 2017 15:41:41 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Wed, 01 Mar 2017 15:41:41 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Wed, 01 Mar 2017 15:41:42 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 01 Mar 2017 15:41:46 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:41:46 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 01 Mar 2017 15:41:47 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 01 Mar 2017 15:41:48 GMT
WORKDIR /var/lib/jetty
# Wed, 01 Mar 2017 15:41:53 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:41:53 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 01 Mar 2017 15:41:54 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 01 Mar 2017 15:41:55 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 01 Mar 2017 15:41:55 GMT
EXPOSE 8080/tcp
# Wed, 01 Mar 2017 15:41:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 15:41:56 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25294f71fad0aeada7d930f880b8a38f6b4d5a5881ebc74a5b1cd8cff811f46b`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd0ac07e1d493f9947502dbe443cf88c0464ee65da1e09b81da67f63cd488dd`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71427be1462c232b70cfb674ce461c66b50cfaa2bbec1b4f9325b3b0dce5f3e1`  
		Last Modified: Thu, 02 Mar 2017 05:39:34 GMT  
		Size: 8.0 MB (8026343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb77e406f8cf00c6e95bf45b06fe7b77da436efddb3a70a7bd53b379a59c22b6`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ad86ab3b531a54b23e47b35772acb1fc1cd2f1e57cb22c32dfd19d058601e4`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 2.2 KB (2236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e243e8633b5dd437e2432a70241fb18cd927179899792a50d35f20e5fa915e`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28e2f5010046390db1430d2dd6da883cecf53d1f4e0f789e0c83f0f547914b1`  
		Last Modified: Thu, 02 Mar 2017 05:39:33 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4.2-alpine`

```console
$ docker pull jetty@sha256:4dc0a9a52d31650778cab67aec26611c3df210629658002f243054101dc967e6
```

-	Platforms:
	-	linux; amd64

### `jetty:9.4.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50049531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7969d40aceed52b3d3b2eba6057e6cd798353cfda3c0be398f83d934f0b212be`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:10:34 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Sat, 04 Mar 2017 00:10:34 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 04 Mar 2017 00:10:34 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Mar 2017 00:10:35 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 04 Mar 2017 00:10:35 GMT
WORKDIR /usr/local/jetty
# Sat, 04 Mar 2017 00:10:36 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Sat, 04 Mar 2017 00:10:36 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Sat, 04 Mar 2017 00:10:36 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Sat, 04 Mar 2017 00:10:43 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Sat, 04 Mar 2017 00:10:43 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 04 Mar 2017 00:10:44 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 04 Mar 2017 00:10:45 GMT
WORKDIR /var/lib/jetty
# Sat, 04 Mar 2017 00:10:46 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 04 Mar 2017 00:10:46 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 04 Mar 2017 00:10:47 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 04 Mar 2017 00:10:48 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 04 Mar 2017 00:10:48 GMT
EXPOSE 8080/tcp
# Sat, 04 Mar 2017 00:10:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Mar 2017 00:10:49 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38589c7ef30a6557446152b079e1d8c3fa9471ccf11c1d1d2de70885d1f027a`  
		Last Modified: Sat, 04 Mar 2017 07:02:33 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d472406b9d099789104c145c86604064ab7a5e3dae83833f6c54d9e0ab83fea6`  
		Last Modified: Sat, 04 Mar 2017 07:02:33 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea6d8c9499be65f2db3aee8942f4d4902949203a20a6239312650db3ea101dc`  
		Last Modified: Sat, 04 Mar 2017 07:04:25 GMT  
		Size: 8.1 MB (8053278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d86f333a36d062da714296b8c11b8f8030487a18841548c86b43332e45126d3`  
		Last Modified: Sat, 04 Mar 2017 07:04:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d413e357f625ccf19df457f9a169beedbf4d02064cf5fcad772e65a97191f6`  
		Last Modified: Sat, 04 Mar 2017 07:04:22 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d6541376dfe4ec51432a6c9f7523276f19729a9e4fd761f125ddbf31b1bdd5`  
		Last Modified: Sat, 04 Mar 2017 07:04:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd73e4b990ec7fdb4216d4346fcf8161dfeafde1f27b2384f8df3a84050eeaf`  
		Last Modified: Sat, 04 Mar 2017 07:04:22 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4-alpine`

```console
$ docker pull jetty@sha256:4dc0a9a52d31650778cab67aec26611c3df210629658002f243054101dc967e6
```

-	Platforms:
	-	linux; amd64

### `jetty:9.4-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50049531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7969d40aceed52b3d3b2eba6057e6cd798353cfda3c0be398f83d934f0b212be`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:10:34 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Sat, 04 Mar 2017 00:10:34 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 04 Mar 2017 00:10:34 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Mar 2017 00:10:35 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 04 Mar 2017 00:10:35 GMT
WORKDIR /usr/local/jetty
# Sat, 04 Mar 2017 00:10:36 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Sat, 04 Mar 2017 00:10:36 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Sat, 04 Mar 2017 00:10:36 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Sat, 04 Mar 2017 00:10:43 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Sat, 04 Mar 2017 00:10:43 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 04 Mar 2017 00:10:44 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 04 Mar 2017 00:10:45 GMT
WORKDIR /var/lib/jetty
# Sat, 04 Mar 2017 00:10:46 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 04 Mar 2017 00:10:46 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 04 Mar 2017 00:10:47 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 04 Mar 2017 00:10:48 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 04 Mar 2017 00:10:48 GMT
EXPOSE 8080/tcp
# Sat, 04 Mar 2017 00:10:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Mar 2017 00:10:49 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38589c7ef30a6557446152b079e1d8c3fa9471ccf11c1d1d2de70885d1f027a`  
		Last Modified: Sat, 04 Mar 2017 07:02:33 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d472406b9d099789104c145c86604064ab7a5e3dae83833f6c54d9e0ab83fea6`  
		Last Modified: Sat, 04 Mar 2017 07:02:33 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea6d8c9499be65f2db3aee8942f4d4902949203a20a6239312650db3ea101dc`  
		Last Modified: Sat, 04 Mar 2017 07:04:25 GMT  
		Size: 8.1 MB (8053278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d86f333a36d062da714296b8c11b8f8030487a18841548c86b43332e45126d3`  
		Last Modified: Sat, 04 Mar 2017 07:04:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d413e357f625ccf19df457f9a169beedbf4d02064cf5fcad772e65a97191f6`  
		Last Modified: Sat, 04 Mar 2017 07:04:22 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d6541376dfe4ec51432a6c9f7523276f19729a9e4fd761f125ddbf31b1bdd5`  
		Last Modified: Sat, 04 Mar 2017 07:04:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd73e4b990ec7fdb4216d4346fcf8161dfeafde1f27b2384f8df3a84050eeaf`  
		Last Modified: Sat, 04 Mar 2017 07:04:22 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-alpine`

```console
$ docker pull jetty@sha256:4dc0a9a52d31650778cab67aec26611c3df210629658002f243054101dc967e6
```

-	Platforms:
	-	linux; amd64

### `jetty:9-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50049531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7969d40aceed52b3d3b2eba6057e6cd798353cfda3c0be398f83d934f0b212be`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:10:34 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Sat, 04 Mar 2017 00:10:34 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 04 Mar 2017 00:10:34 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Mar 2017 00:10:35 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 04 Mar 2017 00:10:35 GMT
WORKDIR /usr/local/jetty
# Sat, 04 Mar 2017 00:10:36 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Sat, 04 Mar 2017 00:10:36 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Sat, 04 Mar 2017 00:10:36 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Sat, 04 Mar 2017 00:10:43 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Sat, 04 Mar 2017 00:10:43 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 04 Mar 2017 00:10:44 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 04 Mar 2017 00:10:45 GMT
WORKDIR /var/lib/jetty
# Sat, 04 Mar 2017 00:10:46 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 04 Mar 2017 00:10:46 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 04 Mar 2017 00:10:47 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 04 Mar 2017 00:10:48 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 04 Mar 2017 00:10:48 GMT
EXPOSE 8080/tcp
# Sat, 04 Mar 2017 00:10:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Mar 2017 00:10:49 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38589c7ef30a6557446152b079e1d8c3fa9471ccf11c1d1d2de70885d1f027a`  
		Last Modified: Sat, 04 Mar 2017 07:02:33 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d472406b9d099789104c145c86604064ab7a5e3dae83833f6c54d9e0ab83fea6`  
		Last Modified: Sat, 04 Mar 2017 07:02:33 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea6d8c9499be65f2db3aee8942f4d4902949203a20a6239312650db3ea101dc`  
		Last Modified: Sat, 04 Mar 2017 07:04:25 GMT  
		Size: 8.1 MB (8053278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d86f333a36d062da714296b8c11b8f8030487a18841548c86b43332e45126d3`  
		Last Modified: Sat, 04 Mar 2017 07:04:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d413e357f625ccf19df457f9a169beedbf4d02064cf5fcad772e65a97191f6`  
		Last Modified: Sat, 04 Mar 2017 07:04:22 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d6541376dfe4ec51432a6c9f7523276f19729a9e4fd761f125ddbf31b1bdd5`  
		Last Modified: Sat, 04 Mar 2017 07:04:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd73e4b990ec7fdb4216d4346fcf8161dfeafde1f27b2384f8df3a84050eeaf`  
		Last Modified: Sat, 04 Mar 2017 07:04:22 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4.2-jre8-alpine`

```console
$ docker pull jetty@sha256:4dc0a9a52d31650778cab67aec26611c3df210629658002f243054101dc967e6
```

-	Platforms:
	-	linux; amd64

### `jetty:9.4.2-jre8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50049531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7969d40aceed52b3d3b2eba6057e6cd798353cfda3c0be398f83d934f0b212be`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:10:34 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Sat, 04 Mar 2017 00:10:34 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 04 Mar 2017 00:10:34 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Mar 2017 00:10:35 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 04 Mar 2017 00:10:35 GMT
WORKDIR /usr/local/jetty
# Sat, 04 Mar 2017 00:10:36 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Sat, 04 Mar 2017 00:10:36 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Sat, 04 Mar 2017 00:10:36 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Sat, 04 Mar 2017 00:10:43 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Sat, 04 Mar 2017 00:10:43 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 04 Mar 2017 00:10:44 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 04 Mar 2017 00:10:45 GMT
WORKDIR /var/lib/jetty
# Sat, 04 Mar 2017 00:10:46 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 04 Mar 2017 00:10:46 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 04 Mar 2017 00:10:47 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 04 Mar 2017 00:10:48 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 04 Mar 2017 00:10:48 GMT
EXPOSE 8080/tcp
# Sat, 04 Mar 2017 00:10:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Mar 2017 00:10:49 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38589c7ef30a6557446152b079e1d8c3fa9471ccf11c1d1d2de70885d1f027a`  
		Last Modified: Sat, 04 Mar 2017 07:02:33 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d472406b9d099789104c145c86604064ab7a5e3dae83833f6c54d9e0ab83fea6`  
		Last Modified: Sat, 04 Mar 2017 07:02:33 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea6d8c9499be65f2db3aee8942f4d4902949203a20a6239312650db3ea101dc`  
		Last Modified: Sat, 04 Mar 2017 07:04:25 GMT  
		Size: 8.1 MB (8053278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d86f333a36d062da714296b8c11b8f8030487a18841548c86b43332e45126d3`  
		Last Modified: Sat, 04 Mar 2017 07:04:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d413e357f625ccf19df457f9a169beedbf4d02064cf5fcad772e65a97191f6`  
		Last Modified: Sat, 04 Mar 2017 07:04:22 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d6541376dfe4ec51432a6c9f7523276f19729a9e4fd761f125ddbf31b1bdd5`  
		Last Modified: Sat, 04 Mar 2017 07:04:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd73e4b990ec7fdb4216d4346fcf8161dfeafde1f27b2384f8df3a84050eeaf`  
		Last Modified: Sat, 04 Mar 2017 07:04:22 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.4-jre8-alpine`

```console
$ docker pull jetty@sha256:4dc0a9a52d31650778cab67aec26611c3df210629658002f243054101dc967e6
```

-	Platforms:
	-	linux; amd64

### `jetty:9.4-jre8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50049531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7969d40aceed52b3d3b2eba6057e6cd798353cfda3c0be398f83d934f0b212be`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:10:34 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Sat, 04 Mar 2017 00:10:34 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 04 Mar 2017 00:10:34 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Mar 2017 00:10:35 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 04 Mar 2017 00:10:35 GMT
WORKDIR /usr/local/jetty
# Sat, 04 Mar 2017 00:10:36 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Sat, 04 Mar 2017 00:10:36 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Sat, 04 Mar 2017 00:10:36 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Sat, 04 Mar 2017 00:10:43 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Sat, 04 Mar 2017 00:10:43 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 04 Mar 2017 00:10:44 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 04 Mar 2017 00:10:45 GMT
WORKDIR /var/lib/jetty
# Sat, 04 Mar 2017 00:10:46 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 04 Mar 2017 00:10:46 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 04 Mar 2017 00:10:47 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 04 Mar 2017 00:10:48 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 04 Mar 2017 00:10:48 GMT
EXPOSE 8080/tcp
# Sat, 04 Mar 2017 00:10:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Mar 2017 00:10:49 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38589c7ef30a6557446152b079e1d8c3fa9471ccf11c1d1d2de70885d1f027a`  
		Last Modified: Sat, 04 Mar 2017 07:02:33 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d472406b9d099789104c145c86604064ab7a5e3dae83833f6c54d9e0ab83fea6`  
		Last Modified: Sat, 04 Mar 2017 07:02:33 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea6d8c9499be65f2db3aee8942f4d4902949203a20a6239312650db3ea101dc`  
		Last Modified: Sat, 04 Mar 2017 07:04:25 GMT  
		Size: 8.1 MB (8053278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d86f333a36d062da714296b8c11b8f8030487a18841548c86b43332e45126d3`  
		Last Modified: Sat, 04 Mar 2017 07:04:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d413e357f625ccf19df457f9a169beedbf4d02064cf5fcad772e65a97191f6`  
		Last Modified: Sat, 04 Mar 2017 07:04:22 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d6541376dfe4ec51432a6c9f7523276f19729a9e4fd761f125ddbf31b1bdd5`  
		Last Modified: Sat, 04 Mar 2017 07:04:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd73e4b990ec7fdb4216d4346fcf8161dfeafde1f27b2384f8df3a84050eeaf`  
		Last Modified: Sat, 04 Mar 2017 07:04:22 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre8-alpine`

```console
$ docker pull jetty@sha256:4dc0a9a52d31650778cab67aec26611c3df210629658002f243054101dc967e6
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50049531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7969d40aceed52b3d3b2eba6057e6cd798353cfda3c0be398f83d934f0b212be`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:10:34 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Sat, 04 Mar 2017 00:10:34 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 04 Mar 2017 00:10:34 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Mar 2017 00:10:35 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 04 Mar 2017 00:10:35 GMT
WORKDIR /usr/local/jetty
# Sat, 04 Mar 2017 00:10:36 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Sat, 04 Mar 2017 00:10:36 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Sat, 04 Mar 2017 00:10:36 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Sat, 04 Mar 2017 00:10:43 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Sat, 04 Mar 2017 00:10:43 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 04 Mar 2017 00:10:44 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 04 Mar 2017 00:10:45 GMT
WORKDIR /var/lib/jetty
# Sat, 04 Mar 2017 00:10:46 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 04 Mar 2017 00:10:46 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 04 Mar 2017 00:10:47 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 04 Mar 2017 00:10:48 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 04 Mar 2017 00:10:48 GMT
EXPOSE 8080/tcp
# Sat, 04 Mar 2017 00:10:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Mar 2017 00:10:49 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38589c7ef30a6557446152b079e1d8c3fa9471ccf11c1d1d2de70885d1f027a`  
		Last Modified: Sat, 04 Mar 2017 07:02:33 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d472406b9d099789104c145c86604064ab7a5e3dae83833f6c54d9e0ab83fea6`  
		Last Modified: Sat, 04 Mar 2017 07:02:33 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea6d8c9499be65f2db3aee8942f4d4902949203a20a6239312650db3ea101dc`  
		Last Modified: Sat, 04 Mar 2017 07:04:25 GMT  
		Size: 8.1 MB (8053278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d86f333a36d062da714296b8c11b8f8030487a18841548c86b43332e45126d3`  
		Last Modified: Sat, 04 Mar 2017 07:04:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d413e357f625ccf19df457f9a169beedbf4d02064cf5fcad772e65a97191f6`  
		Last Modified: Sat, 04 Mar 2017 07:04:22 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d6541376dfe4ec51432a6c9f7523276f19729a9e4fd761f125ddbf31b1bdd5`  
		Last Modified: Sat, 04 Mar 2017 07:04:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd73e4b990ec7fdb4216d4346fcf8161dfeafde1f27b2384f8df3a84050eeaf`  
		Last Modified: Sat, 04 Mar 2017 07:04:22 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:alpine`

```console
$ docker pull jetty@sha256:4dc0a9a52d31650778cab67aec26611c3df210629658002f243054101dc967e6
```

-	Platforms:
	-	linux; amd64

### `jetty:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50049531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7969d40aceed52b3d3b2eba6057e6cd798353cfda3c0be398f83d934f0b212be`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:10:34 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Sat, 04 Mar 2017 00:10:34 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 04 Mar 2017 00:10:34 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Mar 2017 00:10:35 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 04 Mar 2017 00:10:35 GMT
WORKDIR /usr/local/jetty
# Sat, 04 Mar 2017 00:10:36 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Sat, 04 Mar 2017 00:10:36 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Sat, 04 Mar 2017 00:10:36 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Sat, 04 Mar 2017 00:10:43 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Sat, 04 Mar 2017 00:10:43 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 04 Mar 2017 00:10:44 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 04 Mar 2017 00:10:45 GMT
WORKDIR /var/lib/jetty
# Sat, 04 Mar 2017 00:10:46 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 04 Mar 2017 00:10:46 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 04 Mar 2017 00:10:47 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 04 Mar 2017 00:10:48 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 04 Mar 2017 00:10:48 GMT
EXPOSE 8080/tcp
# Sat, 04 Mar 2017 00:10:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Mar 2017 00:10:49 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38589c7ef30a6557446152b079e1d8c3fa9471ccf11c1d1d2de70885d1f027a`  
		Last Modified: Sat, 04 Mar 2017 07:02:33 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d472406b9d099789104c145c86604064ab7a5e3dae83833f6c54d9e0ab83fea6`  
		Last Modified: Sat, 04 Mar 2017 07:02:33 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea6d8c9499be65f2db3aee8942f4d4902949203a20a6239312650db3ea101dc`  
		Last Modified: Sat, 04 Mar 2017 07:04:25 GMT  
		Size: 8.1 MB (8053278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d86f333a36d062da714296b8c11b8f8030487a18841548c86b43332e45126d3`  
		Last Modified: Sat, 04 Mar 2017 07:04:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d413e357f625ccf19df457f9a169beedbf4d02064cf5fcad772e65a97191f6`  
		Last Modified: Sat, 04 Mar 2017 07:04:22 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d6541376dfe4ec51432a6c9f7523276f19729a9e4fd761f125ddbf31b1bdd5`  
		Last Modified: Sat, 04 Mar 2017 07:04:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd73e4b990ec7fdb4216d4346fcf8161dfeafde1f27b2384f8df3a84050eeaf`  
		Last Modified: Sat, 04 Mar 2017 07:04:22 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre8-alpine`

```console
$ docker pull jetty@sha256:4dc0a9a52d31650778cab67aec26611c3df210629658002f243054101dc967e6
```

-	Platforms:
	-	linux; amd64

### `jetty:jre8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50049531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7969d40aceed52b3d3b2eba6057e6cd798353cfda3c0be398f83d934f0b212be`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:10:34 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Sat, 04 Mar 2017 00:10:34 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 04 Mar 2017 00:10:34 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Mar 2017 00:10:35 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 04 Mar 2017 00:10:35 GMT
WORKDIR /usr/local/jetty
# Sat, 04 Mar 2017 00:10:36 GMT
ENV JETTY_VERSION=9.4.2.v20170220
# Sat, 04 Mar 2017 00:10:36 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.2.v20170220/jetty-home-9.4.2.v20170220.tar.gz
# Sat, 04 Mar 2017 00:10:36 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Sat, 04 Mar 2017 00:10:43 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Sat, 04 Mar 2017 00:10:43 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 04 Mar 2017 00:10:44 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 04 Mar 2017 00:10:45 GMT
WORKDIR /var/lib/jetty
# Sat, 04 Mar 2017 00:10:46 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 04 Mar 2017 00:10:46 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 04 Mar 2017 00:10:47 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 04 Mar 2017 00:10:48 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 04 Mar 2017 00:10:48 GMT
EXPOSE 8080/tcp
# Sat, 04 Mar 2017 00:10:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Mar 2017 00:10:49 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38589c7ef30a6557446152b079e1d8c3fa9471ccf11c1d1d2de70885d1f027a`  
		Last Modified: Sat, 04 Mar 2017 07:02:33 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d472406b9d099789104c145c86604064ab7a5e3dae83833f6c54d9e0ab83fea6`  
		Last Modified: Sat, 04 Mar 2017 07:02:33 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea6d8c9499be65f2db3aee8942f4d4902949203a20a6239312650db3ea101dc`  
		Last Modified: Sat, 04 Mar 2017 07:04:25 GMT  
		Size: 8.1 MB (8053278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d86f333a36d062da714296b8c11b8f8030487a18841548c86b43332e45126d3`  
		Last Modified: Sat, 04 Mar 2017 07:04:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d413e357f625ccf19df457f9a169beedbf4d02064cf5fcad772e65a97191f6`  
		Last Modified: Sat, 04 Mar 2017 07:04:22 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d6541376dfe4ec51432a6c9f7523276f19729a9e4fd761f125ddbf31b1bdd5`  
		Last Modified: Sat, 04 Mar 2017 07:04:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd73e4b990ec7fdb4216d4346fcf8161dfeafde1f27b2384f8df3a84050eeaf`  
		Last Modified: Sat, 04 Mar 2017 07:04:22 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.16`

```console
$ docker pull jetty@sha256:c9a1631cf49b683d4b7f0c8d0dc2a2ed40d3078e93e6954be38220b8bf721ea7
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.16` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132287145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2473ec17fc500a2c206bc73652b810d61305c183055b3711267ed9154f42b6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:41:39 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 01 Mar 2017 15:41:39 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 01 Mar 2017 15:41:40 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 15:41:41 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 01 Mar 2017 15:41:41 GMT
WORKDIR /usr/local/jetty
# Wed, 01 Mar 2017 15:42:23 GMT
ENV JETTY_VERSION=9.3.16.v20170120
# Wed, 01 Mar 2017 15:42:23 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.16.v20170120/jetty-distribution-9.3.16.v20170120.tar.gz
# Wed, 01 Mar 2017 15:42:23 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 01 Mar 2017 15:42:28 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:42:28 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 01 Mar 2017 15:42:29 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 01 Mar 2017 15:42:29 GMT
WORKDIR /var/lib/jetty
# Wed, 01 Mar 2017 15:42:30 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:42:31 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 01 Mar 2017 15:42:31 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 01 Mar 2017 15:42:32 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 01 Mar 2017 15:42:32 GMT
EXPOSE 8080/tcp
# Wed, 01 Mar 2017 15:42:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 15:42:33 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25294f71fad0aeada7d930f880b8a38f6b4d5a5881ebc74a5b1cd8cff811f46b`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd0ac07e1d493f9947502dbe443cf88c0464ee65da1e09b81da67f63cd488dd`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7fbf75a4b5a2344f1b8e3aaea5361b491f4eca719ac6089af77bd8555e22f43`  
		Last Modified: Thu, 02 Mar 2017 05:38:18 GMT  
		Size: 8.0 MB (8008042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824de31bf3eebcad2930296869939f9a0481d0e60abbcff7e035ea653770f079`  
		Last Modified: Thu, 02 Mar 2017 05:38:13 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7eca9c1697515237957d8b88bbf01ad409142f9d3bd08ce090492b1cbd7309`  
		Last Modified: Thu, 02 Mar 2017 05:38:12 GMT  
		Size: 1.8 KB (1839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b6c006750047741528002fcaa4e0fa063565d90c62814b785fb83d0bce14ca4`  
		Last Modified: Thu, 02 Mar 2017 05:38:13 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e7013cdcddc854d44f16f1da31a9df6b3f1bded3a6c87eac5bd8d2e3026693`  
		Last Modified: Thu, 02 Mar 2017 05:38:15 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3`

```console
$ docker pull jetty@sha256:c9a1631cf49b683d4b7f0c8d0dc2a2ed40d3078e93e6954be38220b8bf721ea7
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132287145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2473ec17fc500a2c206bc73652b810d61305c183055b3711267ed9154f42b6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:41:39 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 01 Mar 2017 15:41:39 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 01 Mar 2017 15:41:40 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 15:41:41 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 01 Mar 2017 15:41:41 GMT
WORKDIR /usr/local/jetty
# Wed, 01 Mar 2017 15:42:23 GMT
ENV JETTY_VERSION=9.3.16.v20170120
# Wed, 01 Mar 2017 15:42:23 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.16.v20170120/jetty-distribution-9.3.16.v20170120.tar.gz
# Wed, 01 Mar 2017 15:42:23 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 01 Mar 2017 15:42:28 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:42:28 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 01 Mar 2017 15:42:29 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 01 Mar 2017 15:42:29 GMT
WORKDIR /var/lib/jetty
# Wed, 01 Mar 2017 15:42:30 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:42:31 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 01 Mar 2017 15:42:31 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 01 Mar 2017 15:42:32 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 01 Mar 2017 15:42:32 GMT
EXPOSE 8080/tcp
# Wed, 01 Mar 2017 15:42:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 15:42:33 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25294f71fad0aeada7d930f880b8a38f6b4d5a5881ebc74a5b1cd8cff811f46b`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd0ac07e1d493f9947502dbe443cf88c0464ee65da1e09b81da67f63cd488dd`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7fbf75a4b5a2344f1b8e3aaea5361b491f4eca719ac6089af77bd8555e22f43`  
		Last Modified: Thu, 02 Mar 2017 05:38:18 GMT  
		Size: 8.0 MB (8008042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824de31bf3eebcad2930296869939f9a0481d0e60abbcff7e035ea653770f079`  
		Last Modified: Thu, 02 Mar 2017 05:38:13 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7eca9c1697515237957d8b88bbf01ad409142f9d3bd08ce090492b1cbd7309`  
		Last Modified: Thu, 02 Mar 2017 05:38:12 GMT  
		Size: 1.8 KB (1839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b6c006750047741528002fcaa4e0fa063565d90c62814b785fb83d0bce14ca4`  
		Last Modified: Thu, 02 Mar 2017 05:38:13 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e7013cdcddc854d44f16f1da31a9df6b3f1bded3a6c87eac5bd8d2e3026693`  
		Last Modified: Thu, 02 Mar 2017 05:38:15 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.16-jre8`

```console
$ docker pull jetty@sha256:c9a1631cf49b683d4b7f0c8d0dc2a2ed40d3078e93e6954be38220b8bf721ea7
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.16-jre8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132287145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2473ec17fc500a2c206bc73652b810d61305c183055b3711267ed9154f42b6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:41:39 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 01 Mar 2017 15:41:39 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 01 Mar 2017 15:41:40 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 15:41:41 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 01 Mar 2017 15:41:41 GMT
WORKDIR /usr/local/jetty
# Wed, 01 Mar 2017 15:42:23 GMT
ENV JETTY_VERSION=9.3.16.v20170120
# Wed, 01 Mar 2017 15:42:23 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.16.v20170120/jetty-distribution-9.3.16.v20170120.tar.gz
# Wed, 01 Mar 2017 15:42:23 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 01 Mar 2017 15:42:28 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:42:28 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 01 Mar 2017 15:42:29 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 01 Mar 2017 15:42:29 GMT
WORKDIR /var/lib/jetty
# Wed, 01 Mar 2017 15:42:30 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:42:31 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 01 Mar 2017 15:42:31 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 01 Mar 2017 15:42:32 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 01 Mar 2017 15:42:32 GMT
EXPOSE 8080/tcp
# Wed, 01 Mar 2017 15:42:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 15:42:33 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25294f71fad0aeada7d930f880b8a38f6b4d5a5881ebc74a5b1cd8cff811f46b`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd0ac07e1d493f9947502dbe443cf88c0464ee65da1e09b81da67f63cd488dd`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7fbf75a4b5a2344f1b8e3aaea5361b491f4eca719ac6089af77bd8555e22f43`  
		Last Modified: Thu, 02 Mar 2017 05:38:18 GMT  
		Size: 8.0 MB (8008042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824de31bf3eebcad2930296869939f9a0481d0e60abbcff7e035ea653770f079`  
		Last Modified: Thu, 02 Mar 2017 05:38:13 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7eca9c1697515237957d8b88bbf01ad409142f9d3bd08ce090492b1cbd7309`  
		Last Modified: Thu, 02 Mar 2017 05:38:12 GMT  
		Size: 1.8 KB (1839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b6c006750047741528002fcaa4e0fa063565d90c62814b785fb83d0bce14ca4`  
		Last Modified: Thu, 02 Mar 2017 05:38:13 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e7013cdcddc854d44f16f1da31a9df6b3f1bded3a6c87eac5bd8d2e3026693`  
		Last Modified: Thu, 02 Mar 2017 05:38:15 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-jre8`

```console
$ docker pull jetty@sha256:c9a1631cf49b683d4b7f0c8d0dc2a2ed40d3078e93e6954be38220b8bf721ea7
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3-jre8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132287145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2473ec17fc500a2c206bc73652b810d61305c183055b3711267ed9154f42b6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:41:39 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 01 Mar 2017 15:41:39 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 01 Mar 2017 15:41:40 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 15:41:41 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 01 Mar 2017 15:41:41 GMT
WORKDIR /usr/local/jetty
# Wed, 01 Mar 2017 15:42:23 GMT
ENV JETTY_VERSION=9.3.16.v20170120
# Wed, 01 Mar 2017 15:42:23 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.16.v20170120/jetty-distribution-9.3.16.v20170120.tar.gz
# Wed, 01 Mar 2017 15:42:23 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 01 Mar 2017 15:42:28 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:42:28 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 01 Mar 2017 15:42:29 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 01 Mar 2017 15:42:29 GMT
WORKDIR /var/lib/jetty
# Wed, 01 Mar 2017 15:42:30 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:42:31 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 01 Mar 2017 15:42:31 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 01 Mar 2017 15:42:32 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 01 Mar 2017 15:42:32 GMT
EXPOSE 8080/tcp
# Wed, 01 Mar 2017 15:42:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 15:42:33 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25294f71fad0aeada7d930f880b8a38f6b4d5a5881ebc74a5b1cd8cff811f46b`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd0ac07e1d493f9947502dbe443cf88c0464ee65da1e09b81da67f63cd488dd`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7fbf75a4b5a2344f1b8e3aaea5361b491f4eca719ac6089af77bd8555e22f43`  
		Last Modified: Thu, 02 Mar 2017 05:38:18 GMT  
		Size: 8.0 MB (8008042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824de31bf3eebcad2930296869939f9a0481d0e60abbcff7e035ea653770f079`  
		Last Modified: Thu, 02 Mar 2017 05:38:13 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7eca9c1697515237957d8b88bbf01ad409142f9d3bd08ce090492b1cbd7309`  
		Last Modified: Thu, 02 Mar 2017 05:38:12 GMT  
		Size: 1.8 KB (1839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b6c006750047741528002fcaa4e0fa063565d90c62814b785fb83d0bce14ca4`  
		Last Modified: Thu, 02 Mar 2017 05:38:13 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e7013cdcddc854d44f16f1da31a9df6b3f1bded3a6c87eac5bd8d2e3026693`  
		Last Modified: Thu, 02 Mar 2017 05:38:15 GMT  
		Size: 571.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.16-alpine`

```console
$ docker pull jetty@sha256:df63bfb9f78d0a86f498192ca72232494e5800a8625777d242d5351cec2e17d2
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.16-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50064086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75d764c277e10057b4af11bb41fbadc55eba987eec5633f5a6f8197179bc1e33`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:10:34 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Sat, 04 Mar 2017 00:10:34 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 04 Mar 2017 00:10:34 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Mar 2017 00:10:35 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 04 Mar 2017 00:10:35 GMT
WORKDIR /usr/local/jetty
# Sat, 04 Mar 2017 00:10:50 GMT
ENV JETTY_VERSION=9.3.16.v20170120
# Sat, 04 Mar 2017 00:10:50 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.16.v20170120/jetty-distribution-9.3.16.v20170120.tar.gz
# Sat, 04 Mar 2017 00:10:50 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Sat, 04 Mar 2017 00:10:58 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Sat, 04 Mar 2017 00:10:58 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 04 Mar 2017 00:10:59 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 04 Mar 2017 00:10:59 GMT
WORKDIR /var/lib/jetty
# Sat, 04 Mar 2017 00:11:01 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Sat, 04 Mar 2017 00:11:01 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 04 Mar 2017 00:11:02 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 04 Mar 2017 00:11:03 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 04 Mar 2017 00:11:03 GMT
EXPOSE 8080/tcp
# Sat, 04 Mar 2017 00:11:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Mar 2017 00:11:03 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38589c7ef30a6557446152b079e1d8c3fa9471ccf11c1d1d2de70885d1f027a`  
		Last Modified: Sat, 04 Mar 2017 07:02:33 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d472406b9d099789104c145c86604064ab7a5e3dae83833f6c54d9e0ab83fea6`  
		Last Modified: Sat, 04 Mar 2017 07:02:33 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7358a3b26528c45c74ec2fdc1f7c7a8c3a976c11cf61f0c6c019d85b09205f6`  
		Last Modified: Sat, 04 Mar 2017 07:02:32 GMT  
		Size: 8.0 MB (8037965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2b248c57c74cd61c796b16aa11b2e9966b3244b2a9c75744222cefe1546c9a`  
		Last Modified: Sat, 04 Mar 2017 07:02:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de74f894c4635943438b4544c88fd70e5558419e700e07634b2def11597426ed`  
		Last Modified: Sat, 04 Mar 2017 07:02:30 GMT  
		Size: 32.1 KB (32102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3cd8ce43de67471b651e47adcba4c3f2db426a5a15e40c50eb77d9d6104ac9`  
		Last Modified: Sat, 04 Mar 2017 07:02:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c992029059450295edd1626d72d6f576ecc7358f8d9b678c2243ada37c230a95`  
		Last Modified: Sat, 04 Mar 2017 07:02:30 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-alpine`

```console
$ docker pull jetty@sha256:df63bfb9f78d0a86f498192ca72232494e5800a8625777d242d5351cec2e17d2
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50064086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75d764c277e10057b4af11bb41fbadc55eba987eec5633f5a6f8197179bc1e33`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:10:34 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Sat, 04 Mar 2017 00:10:34 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 04 Mar 2017 00:10:34 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Mar 2017 00:10:35 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 04 Mar 2017 00:10:35 GMT
WORKDIR /usr/local/jetty
# Sat, 04 Mar 2017 00:10:50 GMT
ENV JETTY_VERSION=9.3.16.v20170120
# Sat, 04 Mar 2017 00:10:50 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.16.v20170120/jetty-distribution-9.3.16.v20170120.tar.gz
# Sat, 04 Mar 2017 00:10:50 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Sat, 04 Mar 2017 00:10:58 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Sat, 04 Mar 2017 00:10:58 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 04 Mar 2017 00:10:59 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 04 Mar 2017 00:10:59 GMT
WORKDIR /var/lib/jetty
# Sat, 04 Mar 2017 00:11:01 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Sat, 04 Mar 2017 00:11:01 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 04 Mar 2017 00:11:02 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 04 Mar 2017 00:11:03 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 04 Mar 2017 00:11:03 GMT
EXPOSE 8080/tcp
# Sat, 04 Mar 2017 00:11:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Mar 2017 00:11:03 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38589c7ef30a6557446152b079e1d8c3fa9471ccf11c1d1d2de70885d1f027a`  
		Last Modified: Sat, 04 Mar 2017 07:02:33 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d472406b9d099789104c145c86604064ab7a5e3dae83833f6c54d9e0ab83fea6`  
		Last Modified: Sat, 04 Mar 2017 07:02:33 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7358a3b26528c45c74ec2fdc1f7c7a8c3a976c11cf61f0c6c019d85b09205f6`  
		Last Modified: Sat, 04 Mar 2017 07:02:32 GMT  
		Size: 8.0 MB (8037965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2b248c57c74cd61c796b16aa11b2e9966b3244b2a9c75744222cefe1546c9a`  
		Last Modified: Sat, 04 Mar 2017 07:02:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de74f894c4635943438b4544c88fd70e5558419e700e07634b2def11597426ed`  
		Last Modified: Sat, 04 Mar 2017 07:02:30 GMT  
		Size: 32.1 KB (32102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3cd8ce43de67471b651e47adcba4c3f2db426a5a15e40c50eb77d9d6104ac9`  
		Last Modified: Sat, 04 Mar 2017 07:02:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c992029059450295edd1626d72d6f576ecc7358f8d9b678c2243ada37c230a95`  
		Last Modified: Sat, 04 Mar 2017 07:02:30 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3.16-jre8-alpine`

```console
$ docker pull jetty@sha256:df63bfb9f78d0a86f498192ca72232494e5800a8625777d242d5351cec2e17d2
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3.16-jre8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50064086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75d764c277e10057b4af11bb41fbadc55eba987eec5633f5a6f8197179bc1e33`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:10:34 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Sat, 04 Mar 2017 00:10:34 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 04 Mar 2017 00:10:34 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Mar 2017 00:10:35 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 04 Mar 2017 00:10:35 GMT
WORKDIR /usr/local/jetty
# Sat, 04 Mar 2017 00:10:50 GMT
ENV JETTY_VERSION=9.3.16.v20170120
# Sat, 04 Mar 2017 00:10:50 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.16.v20170120/jetty-distribution-9.3.16.v20170120.tar.gz
# Sat, 04 Mar 2017 00:10:50 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Sat, 04 Mar 2017 00:10:58 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Sat, 04 Mar 2017 00:10:58 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 04 Mar 2017 00:10:59 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 04 Mar 2017 00:10:59 GMT
WORKDIR /var/lib/jetty
# Sat, 04 Mar 2017 00:11:01 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Sat, 04 Mar 2017 00:11:01 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 04 Mar 2017 00:11:02 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 04 Mar 2017 00:11:03 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 04 Mar 2017 00:11:03 GMT
EXPOSE 8080/tcp
# Sat, 04 Mar 2017 00:11:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Mar 2017 00:11:03 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38589c7ef30a6557446152b079e1d8c3fa9471ccf11c1d1d2de70885d1f027a`  
		Last Modified: Sat, 04 Mar 2017 07:02:33 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d472406b9d099789104c145c86604064ab7a5e3dae83833f6c54d9e0ab83fea6`  
		Last Modified: Sat, 04 Mar 2017 07:02:33 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7358a3b26528c45c74ec2fdc1f7c7a8c3a976c11cf61f0c6c019d85b09205f6`  
		Last Modified: Sat, 04 Mar 2017 07:02:32 GMT  
		Size: 8.0 MB (8037965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2b248c57c74cd61c796b16aa11b2e9966b3244b2a9c75744222cefe1546c9a`  
		Last Modified: Sat, 04 Mar 2017 07:02:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de74f894c4635943438b4544c88fd70e5558419e700e07634b2def11597426ed`  
		Last Modified: Sat, 04 Mar 2017 07:02:30 GMT  
		Size: 32.1 KB (32102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3cd8ce43de67471b651e47adcba4c3f2db426a5a15e40c50eb77d9d6104ac9`  
		Last Modified: Sat, 04 Mar 2017 07:02:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c992029059450295edd1626d72d6f576ecc7358f8d9b678c2243ada37c230a95`  
		Last Modified: Sat, 04 Mar 2017 07:02:30 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.3-jre8-alpine`

```console
$ docker pull jetty@sha256:df63bfb9f78d0a86f498192ca72232494e5800a8625777d242d5351cec2e17d2
```

-	Platforms:
	-	linux; amd64

### `jetty:9.3-jre8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50064086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75d764c277e10057b4af11bb41fbadc55eba987eec5633f5a6f8197179bc1e33`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:10:34 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Sat, 04 Mar 2017 00:10:34 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 04 Mar 2017 00:10:34 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Mar 2017 00:10:35 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 04 Mar 2017 00:10:35 GMT
WORKDIR /usr/local/jetty
# Sat, 04 Mar 2017 00:10:50 GMT
ENV JETTY_VERSION=9.3.16.v20170120
# Sat, 04 Mar 2017 00:10:50 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.3.16.v20170120/jetty-distribution-9.3.16.v20170120.tar.gz
# Sat, 04 Mar 2017 00:10:50 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Sat, 04 Mar 2017 00:10:58 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-distribution-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -fr jetty-distribution-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Sat, 04 Mar 2017 00:10:58 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 04 Mar 2017 00:10:59 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 04 Mar 2017 00:10:59 GMT
WORKDIR /var/lib/jetty
# Sat, 04 Mar 2017 00:11:01 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps coreutils 	&& modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Sat, 04 Mar 2017 00:11:01 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 04 Mar 2017 00:11:02 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 04 Mar 2017 00:11:03 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Sat, 04 Mar 2017 00:11:03 GMT
EXPOSE 8080/tcp
# Sat, 04 Mar 2017 00:11:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Mar 2017 00:11:03 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38589c7ef30a6557446152b079e1d8c3fa9471ccf11c1d1d2de70885d1f027a`  
		Last Modified: Sat, 04 Mar 2017 07:02:33 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d472406b9d099789104c145c86604064ab7a5e3dae83833f6c54d9e0ab83fea6`  
		Last Modified: Sat, 04 Mar 2017 07:02:33 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7358a3b26528c45c74ec2fdc1f7c7a8c3a976c11cf61f0c6c019d85b09205f6`  
		Last Modified: Sat, 04 Mar 2017 07:02:32 GMT  
		Size: 8.0 MB (8037965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2b248c57c74cd61c796b16aa11b2e9966b3244b2a9c75744222cefe1546c9a`  
		Last Modified: Sat, 04 Mar 2017 07:02:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de74f894c4635943438b4544c88fd70e5558419e700e07634b2def11597426ed`  
		Last Modified: Sat, 04 Mar 2017 07:02:30 GMT  
		Size: 32.1 KB (32102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3cd8ce43de67471b651e47adcba4c3f2db426a5a15e40c50eb77d9d6104ac9`  
		Last Modified: Sat, 04 Mar 2017 07:02:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c992029059450295edd1626d72d6f576ecc7358f8d9b678c2243ada37c230a95`  
		Last Modified: Sat, 04 Mar 2017 07:02:30 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.21`

```console
$ docker pull jetty@sha256:8fb952e8197aa6573f5c348ff581e8aa8ba9c3f05e87c7a3ed94de54a8ee008a
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2.21` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134297757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1896aec020defc0a0cb227fe6ff287b23d9a64bc033ba9b93df44efd114bff0d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:41:39 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 01 Mar 2017 15:41:39 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 01 Mar 2017 15:41:40 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 15:41:41 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 01 Mar 2017 15:41:41 GMT
WORKDIR /usr/local/jetty
# Wed, 01 Mar 2017 15:42:12 GMT
ENV JETTY_VERSION=9.2.21.v20170120
# Wed, 01 Mar 2017 15:42:12 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.21.v20170120/jetty-distribution-9.2.21.v20170120.tar.gz
# Wed, 01 Mar 2017 15:42:13 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 01 Mar 2017 15:42:17 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:42:17 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 01 Mar 2017 15:42:18 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 01 Mar 2017 15:42:18 GMT
WORKDIR /var/lib/jetty
# Wed, 01 Mar 2017 15:42:20 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:42:20 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 01 Mar 2017 15:42:21 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 01 Mar 2017 15:42:21 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 01 Mar 2017 15:42:21 GMT
EXPOSE 8080/tcp
# Wed, 01 Mar 2017 15:42:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 15:42:22 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25294f71fad0aeada7d930f880b8a38f6b4d5a5881ebc74a5b1cd8cff811f46b`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd0ac07e1d493f9947502dbe443cf88c0464ee65da1e09b81da67f63cd488dd`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924e481c500b116984e95104a10d142f988526e9f2fd16fd8f9e2ac5591e6616`  
		Last Modified: Thu, 02 Mar 2017 05:35:13 GMT  
		Size: 10.0 MB (10018938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e0d244f3bbd2526ccc955179c30d8d34783167e5a108996feb9b866950e4fb`  
		Last Modified: Thu, 02 Mar 2017 05:35:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1716deb04838d59640979533b087a2cc7f8cacaa1a63e02cddfc5d3db02d3681`  
		Last Modified: Thu, 02 Mar 2017 05:35:08 GMT  
		Size: 1.6 KB (1551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bd7292c63439a315bac4c06d436fe8cca0ebf1e3a9e29716089080223c251f`  
		Last Modified: Thu, 02 Mar 2017 05:35:07 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41aca6916cad98f89511104e237d12ffe77f387da46b3c172a5105bd8693de1`  
		Last Modified: Thu, 02 Mar 2017 05:35:07 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2`

```console
$ docker pull jetty@sha256:8fb952e8197aa6573f5c348ff581e8aa8ba9c3f05e87c7a3ed94de54a8ee008a
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134297757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1896aec020defc0a0cb227fe6ff287b23d9a64bc033ba9b93df44efd114bff0d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:41:39 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 01 Mar 2017 15:41:39 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 01 Mar 2017 15:41:40 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 15:41:41 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 01 Mar 2017 15:41:41 GMT
WORKDIR /usr/local/jetty
# Wed, 01 Mar 2017 15:42:12 GMT
ENV JETTY_VERSION=9.2.21.v20170120
# Wed, 01 Mar 2017 15:42:12 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.21.v20170120/jetty-distribution-9.2.21.v20170120.tar.gz
# Wed, 01 Mar 2017 15:42:13 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 01 Mar 2017 15:42:17 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:42:17 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 01 Mar 2017 15:42:18 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 01 Mar 2017 15:42:18 GMT
WORKDIR /var/lib/jetty
# Wed, 01 Mar 2017 15:42:20 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:42:20 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 01 Mar 2017 15:42:21 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 01 Mar 2017 15:42:21 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 01 Mar 2017 15:42:21 GMT
EXPOSE 8080/tcp
# Wed, 01 Mar 2017 15:42:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 15:42:22 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25294f71fad0aeada7d930f880b8a38f6b4d5a5881ebc74a5b1cd8cff811f46b`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd0ac07e1d493f9947502dbe443cf88c0464ee65da1e09b81da67f63cd488dd`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924e481c500b116984e95104a10d142f988526e9f2fd16fd8f9e2ac5591e6616`  
		Last Modified: Thu, 02 Mar 2017 05:35:13 GMT  
		Size: 10.0 MB (10018938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e0d244f3bbd2526ccc955179c30d8d34783167e5a108996feb9b866950e4fb`  
		Last Modified: Thu, 02 Mar 2017 05:35:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1716deb04838d59640979533b087a2cc7f8cacaa1a63e02cddfc5d3db02d3681`  
		Last Modified: Thu, 02 Mar 2017 05:35:08 GMT  
		Size: 1.6 KB (1551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bd7292c63439a315bac4c06d436fe8cca0ebf1e3a9e29716089080223c251f`  
		Last Modified: Thu, 02 Mar 2017 05:35:07 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41aca6916cad98f89511104e237d12ffe77f387da46b3c172a5105bd8693de1`  
		Last Modified: Thu, 02 Mar 2017 05:35:07 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.21-jre8`

```console
$ docker pull jetty@sha256:8fb952e8197aa6573f5c348ff581e8aa8ba9c3f05e87c7a3ed94de54a8ee008a
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2.21-jre8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134297757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1896aec020defc0a0cb227fe6ff287b23d9a64bc033ba9b93df44efd114bff0d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:41:39 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 01 Mar 2017 15:41:39 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 01 Mar 2017 15:41:40 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 15:41:41 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 01 Mar 2017 15:41:41 GMT
WORKDIR /usr/local/jetty
# Wed, 01 Mar 2017 15:42:12 GMT
ENV JETTY_VERSION=9.2.21.v20170120
# Wed, 01 Mar 2017 15:42:12 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.21.v20170120/jetty-distribution-9.2.21.v20170120.tar.gz
# Wed, 01 Mar 2017 15:42:13 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 01 Mar 2017 15:42:17 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:42:17 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 01 Mar 2017 15:42:18 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 01 Mar 2017 15:42:18 GMT
WORKDIR /var/lib/jetty
# Wed, 01 Mar 2017 15:42:20 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:42:20 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 01 Mar 2017 15:42:21 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 01 Mar 2017 15:42:21 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 01 Mar 2017 15:42:21 GMT
EXPOSE 8080/tcp
# Wed, 01 Mar 2017 15:42:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 15:42:22 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25294f71fad0aeada7d930f880b8a38f6b4d5a5881ebc74a5b1cd8cff811f46b`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd0ac07e1d493f9947502dbe443cf88c0464ee65da1e09b81da67f63cd488dd`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924e481c500b116984e95104a10d142f988526e9f2fd16fd8f9e2ac5591e6616`  
		Last Modified: Thu, 02 Mar 2017 05:35:13 GMT  
		Size: 10.0 MB (10018938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e0d244f3bbd2526ccc955179c30d8d34783167e5a108996feb9b866950e4fb`  
		Last Modified: Thu, 02 Mar 2017 05:35:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1716deb04838d59640979533b087a2cc7f8cacaa1a63e02cddfc5d3db02d3681`  
		Last Modified: Thu, 02 Mar 2017 05:35:08 GMT  
		Size: 1.6 KB (1551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bd7292c63439a315bac4c06d436fe8cca0ebf1e3a9e29716089080223c251f`  
		Last Modified: Thu, 02 Mar 2017 05:35:07 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41aca6916cad98f89511104e237d12ffe77f387da46b3c172a5105bd8693de1`  
		Last Modified: Thu, 02 Mar 2017 05:35:07 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2-jre8`

```console
$ docker pull jetty@sha256:8fb952e8197aa6573f5c348ff581e8aa8ba9c3f05e87c7a3ed94de54a8ee008a
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2-jre8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134297757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1896aec020defc0a0cb227fe6ff287b23d9a64bc033ba9b93df44efd114bff0d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 15:41:39 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 01 Mar 2017 15:41:39 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 01 Mar 2017 15:41:40 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 15:41:41 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 01 Mar 2017 15:41:41 GMT
WORKDIR /usr/local/jetty
# Wed, 01 Mar 2017 15:42:12 GMT
ENV JETTY_VERSION=9.2.21.v20170120
# Wed, 01 Mar 2017 15:42:12 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.21.v20170120/jetty-distribution-9.2.21.v20170120.tar.gz
# Wed, 01 Mar 2017 15:42:13 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 01 Mar 2017 15:42:17 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:42:17 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 01 Mar 2017 15:42:18 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 01 Mar 2017 15:42:18 GMT
WORKDIR /var/lib/jetty
# Wed, 01 Mar 2017 15:42:20 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:42:20 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 01 Mar 2017 15:42:21 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 01 Mar 2017 15:42:21 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 01 Mar 2017 15:42:21 GMT
EXPOSE 8080/tcp
# Wed, 01 Mar 2017 15:42:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 15:42:22 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25294f71fad0aeada7d930f880b8a38f6b4d5a5881ebc74a5b1cd8cff811f46b`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd0ac07e1d493f9947502dbe443cf88c0464ee65da1e09b81da67f63cd488dd`  
		Last Modified: Thu, 02 Mar 2017 05:35:14 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924e481c500b116984e95104a10d142f988526e9f2fd16fd8f9e2ac5591e6616`  
		Last Modified: Thu, 02 Mar 2017 05:35:13 GMT  
		Size: 10.0 MB (10018938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e0d244f3bbd2526ccc955179c30d8d34783167e5a108996feb9b866950e4fb`  
		Last Modified: Thu, 02 Mar 2017 05:35:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1716deb04838d59640979533b087a2cc7f8cacaa1a63e02cddfc5d3db02d3681`  
		Last Modified: Thu, 02 Mar 2017 05:35:08 GMT  
		Size: 1.6 KB (1551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bd7292c63439a315bac4c06d436fe8cca0ebf1e3a9e29716089080223c251f`  
		Last Modified: Thu, 02 Mar 2017 05:35:07 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41aca6916cad98f89511104e237d12ffe77f387da46b3c172a5105bd8693de1`  
		Last Modified: Thu, 02 Mar 2017 05:35:07 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2.21-jre7`

```console
$ docker pull jetty@sha256:1e8edb4dd55456e9b99f74b382c21934e9338cf414bbd57e0b65f04219a10cee
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2.21-jre7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158302871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b845a19f8028259e0356fc7dbd7782da283a27a7f08930b7adccbd6183cc158b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:23:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:23:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:23:27 GMT
ENV JAVA_VERSION=7u121
# Tue, 28 Feb 2017 15:23:27 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Tue, 28 Feb 2017 15:24:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 01 Mar 2017 15:41:57 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 01 Mar 2017 15:41:57 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 01 Mar 2017 15:41:58 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 15:41:58 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 01 Mar 2017 15:41:59 GMT
WORKDIR /usr/local/jetty
# Wed, 01 Mar 2017 15:41:59 GMT
ENV JETTY_VERSION=9.2.21.v20170120
# Wed, 01 Mar 2017 15:41:59 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.21.v20170120/jetty-distribution-9.2.21.v20170120.tar.gz
# Wed, 01 Mar 2017 15:42:00 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 01 Mar 2017 15:42:04 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:42:04 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 01 Mar 2017 15:42:05 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 01 Mar 2017 15:42:05 GMT
WORKDIR /var/lib/jetty
# Wed, 01 Mar 2017 15:42:09 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:42:09 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 01 Mar 2017 15:42:10 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 01 Mar 2017 15:42:10 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 01 Mar 2017 15:42:11 GMT
EXPOSE 8080/tcp
# Wed, 01 Mar 2017 15:42:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 15:42:11 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2fd21b2210400e7764782a10451f499b6df86fae6ba5724557871c4b24621ca`  
		Last Modified: Tue, 28 Feb 2017 21:56:47 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67cd8115494e7b08a6478d778d1981e74ddd5eaf074e85e91d748ad3b577f85`  
		Last Modified: Tue, 28 Feb 2017 21:57:07 GMT  
		Size: 77.8 MB (77812863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93470aea9ecb8b515316f727594fec170cc43d5cc58366daed902af935991f0`  
		Last Modified: Thu, 02 Mar 2017 05:36:50 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0370a0418efebc09a51c78a282ce58834490bc70b57d0d0ae31a731fcd4ac5f`  
		Last Modified: Thu, 02 Mar 2017 05:36:50 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1cd2335e91eb944f53087cecb9d0884674b8e027c181dfb9b6aab0fd44d689`  
		Last Modified: Thu, 02 Mar 2017 05:36:49 GMT  
		Size: 10.0 MB (10018956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9109de10f1b0344c35905c6103332febc171b46c82ea6e4ee419a05bc1c030`  
		Last Modified: Thu, 02 Mar 2017 05:36:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f0de9141553f58634950daffba408b23881f3bc78ef0f7ee2210d66159890d`  
		Last Modified: Thu, 02 Mar 2017 05:36:47 GMT  
		Size: 1.6 KB (1551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abff2adc6af83dafeda2ce3144ec4025b8b4b90a452a11f732113580d032f19`  
		Last Modified: Thu, 02 Mar 2017 05:36:42 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec4649cb985c7baba6143faea8cdd0ba3250c20b5d4ef35a93e94e3398f320a`  
		Last Modified: Thu, 02 Mar 2017 05:36:42 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9.2-jre7`

```console
$ docker pull jetty@sha256:1e8edb4dd55456e9b99f74b382c21934e9338cf414bbd57e0b65f04219a10cee
```

-	Platforms:
	-	linux; amd64

### `jetty:9.2-jre7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158302871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b845a19f8028259e0356fc7dbd7782da283a27a7f08930b7adccbd6183cc158b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:23:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:23:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:23:27 GMT
ENV JAVA_VERSION=7u121
# Tue, 28 Feb 2017 15:23:27 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Tue, 28 Feb 2017 15:24:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 01 Mar 2017 15:41:57 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 01 Mar 2017 15:41:57 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 01 Mar 2017 15:41:58 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 15:41:58 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 01 Mar 2017 15:41:59 GMT
WORKDIR /usr/local/jetty
# Wed, 01 Mar 2017 15:41:59 GMT
ENV JETTY_VERSION=9.2.21.v20170120
# Wed, 01 Mar 2017 15:41:59 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.21.v20170120/jetty-distribution-9.2.21.v20170120.tar.gz
# Wed, 01 Mar 2017 15:42:00 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 01 Mar 2017 15:42:04 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:42:04 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 01 Mar 2017 15:42:05 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 01 Mar 2017 15:42:05 GMT
WORKDIR /var/lib/jetty
# Wed, 01 Mar 2017 15:42:09 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:42:09 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 01 Mar 2017 15:42:10 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 01 Mar 2017 15:42:10 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 01 Mar 2017 15:42:11 GMT
EXPOSE 8080/tcp
# Wed, 01 Mar 2017 15:42:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 15:42:11 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2fd21b2210400e7764782a10451f499b6df86fae6ba5724557871c4b24621ca`  
		Last Modified: Tue, 28 Feb 2017 21:56:47 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67cd8115494e7b08a6478d778d1981e74ddd5eaf074e85e91d748ad3b577f85`  
		Last Modified: Tue, 28 Feb 2017 21:57:07 GMT  
		Size: 77.8 MB (77812863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93470aea9ecb8b515316f727594fec170cc43d5cc58366daed902af935991f0`  
		Last Modified: Thu, 02 Mar 2017 05:36:50 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0370a0418efebc09a51c78a282ce58834490bc70b57d0d0ae31a731fcd4ac5f`  
		Last Modified: Thu, 02 Mar 2017 05:36:50 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1cd2335e91eb944f53087cecb9d0884674b8e027c181dfb9b6aab0fd44d689`  
		Last Modified: Thu, 02 Mar 2017 05:36:49 GMT  
		Size: 10.0 MB (10018956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9109de10f1b0344c35905c6103332febc171b46c82ea6e4ee419a05bc1c030`  
		Last Modified: Thu, 02 Mar 2017 05:36:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f0de9141553f58634950daffba408b23881f3bc78ef0f7ee2210d66159890d`  
		Last Modified: Thu, 02 Mar 2017 05:36:47 GMT  
		Size: 1.6 KB (1551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abff2adc6af83dafeda2ce3144ec4025b8b4b90a452a11f732113580d032f19`  
		Last Modified: Thu, 02 Mar 2017 05:36:42 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec4649cb985c7baba6143faea8cdd0ba3250c20b5d4ef35a93e94e3398f320a`  
		Last Modified: Thu, 02 Mar 2017 05:36:42 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:9-jre7`

```console
$ docker pull jetty@sha256:1e8edb4dd55456e9b99f74b382c21934e9338cf414bbd57e0b65f04219a10cee
```

-	Platforms:
	-	linux; amd64

### `jetty:9-jre7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158302871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b845a19f8028259e0356fc7dbd7782da283a27a7f08930b7adccbd6183cc158b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:23:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:23:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:23:27 GMT
ENV JAVA_VERSION=7u121
# Tue, 28 Feb 2017 15:23:27 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Tue, 28 Feb 2017 15:24:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 01 Mar 2017 15:41:57 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 01 Mar 2017 15:41:57 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 01 Mar 2017 15:41:58 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 15:41:58 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 01 Mar 2017 15:41:59 GMT
WORKDIR /usr/local/jetty
# Wed, 01 Mar 2017 15:41:59 GMT
ENV JETTY_VERSION=9.2.21.v20170120
# Wed, 01 Mar 2017 15:41:59 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.21.v20170120/jetty-distribution-9.2.21.v20170120.tar.gz
# Wed, 01 Mar 2017 15:42:00 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 01 Mar 2017 15:42:04 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:42:04 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 01 Mar 2017 15:42:05 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 01 Mar 2017 15:42:05 GMT
WORKDIR /var/lib/jetty
# Wed, 01 Mar 2017 15:42:09 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:42:09 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 01 Mar 2017 15:42:10 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 01 Mar 2017 15:42:10 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 01 Mar 2017 15:42:11 GMT
EXPOSE 8080/tcp
# Wed, 01 Mar 2017 15:42:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 15:42:11 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2fd21b2210400e7764782a10451f499b6df86fae6ba5724557871c4b24621ca`  
		Last Modified: Tue, 28 Feb 2017 21:56:47 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67cd8115494e7b08a6478d778d1981e74ddd5eaf074e85e91d748ad3b577f85`  
		Last Modified: Tue, 28 Feb 2017 21:57:07 GMT  
		Size: 77.8 MB (77812863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93470aea9ecb8b515316f727594fec170cc43d5cc58366daed902af935991f0`  
		Last Modified: Thu, 02 Mar 2017 05:36:50 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0370a0418efebc09a51c78a282ce58834490bc70b57d0d0ae31a731fcd4ac5f`  
		Last Modified: Thu, 02 Mar 2017 05:36:50 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1cd2335e91eb944f53087cecb9d0884674b8e027c181dfb9b6aab0fd44d689`  
		Last Modified: Thu, 02 Mar 2017 05:36:49 GMT  
		Size: 10.0 MB (10018956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9109de10f1b0344c35905c6103332febc171b46c82ea6e4ee419a05bc1c030`  
		Last Modified: Thu, 02 Mar 2017 05:36:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f0de9141553f58634950daffba408b23881f3bc78ef0f7ee2210d66159890d`  
		Last Modified: Thu, 02 Mar 2017 05:36:47 GMT  
		Size: 1.6 KB (1551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abff2adc6af83dafeda2ce3144ec4025b8b4b90a452a11f732113580d032f19`  
		Last Modified: Thu, 02 Mar 2017 05:36:42 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec4649cb985c7baba6143faea8cdd0ba3250c20b5d4ef35a93e94e3398f320a`  
		Last Modified: Thu, 02 Mar 2017 05:36:42 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jetty:jre7`

```console
$ docker pull jetty@sha256:1e8edb4dd55456e9b99f74b382c21934e9338cf414bbd57e0b65f04219a10cee
```

-	Platforms:
	-	linux; amd64

### `jetty:jre7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158302871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b845a19f8028259e0356fc7dbd7782da283a27a7f08930b7adccbd6183cc158b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:23:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:23:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:23:27 GMT
ENV JAVA_VERSION=7u121
# Tue, 28 Feb 2017 15:23:27 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Tue, 28 Feb 2017 15:24:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 01 Mar 2017 15:41:57 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Wed, 01 Mar 2017 15:41:57 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 01 Mar 2017 15:41:58 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 15:41:58 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 01 Mar 2017 15:41:59 GMT
WORKDIR /usr/local/jetty
# Wed, 01 Mar 2017 15:41:59 GMT
ENV JETTY_VERSION=9.2.21.v20170120
# Wed, 01 Mar 2017 15:41:59 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.21.v20170120/jetty-distribution-9.2.21.v20170120.tar.gz
# Wed, 01 Mar 2017 15:42:00 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D
# Wed, 01 Mar 2017 15:42:04 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -r "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:42:04 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 01 Mar 2017 15:42:05 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 01 Mar 2017 15:42:05 GMT
WORKDIR /var/lib/jetty
# Wed, 01 Mar 2017 15:42:09 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules,setuid" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 01 Mar 2017 15:42:09 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 01 Mar 2017 15:42:10 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 01 Mar 2017 15:42:10 GMT
COPY file:4f7da2906a90932cfb90db54a45ee08f86b17253747db62085f7512c9efd46ad in / 
# Wed, 01 Mar 2017 15:42:11 GMT
EXPOSE 8080/tcp
# Wed, 01 Mar 2017 15:42:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 15:42:11 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2fd21b2210400e7764782a10451f499b6df86fae6ba5724557871c4b24621ca`  
		Last Modified: Tue, 28 Feb 2017 21:56:47 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67cd8115494e7b08a6478d778d1981e74ddd5eaf074e85e91d748ad3b577f85`  
		Last Modified: Tue, 28 Feb 2017 21:57:07 GMT  
		Size: 77.8 MB (77812863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93470aea9ecb8b515316f727594fec170cc43d5cc58366daed902af935991f0`  
		Last Modified: Thu, 02 Mar 2017 05:36:50 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0370a0418efebc09a51c78a282ce58834490bc70b57d0d0ae31a731fcd4ac5f`  
		Last Modified: Thu, 02 Mar 2017 05:36:50 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1cd2335e91eb944f53087cecb9d0884674b8e027c181dfb9b6aab0fd44d689`  
		Last Modified: Thu, 02 Mar 2017 05:36:49 GMT  
		Size: 10.0 MB (10018956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9109de10f1b0344c35905c6103332febc171b46c82ea6e4ee419a05bc1c030`  
		Last Modified: Thu, 02 Mar 2017 05:36:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f0de9141553f58634950daffba408b23881f3bc78ef0f7ee2210d66159890d`  
		Last Modified: Thu, 02 Mar 2017 05:36:47 GMT  
		Size: 1.6 KB (1551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abff2adc6af83dafeda2ce3144ec4025b8b4b90a452a11f732113580d032f19`  
		Last Modified: Thu, 02 Mar 2017 05:36:42 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec4649cb985c7baba6143faea8cdd0ba3250c20b5d4ef35a93e94e3398f320a`  
		Last Modified: Thu, 02 Mar 2017 05:36:42 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
