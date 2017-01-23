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
-	[`solr:6.4.0`](#solr640)
-	[`solr:6.4`](#solr64)
-	[`solr:6`](#solr6)
-	[`solr:latest`](#solrlatest)
-	[`solr:6.4.0-alpine`](#solr640-alpine)
-	[`solr:6.4-alpine`](#solr64-alpine)
-	[`solr:6-alpine`](#solr6-alpine)
-	[`solr:alpine`](#solralpine)

## `solr:5.5.3`

```console
$ docker pull solr@sha256:762874a3e51475783b1a2a014ff465a21b0392b0206897b1f9eeda8f3b710756
```

-	Platforms:
	-	linux; amd64

### `solr:5.5.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266164332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbce18f43e7ac5dbc847fd6235264c4964c601a69b07fbe0ad94b1afa8959a0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Tue, 17 Jan 2017 20:23:23 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 17 Jan 2017 20:23:23 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 17 Jan 2017 20:23:24 GMT
ARG GPG_KEYSERVER
# Tue, 17 Jan 2017 20:23:36 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:23:37 GMT
ENV SOLR_USER=solr
# Tue, 17 Jan 2017 20:23:37 GMT
ENV SOLR_UID=8983
# Tue, 17 Jan 2017 20:23:38 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 17 Jan 2017 20:23:38 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Tue, 17 Jan 2017 20:23:38 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 17 Jan 2017 20:23:40 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 17 Jan 2017 20:23:40 GMT
ENV SOLR_VERSION=5.5.3
# Tue, 17 Jan 2017 20:23:40 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Tue, 17 Jan 2017 20:23:41 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Tue, 17 Jan 2017 20:23:56 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 23 Jan 2017 18:29:53 GMT
COPY dir:df206386c87858e80894083178ae780c94c4fdc5ee870d3d4438a20894c11b93 in /opt/docker-solr/scripts 
# Mon, 23 Jan 2017 18:29:54 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 23 Jan 2017 18:29:55 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Jan 2017 18:29:55 GMT
EXPOSE 8983/tcp
# Mon, 23 Jan 2017 18:29:55 GMT
WORKDIR /opt/solr
# Mon, 23 Jan 2017 18:29:56 GMT
USER [solr]
# Mon, 23 Jan 2017 18:29:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Jan 2017 18:29:57 GMT
CMD ["solr-foreground"]
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
	-	`sha256:4ba996a843c4e5552391cf9b4628e49b45a227941b4ec38c44b4fa0432eccea9`  
		Last Modified: Wed, 18 Jan 2017 07:34:18 GMT  
		Size: 10.1 MB (10079766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a497729ddeb1888e591b9a6044458410115dbc21f762c9a016727b5f3dfafd`  
		Last Modified: Wed, 18 Jan 2017 07:34:11 GMT  
		Size: 4.6 KB (4639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a26efcb25b7ce69a783421a0c76bee32ecdceb918b9c1051a91e556aadfc248`  
		Last Modified: Wed, 18 Jan 2017 07:34:10 GMT  
		Size: 8.0 KB (7959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb727439cd42a78d5467b165ed2b7fbdc1c58534ef07118d6ff60b406874a224`  
		Last Modified: Wed, 18 Jan 2017 07:36:03 GMT  
		Size: 131.8 MB (131844609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd81a213c397a02fbfa6ce052fb3767dac357403d1dfc111376403ce6a46f58`  
		Last Modified: Mon, 23 Jan 2017 18:31:34 GMT  
		Size: 3.0 KB (2987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb33df9a571cf1506ee43ec1cb2dcde4f5d2df879ab62b354b89dbf6e7be2e4`  
		Last Modified: Mon, 23 Jan 2017 18:31:33 GMT  
		Size: 3.0 KB (2992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5`

```console
$ docker pull solr@sha256:762874a3e51475783b1a2a014ff465a21b0392b0206897b1f9eeda8f3b710756
```

-	Platforms:
	-	linux; amd64

### `solr:5.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266164332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbce18f43e7ac5dbc847fd6235264c4964c601a69b07fbe0ad94b1afa8959a0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Tue, 17 Jan 2017 20:23:23 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 17 Jan 2017 20:23:23 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 17 Jan 2017 20:23:24 GMT
ARG GPG_KEYSERVER
# Tue, 17 Jan 2017 20:23:36 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:23:37 GMT
ENV SOLR_USER=solr
# Tue, 17 Jan 2017 20:23:37 GMT
ENV SOLR_UID=8983
# Tue, 17 Jan 2017 20:23:38 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 17 Jan 2017 20:23:38 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Tue, 17 Jan 2017 20:23:38 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 17 Jan 2017 20:23:40 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 17 Jan 2017 20:23:40 GMT
ENV SOLR_VERSION=5.5.3
# Tue, 17 Jan 2017 20:23:40 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Tue, 17 Jan 2017 20:23:41 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Tue, 17 Jan 2017 20:23:56 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 23 Jan 2017 18:29:53 GMT
COPY dir:df206386c87858e80894083178ae780c94c4fdc5ee870d3d4438a20894c11b93 in /opt/docker-solr/scripts 
# Mon, 23 Jan 2017 18:29:54 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 23 Jan 2017 18:29:55 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Jan 2017 18:29:55 GMT
EXPOSE 8983/tcp
# Mon, 23 Jan 2017 18:29:55 GMT
WORKDIR /opt/solr
# Mon, 23 Jan 2017 18:29:56 GMT
USER [solr]
# Mon, 23 Jan 2017 18:29:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Jan 2017 18:29:57 GMT
CMD ["solr-foreground"]
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
	-	`sha256:4ba996a843c4e5552391cf9b4628e49b45a227941b4ec38c44b4fa0432eccea9`  
		Last Modified: Wed, 18 Jan 2017 07:34:18 GMT  
		Size: 10.1 MB (10079766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a497729ddeb1888e591b9a6044458410115dbc21f762c9a016727b5f3dfafd`  
		Last Modified: Wed, 18 Jan 2017 07:34:11 GMT  
		Size: 4.6 KB (4639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a26efcb25b7ce69a783421a0c76bee32ecdceb918b9c1051a91e556aadfc248`  
		Last Modified: Wed, 18 Jan 2017 07:34:10 GMT  
		Size: 8.0 KB (7959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb727439cd42a78d5467b165ed2b7fbdc1c58534ef07118d6ff60b406874a224`  
		Last Modified: Wed, 18 Jan 2017 07:36:03 GMT  
		Size: 131.8 MB (131844609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd81a213c397a02fbfa6ce052fb3767dac357403d1dfc111376403ce6a46f58`  
		Last Modified: Mon, 23 Jan 2017 18:31:34 GMT  
		Size: 3.0 KB (2987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb33df9a571cf1506ee43ec1cb2dcde4f5d2df879ab62b354b89dbf6e7be2e4`  
		Last Modified: Mon, 23 Jan 2017 18:31:33 GMT  
		Size: 3.0 KB (2992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5`

```console
$ docker pull solr@sha256:762874a3e51475783b1a2a014ff465a21b0392b0206897b1f9eeda8f3b710756
```

-	Platforms:
	-	linux; amd64

### `solr:5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266164332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbce18f43e7ac5dbc847fd6235264c4964c601a69b07fbe0ad94b1afa8959a0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Tue, 17 Jan 2017 20:23:23 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 17 Jan 2017 20:23:23 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 17 Jan 2017 20:23:24 GMT
ARG GPG_KEYSERVER
# Tue, 17 Jan 2017 20:23:36 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:23:37 GMT
ENV SOLR_USER=solr
# Tue, 17 Jan 2017 20:23:37 GMT
ENV SOLR_UID=8983
# Tue, 17 Jan 2017 20:23:38 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 17 Jan 2017 20:23:38 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Tue, 17 Jan 2017 20:23:38 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 17 Jan 2017 20:23:40 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 17 Jan 2017 20:23:40 GMT
ENV SOLR_VERSION=5.5.3
# Tue, 17 Jan 2017 20:23:40 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Tue, 17 Jan 2017 20:23:41 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Tue, 17 Jan 2017 20:23:56 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 23 Jan 2017 18:29:53 GMT
COPY dir:df206386c87858e80894083178ae780c94c4fdc5ee870d3d4438a20894c11b93 in /opt/docker-solr/scripts 
# Mon, 23 Jan 2017 18:29:54 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 23 Jan 2017 18:29:55 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Jan 2017 18:29:55 GMT
EXPOSE 8983/tcp
# Mon, 23 Jan 2017 18:29:55 GMT
WORKDIR /opt/solr
# Mon, 23 Jan 2017 18:29:56 GMT
USER [solr]
# Mon, 23 Jan 2017 18:29:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Jan 2017 18:29:57 GMT
CMD ["solr-foreground"]
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
	-	`sha256:4ba996a843c4e5552391cf9b4628e49b45a227941b4ec38c44b4fa0432eccea9`  
		Last Modified: Wed, 18 Jan 2017 07:34:18 GMT  
		Size: 10.1 MB (10079766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a497729ddeb1888e591b9a6044458410115dbc21f762c9a016727b5f3dfafd`  
		Last Modified: Wed, 18 Jan 2017 07:34:11 GMT  
		Size: 4.6 KB (4639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a26efcb25b7ce69a783421a0c76bee32ecdceb918b9c1051a91e556aadfc248`  
		Last Modified: Wed, 18 Jan 2017 07:34:10 GMT  
		Size: 8.0 KB (7959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb727439cd42a78d5467b165ed2b7fbdc1c58534ef07118d6ff60b406874a224`  
		Last Modified: Wed, 18 Jan 2017 07:36:03 GMT  
		Size: 131.8 MB (131844609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd81a213c397a02fbfa6ce052fb3767dac357403d1dfc111376403ce6a46f58`  
		Last Modified: Mon, 23 Jan 2017 18:31:34 GMT  
		Size: 3.0 KB (2987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb33df9a571cf1506ee43ec1cb2dcde4f5d2df879ab62b354b89dbf6e7be2e4`  
		Last Modified: Mon, 23 Jan 2017 18:31:33 GMT  
		Size: 3.0 KB (2992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5.3-alpine`

```console
$ docker pull solr@sha256:b9bf0cdcb094269f99d0ca20ebcbc9c527b76b29cdaedfe4da596d5724759f3b
```

-	Platforms:
	-	linux; amd64

### `solr:5.5.3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.4 MB (179371005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5cfbdf983bc4533b59c4ba02291c0393f3bb0375011cbb770a21843cfeb768b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Tue, 27 Dec 2016 21:53:21 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 27 Dec 2016 21:53:21 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 27 Dec 2016 21:53:22 GMT
ARG GPG_KEYSERVER
# Tue, 27 Dec 2016 21:53:26 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 27 Dec 2016 21:53:36 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 27 Dec 2016 21:53:46 GMT
ENV SOLR_USER=solr
# Tue, 27 Dec 2016 21:53:57 GMT
ENV SOLR_UID=8983
# Tue, 27 Dec 2016 21:54:09 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 27 Dec 2016 21:54:20 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Tue, 27 Dec 2016 21:54:34 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 27 Dec 2016 21:54:54 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 27 Dec 2016 21:55:08 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 27 Dec 2016 21:55:31 GMT
ENV SOLR_VERSION=5.5.3
# Tue, 27 Dec 2016 21:55:31 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Tue, 27 Dec 2016 21:55:31 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Tue, 27 Dec 2016 21:55:49 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 23 Jan 2017 18:29:58 GMT
COPY dir:df206386c87858e80894083178ae780c94c4fdc5ee870d3d4438a20894c11b93 in /opt/docker-solr/scripts 
# Mon, 23 Jan 2017 18:29:59 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 23 Jan 2017 18:30:00 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 23 Jan 2017 18:30:00 GMT
EXPOSE 8983/tcp
# Mon, 23 Jan 2017 18:30:01 GMT
WORKDIR /opt/solr
# Mon, 23 Jan 2017 18:30:01 GMT
USER [solr]
# Mon, 23 Jan 2017 18:30:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Jan 2017 18:30:02 GMT
CMD ["solr-foreground"]
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
	-	`sha256:c4d212fb289fd8f7ac304b340ea91f8fb27bc9e822d094225ce2f3ad04980903`  
		Last Modified: Tue, 27 Dec 2016 22:09:25 GMT  
		Size: 4.9 MB (4920224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3faed70a1c93eb8aee6e17d4f46fdfa58a9ea1a3640054f10527824c960f8f9f`  
		Last Modified: Tue, 27 Dec 2016 22:09:20 GMT  
		Size: 607.8 KB (607765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266702a1d22cda205ac1942d3bb888879142f1a42dc3c4cdf5c81b3f89ff8719`  
		Last Modified: Tue, 27 Dec 2016 22:09:19 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c791de5fe7355df484b4f7852fbfcd9ea52be27750b0bd48f8d80805b7e33dcd`  
		Last Modified: Tue, 27 Dec 2016 22:09:17 GMT  
		Size: 7.6 KB (7642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c20eb0e7218a516148ef8450341e97c7a238ad5a9cd3a4e0def3baa44b9077`  
		Last Modified: Tue, 27 Dec 2016 22:09:16 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fcbb94aaa60ed0994d7ea1f3999868e816368e568ab0180cb34c2310725cfba`  
		Last Modified: Tue, 27 Dec 2016 22:11:26 GMT  
		Size: 131.8 MB (131844457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b014e77f9d46eefb72e27714f28c54d8f2de83e8bd320752a62ea8490b8ef2`  
		Last Modified: Mon, 23 Jan 2017 18:32:21 GMT  
		Size: 3.0 KB (2986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478572ea4d5a5e6c25b0166cc26ef5aa9d594e6e3164dda75b50f5f75d7b669f`  
		Last Modified: Mon, 23 Jan 2017 18:32:21 GMT  
		Size: 3.0 KB (2996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5-alpine`

```console
$ docker pull solr@sha256:b9bf0cdcb094269f99d0ca20ebcbc9c527b76b29cdaedfe4da596d5724759f3b
```

-	Platforms:
	-	linux; amd64

### `solr:5.5-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.4 MB (179371005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5cfbdf983bc4533b59c4ba02291c0393f3bb0375011cbb770a21843cfeb768b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Tue, 27 Dec 2016 21:53:21 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 27 Dec 2016 21:53:21 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 27 Dec 2016 21:53:22 GMT
ARG GPG_KEYSERVER
# Tue, 27 Dec 2016 21:53:26 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 27 Dec 2016 21:53:36 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 27 Dec 2016 21:53:46 GMT
ENV SOLR_USER=solr
# Tue, 27 Dec 2016 21:53:57 GMT
ENV SOLR_UID=8983
# Tue, 27 Dec 2016 21:54:09 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 27 Dec 2016 21:54:20 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Tue, 27 Dec 2016 21:54:34 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 27 Dec 2016 21:54:54 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 27 Dec 2016 21:55:08 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 27 Dec 2016 21:55:31 GMT
ENV SOLR_VERSION=5.5.3
# Tue, 27 Dec 2016 21:55:31 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Tue, 27 Dec 2016 21:55:31 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Tue, 27 Dec 2016 21:55:49 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 23 Jan 2017 18:29:58 GMT
COPY dir:df206386c87858e80894083178ae780c94c4fdc5ee870d3d4438a20894c11b93 in /opt/docker-solr/scripts 
# Mon, 23 Jan 2017 18:29:59 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 23 Jan 2017 18:30:00 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 23 Jan 2017 18:30:00 GMT
EXPOSE 8983/tcp
# Mon, 23 Jan 2017 18:30:01 GMT
WORKDIR /opt/solr
# Mon, 23 Jan 2017 18:30:01 GMT
USER [solr]
# Mon, 23 Jan 2017 18:30:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Jan 2017 18:30:02 GMT
CMD ["solr-foreground"]
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
	-	`sha256:c4d212fb289fd8f7ac304b340ea91f8fb27bc9e822d094225ce2f3ad04980903`  
		Last Modified: Tue, 27 Dec 2016 22:09:25 GMT  
		Size: 4.9 MB (4920224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3faed70a1c93eb8aee6e17d4f46fdfa58a9ea1a3640054f10527824c960f8f9f`  
		Last Modified: Tue, 27 Dec 2016 22:09:20 GMT  
		Size: 607.8 KB (607765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266702a1d22cda205ac1942d3bb888879142f1a42dc3c4cdf5c81b3f89ff8719`  
		Last Modified: Tue, 27 Dec 2016 22:09:19 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c791de5fe7355df484b4f7852fbfcd9ea52be27750b0bd48f8d80805b7e33dcd`  
		Last Modified: Tue, 27 Dec 2016 22:09:17 GMT  
		Size: 7.6 KB (7642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c20eb0e7218a516148ef8450341e97c7a238ad5a9cd3a4e0def3baa44b9077`  
		Last Modified: Tue, 27 Dec 2016 22:09:16 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fcbb94aaa60ed0994d7ea1f3999868e816368e568ab0180cb34c2310725cfba`  
		Last Modified: Tue, 27 Dec 2016 22:11:26 GMT  
		Size: 131.8 MB (131844457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b014e77f9d46eefb72e27714f28c54d8f2de83e8bd320752a62ea8490b8ef2`  
		Last Modified: Mon, 23 Jan 2017 18:32:21 GMT  
		Size: 3.0 KB (2986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478572ea4d5a5e6c25b0166cc26ef5aa9d594e6e3164dda75b50f5f75d7b669f`  
		Last Modified: Mon, 23 Jan 2017 18:32:21 GMT  
		Size: 3.0 KB (2996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5-alpine`

```console
$ docker pull solr@sha256:b9bf0cdcb094269f99d0ca20ebcbc9c527b76b29cdaedfe4da596d5724759f3b
```

-	Platforms:
	-	linux; amd64

### `solr:5-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.4 MB (179371005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5cfbdf983bc4533b59c4ba02291c0393f3bb0375011cbb770a21843cfeb768b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Tue, 27 Dec 2016 21:53:21 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 27 Dec 2016 21:53:21 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 27 Dec 2016 21:53:22 GMT
ARG GPG_KEYSERVER
# Tue, 27 Dec 2016 21:53:26 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 27 Dec 2016 21:53:36 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 27 Dec 2016 21:53:46 GMT
ENV SOLR_USER=solr
# Tue, 27 Dec 2016 21:53:57 GMT
ENV SOLR_UID=8983
# Tue, 27 Dec 2016 21:54:09 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 27 Dec 2016 21:54:20 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Tue, 27 Dec 2016 21:54:34 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 27 Dec 2016 21:54:54 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 27 Dec 2016 21:55:08 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 27 Dec 2016 21:55:31 GMT
ENV SOLR_VERSION=5.5.3
# Tue, 27 Dec 2016 21:55:31 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Tue, 27 Dec 2016 21:55:31 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Tue, 27 Dec 2016 21:55:49 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 23 Jan 2017 18:29:58 GMT
COPY dir:df206386c87858e80894083178ae780c94c4fdc5ee870d3d4438a20894c11b93 in /opt/docker-solr/scripts 
# Mon, 23 Jan 2017 18:29:59 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 23 Jan 2017 18:30:00 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 23 Jan 2017 18:30:00 GMT
EXPOSE 8983/tcp
# Mon, 23 Jan 2017 18:30:01 GMT
WORKDIR /opt/solr
# Mon, 23 Jan 2017 18:30:01 GMT
USER [solr]
# Mon, 23 Jan 2017 18:30:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Jan 2017 18:30:02 GMT
CMD ["solr-foreground"]
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
	-	`sha256:c4d212fb289fd8f7ac304b340ea91f8fb27bc9e822d094225ce2f3ad04980903`  
		Last Modified: Tue, 27 Dec 2016 22:09:25 GMT  
		Size: 4.9 MB (4920224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3faed70a1c93eb8aee6e17d4f46fdfa58a9ea1a3640054f10527824c960f8f9f`  
		Last Modified: Tue, 27 Dec 2016 22:09:20 GMT  
		Size: 607.8 KB (607765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266702a1d22cda205ac1942d3bb888879142f1a42dc3c4cdf5c81b3f89ff8719`  
		Last Modified: Tue, 27 Dec 2016 22:09:19 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c791de5fe7355df484b4f7852fbfcd9ea52be27750b0bd48f8d80805b7e33dcd`  
		Last Modified: Tue, 27 Dec 2016 22:09:17 GMT  
		Size: 7.6 KB (7642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c20eb0e7218a516148ef8450341e97c7a238ad5a9cd3a4e0def3baa44b9077`  
		Last Modified: Tue, 27 Dec 2016 22:09:16 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fcbb94aaa60ed0994d7ea1f3999868e816368e568ab0180cb34c2310725cfba`  
		Last Modified: Tue, 27 Dec 2016 22:11:26 GMT  
		Size: 131.8 MB (131844457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b014e77f9d46eefb72e27714f28c54d8f2de83e8bd320752a62ea8490b8ef2`  
		Last Modified: Mon, 23 Jan 2017 18:32:21 GMT  
		Size: 3.0 KB (2986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478572ea4d5a5e6c25b0166cc26ef5aa9d594e6e3164dda75b50f5f75d7b669f`  
		Last Modified: Mon, 23 Jan 2017 18:32:21 GMT  
		Size: 3.0 KB (2996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3.0`

```console
$ docker pull solr@sha256:e18c4613b8ca647ff8ab51ba4801527b7712b4d0d0a1a41cb6a19ac4c0872dd6
```

-	Platforms:
	-	linux; amd64

### `solr:6.3.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.8 MB (274783067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c9d73374788e57aa7adec64f858b6931a612c2d173aa8c7ba06aac849550ddb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Tue, 17 Jan 2017 20:23:23 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 17 Jan 2017 20:23:23 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 17 Jan 2017 20:23:24 GMT
ARG GPG_KEYSERVER
# Tue, 17 Jan 2017 20:23:36 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:23:37 GMT
ENV SOLR_USER=solr
# Tue, 17 Jan 2017 20:23:37 GMT
ENV SOLR_UID=8983
# Tue, 17 Jan 2017 20:23:38 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 17 Jan 2017 20:24:39 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Tue, 17 Jan 2017 20:24:39 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 17 Jan 2017 20:24:41 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 17 Jan 2017 20:24:41 GMT
ENV SOLR_VERSION=6.3.0
# Tue, 17 Jan 2017 20:24:41 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Tue, 17 Jan 2017 20:24:41 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Tue, 17 Jan 2017 20:24:57 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 23 Jan 2017 18:30:03 GMT
COPY dir:df206386c87858e80894083178ae780c94c4fdc5ee870d3d4438a20894c11b93 in /opt/docker-solr/scripts 
# Mon, 23 Jan 2017 18:30:05 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 23 Jan 2017 18:30:05 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Jan 2017 18:30:06 GMT
EXPOSE 8983/tcp
# Mon, 23 Jan 2017 18:30:06 GMT
WORKDIR /opt/solr
# Mon, 23 Jan 2017 18:30:06 GMT
USER [solr]
# Mon, 23 Jan 2017 18:30:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Jan 2017 18:30:07 GMT
CMD ["solr-foreground"]
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
	-	`sha256:4ba996a843c4e5552391cf9b4628e49b45a227941b4ec38c44b4fa0432eccea9`  
		Last Modified: Wed, 18 Jan 2017 07:34:18 GMT  
		Size: 10.1 MB (10079766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a497729ddeb1888e591b9a6044458410115dbc21f762c9a016727b5f3dfafd`  
		Last Modified: Wed, 18 Jan 2017 07:34:11 GMT  
		Size: 4.6 KB (4639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f28b1593669728552cd1ccaedca403ddcc66754e5e30d964155d624ec76b27`  
		Last Modified: Wed, 18 Jan 2017 07:38:41 GMT  
		Size: 6.8 KB (6777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01642ae1e958f5032f9fa233f6d7d6a94d42ce0f629b133c9b38db2fe2b74a03`  
		Last Modified: Wed, 18 Jan 2017 07:39:42 GMT  
		Size: 140.5 MB (140464521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadf438df563d3f9ab9c17a21bd97f7635f013975d5b1d02f857f501571c1589`  
		Last Modified: Mon, 23 Jan 2017 18:33:09 GMT  
		Size: 3.0 KB (2987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a31f880639c31c707e8f5df6ba2d8351083d37e78ad8402c24e882e8b72cd0`  
		Last Modified: Mon, 23 Jan 2017 18:33:09 GMT  
		Size: 3.0 KB (2997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3`

```console
$ docker pull solr@sha256:e18c4613b8ca647ff8ab51ba4801527b7712b4d0d0a1a41cb6a19ac4c0872dd6
```

-	Platforms:
	-	linux; amd64

### `solr:6.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.8 MB (274783067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c9d73374788e57aa7adec64f858b6931a612c2d173aa8c7ba06aac849550ddb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Tue, 17 Jan 2017 20:23:23 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 17 Jan 2017 20:23:23 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 17 Jan 2017 20:23:24 GMT
ARG GPG_KEYSERVER
# Tue, 17 Jan 2017 20:23:36 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:23:37 GMT
ENV SOLR_USER=solr
# Tue, 17 Jan 2017 20:23:37 GMT
ENV SOLR_UID=8983
# Tue, 17 Jan 2017 20:23:38 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 17 Jan 2017 20:24:39 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Tue, 17 Jan 2017 20:24:39 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 17 Jan 2017 20:24:41 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 17 Jan 2017 20:24:41 GMT
ENV SOLR_VERSION=6.3.0
# Tue, 17 Jan 2017 20:24:41 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Tue, 17 Jan 2017 20:24:41 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Tue, 17 Jan 2017 20:24:57 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 23 Jan 2017 18:30:03 GMT
COPY dir:df206386c87858e80894083178ae780c94c4fdc5ee870d3d4438a20894c11b93 in /opt/docker-solr/scripts 
# Mon, 23 Jan 2017 18:30:05 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 23 Jan 2017 18:30:05 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Jan 2017 18:30:06 GMT
EXPOSE 8983/tcp
# Mon, 23 Jan 2017 18:30:06 GMT
WORKDIR /opt/solr
# Mon, 23 Jan 2017 18:30:06 GMT
USER [solr]
# Mon, 23 Jan 2017 18:30:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Jan 2017 18:30:07 GMT
CMD ["solr-foreground"]
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
	-	`sha256:4ba996a843c4e5552391cf9b4628e49b45a227941b4ec38c44b4fa0432eccea9`  
		Last Modified: Wed, 18 Jan 2017 07:34:18 GMT  
		Size: 10.1 MB (10079766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a497729ddeb1888e591b9a6044458410115dbc21f762c9a016727b5f3dfafd`  
		Last Modified: Wed, 18 Jan 2017 07:34:11 GMT  
		Size: 4.6 KB (4639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f28b1593669728552cd1ccaedca403ddcc66754e5e30d964155d624ec76b27`  
		Last Modified: Wed, 18 Jan 2017 07:38:41 GMT  
		Size: 6.8 KB (6777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01642ae1e958f5032f9fa233f6d7d6a94d42ce0f629b133c9b38db2fe2b74a03`  
		Last Modified: Wed, 18 Jan 2017 07:39:42 GMT  
		Size: 140.5 MB (140464521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadf438df563d3f9ab9c17a21bd97f7635f013975d5b1d02f857f501571c1589`  
		Last Modified: Mon, 23 Jan 2017 18:33:09 GMT  
		Size: 3.0 KB (2987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a31f880639c31c707e8f5df6ba2d8351083d37e78ad8402c24e882e8b72cd0`  
		Last Modified: Mon, 23 Jan 2017 18:33:09 GMT  
		Size: 3.0 KB (2997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3.0-alpine`

```console
$ docker pull solr@sha256:9aeae9ff5efccaa0e53db3d51a627373f1d0b08b95d73ec9450dc88e4f3a791c
```

-	Platforms:
	-	linux; amd64

### `solr:6.3.0-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187989897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5244b88426a9522a4b8c63061ed6740cfe92790f8c047b10542e1b6f0d593e23`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Tue, 27 Dec 2016 21:53:21 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 27 Dec 2016 21:53:21 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 27 Dec 2016 21:53:22 GMT
ARG GPG_KEYSERVER
# Tue, 27 Dec 2016 21:53:26 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 27 Dec 2016 21:53:36 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 27 Dec 2016 21:53:46 GMT
ENV SOLR_USER=solr
# Tue, 27 Dec 2016 21:53:57 GMT
ENV SOLR_UID=8983
# Tue, 27 Dec 2016 21:54:09 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 27 Dec 2016 21:57:54 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Tue, 27 Dec 2016 21:57:57 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 27 Dec 2016 21:57:58 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 27 Dec 2016 21:58:01 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 27 Dec 2016 21:58:01 GMT
ENV SOLR_VERSION=6.3.0
# Tue, 27 Dec 2016 21:58:02 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Tue, 27 Dec 2016 21:58:02 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Tue, 27 Dec 2016 21:58:23 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 23 Jan 2017 18:30:08 GMT
COPY dir:df206386c87858e80894083178ae780c94c4fdc5ee870d3d4438a20894c11b93 in /opt/docker-solr/scripts 
# Mon, 23 Jan 2017 18:30:09 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 23 Jan 2017 18:30:10 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 23 Jan 2017 18:30:10 GMT
EXPOSE 8983/tcp
# Mon, 23 Jan 2017 18:30:11 GMT
WORKDIR /opt/solr
# Mon, 23 Jan 2017 18:30:11 GMT
USER [solr]
# Mon, 23 Jan 2017 18:30:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Jan 2017 18:30:12 GMT
CMD ["solr-foreground"]
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
	-	`sha256:c4d212fb289fd8f7ac304b340ea91f8fb27bc9e822d094225ce2f3ad04980903`  
		Last Modified: Tue, 27 Dec 2016 22:09:25 GMT  
		Size: 4.9 MB (4920224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3faed70a1c93eb8aee6e17d4f46fdfa58a9ea1a3640054f10527824c960f8f9f`  
		Last Modified: Tue, 27 Dec 2016 22:09:20 GMT  
		Size: 607.8 KB (607765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266702a1d22cda205ac1942d3bb888879142f1a42dc3c4cdf5c81b3f89ff8719`  
		Last Modified: Tue, 27 Dec 2016 22:09:19 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31dae06dd542025c10ccc547bc1830a93f67ba2a2d48b36180885ac93b58dcc7`  
		Last Modified: Tue, 27 Dec 2016 22:14:04 GMT  
		Size: 6.5 KB (6511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea2ccb0e5288680b5b8e3dbb25f224e3efc847b8729313bb7fc52f14c03df2c5`  
		Last Modified: Tue, 27 Dec 2016 22:14:04 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368dc85670384c33db514ac96abda706e4f5a941ff97bfc93921a972f73ea254`  
		Last Modified: Tue, 27 Dec 2016 22:16:19 GMT  
		Size: 140.5 MB (140464485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d98cbfad7125fdcd5616e17d29f58dee661193ac132555d355ce6f6e131c833`  
		Last Modified: Mon, 23 Jan 2017 18:33:43 GMT  
		Size: 3.0 KB (2982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5592a39a45ca0178e6a8f9606d0637a1b478c3936d0f6bd4701d3a5c1d5f92c`  
		Last Modified: Mon, 23 Jan 2017 18:33:42 GMT  
		Size: 3.0 KB (2995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3-alpine`

```console
$ docker pull solr@sha256:9aeae9ff5efccaa0e53db3d51a627373f1d0b08b95d73ec9450dc88e4f3a791c
```

-	Platforms:
	-	linux; amd64

### `solr:6.3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187989897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5244b88426a9522a4b8c63061ed6740cfe92790f8c047b10542e1b6f0d593e23`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Tue, 27 Dec 2016 21:53:21 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 27 Dec 2016 21:53:21 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 27 Dec 2016 21:53:22 GMT
ARG GPG_KEYSERVER
# Tue, 27 Dec 2016 21:53:26 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 27 Dec 2016 21:53:36 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 27 Dec 2016 21:53:46 GMT
ENV SOLR_USER=solr
# Tue, 27 Dec 2016 21:53:57 GMT
ENV SOLR_UID=8983
# Tue, 27 Dec 2016 21:54:09 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 27 Dec 2016 21:57:54 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Tue, 27 Dec 2016 21:57:57 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 27 Dec 2016 21:57:58 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 27 Dec 2016 21:58:01 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 27 Dec 2016 21:58:01 GMT
ENV SOLR_VERSION=6.3.0
# Tue, 27 Dec 2016 21:58:02 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Tue, 27 Dec 2016 21:58:02 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Tue, 27 Dec 2016 21:58:23 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 23 Jan 2017 18:30:08 GMT
COPY dir:df206386c87858e80894083178ae780c94c4fdc5ee870d3d4438a20894c11b93 in /opt/docker-solr/scripts 
# Mon, 23 Jan 2017 18:30:09 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 23 Jan 2017 18:30:10 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 23 Jan 2017 18:30:10 GMT
EXPOSE 8983/tcp
# Mon, 23 Jan 2017 18:30:11 GMT
WORKDIR /opt/solr
# Mon, 23 Jan 2017 18:30:11 GMT
USER [solr]
# Mon, 23 Jan 2017 18:30:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Jan 2017 18:30:12 GMT
CMD ["solr-foreground"]
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
	-	`sha256:c4d212fb289fd8f7ac304b340ea91f8fb27bc9e822d094225ce2f3ad04980903`  
		Last Modified: Tue, 27 Dec 2016 22:09:25 GMT  
		Size: 4.9 MB (4920224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3faed70a1c93eb8aee6e17d4f46fdfa58a9ea1a3640054f10527824c960f8f9f`  
		Last Modified: Tue, 27 Dec 2016 22:09:20 GMT  
		Size: 607.8 KB (607765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266702a1d22cda205ac1942d3bb888879142f1a42dc3c4cdf5c81b3f89ff8719`  
		Last Modified: Tue, 27 Dec 2016 22:09:19 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31dae06dd542025c10ccc547bc1830a93f67ba2a2d48b36180885ac93b58dcc7`  
		Last Modified: Tue, 27 Dec 2016 22:14:04 GMT  
		Size: 6.5 KB (6511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea2ccb0e5288680b5b8e3dbb25f224e3efc847b8729313bb7fc52f14c03df2c5`  
		Last Modified: Tue, 27 Dec 2016 22:14:04 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368dc85670384c33db514ac96abda706e4f5a941ff97bfc93921a972f73ea254`  
		Last Modified: Tue, 27 Dec 2016 22:16:19 GMT  
		Size: 140.5 MB (140464485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d98cbfad7125fdcd5616e17d29f58dee661193ac132555d355ce6f6e131c833`  
		Last Modified: Mon, 23 Jan 2017 18:33:43 GMT  
		Size: 3.0 KB (2982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5592a39a45ca0178e6a8f9606d0637a1b478c3936d0f6bd4701d3a5c1d5f92c`  
		Last Modified: Mon, 23 Jan 2017 18:33:42 GMT  
		Size: 3.0 KB (2995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.4.0`

```console
$ docker pull solr@sha256:095cd192a7ef36d2805c5dad6362063a4efcdbdf4cb9dd633319852c289c1fb6
```

-	Platforms:
	-	linux; amd64

### `solr:6.4.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.8 MB (275755579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f055ae917d84feed2d700bd772660ed1d2dff0a575b897c02b6493ec56ed0b6c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Tue, 17 Jan 2017 20:23:23 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 17 Jan 2017 20:23:23 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 17 Jan 2017 20:23:24 GMT
ARG GPG_KEYSERVER
# Tue, 17 Jan 2017 20:23:36 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:23:37 GMT
ENV SOLR_USER=solr
# Tue, 17 Jan 2017 20:23:37 GMT
ENV SOLR_UID=8983
# Tue, 17 Jan 2017 20:23:38 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Mon, 23 Jan 2017 18:30:13 GMT
ENV SOLR_KEY=478EEF7066AD843EC4812769707B7D9F6FDB8105
# Mon, 23 Jan 2017 18:30:13 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Mon, 23 Jan 2017 18:30:15 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 23 Jan 2017 18:30:15 GMT
ENV SOLR_VERSION=6.4.0
# Mon, 23 Jan 2017 18:30:16 GMT
ENV SOLR_SHA256=1213ae09023058ea1cbd971a1b585f891fb63fa76e128611031bfc28c749b502
# Mon, 23 Jan 2017 18:30:16 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.0/solr-6.4.0.tgz
# Mon, 23 Jan 2017 18:30:40 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 23 Jan 2017 18:30:40 GMT
COPY dir:df206386c87858e80894083178ae780c94c4fdc5ee870d3d4438a20894c11b93 in /opt/docker-solr/scripts 
# Mon, 23 Jan 2017 18:30:41 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 23 Jan 2017 18:30:42 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Jan 2017 18:30:42 GMT
EXPOSE 8983/tcp
# Mon, 23 Jan 2017 18:30:43 GMT
WORKDIR /opt/solr
# Mon, 23 Jan 2017 18:30:43 GMT
USER [solr]
# Mon, 23 Jan 2017 18:30:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Jan 2017 18:30:44 GMT
CMD ["solr-foreground"]
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
	-	`sha256:4ba996a843c4e5552391cf9b4628e49b45a227941b4ec38c44b4fa0432eccea9`  
		Last Modified: Wed, 18 Jan 2017 07:34:18 GMT  
		Size: 10.1 MB (10079766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a497729ddeb1888e591b9a6044458410115dbc21f762c9a016727b5f3dfafd`  
		Last Modified: Wed, 18 Jan 2017 07:34:11 GMT  
		Size: 4.6 KB (4639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb7625576b1d74e320fc4bc7c46bbac8a7caf14b6951da2969ddd8835a11cdf`  
		Last Modified: Mon, 23 Jan 2017 18:34:17 GMT  
		Size: 7.4 KB (7398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444acb4378479fbddff1f498783da7e56cf02d381c22a946112c0163114ddd04`  
		Last Modified: Mon, 23 Jan 2017 18:34:33 GMT  
		Size: 141.4 MB (141436411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98664e970c90cab480fc6348bf1fe9005d79fb3ea3b29f5448888f3f1730031`  
		Last Modified: Mon, 23 Jan 2017 18:34:17 GMT  
		Size: 3.0 KB (2991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7705ea8de5df96e71d9bb74afa7e421e79d978af20baeca260f2132b352ec0`  
		Last Modified: Mon, 23 Jan 2017 18:34:17 GMT  
		Size: 3.0 KB (2994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.4`

```console
$ docker pull solr@sha256:095cd192a7ef36d2805c5dad6362063a4efcdbdf4cb9dd633319852c289c1fb6
```

-	Platforms:
	-	linux; amd64

### `solr:6.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.8 MB (275755579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f055ae917d84feed2d700bd772660ed1d2dff0a575b897c02b6493ec56ed0b6c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Tue, 17 Jan 2017 20:23:23 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 17 Jan 2017 20:23:23 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 17 Jan 2017 20:23:24 GMT
ARG GPG_KEYSERVER
# Tue, 17 Jan 2017 20:23:36 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:23:37 GMT
ENV SOLR_USER=solr
# Tue, 17 Jan 2017 20:23:37 GMT
ENV SOLR_UID=8983
# Tue, 17 Jan 2017 20:23:38 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Mon, 23 Jan 2017 18:30:13 GMT
ENV SOLR_KEY=478EEF7066AD843EC4812769707B7D9F6FDB8105
# Mon, 23 Jan 2017 18:30:13 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Mon, 23 Jan 2017 18:30:15 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 23 Jan 2017 18:30:15 GMT
ENV SOLR_VERSION=6.4.0
# Mon, 23 Jan 2017 18:30:16 GMT
ENV SOLR_SHA256=1213ae09023058ea1cbd971a1b585f891fb63fa76e128611031bfc28c749b502
# Mon, 23 Jan 2017 18:30:16 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.0/solr-6.4.0.tgz
# Mon, 23 Jan 2017 18:30:40 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 23 Jan 2017 18:30:40 GMT
COPY dir:df206386c87858e80894083178ae780c94c4fdc5ee870d3d4438a20894c11b93 in /opt/docker-solr/scripts 
# Mon, 23 Jan 2017 18:30:41 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 23 Jan 2017 18:30:42 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Jan 2017 18:30:42 GMT
EXPOSE 8983/tcp
# Mon, 23 Jan 2017 18:30:43 GMT
WORKDIR /opt/solr
# Mon, 23 Jan 2017 18:30:43 GMT
USER [solr]
# Mon, 23 Jan 2017 18:30:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Jan 2017 18:30:44 GMT
CMD ["solr-foreground"]
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
	-	`sha256:4ba996a843c4e5552391cf9b4628e49b45a227941b4ec38c44b4fa0432eccea9`  
		Last Modified: Wed, 18 Jan 2017 07:34:18 GMT  
		Size: 10.1 MB (10079766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a497729ddeb1888e591b9a6044458410115dbc21f762c9a016727b5f3dfafd`  
		Last Modified: Wed, 18 Jan 2017 07:34:11 GMT  
		Size: 4.6 KB (4639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb7625576b1d74e320fc4bc7c46bbac8a7caf14b6951da2969ddd8835a11cdf`  
		Last Modified: Mon, 23 Jan 2017 18:34:17 GMT  
		Size: 7.4 KB (7398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444acb4378479fbddff1f498783da7e56cf02d381c22a946112c0163114ddd04`  
		Last Modified: Mon, 23 Jan 2017 18:34:33 GMT  
		Size: 141.4 MB (141436411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98664e970c90cab480fc6348bf1fe9005d79fb3ea3b29f5448888f3f1730031`  
		Last Modified: Mon, 23 Jan 2017 18:34:17 GMT  
		Size: 3.0 KB (2991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7705ea8de5df96e71d9bb74afa7e421e79d978af20baeca260f2132b352ec0`  
		Last Modified: Mon, 23 Jan 2017 18:34:17 GMT  
		Size: 3.0 KB (2994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6`

```console
$ docker pull solr@sha256:095cd192a7ef36d2805c5dad6362063a4efcdbdf4cb9dd633319852c289c1fb6
```

-	Platforms:
	-	linux; amd64

### `solr:6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.8 MB (275755579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f055ae917d84feed2d700bd772660ed1d2dff0a575b897c02b6493ec56ed0b6c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Tue, 17 Jan 2017 20:23:23 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 17 Jan 2017 20:23:23 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 17 Jan 2017 20:23:24 GMT
ARG GPG_KEYSERVER
# Tue, 17 Jan 2017 20:23:36 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:23:37 GMT
ENV SOLR_USER=solr
# Tue, 17 Jan 2017 20:23:37 GMT
ENV SOLR_UID=8983
# Tue, 17 Jan 2017 20:23:38 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Mon, 23 Jan 2017 18:30:13 GMT
ENV SOLR_KEY=478EEF7066AD843EC4812769707B7D9F6FDB8105
# Mon, 23 Jan 2017 18:30:13 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Mon, 23 Jan 2017 18:30:15 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 23 Jan 2017 18:30:15 GMT
ENV SOLR_VERSION=6.4.0
# Mon, 23 Jan 2017 18:30:16 GMT
ENV SOLR_SHA256=1213ae09023058ea1cbd971a1b585f891fb63fa76e128611031bfc28c749b502
# Mon, 23 Jan 2017 18:30:16 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.0/solr-6.4.0.tgz
# Mon, 23 Jan 2017 18:30:40 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 23 Jan 2017 18:30:40 GMT
COPY dir:df206386c87858e80894083178ae780c94c4fdc5ee870d3d4438a20894c11b93 in /opt/docker-solr/scripts 
# Mon, 23 Jan 2017 18:30:41 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 23 Jan 2017 18:30:42 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Jan 2017 18:30:42 GMT
EXPOSE 8983/tcp
# Mon, 23 Jan 2017 18:30:43 GMT
WORKDIR /opt/solr
# Mon, 23 Jan 2017 18:30:43 GMT
USER [solr]
# Mon, 23 Jan 2017 18:30:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Jan 2017 18:30:44 GMT
CMD ["solr-foreground"]
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
	-	`sha256:4ba996a843c4e5552391cf9b4628e49b45a227941b4ec38c44b4fa0432eccea9`  
		Last Modified: Wed, 18 Jan 2017 07:34:18 GMT  
		Size: 10.1 MB (10079766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a497729ddeb1888e591b9a6044458410115dbc21f762c9a016727b5f3dfafd`  
		Last Modified: Wed, 18 Jan 2017 07:34:11 GMT  
		Size: 4.6 KB (4639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb7625576b1d74e320fc4bc7c46bbac8a7caf14b6951da2969ddd8835a11cdf`  
		Last Modified: Mon, 23 Jan 2017 18:34:17 GMT  
		Size: 7.4 KB (7398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444acb4378479fbddff1f498783da7e56cf02d381c22a946112c0163114ddd04`  
		Last Modified: Mon, 23 Jan 2017 18:34:33 GMT  
		Size: 141.4 MB (141436411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98664e970c90cab480fc6348bf1fe9005d79fb3ea3b29f5448888f3f1730031`  
		Last Modified: Mon, 23 Jan 2017 18:34:17 GMT  
		Size: 3.0 KB (2991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7705ea8de5df96e71d9bb74afa7e421e79d978af20baeca260f2132b352ec0`  
		Last Modified: Mon, 23 Jan 2017 18:34:17 GMT  
		Size: 3.0 KB (2994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:latest`

```console
$ docker pull solr@sha256:095cd192a7ef36d2805c5dad6362063a4efcdbdf4cb9dd633319852c289c1fb6
```

-	Platforms:
	-	linux; amd64

### `solr:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.8 MB (275755579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f055ae917d84feed2d700bd772660ed1d2dff0a575b897c02b6493ec56ed0b6c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Tue, 17 Jan 2017 20:23:23 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 17 Jan 2017 20:23:23 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 17 Jan 2017 20:23:24 GMT
ARG GPG_KEYSERVER
# Tue, 17 Jan 2017 20:23:36 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:23:37 GMT
ENV SOLR_USER=solr
# Tue, 17 Jan 2017 20:23:37 GMT
ENV SOLR_UID=8983
# Tue, 17 Jan 2017 20:23:38 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Mon, 23 Jan 2017 18:30:13 GMT
ENV SOLR_KEY=478EEF7066AD843EC4812769707B7D9F6FDB8105
# Mon, 23 Jan 2017 18:30:13 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Mon, 23 Jan 2017 18:30:15 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 23 Jan 2017 18:30:15 GMT
ENV SOLR_VERSION=6.4.0
# Mon, 23 Jan 2017 18:30:16 GMT
ENV SOLR_SHA256=1213ae09023058ea1cbd971a1b585f891fb63fa76e128611031bfc28c749b502
# Mon, 23 Jan 2017 18:30:16 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.0/solr-6.4.0.tgz
# Mon, 23 Jan 2017 18:30:40 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 23 Jan 2017 18:30:40 GMT
COPY dir:df206386c87858e80894083178ae780c94c4fdc5ee870d3d4438a20894c11b93 in /opt/docker-solr/scripts 
# Mon, 23 Jan 2017 18:30:41 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 23 Jan 2017 18:30:42 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Jan 2017 18:30:42 GMT
EXPOSE 8983/tcp
# Mon, 23 Jan 2017 18:30:43 GMT
WORKDIR /opt/solr
# Mon, 23 Jan 2017 18:30:43 GMT
USER [solr]
# Mon, 23 Jan 2017 18:30:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Jan 2017 18:30:44 GMT
CMD ["solr-foreground"]
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
	-	`sha256:4ba996a843c4e5552391cf9b4628e49b45a227941b4ec38c44b4fa0432eccea9`  
		Last Modified: Wed, 18 Jan 2017 07:34:18 GMT  
		Size: 10.1 MB (10079766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a497729ddeb1888e591b9a6044458410115dbc21f762c9a016727b5f3dfafd`  
		Last Modified: Wed, 18 Jan 2017 07:34:11 GMT  
		Size: 4.6 KB (4639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb7625576b1d74e320fc4bc7c46bbac8a7caf14b6951da2969ddd8835a11cdf`  
		Last Modified: Mon, 23 Jan 2017 18:34:17 GMT  
		Size: 7.4 KB (7398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444acb4378479fbddff1f498783da7e56cf02d381c22a946112c0163114ddd04`  
		Last Modified: Mon, 23 Jan 2017 18:34:33 GMT  
		Size: 141.4 MB (141436411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98664e970c90cab480fc6348bf1fe9005d79fb3ea3b29f5448888f3f1730031`  
		Last Modified: Mon, 23 Jan 2017 18:34:17 GMT  
		Size: 3.0 KB (2991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7705ea8de5df96e71d9bb74afa7e421e79d978af20baeca260f2132b352ec0`  
		Last Modified: Mon, 23 Jan 2017 18:34:17 GMT  
		Size: 3.0 KB (2994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.4.0-alpine`

```console
$ docker pull solr@sha256:aace2082d5d4db0ba046cb19d2bcc74ee0523f7c6ef841c6226d14aa47274a7f
```

-	Platforms:
	-	linux; amd64

### `solr:6.4.0-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (188962244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b28871a5b4b240b947920b4178dbfb23c9514a0d4096a85b892fe9cd3caeb94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Tue, 27 Dec 2016 21:53:21 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 27 Dec 2016 21:53:21 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 27 Dec 2016 21:53:22 GMT
ARG GPG_KEYSERVER
# Tue, 27 Dec 2016 21:53:26 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 27 Dec 2016 21:53:36 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 27 Dec 2016 21:53:46 GMT
ENV SOLR_USER=solr
# Tue, 27 Dec 2016 21:53:57 GMT
ENV SOLR_UID=8983
# Tue, 27 Dec 2016 21:54:09 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Mon, 23 Jan 2017 18:30:45 GMT
ENV SOLR_KEY=478EEF7066AD843EC4812769707B7D9F6FDB8105
# Mon, 23 Jan 2017 18:30:50 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Mon, 23 Jan 2017 18:30:50 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Mon, 23 Jan 2017 18:30:53 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 23 Jan 2017 18:30:53 GMT
ENV SOLR_VERSION=6.4.0
# Mon, 23 Jan 2017 18:30:53 GMT
ENV SOLR_SHA256=1213ae09023058ea1cbd971a1b585f891fb63fa76e128611031bfc28c749b502
# Mon, 23 Jan 2017 18:30:54 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.0/solr-6.4.0.tgz
# Mon, 23 Jan 2017 18:31:12 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 23 Jan 2017 18:31:13 GMT
COPY dir:df206386c87858e80894083178ae780c94c4fdc5ee870d3d4438a20894c11b93 in /opt/docker-solr/scripts 
# Mon, 23 Jan 2017 18:31:14 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 23 Jan 2017 18:31:15 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 23 Jan 2017 18:31:15 GMT
EXPOSE 8983/tcp
# Mon, 23 Jan 2017 18:31:15 GMT
WORKDIR /opt/solr
# Mon, 23 Jan 2017 18:31:16 GMT
USER [solr]
# Mon, 23 Jan 2017 18:31:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Jan 2017 18:31:17 GMT
CMD ["solr-foreground"]
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
	-	`sha256:c4d212fb289fd8f7ac304b340ea91f8fb27bc9e822d094225ce2f3ad04980903`  
		Last Modified: Tue, 27 Dec 2016 22:09:25 GMT  
		Size: 4.9 MB (4920224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3faed70a1c93eb8aee6e17d4f46fdfa58a9ea1a3640054f10527824c960f8f9f`  
		Last Modified: Tue, 27 Dec 2016 22:09:20 GMT  
		Size: 607.8 KB (607765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266702a1d22cda205ac1942d3bb888879142f1a42dc3c4cdf5c81b3f89ff8719`  
		Last Modified: Tue, 27 Dec 2016 22:09:19 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14c353c7f5c39cb46395e8bf01b0f68d51c607d2d99d5c5fea54b2fc141ef286`  
		Last Modified: Mon, 23 Jan 2017 18:35:39 GMT  
		Size: 7.1 KB (7088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ed6b4b9fac1b0a84eac280f5cc312c66c33fcda1b092b9817fd0383c64073c`  
		Last Modified: Mon, 23 Jan 2017 18:35:40 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a324c27d1f66e4238506185bad1633fc8653b0edba670491e8341b2299f399`  
		Last Modified: Mon, 23 Jan 2017 18:35:54 GMT  
		Size: 141.4 MB (141436247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2deb53956fd90061487eb66df35db8185c29c53f1a251ee20a17bf1840a6e2`  
		Last Modified: Mon, 23 Jan 2017 18:35:39 GMT  
		Size: 3.0 KB (2989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecda434cf5f7db09b206db604eba76283ca5f1a84debd8817edbf25bc8abf7e3`  
		Last Modified: Mon, 23 Jan 2017 18:35:39 GMT  
		Size: 3.0 KB (2996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.4-alpine`

```console
$ docker pull solr@sha256:aace2082d5d4db0ba046cb19d2bcc74ee0523f7c6ef841c6226d14aa47274a7f
```

-	Platforms:
	-	linux; amd64

### `solr:6.4-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (188962244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b28871a5b4b240b947920b4178dbfb23c9514a0d4096a85b892fe9cd3caeb94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Tue, 27 Dec 2016 21:53:21 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 27 Dec 2016 21:53:21 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 27 Dec 2016 21:53:22 GMT
ARG GPG_KEYSERVER
# Tue, 27 Dec 2016 21:53:26 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 27 Dec 2016 21:53:36 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 27 Dec 2016 21:53:46 GMT
ENV SOLR_USER=solr
# Tue, 27 Dec 2016 21:53:57 GMT
ENV SOLR_UID=8983
# Tue, 27 Dec 2016 21:54:09 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Mon, 23 Jan 2017 18:30:45 GMT
ENV SOLR_KEY=478EEF7066AD843EC4812769707B7D9F6FDB8105
# Mon, 23 Jan 2017 18:30:50 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Mon, 23 Jan 2017 18:30:50 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Mon, 23 Jan 2017 18:30:53 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 23 Jan 2017 18:30:53 GMT
ENV SOLR_VERSION=6.4.0
# Mon, 23 Jan 2017 18:30:53 GMT
ENV SOLR_SHA256=1213ae09023058ea1cbd971a1b585f891fb63fa76e128611031bfc28c749b502
# Mon, 23 Jan 2017 18:30:54 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.0/solr-6.4.0.tgz
# Mon, 23 Jan 2017 18:31:12 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 23 Jan 2017 18:31:13 GMT
COPY dir:df206386c87858e80894083178ae780c94c4fdc5ee870d3d4438a20894c11b93 in /opt/docker-solr/scripts 
# Mon, 23 Jan 2017 18:31:14 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 23 Jan 2017 18:31:15 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 23 Jan 2017 18:31:15 GMT
EXPOSE 8983/tcp
# Mon, 23 Jan 2017 18:31:15 GMT
WORKDIR /opt/solr
# Mon, 23 Jan 2017 18:31:16 GMT
USER [solr]
# Mon, 23 Jan 2017 18:31:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Jan 2017 18:31:17 GMT
CMD ["solr-foreground"]
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
	-	`sha256:c4d212fb289fd8f7ac304b340ea91f8fb27bc9e822d094225ce2f3ad04980903`  
		Last Modified: Tue, 27 Dec 2016 22:09:25 GMT  
		Size: 4.9 MB (4920224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3faed70a1c93eb8aee6e17d4f46fdfa58a9ea1a3640054f10527824c960f8f9f`  
		Last Modified: Tue, 27 Dec 2016 22:09:20 GMT  
		Size: 607.8 KB (607765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266702a1d22cda205ac1942d3bb888879142f1a42dc3c4cdf5c81b3f89ff8719`  
		Last Modified: Tue, 27 Dec 2016 22:09:19 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14c353c7f5c39cb46395e8bf01b0f68d51c607d2d99d5c5fea54b2fc141ef286`  
		Last Modified: Mon, 23 Jan 2017 18:35:39 GMT  
		Size: 7.1 KB (7088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ed6b4b9fac1b0a84eac280f5cc312c66c33fcda1b092b9817fd0383c64073c`  
		Last Modified: Mon, 23 Jan 2017 18:35:40 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a324c27d1f66e4238506185bad1633fc8653b0edba670491e8341b2299f399`  
		Last Modified: Mon, 23 Jan 2017 18:35:54 GMT  
		Size: 141.4 MB (141436247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2deb53956fd90061487eb66df35db8185c29c53f1a251ee20a17bf1840a6e2`  
		Last Modified: Mon, 23 Jan 2017 18:35:39 GMT  
		Size: 3.0 KB (2989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecda434cf5f7db09b206db604eba76283ca5f1a84debd8817edbf25bc8abf7e3`  
		Last Modified: Mon, 23 Jan 2017 18:35:39 GMT  
		Size: 3.0 KB (2996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6-alpine`

```console
$ docker pull solr@sha256:aace2082d5d4db0ba046cb19d2bcc74ee0523f7c6ef841c6226d14aa47274a7f
```

-	Platforms:
	-	linux; amd64

### `solr:6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (188962244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b28871a5b4b240b947920b4178dbfb23c9514a0d4096a85b892fe9cd3caeb94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Tue, 27 Dec 2016 21:53:21 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 27 Dec 2016 21:53:21 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 27 Dec 2016 21:53:22 GMT
ARG GPG_KEYSERVER
# Tue, 27 Dec 2016 21:53:26 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 27 Dec 2016 21:53:36 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 27 Dec 2016 21:53:46 GMT
ENV SOLR_USER=solr
# Tue, 27 Dec 2016 21:53:57 GMT
ENV SOLR_UID=8983
# Tue, 27 Dec 2016 21:54:09 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Mon, 23 Jan 2017 18:30:45 GMT
ENV SOLR_KEY=478EEF7066AD843EC4812769707B7D9F6FDB8105
# Mon, 23 Jan 2017 18:30:50 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Mon, 23 Jan 2017 18:30:50 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Mon, 23 Jan 2017 18:30:53 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 23 Jan 2017 18:30:53 GMT
ENV SOLR_VERSION=6.4.0
# Mon, 23 Jan 2017 18:30:53 GMT
ENV SOLR_SHA256=1213ae09023058ea1cbd971a1b585f891fb63fa76e128611031bfc28c749b502
# Mon, 23 Jan 2017 18:30:54 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.0/solr-6.4.0.tgz
# Mon, 23 Jan 2017 18:31:12 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 23 Jan 2017 18:31:13 GMT
COPY dir:df206386c87858e80894083178ae780c94c4fdc5ee870d3d4438a20894c11b93 in /opt/docker-solr/scripts 
# Mon, 23 Jan 2017 18:31:14 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 23 Jan 2017 18:31:15 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 23 Jan 2017 18:31:15 GMT
EXPOSE 8983/tcp
# Mon, 23 Jan 2017 18:31:15 GMT
WORKDIR /opt/solr
# Mon, 23 Jan 2017 18:31:16 GMT
USER [solr]
# Mon, 23 Jan 2017 18:31:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Jan 2017 18:31:17 GMT
CMD ["solr-foreground"]
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
	-	`sha256:c4d212fb289fd8f7ac304b340ea91f8fb27bc9e822d094225ce2f3ad04980903`  
		Last Modified: Tue, 27 Dec 2016 22:09:25 GMT  
		Size: 4.9 MB (4920224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3faed70a1c93eb8aee6e17d4f46fdfa58a9ea1a3640054f10527824c960f8f9f`  
		Last Modified: Tue, 27 Dec 2016 22:09:20 GMT  
		Size: 607.8 KB (607765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266702a1d22cda205ac1942d3bb888879142f1a42dc3c4cdf5c81b3f89ff8719`  
		Last Modified: Tue, 27 Dec 2016 22:09:19 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14c353c7f5c39cb46395e8bf01b0f68d51c607d2d99d5c5fea54b2fc141ef286`  
		Last Modified: Mon, 23 Jan 2017 18:35:39 GMT  
		Size: 7.1 KB (7088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ed6b4b9fac1b0a84eac280f5cc312c66c33fcda1b092b9817fd0383c64073c`  
		Last Modified: Mon, 23 Jan 2017 18:35:40 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a324c27d1f66e4238506185bad1633fc8653b0edba670491e8341b2299f399`  
		Last Modified: Mon, 23 Jan 2017 18:35:54 GMT  
		Size: 141.4 MB (141436247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2deb53956fd90061487eb66df35db8185c29c53f1a251ee20a17bf1840a6e2`  
		Last Modified: Mon, 23 Jan 2017 18:35:39 GMT  
		Size: 3.0 KB (2989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecda434cf5f7db09b206db604eba76283ca5f1a84debd8817edbf25bc8abf7e3`  
		Last Modified: Mon, 23 Jan 2017 18:35:39 GMT  
		Size: 3.0 KB (2996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:alpine`

```console
$ docker pull solr@sha256:aace2082d5d4db0ba046cb19d2bcc74ee0523f7c6ef841c6226d14aa47274a7f
```

-	Platforms:
	-	linux; amd64

### `solr:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (188962244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b28871a5b4b240b947920b4178dbfb23c9514a0d4096a85b892fe9cd3caeb94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Tue, 27 Dec 2016 21:53:21 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 27 Dec 2016 21:53:21 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 27 Dec 2016 21:53:22 GMT
ARG GPG_KEYSERVER
# Tue, 27 Dec 2016 21:53:26 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 27 Dec 2016 21:53:36 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 27 Dec 2016 21:53:46 GMT
ENV SOLR_USER=solr
# Tue, 27 Dec 2016 21:53:57 GMT
ENV SOLR_UID=8983
# Tue, 27 Dec 2016 21:54:09 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Mon, 23 Jan 2017 18:30:45 GMT
ENV SOLR_KEY=478EEF7066AD843EC4812769707B7D9F6FDB8105
# Mon, 23 Jan 2017 18:30:50 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Mon, 23 Jan 2017 18:30:50 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Mon, 23 Jan 2017 18:30:53 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 23 Jan 2017 18:30:53 GMT
ENV SOLR_VERSION=6.4.0
# Mon, 23 Jan 2017 18:30:53 GMT
ENV SOLR_SHA256=1213ae09023058ea1cbd971a1b585f891fb63fa76e128611031bfc28c749b502
# Mon, 23 Jan 2017 18:30:54 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.0/solr-6.4.0.tgz
# Mon, 23 Jan 2017 18:31:12 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 23 Jan 2017 18:31:13 GMT
COPY dir:df206386c87858e80894083178ae780c94c4fdc5ee870d3d4438a20894c11b93 in /opt/docker-solr/scripts 
# Mon, 23 Jan 2017 18:31:14 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 23 Jan 2017 18:31:15 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 23 Jan 2017 18:31:15 GMT
EXPOSE 8983/tcp
# Mon, 23 Jan 2017 18:31:15 GMT
WORKDIR /opt/solr
# Mon, 23 Jan 2017 18:31:16 GMT
USER [solr]
# Mon, 23 Jan 2017 18:31:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Jan 2017 18:31:17 GMT
CMD ["solr-foreground"]
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
	-	`sha256:c4d212fb289fd8f7ac304b340ea91f8fb27bc9e822d094225ce2f3ad04980903`  
		Last Modified: Tue, 27 Dec 2016 22:09:25 GMT  
		Size: 4.9 MB (4920224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3faed70a1c93eb8aee6e17d4f46fdfa58a9ea1a3640054f10527824c960f8f9f`  
		Last Modified: Tue, 27 Dec 2016 22:09:20 GMT  
		Size: 607.8 KB (607765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266702a1d22cda205ac1942d3bb888879142f1a42dc3c4cdf5c81b3f89ff8719`  
		Last Modified: Tue, 27 Dec 2016 22:09:19 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14c353c7f5c39cb46395e8bf01b0f68d51c607d2d99d5c5fea54b2fc141ef286`  
		Last Modified: Mon, 23 Jan 2017 18:35:39 GMT  
		Size: 7.1 KB (7088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ed6b4b9fac1b0a84eac280f5cc312c66c33fcda1b092b9817fd0383c64073c`  
		Last Modified: Mon, 23 Jan 2017 18:35:40 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a324c27d1f66e4238506185bad1633fc8653b0edba670491e8341b2299f399`  
		Last Modified: Mon, 23 Jan 2017 18:35:54 GMT  
		Size: 141.4 MB (141436247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2deb53956fd90061487eb66df35db8185c29c53f1a251ee20a17bf1840a6e2`  
		Last Modified: Mon, 23 Jan 2017 18:35:39 GMT  
		Size: 3.0 KB (2989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecda434cf5f7db09b206db604eba76283ca5f1a84debd8817edbf25bc8abf7e3`  
		Last Modified: Mon, 23 Jan 2017 18:35:39 GMT  
		Size: 3.0 KB (2996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
