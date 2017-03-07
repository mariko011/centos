<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `solr`

-	[`solr:5.5.3`](#solr553)
-	[`solr:5.5`](#solr55)
-	[`solr:5`](#solr5)
-	[`solr:5.5.3-alpine`](#solr553-alpine)
-	[`solr:5.5-alpine`](#solr55-alpine)
-	[`solr:5-alpine`](#solr5-alpine)
-	[`solr:6.3.0`](#solr630)
-	[`solr:6.3`](#solr63)
-	[`solr:6.3.0-alpine`](#solr630-alpine)
-	[`solr:6.3-alpine`](#solr63-alpine)
-	[`solr:6.4.1`](#solr641)
-	[`solr:6.4`](#solr64)
-	[`solr:6`](#solr6)
-	[`solr:latest`](#solrlatest)
-	[`solr:6.4.1-alpine`](#solr641-alpine)
-	[`solr:6.4-alpine`](#solr64-alpine)
-	[`solr:6-alpine`](#solr6-alpine)
-	[`solr:alpine`](#solralpine)

## `solr:5.5.3`

```console
$ docker pull solr@sha256:3001fab7851c965b3bee0a75855d7a06db08b08cb34090cc797a1f77c2f7798e
```

-	Platforms:
	-	linux; amd64

### `solr:5.5.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266217159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a30ecab7c0e409742ba15a6a0a1ea3d698c726fafbbbb68566c892038598db1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Wed, 01 Mar 2017 01:05:18 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 01 Mar 2017 01:05:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 01 Mar 2017 01:05:19 GMT
ARG GPG_KEYSERVER
# Wed, 01 Mar 2017 01:05:33 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 01:05:36 GMT
ENV SOLR_USER=solr
# Wed, 01 Mar 2017 01:05:37 GMT
ENV SOLR_UID=8983
# Wed, 01 Mar 2017 01:05:39 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 01 Mar 2017 01:05:53 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Wed, 01 Mar 2017 01:05:54 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 01 Mar 2017 01:05:56 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 01 Mar 2017 01:05:56 GMT
ENV SOLR_VERSION=5.5.3
# Wed, 01 Mar 2017 01:05:57 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Wed, 01 Mar 2017 01:05:57 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Wed, 01 Mar 2017 01:06:43 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 01 Mar 2017 01:06:44 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Wed, 01 Mar 2017 01:06:45 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 01 Mar 2017 01:06:45 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 01:06:46 GMT
EXPOSE 8983/tcp
# Wed, 01 Mar 2017 01:06:46 GMT
WORKDIR /opt/solr
# Wed, 01 Mar 2017 01:06:47 GMT
USER [solr]
# Wed, 01 Mar 2017 01:06:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Mar 2017 01:06:48 GMT
CMD ["solr-foreground"]
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
	-	`sha256:7a03d2ca4ea858510e867ab85c02fec2bc49238c312779a8b78579e3af0ed68f`  
		Last Modified: Thu, 02 Mar 2017 04:17:25 GMT  
		Size: 10.1 MB (10079895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5e4a57d2222abc11159fe4fdd9f3b095094bce58c953f4b91e57406088b0ab`  
		Last Modified: Thu, 02 Mar 2017 04:17:19 GMT  
		Size: 4.6 KB (4636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d041b505df9c991eeb8e64c049f2bce7cbc6d3e469287ceb19f50949b811fe`  
		Last Modified: Thu, 02 Mar 2017 04:17:20 GMT  
		Size: 8.0 KB (7959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8bfd15b7d26ce9cdf0ca15204c4815c3ef8410425814156f25e49a705651798`  
		Last Modified: Thu, 02 Mar 2017 04:17:30 GMT  
		Size: 131.8 MB (131844496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c97d04700dd7db6b41763665df30a13aff8f8ad0c6ca107ba4e41b32f67beb`  
		Last Modified: Thu, 02 Mar 2017 04:17:18 GMT  
		Size: 3.0 KB (2976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07abe67022131f0eba42eef6d7afa4bffcb1002ca5c33529533064891e727036`  
		Last Modified: Thu, 02 Mar 2017 04:17:17 GMT  
		Size: 3.0 KB (2985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5`

```console
$ docker pull solr@sha256:3001fab7851c965b3bee0a75855d7a06db08b08cb34090cc797a1f77c2f7798e
```

-	Platforms:
	-	linux; amd64

### `solr:5.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266217159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a30ecab7c0e409742ba15a6a0a1ea3d698c726fafbbbb68566c892038598db1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Wed, 01 Mar 2017 01:05:18 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 01 Mar 2017 01:05:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 01 Mar 2017 01:05:19 GMT
ARG GPG_KEYSERVER
# Wed, 01 Mar 2017 01:05:33 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 01:05:36 GMT
ENV SOLR_USER=solr
# Wed, 01 Mar 2017 01:05:37 GMT
ENV SOLR_UID=8983
# Wed, 01 Mar 2017 01:05:39 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 01 Mar 2017 01:05:53 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Wed, 01 Mar 2017 01:05:54 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 01 Mar 2017 01:05:56 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 01 Mar 2017 01:05:56 GMT
ENV SOLR_VERSION=5.5.3
# Wed, 01 Mar 2017 01:05:57 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Wed, 01 Mar 2017 01:05:57 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Wed, 01 Mar 2017 01:06:43 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 01 Mar 2017 01:06:44 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Wed, 01 Mar 2017 01:06:45 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 01 Mar 2017 01:06:45 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 01:06:46 GMT
EXPOSE 8983/tcp
# Wed, 01 Mar 2017 01:06:46 GMT
WORKDIR /opt/solr
# Wed, 01 Mar 2017 01:06:47 GMT
USER [solr]
# Wed, 01 Mar 2017 01:06:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Mar 2017 01:06:48 GMT
CMD ["solr-foreground"]
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
	-	`sha256:7a03d2ca4ea858510e867ab85c02fec2bc49238c312779a8b78579e3af0ed68f`  
		Last Modified: Thu, 02 Mar 2017 04:17:25 GMT  
		Size: 10.1 MB (10079895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5e4a57d2222abc11159fe4fdd9f3b095094bce58c953f4b91e57406088b0ab`  
		Last Modified: Thu, 02 Mar 2017 04:17:19 GMT  
		Size: 4.6 KB (4636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d041b505df9c991eeb8e64c049f2bce7cbc6d3e469287ceb19f50949b811fe`  
		Last Modified: Thu, 02 Mar 2017 04:17:20 GMT  
		Size: 8.0 KB (7959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8bfd15b7d26ce9cdf0ca15204c4815c3ef8410425814156f25e49a705651798`  
		Last Modified: Thu, 02 Mar 2017 04:17:30 GMT  
		Size: 131.8 MB (131844496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c97d04700dd7db6b41763665df30a13aff8f8ad0c6ca107ba4e41b32f67beb`  
		Last Modified: Thu, 02 Mar 2017 04:17:18 GMT  
		Size: 3.0 KB (2976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07abe67022131f0eba42eef6d7afa4bffcb1002ca5c33529533064891e727036`  
		Last Modified: Thu, 02 Mar 2017 04:17:17 GMT  
		Size: 3.0 KB (2985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5`

```console
$ docker pull solr@sha256:3001fab7851c965b3bee0a75855d7a06db08b08cb34090cc797a1f77c2f7798e
```

-	Platforms:
	-	linux; amd64

### `solr:5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266217159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a30ecab7c0e409742ba15a6a0a1ea3d698c726fafbbbb68566c892038598db1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Wed, 01 Mar 2017 01:05:18 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 01 Mar 2017 01:05:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 01 Mar 2017 01:05:19 GMT
ARG GPG_KEYSERVER
# Wed, 01 Mar 2017 01:05:33 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 01:05:36 GMT
ENV SOLR_USER=solr
# Wed, 01 Mar 2017 01:05:37 GMT
ENV SOLR_UID=8983
# Wed, 01 Mar 2017 01:05:39 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 01 Mar 2017 01:05:53 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Wed, 01 Mar 2017 01:05:54 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 01 Mar 2017 01:05:56 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 01 Mar 2017 01:05:56 GMT
ENV SOLR_VERSION=5.5.3
# Wed, 01 Mar 2017 01:05:57 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Wed, 01 Mar 2017 01:05:57 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Wed, 01 Mar 2017 01:06:43 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 01 Mar 2017 01:06:44 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Wed, 01 Mar 2017 01:06:45 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 01 Mar 2017 01:06:45 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 01:06:46 GMT
EXPOSE 8983/tcp
# Wed, 01 Mar 2017 01:06:46 GMT
WORKDIR /opt/solr
# Wed, 01 Mar 2017 01:06:47 GMT
USER [solr]
# Wed, 01 Mar 2017 01:06:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Mar 2017 01:06:48 GMT
CMD ["solr-foreground"]
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
	-	`sha256:7a03d2ca4ea858510e867ab85c02fec2bc49238c312779a8b78579e3af0ed68f`  
		Last Modified: Thu, 02 Mar 2017 04:17:25 GMT  
		Size: 10.1 MB (10079895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5e4a57d2222abc11159fe4fdd9f3b095094bce58c953f4b91e57406088b0ab`  
		Last Modified: Thu, 02 Mar 2017 04:17:19 GMT  
		Size: 4.6 KB (4636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d041b505df9c991eeb8e64c049f2bce7cbc6d3e469287ceb19f50949b811fe`  
		Last Modified: Thu, 02 Mar 2017 04:17:20 GMT  
		Size: 8.0 KB (7959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8bfd15b7d26ce9cdf0ca15204c4815c3ef8410425814156f25e49a705651798`  
		Last Modified: Thu, 02 Mar 2017 04:17:30 GMT  
		Size: 131.8 MB (131844496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c97d04700dd7db6b41763665df30a13aff8f8ad0c6ca107ba4e41b32f67beb`  
		Last Modified: Thu, 02 Mar 2017 04:17:18 GMT  
		Size: 3.0 KB (2976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07abe67022131f0eba42eef6d7afa4bffcb1002ca5c33529533064891e727036`  
		Last Modified: Thu, 02 Mar 2017 04:17:17 GMT  
		Size: 3.0 KB (2985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5.3-alpine`

```console
$ docker pull solr@sha256:e8b2291a49ac5c874f624e9e6f3a221bb7f74260d7f8f1974e19763163c0c274
```

-	Platforms:
	-	linux; amd64

### `solr:5.5.3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.4 MB (193353917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b34fb41d4b31a1415e7df18d9b78fb5da1207989cc45911b2ba2192c10872be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 20:02:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 07 Mar 2017 20:02:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 07 Mar 2017 20:02:14 GMT
ARG GPG_KEYSERVER
# Tue, 07 Mar 2017 20:02:18 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 07 Mar 2017 20:02:20 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 07 Mar 2017 20:02:21 GMT
ENV SOLR_USER=solr
# Tue, 07 Mar 2017 20:02:22 GMT
ENV SOLR_UID=8983
# Tue, 07 Mar 2017 20:02:23 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 07 Mar 2017 20:02:23 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Tue, 07 Mar 2017 20:02:27 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 07 Mar 2017 20:02:28 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 07 Mar 2017 20:02:31 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 07 Mar 2017 20:02:31 GMT
ENV SOLR_VERSION=5.5.3
# Tue, 07 Mar 2017 20:02:32 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Tue, 07 Mar 2017 20:02:33 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Tue, 07 Mar 2017 20:02:48 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 07 Mar 2017 20:02:49 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Tue, 07 Mar 2017 20:02:51 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 07 Mar 2017 20:02:51 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 20:02:52 GMT
EXPOSE 8983/tcp
# Tue, 07 Mar 2017 20:02:52 GMT
WORKDIR /opt/solr
# Tue, 07 Mar 2017 20:02:53 GMT
USER [solr]
# Tue, 07 Mar 2017 20:02:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 20:02:54 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ecf8ac747ed36539dedfd7694f2bef0585857ac087b491e32d0cea148d73dcf`  
		Last Modified: Tue, 07 Mar 2017 20:05:21 GMT  
		Size: 5.2 MB (5165776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fbb7ff6d48b54e5e036c54aced5d919198efaad38ce770a27c568620b3c61a`  
		Last Modified: Tue, 07 Mar 2017 20:05:19 GMT  
		Size: 612.2 KB (612161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72286f66e6a4ef5326cb9718424abf5ab10ee9c87335cd55bb85ff05245866a1`  
		Last Modified: Tue, 07 Mar 2017 20:05:18 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aaf5149ecf81b196d48545345e7c8321dac1c52b7758409717241ec4b56aff7`  
		Last Modified: Tue, 07 Mar 2017 20:05:16 GMT  
		Size: 7.6 KB (7633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4e69fc939d1ba6e8bf73a03d0778977e81a8e7b58e8f7e0fc3174fc14ee2cf`  
		Last Modified: Tue, 07 Mar 2017 20:05:15 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98c7b89814ba4df13cbb1c229f42df809d49c6d5f24ec57223820a4c7e08707`  
		Last Modified: Tue, 07 Mar 2017 20:05:28 GMT  
		Size: 131.8 MB (131844408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf938c4535fc04008b398a57e7f9de3473fbc251cf9a21e62f3c0023bae5942d`  
		Last Modified: Tue, 07 Mar 2017 20:05:16 GMT  
		Size: 3.0 KB (2974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cdee0211753433d27104f46d46b4c7faa4fd67bb7dda4e8f717a506f67a2cfc`  
		Last Modified: Tue, 07 Mar 2017 20:05:16 GMT  
		Size: 3.0 KB (2986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5-alpine`

```console
$ docker pull solr@sha256:e8b2291a49ac5c874f624e9e6f3a221bb7f74260d7f8f1974e19763163c0c274
```

-	Platforms:
	-	linux; amd64

### `solr:5.5-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.4 MB (193353917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b34fb41d4b31a1415e7df18d9b78fb5da1207989cc45911b2ba2192c10872be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 20:02:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 07 Mar 2017 20:02:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 07 Mar 2017 20:02:14 GMT
ARG GPG_KEYSERVER
# Tue, 07 Mar 2017 20:02:18 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 07 Mar 2017 20:02:20 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 07 Mar 2017 20:02:21 GMT
ENV SOLR_USER=solr
# Tue, 07 Mar 2017 20:02:22 GMT
ENV SOLR_UID=8983
# Tue, 07 Mar 2017 20:02:23 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 07 Mar 2017 20:02:23 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Tue, 07 Mar 2017 20:02:27 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 07 Mar 2017 20:02:28 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 07 Mar 2017 20:02:31 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 07 Mar 2017 20:02:31 GMT
ENV SOLR_VERSION=5.5.3
# Tue, 07 Mar 2017 20:02:32 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Tue, 07 Mar 2017 20:02:33 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Tue, 07 Mar 2017 20:02:48 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 07 Mar 2017 20:02:49 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Tue, 07 Mar 2017 20:02:51 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 07 Mar 2017 20:02:51 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 20:02:52 GMT
EXPOSE 8983/tcp
# Tue, 07 Mar 2017 20:02:52 GMT
WORKDIR /opt/solr
# Tue, 07 Mar 2017 20:02:53 GMT
USER [solr]
# Tue, 07 Mar 2017 20:02:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 20:02:54 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ecf8ac747ed36539dedfd7694f2bef0585857ac087b491e32d0cea148d73dcf`  
		Last Modified: Tue, 07 Mar 2017 20:05:21 GMT  
		Size: 5.2 MB (5165776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fbb7ff6d48b54e5e036c54aced5d919198efaad38ce770a27c568620b3c61a`  
		Last Modified: Tue, 07 Mar 2017 20:05:19 GMT  
		Size: 612.2 KB (612161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72286f66e6a4ef5326cb9718424abf5ab10ee9c87335cd55bb85ff05245866a1`  
		Last Modified: Tue, 07 Mar 2017 20:05:18 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aaf5149ecf81b196d48545345e7c8321dac1c52b7758409717241ec4b56aff7`  
		Last Modified: Tue, 07 Mar 2017 20:05:16 GMT  
		Size: 7.6 KB (7633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4e69fc939d1ba6e8bf73a03d0778977e81a8e7b58e8f7e0fc3174fc14ee2cf`  
		Last Modified: Tue, 07 Mar 2017 20:05:15 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98c7b89814ba4df13cbb1c229f42df809d49c6d5f24ec57223820a4c7e08707`  
		Last Modified: Tue, 07 Mar 2017 20:05:28 GMT  
		Size: 131.8 MB (131844408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf938c4535fc04008b398a57e7f9de3473fbc251cf9a21e62f3c0023bae5942d`  
		Last Modified: Tue, 07 Mar 2017 20:05:16 GMT  
		Size: 3.0 KB (2974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cdee0211753433d27104f46d46b4c7faa4fd67bb7dda4e8f717a506f67a2cfc`  
		Last Modified: Tue, 07 Mar 2017 20:05:16 GMT  
		Size: 3.0 KB (2986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5-alpine`

```console
$ docker pull solr@sha256:e8b2291a49ac5c874f624e9e6f3a221bb7f74260d7f8f1974e19763163c0c274
```

-	Platforms:
	-	linux; amd64

### `solr:5-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.4 MB (193353917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b34fb41d4b31a1415e7df18d9b78fb5da1207989cc45911b2ba2192c10872be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 20:02:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 07 Mar 2017 20:02:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 07 Mar 2017 20:02:14 GMT
ARG GPG_KEYSERVER
# Tue, 07 Mar 2017 20:02:18 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 07 Mar 2017 20:02:20 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 07 Mar 2017 20:02:21 GMT
ENV SOLR_USER=solr
# Tue, 07 Mar 2017 20:02:22 GMT
ENV SOLR_UID=8983
# Tue, 07 Mar 2017 20:02:23 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 07 Mar 2017 20:02:23 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Tue, 07 Mar 2017 20:02:27 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 07 Mar 2017 20:02:28 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 07 Mar 2017 20:02:31 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 07 Mar 2017 20:02:31 GMT
ENV SOLR_VERSION=5.5.3
# Tue, 07 Mar 2017 20:02:32 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Tue, 07 Mar 2017 20:02:33 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Tue, 07 Mar 2017 20:02:48 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 07 Mar 2017 20:02:49 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Tue, 07 Mar 2017 20:02:51 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 07 Mar 2017 20:02:51 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 20:02:52 GMT
EXPOSE 8983/tcp
# Tue, 07 Mar 2017 20:02:52 GMT
WORKDIR /opt/solr
# Tue, 07 Mar 2017 20:02:53 GMT
USER [solr]
# Tue, 07 Mar 2017 20:02:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 20:02:54 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ecf8ac747ed36539dedfd7694f2bef0585857ac087b491e32d0cea148d73dcf`  
		Last Modified: Tue, 07 Mar 2017 20:05:21 GMT  
		Size: 5.2 MB (5165776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fbb7ff6d48b54e5e036c54aced5d919198efaad38ce770a27c568620b3c61a`  
		Last Modified: Tue, 07 Mar 2017 20:05:19 GMT  
		Size: 612.2 KB (612161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72286f66e6a4ef5326cb9718424abf5ab10ee9c87335cd55bb85ff05245866a1`  
		Last Modified: Tue, 07 Mar 2017 20:05:18 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aaf5149ecf81b196d48545345e7c8321dac1c52b7758409717241ec4b56aff7`  
		Last Modified: Tue, 07 Mar 2017 20:05:16 GMT  
		Size: 7.6 KB (7633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4e69fc939d1ba6e8bf73a03d0778977e81a8e7b58e8f7e0fc3174fc14ee2cf`  
		Last Modified: Tue, 07 Mar 2017 20:05:15 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98c7b89814ba4df13cbb1c229f42df809d49c6d5f24ec57223820a4c7e08707`  
		Last Modified: Tue, 07 Mar 2017 20:05:28 GMT  
		Size: 131.8 MB (131844408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf938c4535fc04008b398a57e7f9de3473fbc251cf9a21e62f3c0023bae5942d`  
		Last Modified: Tue, 07 Mar 2017 20:05:16 GMT  
		Size: 3.0 KB (2974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cdee0211753433d27104f46d46b4c7faa4fd67bb7dda4e8f717a506f67a2cfc`  
		Last Modified: Tue, 07 Mar 2017 20:05:16 GMT  
		Size: 3.0 KB (2986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3.0`

```console
$ docker pull solr@sha256:096aaa8934c112ceda951befcb97f778b13f2956eda6eaee0d938b84c90c82c2
```

-	Platforms:
	-	linux; amd64

### `solr:6.3.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.8 MB (274835960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfc4bc4d76fd821e6ba8ee312bf672bc15f892a0c0821e0df0e064eec09bc803`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Wed, 01 Mar 2017 01:05:18 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 01 Mar 2017 01:05:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 01 Mar 2017 01:05:19 GMT
ARG GPG_KEYSERVER
# Wed, 01 Mar 2017 01:05:33 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 01:05:36 GMT
ENV SOLR_USER=solr
# Wed, 01 Mar 2017 01:05:37 GMT
ENV SOLR_UID=8983
# Wed, 01 Mar 2017 01:05:39 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 01 Mar 2017 01:08:03 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Wed, 01 Mar 2017 01:08:03 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 01 Mar 2017 01:08:05 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 01 Mar 2017 01:08:05 GMT
ENV SOLR_VERSION=6.3.0
# Wed, 01 Mar 2017 01:08:06 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Wed, 01 Mar 2017 01:08:07 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Wed, 01 Mar 2017 01:08:23 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 01 Mar 2017 01:08:26 GMT
COPY dir:abdaca4e15e2e9bc98e5068a7497f01d2fabb66c519ab4a7513e70f2b02dda70 in /opt/docker-solr/scripts 
# Wed, 01 Mar 2017 01:08:27 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 01 Mar 2017 01:08:27 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 01:08:42 GMT
EXPOSE 8983/tcp
# Wed, 01 Mar 2017 01:08:43 GMT
WORKDIR /opt/solr
# Wed, 01 Mar 2017 01:08:43 GMT
USER [solr]
# Wed, 01 Mar 2017 01:08:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Mar 2017 01:08:44 GMT
CMD ["solr-foreground"]
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
	-	`sha256:7a03d2ca4ea858510e867ab85c02fec2bc49238c312779a8b78579e3af0ed68f`  
		Last Modified: Thu, 02 Mar 2017 04:17:25 GMT  
		Size: 10.1 MB (10079895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5e4a57d2222abc11159fe4fdd9f3b095094bce58c953f4b91e57406088b0ab`  
		Last Modified: Thu, 02 Mar 2017 04:17:19 GMT  
		Size: 4.6 KB (4636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66a757e943ba2517343ecd57ce68b1356295c537f6b8dc09ee1f6a9df5203f4`  
		Last Modified: Thu, 02 Mar 2017 04:18:29 GMT  
		Size: 6.8 KB (6779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4843f62217c25706a5d78642d61979fc6523bcef95d7927344194fce60aca45`  
		Last Modified: Thu, 02 Mar 2017 04:18:43 GMT  
		Size: 140.5 MB (140464467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c9f4c5b7e0a88a3d9defae767670ca1d2684c1a72ba517dd5868d6a79ea6cf`  
		Last Modified: Thu, 02 Mar 2017 04:18:32 GMT  
		Size: 3.0 KB (2982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:062c26e26d8c4cd0aeb86974374ebe731eb1eab46b7533e00db84e6261c8c8bc`  
		Last Modified: Thu, 02 Mar 2017 04:18:29 GMT  
		Size: 3.0 KB (2989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3`

```console
$ docker pull solr@sha256:096aaa8934c112ceda951befcb97f778b13f2956eda6eaee0d938b84c90c82c2
```

-	Platforms:
	-	linux; amd64

### `solr:6.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.8 MB (274835960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfc4bc4d76fd821e6ba8ee312bf672bc15f892a0c0821e0df0e064eec09bc803`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Wed, 01 Mar 2017 01:05:18 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 01 Mar 2017 01:05:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 01 Mar 2017 01:05:19 GMT
ARG GPG_KEYSERVER
# Wed, 01 Mar 2017 01:05:33 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 01:05:36 GMT
ENV SOLR_USER=solr
# Wed, 01 Mar 2017 01:05:37 GMT
ENV SOLR_UID=8983
# Wed, 01 Mar 2017 01:05:39 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 01 Mar 2017 01:08:03 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Wed, 01 Mar 2017 01:08:03 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 01 Mar 2017 01:08:05 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 01 Mar 2017 01:08:05 GMT
ENV SOLR_VERSION=6.3.0
# Wed, 01 Mar 2017 01:08:06 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Wed, 01 Mar 2017 01:08:07 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Wed, 01 Mar 2017 01:08:23 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 01 Mar 2017 01:08:26 GMT
COPY dir:abdaca4e15e2e9bc98e5068a7497f01d2fabb66c519ab4a7513e70f2b02dda70 in /opt/docker-solr/scripts 
# Wed, 01 Mar 2017 01:08:27 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 01 Mar 2017 01:08:27 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 01:08:42 GMT
EXPOSE 8983/tcp
# Wed, 01 Mar 2017 01:08:43 GMT
WORKDIR /opt/solr
# Wed, 01 Mar 2017 01:08:43 GMT
USER [solr]
# Wed, 01 Mar 2017 01:08:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Mar 2017 01:08:44 GMT
CMD ["solr-foreground"]
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
	-	`sha256:7a03d2ca4ea858510e867ab85c02fec2bc49238c312779a8b78579e3af0ed68f`  
		Last Modified: Thu, 02 Mar 2017 04:17:25 GMT  
		Size: 10.1 MB (10079895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5e4a57d2222abc11159fe4fdd9f3b095094bce58c953f4b91e57406088b0ab`  
		Last Modified: Thu, 02 Mar 2017 04:17:19 GMT  
		Size: 4.6 KB (4636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66a757e943ba2517343ecd57ce68b1356295c537f6b8dc09ee1f6a9df5203f4`  
		Last Modified: Thu, 02 Mar 2017 04:18:29 GMT  
		Size: 6.8 KB (6779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4843f62217c25706a5d78642d61979fc6523bcef95d7927344194fce60aca45`  
		Last Modified: Thu, 02 Mar 2017 04:18:43 GMT  
		Size: 140.5 MB (140464467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c9f4c5b7e0a88a3d9defae767670ca1d2684c1a72ba517dd5868d6a79ea6cf`  
		Last Modified: Thu, 02 Mar 2017 04:18:32 GMT  
		Size: 3.0 KB (2982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:062c26e26d8c4cd0aeb86974374ebe731eb1eab46b7533e00db84e6261c8c8bc`  
		Last Modified: Thu, 02 Mar 2017 04:18:29 GMT  
		Size: 3.0 KB (2989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3.0-alpine`

```console
$ docker pull solr@sha256:2fbd3ee478034000b20f8c219e002420afa48adb9caa4286053a9b6b1c0ba2b2
```

-	Platforms:
	-	linux; amd64

### `solr:6.3.0-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.0 MB (201972734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30684a6ff8c8363ea049234f7b2bf7f3b79dbaadacecea876efb77951175577e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 20:02:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 07 Mar 2017 20:02:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 07 Mar 2017 20:02:14 GMT
ARG GPG_KEYSERVER
# Tue, 07 Mar 2017 20:02:18 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 07 Mar 2017 20:02:20 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 07 Mar 2017 20:02:21 GMT
ENV SOLR_USER=solr
# Tue, 07 Mar 2017 20:02:22 GMT
ENV SOLR_UID=8983
# Tue, 07 Mar 2017 20:02:23 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 07 Mar 2017 20:02:55 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Tue, 07 Mar 2017 20:02:58 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 07 Mar 2017 20:02:59 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 07 Mar 2017 20:03:02 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 07 Mar 2017 20:03:02 GMT
ENV SOLR_VERSION=6.3.0
# Tue, 07 Mar 2017 20:03:03 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Tue, 07 Mar 2017 20:03:03 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Tue, 07 Mar 2017 20:03:20 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 07 Mar 2017 20:03:21 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Tue, 07 Mar 2017 20:03:22 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 07 Mar 2017 20:03:22 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 20:03:23 GMT
EXPOSE 8983/tcp
# Tue, 07 Mar 2017 20:03:23 GMT
WORKDIR /opt/solr
# Tue, 07 Mar 2017 20:03:24 GMT
USER [solr]
# Tue, 07 Mar 2017 20:03:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 20:03:25 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ecf8ac747ed36539dedfd7694f2bef0585857ac087b491e32d0cea148d73dcf`  
		Last Modified: Tue, 07 Mar 2017 20:05:21 GMT  
		Size: 5.2 MB (5165776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fbb7ff6d48b54e5e036c54aced5d919198efaad38ce770a27c568620b3c61a`  
		Last Modified: Tue, 07 Mar 2017 20:05:19 GMT  
		Size: 612.2 KB (612161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72286f66e6a4ef5326cb9718424abf5ab10ee9c87335cd55bb85ff05245866a1`  
		Last Modified: Tue, 07 Mar 2017 20:05:18 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652f2d6f7ebe47e1f0a3431d89c43b5bc77fa6faf7e185053caddca0a25ad64f`  
		Last Modified: Tue, 07 Mar 2017 20:07:06 GMT  
		Size: 6.5 KB (6508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f0322454dde2ce06f9f30d69712b5f213c8f927a3b2b7040bccdcdac566f59`  
		Last Modified: Tue, 07 Mar 2017 20:07:06 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e59a1f59a41336fde93b14312aaf415119ca02e728feb4486b98727a21cd57bb`  
		Last Modified: Tue, 07 Mar 2017 20:07:16 GMT  
		Size: 140.5 MB (140464349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce52ef2b6330dc0f01f64f4fa49447f674ef500a0ea600d553afaa0421db2bcf`  
		Last Modified: Tue, 07 Mar 2017 20:07:06 GMT  
		Size: 3.0 KB (2976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6651ea216747d4c7955fb42fe5d29f913c1969b96779918503813ec3179fbcb5`  
		Last Modified: Tue, 07 Mar 2017 20:07:06 GMT  
		Size: 3.0 KB (2984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3-alpine`

```console
$ docker pull solr@sha256:2fbd3ee478034000b20f8c219e002420afa48adb9caa4286053a9b6b1c0ba2b2
```

-	Platforms:
	-	linux; amd64

### `solr:6.3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.0 MB (201972734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30684a6ff8c8363ea049234f7b2bf7f3b79dbaadacecea876efb77951175577e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 20:02:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 07 Mar 2017 20:02:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 07 Mar 2017 20:02:14 GMT
ARG GPG_KEYSERVER
# Tue, 07 Mar 2017 20:02:18 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 07 Mar 2017 20:02:20 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 07 Mar 2017 20:02:21 GMT
ENV SOLR_USER=solr
# Tue, 07 Mar 2017 20:02:22 GMT
ENV SOLR_UID=8983
# Tue, 07 Mar 2017 20:02:23 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 07 Mar 2017 20:02:55 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Tue, 07 Mar 2017 20:02:58 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 07 Mar 2017 20:02:59 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 07 Mar 2017 20:03:02 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 07 Mar 2017 20:03:02 GMT
ENV SOLR_VERSION=6.3.0
# Tue, 07 Mar 2017 20:03:03 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Tue, 07 Mar 2017 20:03:03 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Tue, 07 Mar 2017 20:03:20 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 07 Mar 2017 20:03:21 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Tue, 07 Mar 2017 20:03:22 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 07 Mar 2017 20:03:22 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 20:03:23 GMT
EXPOSE 8983/tcp
# Tue, 07 Mar 2017 20:03:23 GMT
WORKDIR /opt/solr
# Tue, 07 Mar 2017 20:03:24 GMT
USER [solr]
# Tue, 07 Mar 2017 20:03:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 20:03:25 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ecf8ac747ed36539dedfd7694f2bef0585857ac087b491e32d0cea148d73dcf`  
		Last Modified: Tue, 07 Mar 2017 20:05:21 GMT  
		Size: 5.2 MB (5165776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fbb7ff6d48b54e5e036c54aced5d919198efaad38ce770a27c568620b3c61a`  
		Last Modified: Tue, 07 Mar 2017 20:05:19 GMT  
		Size: 612.2 KB (612161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72286f66e6a4ef5326cb9718424abf5ab10ee9c87335cd55bb85ff05245866a1`  
		Last Modified: Tue, 07 Mar 2017 20:05:18 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652f2d6f7ebe47e1f0a3431d89c43b5bc77fa6faf7e185053caddca0a25ad64f`  
		Last Modified: Tue, 07 Mar 2017 20:07:06 GMT  
		Size: 6.5 KB (6508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f0322454dde2ce06f9f30d69712b5f213c8f927a3b2b7040bccdcdac566f59`  
		Last Modified: Tue, 07 Mar 2017 20:07:06 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e59a1f59a41336fde93b14312aaf415119ca02e728feb4486b98727a21cd57bb`  
		Last Modified: Tue, 07 Mar 2017 20:07:16 GMT  
		Size: 140.5 MB (140464349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce52ef2b6330dc0f01f64f4fa49447f674ef500a0ea600d553afaa0421db2bcf`  
		Last Modified: Tue, 07 Mar 2017 20:07:06 GMT  
		Size: 3.0 KB (2976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6651ea216747d4c7955fb42fe5d29f913c1969b96779918503813ec3179fbcb5`  
		Last Modified: Tue, 07 Mar 2017 20:07:06 GMT  
		Size: 3.0 KB (2984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.4.1`

```console
$ docker pull solr@sha256:38b4411c0f3d62da5f966611900a4661304be0dc132f4894eb742f234413a55c
```

-	Platforms:
	-	linux; amd64

### `solr:6.4.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.8 MB (275824947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a792a51c7f25439aa855f8517e92362cfca7c261164d2bbaabfb1d79681d1dc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Wed, 01 Mar 2017 01:05:18 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 01 Mar 2017 01:05:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 01 Mar 2017 01:05:19 GMT
ARG GPG_KEYSERVER
# Wed, 01 Mar 2017 01:05:33 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 01:05:36 GMT
ENV SOLR_USER=solr
# Wed, 01 Mar 2017 01:05:37 GMT
ENV SOLR_UID=8983
# Wed, 01 Mar 2017 01:05:39 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 01 Mar 2017 01:06:49 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Wed, 01 Mar 2017 01:06:50 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 01 Mar 2017 01:06:51 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 01 Mar 2017 01:06:51 GMT
ENV SOLR_VERSION=6.4.1
# Wed, 01 Mar 2017 01:06:52 GMT
ENV SOLR_SHA256=ebce206dd4a66600384ccdd9a604536135594ce4c24814bbd5a3e8a8ec1efbb9
# Wed, 01 Mar 2017 01:06:53 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.1/solr-6.4.1.tgz
# Wed, 01 Mar 2017 01:07:14 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 01 Mar 2017 01:07:28 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Wed, 01 Mar 2017 01:07:29 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 01 Mar 2017 01:07:30 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 01:07:30 GMT
EXPOSE 8983/tcp
# Wed, 01 Mar 2017 01:07:31 GMT
WORKDIR /opt/solr
# Wed, 01 Mar 2017 01:07:46 GMT
USER [solr]
# Wed, 01 Mar 2017 01:07:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Mar 2017 01:07:47 GMT
CMD ["solr-foreground"]
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
	-	`sha256:7a03d2ca4ea858510e867ab85c02fec2bc49238c312779a8b78579e3af0ed68f`  
		Last Modified: Thu, 02 Mar 2017 04:17:25 GMT  
		Size: 10.1 MB (10079895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5e4a57d2222abc11159fe4fdd9f3b095094bce58c953f4b91e57406088b0ab`  
		Last Modified: Thu, 02 Mar 2017 04:17:19 GMT  
		Size: 4.6 KB (4636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87874713f8ab2636ab8bc779eb64c563c2c86a6884af0cc3badfcc3d058f5a0`  
		Last Modified: Thu, 02 Mar 2017 04:19:24 GMT  
		Size: 7.4 KB (7390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f74b8d55f0cd2b17610ff697cd2dd89e33b3fe177887b7c37e8667d677c967a`  
		Last Modified: Thu, 02 Mar 2017 04:19:50 GMT  
		Size: 141.5 MB (141452850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af284ba368f3bc25d117b23c63af9da4354c053e386d976606d9a9a723a688bd`  
		Last Modified: Thu, 02 Mar 2017 04:19:25 GMT  
		Size: 3.0 KB (2978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a6c27b0f5525e9a099a8f843230135fee8d96ee2e9f2a71c5aab0cf0fc5b8e`  
		Last Modified: Thu, 02 Mar 2017 04:19:25 GMT  
		Size: 3.0 KB (2986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.4`

```console
$ docker pull solr@sha256:38b4411c0f3d62da5f966611900a4661304be0dc132f4894eb742f234413a55c
```

-	Platforms:
	-	linux; amd64

### `solr:6.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.8 MB (275824947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a792a51c7f25439aa855f8517e92362cfca7c261164d2bbaabfb1d79681d1dc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Wed, 01 Mar 2017 01:05:18 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 01 Mar 2017 01:05:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 01 Mar 2017 01:05:19 GMT
ARG GPG_KEYSERVER
# Wed, 01 Mar 2017 01:05:33 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 01:05:36 GMT
ENV SOLR_USER=solr
# Wed, 01 Mar 2017 01:05:37 GMT
ENV SOLR_UID=8983
# Wed, 01 Mar 2017 01:05:39 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 01 Mar 2017 01:06:49 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Wed, 01 Mar 2017 01:06:50 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 01 Mar 2017 01:06:51 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 01 Mar 2017 01:06:51 GMT
ENV SOLR_VERSION=6.4.1
# Wed, 01 Mar 2017 01:06:52 GMT
ENV SOLR_SHA256=ebce206dd4a66600384ccdd9a604536135594ce4c24814bbd5a3e8a8ec1efbb9
# Wed, 01 Mar 2017 01:06:53 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.1/solr-6.4.1.tgz
# Wed, 01 Mar 2017 01:07:14 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 01 Mar 2017 01:07:28 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Wed, 01 Mar 2017 01:07:29 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 01 Mar 2017 01:07:30 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 01:07:30 GMT
EXPOSE 8983/tcp
# Wed, 01 Mar 2017 01:07:31 GMT
WORKDIR /opt/solr
# Wed, 01 Mar 2017 01:07:46 GMT
USER [solr]
# Wed, 01 Mar 2017 01:07:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Mar 2017 01:07:47 GMT
CMD ["solr-foreground"]
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
	-	`sha256:7a03d2ca4ea858510e867ab85c02fec2bc49238c312779a8b78579e3af0ed68f`  
		Last Modified: Thu, 02 Mar 2017 04:17:25 GMT  
		Size: 10.1 MB (10079895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5e4a57d2222abc11159fe4fdd9f3b095094bce58c953f4b91e57406088b0ab`  
		Last Modified: Thu, 02 Mar 2017 04:17:19 GMT  
		Size: 4.6 KB (4636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87874713f8ab2636ab8bc779eb64c563c2c86a6884af0cc3badfcc3d058f5a0`  
		Last Modified: Thu, 02 Mar 2017 04:19:24 GMT  
		Size: 7.4 KB (7390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f74b8d55f0cd2b17610ff697cd2dd89e33b3fe177887b7c37e8667d677c967a`  
		Last Modified: Thu, 02 Mar 2017 04:19:50 GMT  
		Size: 141.5 MB (141452850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af284ba368f3bc25d117b23c63af9da4354c053e386d976606d9a9a723a688bd`  
		Last Modified: Thu, 02 Mar 2017 04:19:25 GMT  
		Size: 3.0 KB (2978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a6c27b0f5525e9a099a8f843230135fee8d96ee2e9f2a71c5aab0cf0fc5b8e`  
		Last Modified: Thu, 02 Mar 2017 04:19:25 GMT  
		Size: 3.0 KB (2986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6`

```console
$ docker pull solr@sha256:38b4411c0f3d62da5f966611900a4661304be0dc132f4894eb742f234413a55c
```

-	Platforms:
	-	linux; amd64

### `solr:6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.8 MB (275824947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a792a51c7f25439aa855f8517e92362cfca7c261164d2bbaabfb1d79681d1dc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Wed, 01 Mar 2017 01:05:18 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 01 Mar 2017 01:05:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 01 Mar 2017 01:05:19 GMT
ARG GPG_KEYSERVER
# Wed, 01 Mar 2017 01:05:33 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 01:05:36 GMT
ENV SOLR_USER=solr
# Wed, 01 Mar 2017 01:05:37 GMT
ENV SOLR_UID=8983
# Wed, 01 Mar 2017 01:05:39 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 01 Mar 2017 01:06:49 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Wed, 01 Mar 2017 01:06:50 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 01 Mar 2017 01:06:51 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 01 Mar 2017 01:06:51 GMT
ENV SOLR_VERSION=6.4.1
# Wed, 01 Mar 2017 01:06:52 GMT
ENV SOLR_SHA256=ebce206dd4a66600384ccdd9a604536135594ce4c24814bbd5a3e8a8ec1efbb9
# Wed, 01 Mar 2017 01:06:53 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.1/solr-6.4.1.tgz
# Wed, 01 Mar 2017 01:07:14 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 01 Mar 2017 01:07:28 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Wed, 01 Mar 2017 01:07:29 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 01 Mar 2017 01:07:30 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 01:07:30 GMT
EXPOSE 8983/tcp
# Wed, 01 Mar 2017 01:07:31 GMT
WORKDIR /opt/solr
# Wed, 01 Mar 2017 01:07:46 GMT
USER [solr]
# Wed, 01 Mar 2017 01:07:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Mar 2017 01:07:47 GMT
CMD ["solr-foreground"]
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
	-	`sha256:7a03d2ca4ea858510e867ab85c02fec2bc49238c312779a8b78579e3af0ed68f`  
		Last Modified: Thu, 02 Mar 2017 04:17:25 GMT  
		Size: 10.1 MB (10079895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5e4a57d2222abc11159fe4fdd9f3b095094bce58c953f4b91e57406088b0ab`  
		Last Modified: Thu, 02 Mar 2017 04:17:19 GMT  
		Size: 4.6 KB (4636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87874713f8ab2636ab8bc779eb64c563c2c86a6884af0cc3badfcc3d058f5a0`  
		Last Modified: Thu, 02 Mar 2017 04:19:24 GMT  
		Size: 7.4 KB (7390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f74b8d55f0cd2b17610ff697cd2dd89e33b3fe177887b7c37e8667d677c967a`  
		Last Modified: Thu, 02 Mar 2017 04:19:50 GMT  
		Size: 141.5 MB (141452850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af284ba368f3bc25d117b23c63af9da4354c053e386d976606d9a9a723a688bd`  
		Last Modified: Thu, 02 Mar 2017 04:19:25 GMT  
		Size: 3.0 KB (2978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a6c27b0f5525e9a099a8f843230135fee8d96ee2e9f2a71c5aab0cf0fc5b8e`  
		Last Modified: Thu, 02 Mar 2017 04:19:25 GMT  
		Size: 3.0 KB (2986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:latest`

```console
$ docker pull solr@sha256:38b4411c0f3d62da5f966611900a4661304be0dc132f4894eb742f234413a55c
```

-	Platforms:
	-	linux; amd64

### `solr:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.8 MB (275824947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a792a51c7f25439aa855f8517e92362cfca7c261164d2bbaabfb1d79681d1dc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Wed, 01 Mar 2017 01:05:18 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 01 Mar 2017 01:05:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 01 Mar 2017 01:05:19 GMT
ARG GPG_KEYSERVER
# Wed, 01 Mar 2017 01:05:33 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 01:05:36 GMT
ENV SOLR_USER=solr
# Wed, 01 Mar 2017 01:05:37 GMT
ENV SOLR_UID=8983
# Wed, 01 Mar 2017 01:05:39 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 01 Mar 2017 01:06:49 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Wed, 01 Mar 2017 01:06:50 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 01 Mar 2017 01:06:51 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 01 Mar 2017 01:06:51 GMT
ENV SOLR_VERSION=6.4.1
# Wed, 01 Mar 2017 01:06:52 GMT
ENV SOLR_SHA256=ebce206dd4a66600384ccdd9a604536135594ce4c24814bbd5a3e8a8ec1efbb9
# Wed, 01 Mar 2017 01:06:53 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.1/solr-6.4.1.tgz
# Wed, 01 Mar 2017 01:07:14 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 01 Mar 2017 01:07:28 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Wed, 01 Mar 2017 01:07:29 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 01 Mar 2017 01:07:30 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 01:07:30 GMT
EXPOSE 8983/tcp
# Wed, 01 Mar 2017 01:07:31 GMT
WORKDIR /opt/solr
# Wed, 01 Mar 2017 01:07:46 GMT
USER [solr]
# Wed, 01 Mar 2017 01:07:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Mar 2017 01:07:47 GMT
CMD ["solr-foreground"]
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
	-	`sha256:7a03d2ca4ea858510e867ab85c02fec2bc49238c312779a8b78579e3af0ed68f`  
		Last Modified: Thu, 02 Mar 2017 04:17:25 GMT  
		Size: 10.1 MB (10079895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5e4a57d2222abc11159fe4fdd9f3b095094bce58c953f4b91e57406088b0ab`  
		Last Modified: Thu, 02 Mar 2017 04:17:19 GMT  
		Size: 4.6 KB (4636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87874713f8ab2636ab8bc779eb64c563c2c86a6884af0cc3badfcc3d058f5a0`  
		Last Modified: Thu, 02 Mar 2017 04:19:24 GMT  
		Size: 7.4 KB (7390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f74b8d55f0cd2b17610ff697cd2dd89e33b3fe177887b7c37e8667d677c967a`  
		Last Modified: Thu, 02 Mar 2017 04:19:50 GMT  
		Size: 141.5 MB (141452850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af284ba368f3bc25d117b23c63af9da4354c053e386d976606d9a9a723a688bd`  
		Last Modified: Thu, 02 Mar 2017 04:19:25 GMT  
		Size: 3.0 KB (2978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a6c27b0f5525e9a099a8f843230135fee8d96ee2e9f2a71c5aab0cf0fc5b8e`  
		Last Modified: Thu, 02 Mar 2017 04:19:25 GMT  
		Size: 3.0 KB (2986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.4.1-alpine`

```console
$ docker pull solr@sha256:3e94266d66ef642719d52f0c9b01d94588a11c5de94139d624eeda0df8996b40
```

-	Platforms:
	-	linux; amd64

### `solr:6.4.1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.0 MB (202961667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd30699411fa95fab78656faa98ccd4fb403e34a55f00f786412c7a52990f70c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 20:02:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 07 Mar 2017 20:02:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 07 Mar 2017 20:02:14 GMT
ARG GPG_KEYSERVER
# Tue, 07 Mar 2017 20:02:18 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 07 Mar 2017 20:02:20 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 07 Mar 2017 20:02:21 GMT
ENV SOLR_USER=solr
# Tue, 07 Mar 2017 20:02:22 GMT
ENV SOLR_UID=8983
# Tue, 07 Mar 2017 20:02:23 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 07 Mar 2017 20:03:26 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 07 Mar 2017 20:03:30 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 07 Mar 2017 20:03:30 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 07 Mar 2017 20:03:33 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 07 Mar 2017 20:03:34 GMT
ENV SOLR_VERSION=6.4.1
# Tue, 07 Mar 2017 20:03:34 GMT
ENV SOLR_SHA256=ebce206dd4a66600384ccdd9a604536135594ce4c24814bbd5a3e8a8ec1efbb9
# Tue, 07 Mar 2017 20:03:35 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.1/solr-6.4.1.tgz
# Tue, 07 Mar 2017 20:03:52 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 07 Mar 2017 20:03:53 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Tue, 07 Mar 2017 20:03:54 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 07 Mar 2017 20:03:55 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 20:03:55 GMT
EXPOSE 8983/tcp
# Tue, 07 Mar 2017 20:03:56 GMT
WORKDIR /opt/solr
# Tue, 07 Mar 2017 20:03:57 GMT
USER [solr]
# Tue, 07 Mar 2017 20:03:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 20:03:58 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ecf8ac747ed36539dedfd7694f2bef0585857ac087b491e32d0cea148d73dcf`  
		Last Modified: Tue, 07 Mar 2017 20:05:21 GMT  
		Size: 5.2 MB (5165776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fbb7ff6d48b54e5e036c54aced5d919198efaad38ce770a27c568620b3c61a`  
		Last Modified: Tue, 07 Mar 2017 20:05:19 GMT  
		Size: 612.2 KB (612161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72286f66e6a4ef5326cb9718424abf5ab10ee9c87335cd55bb85ff05245866a1`  
		Last Modified: Tue, 07 Mar 2017 20:05:18 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07172ad3754746034fae92783a201154e551eb09a0ee75c79535fd7efffd1158`  
		Last Modified: Tue, 07 Mar 2017 20:09:13 GMT  
		Size: 7.1 KB (7090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f7b5fb3d4577867cb2f7f683a4a297f9968047fa53f11028859980144fea8b`  
		Last Modified: Tue, 07 Mar 2017 20:09:13 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5b08c15e47e3f2192667b97d8643fe5f72599f3c08e1290d8bf08566508116`  
		Last Modified: Tue, 07 Mar 2017 20:09:25 GMT  
		Size: 141.5 MB (141452703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d46ba453180b8ec5accd1e58a37401d1a2fcb0923d38c638023e383219923e`  
		Last Modified: Tue, 07 Mar 2017 20:09:13 GMT  
		Size: 3.0 KB (2974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342c696e3c28aea72bc4979c98145688fedf231cc2233d7ca66e52dac124b511`  
		Last Modified: Tue, 07 Mar 2017 20:09:13 GMT  
		Size: 3.0 KB (2983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.4-alpine`

```console
$ docker pull solr@sha256:3e94266d66ef642719d52f0c9b01d94588a11c5de94139d624eeda0df8996b40
```

-	Platforms:
	-	linux; amd64

### `solr:6.4-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.0 MB (202961667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd30699411fa95fab78656faa98ccd4fb403e34a55f00f786412c7a52990f70c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 20:02:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 07 Mar 2017 20:02:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 07 Mar 2017 20:02:14 GMT
ARG GPG_KEYSERVER
# Tue, 07 Mar 2017 20:02:18 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 07 Mar 2017 20:02:20 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 07 Mar 2017 20:02:21 GMT
ENV SOLR_USER=solr
# Tue, 07 Mar 2017 20:02:22 GMT
ENV SOLR_UID=8983
# Tue, 07 Mar 2017 20:02:23 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 07 Mar 2017 20:03:26 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 07 Mar 2017 20:03:30 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 07 Mar 2017 20:03:30 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 07 Mar 2017 20:03:33 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 07 Mar 2017 20:03:34 GMT
ENV SOLR_VERSION=6.4.1
# Tue, 07 Mar 2017 20:03:34 GMT
ENV SOLR_SHA256=ebce206dd4a66600384ccdd9a604536135594ce4c24814bbd5a3e8a8ec1efbb9
# Tue, 07 Mar 2017 20:03:35 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.1/solr-6.4.1.tgz
# Tue, 07 Mar 2017 20:03:52 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 07 Mar 2017 20:03:53 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Tue, 07 Mar 2017 20:03:54 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 07 Mar 2017 20:03:55 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 20:03:55 GMT
EXPOSE 8983/tcp
# Tue, 07 Mar 2017 20:03:56 GMT
WORKDIR /opt/solr
# Tue, 07 Mar 2017 20:03:57 GMT
USER [solr]
# Tue, 07 Mar 2017 20:03:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 20:03:58 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ecf8ac747ed36539dedfd7694f2bef0585857ac087b491e32d0cea148d73dcf`  
		Last Modified: Tue, 07 Mar 2017 20:05:21 GMT  
		Size: 5.2 MB (5165776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fbb7ff6d48b54e5e036c54aced5d919198efaad38ce770a27c568620b3c61a`  
		Last Modified: Tue, 07 Mar 2017 20:05:19 GMT  
		Size: 612.2 KB (612161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72286f66e6a4ef5326cb9718424abf5ab10ee9c87335cd55bb85ff05245866a1`  
		Last Modified: Tue, 07 Mar 2017 20:05:18 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07172ad3754746034fae92783a201154e551eb09a0ee75c79535fd7efffd1158`  
		Last Modified: Tue, 07 Mar 2017 20:09:13 GMT  
		Size: 7.1 KB (7090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f7b5fb3d4577867cb2f7f683a4a297f9968047fa53f11028859980144fea8b`  
		Last Modified: Tue, 07 Mar 2017 20:09:13 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5b08c15e47e3f2192667b97d8643fe5f72599f3c08e1290d8bf08566508116`  
		Last Modified: Tue, 07 Mar 2017 20:09:25 GMT  
		Size: 141.5 MB (141452703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d46ba453180b8ec5accd1e58a37401d1a2fcb0923d38c638023e383219923e`  
		Last Modified: Tue, 07 Mar 2017 20:09:13 GMT  
		Size: 3.0 KB (2974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342c696e3c28aea72bc4979c98145688fedf231cc2233d7ca66e52dac124b511`  
		Last Modified: Tue, 07 Mar 2017 20:09:13 GMT  
		Size: 3.0 KB (2983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6-alpine`

```console
$ docker pull solr@sha256:3e94266d66ef642719d52f0c9b01d94588a11c5de94139d624eeda0df8996b40
```

-	Platforms:
	-	linux; amd64

### `solr:6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.0 MB (202961667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd30699411fa95fab78656faa98ccd4fb403e34a55f00f786412c7a52990f70c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 20:02:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 07 Mar 2017 20:02:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 07 Mar 2017 20:02:14 GMT
ARG GPG_KEYSERVER
# Tue, 07 Mar 2017 20:02:18 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 07 Mar 2017 20:02:20 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 07 Mar 2017 20:02:21 GMT
ENV SOLR_USER=solr
# Tue, 07 Mar 2017 20:02:22 GMT
ENV SOLR_UID=8983
# Tue, 07 Mar 2017 20:02:23 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 07 Mar 2017 20:03:26 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 07 Mar 2017 20:03:30 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 07 Mar 2017 20:03:30 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 07 Mar 2017 20:03:33 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 07 Mar 2017 20:03:34 GMT
ENV SOLR_VERSION=6.4.1
# Tue, 07 Mar 2017 20:03:34 GMT
ENV SOLR_SHA256=ebce206dd4a66600384ccdd9a604536135594ce4c24814bbd5a3e8a8ec1efbb9
# Tue, 07 Mar 2017 20:03:35 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.1/solr-6.4.1.tgz
# Tue, 07 Mar 2017 20:03:52 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 07 Mar 2017 20:03:53 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Tue, 07 Mar 2017 20:03:54 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 07 Mar 2017 20:03:55 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 20:03:55 GMT
EXPOSE 8983/tcp
# Tue, 07 Mar 2017 20:03:56 GMT
WORKDIR /opt/solr
# Tue, 07 Mar 2017 20:03:57 GMT
USER [solr]
# Tue, 07 Mar 2017 20:03:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 20:03:58 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ecf8ac747ed36539dedfd7694f2bef0585857ac087b491e32d0cea148d73dcf`  
		Last Modified: Tue, 07 Mar 2017 20:05:21 GMT  
		Size: 5.2 MB (5165776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fbb7ff6d48b54e5e036c54aced5d919198efaad38ce770a27c568620b3c61a`  
		Last Modified: Tue, 07 Mar 2017 20:05:19 GMT  
		Size: 612.2 KB (612161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72286f66e6a4ef5326cb9718424abf5ab10ee9c87335cd55bb85ff05245866a1`  
		Last Modified: Tue, 07 Mar 2017 20:05:18 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07172ad3754746034fae92783a201154e551eb09a0ee75c79535fd7efffd1158`  
		Last Modified: Tue, 07 Mar 2017 20:09:13 GMT  
		Size: 7.1 KB (7090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f7b5fb3d4577867cb2f7f683a4a297f9968047fa53f11028859980144fea8b`  
		Last Modified: Tue, 07 Mar 2017 20:09:13 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5b08c15e47e3f2192667b97d8643fe5f72599f3c08e1290d8bf08566508116`  
		Last Modified: Tue, 07 Mar 2017 20:09:25 GMT  
		Size: 141.5 MB (141452703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d46ba453180b8ec5accd1e58a37401d1a2fcb0923d38c638023e383219923e`  
		Last Modified: Tue, 07 Mar 2017 20:09:13 GMT  
		Size: 3.0 KB (2974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342c696e3c28aea72bc4979c98145688fedf231cc2233d7ca66e52dac124b511`  
		Last Modified: Tue, 07 Mar 2017 20:09:13 GMT  
		Size: 3.0 KB (2983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:alpine`

```console
$ docker pull solr@sha256:3e94266d66ef642719d52f0c9b01d94588a11c5de94139d624eeda0df8996b40
```

-	Platforms:
	-	linux; amd64

### `solr:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.0 MB (202961667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd30699411fa95fab78656faa98ccd4fb403e34a55f00f786412c7a52990f70c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 20:02:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 07 Mar 2017 20:02:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 07 Mar 2017 20:02:14 GMT
ARG GPG_KEYSERVER
# Tue, 07 Mar 2017 20:02:18 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 07 Mar 2017 20:02:20 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 07 Mar 2017 20:02:21 GMT
ENV SOLR_USER=solr
# Tue, 07 Mar 2017 20:02:22 GMT
ENV SOLR_UID=8983
# Tue, 07 Mar 2017 20:02:23 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 07 Mar 2017 20:03:26 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 07 Mar 2017 20:03:30 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 07 Mar 2017 20:03:30 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 07 Mar 2017 20:03:33 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 07 Mar 2017 20:03:34 GMT
ENV SOLR_VERSION=6.4.1
# Tue, 07 Mar 2017 20:03:34 GMT
ENV SOLR_SHA256=ebce206dd4a66600384ccdd9a604536135594ce4c24814bbd5a3e8a8ec1efbb9
# Tue, 07 Mar 2017 20:03:35 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.1/solr-6.4.1.tgz
# Tue, 07 Mar 2017 20:03:52 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 07 Mar 2017 20:03:53 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Tue, 07 Mar 2017 20:03:54 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 07 Mar 2017 20:03:55 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 20:03:55 GMT
EXPOSE 8983/tcp
# Tue, 07 Mar 2017 20:03:56 GMT
WORKDIR /opt/solr
# Tue, 07 Mar 2017 20:03:57 GMT
USER [solr]
# Tue, 07 Mar 2017 20:03:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 20:03:58 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ecf8ac747ed36539dedfd7694f2bef0585857ac087b491e32d0cea148d73dcf`  
		Last Modified: Tue, 07 Mar 2017 20:05:21 GMT  
		Size: 5.2 MB (5165776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fbb7ff6d48b54e5e036c54aced5d919198efaad38ce770a27c568620b3c61a`  
		Last Modified: Tue, 07 Mar 2017 20:05:19 GMT  
		Size: 612.2 KB (612161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72286f66e6a4ef5326cb9718424abf5ab10ee9c87335cd55bb85ff05245866a1`  
		Last Modified: Tue, 07 Mar 2017 20:05:18 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07172ad3754746034fae92783a201154e551eb09a0ee75c79535fd7efffd1158`  
		Last Modified: Tue, 07 Mar 2017 20:09:13 GMT  
		Size: 7.1 KB (7090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f7b5fb3d4577867cb2f7f683a4a297f9968047fa53f11028859980144fea8b`  
		Last Modified: Tue, 07 Mar 2017 20:09:13 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5b08c15e47e3f2192667b97d8643fe5f72599f3c08e1290d8bf08566508116`  
		Last Modified: Tue, 07 Mar 2017 20:09:25 GMT  
		Size: 141.5 MB (141452703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d46ba453180b8ec5accd1e58a37401d1a2fcb0923d38c638023e383219923e`  
		Last Modified: Tue, 07 Mar 2017 20:09:13 GMT  
		Size: 3.0 KB (2974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342c696e3c28aea72bc4979c98145688fedf231cc2233d7ca66e52dac124b511`  
		Last Modified: Tue, 07 Mar 2017 20:09:13 GMT  
		Size: 3.0 KB (2983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
