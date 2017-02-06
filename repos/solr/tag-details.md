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
$ docker pull solr@sha256:ba22df63b283d5d0897723a995a0e2ff9949e3df9cc476589a24e39ca0207b19
```

-	Platforms:
	-	linux; amd64

### `solr:5.5.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266164314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:828f7ea933f790a71d3f7f626cda3c6b9c1b70c22b07557aca40ee5feb4c7dee`
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
# Fri, 03 Feb 2017 00:43:42 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Fri, 03 Feb 2017 00:43:43 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 03 Feb 2017 00:43:44 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Feb 2017 00:43:44 GMT
EXPOSE 8983/tcp
# Fri, 03 Feb 2017 00:43:45 GMT
WORKDIR /opt/solr
# Fri, 03 Feb 2017 00:43:45 GMT
USER [solr]
# Fri, 03 Feb 2017 00:43:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Feb 2017 00:43:46 GMT
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
	-	`sha256:b5a93478ba2929f3a48153e94b24e7d1e9facd489c6e6e6e4446d5d7f9ff4cf0`  
		Last Modified: Fri, 03 Feb 2017 00:44:26 GMT  
		Size: 3.0 KB (2976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bafe79f94575df068c19355fd0ae24df4e3e41dc8dcc70cf71f2cf3699c70fdb`  
		Last Modified: Fri, 03 Feb 2017 00:44:26 GMT  
		Size: 3.0 KB (2985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5`

```console
$ docker pull solr@sha256:ba22df63b283d5d0897723a995a0e2ff9949e3df9cc476589a24e39ca0207b19
```

-	Platforms:
	-	linux; amd64

### `solr:5.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266164314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:828f7ea933f790a71d3f7f626cda3c6b9c1b70c22b07557aca40ee5feb4c7dee`
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
# Fri, 03 Feb 2017 00:43:42 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Fri, 03 Feb 2017 00:43:43 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 03 Feb 2017 00:43:44 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Feb 2017 00:43:44 GMT
EXPOSE 8983/tcp
# Fri, 03 Feb 2017 00:43:45 GMT
WORKDIR /opt/solr
# Fri, 03 Feb 2017 00:43:45 GMT
USER [solr]
# Fri, 03 Feb 2017 00:43:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Feb 2017 00:43:46 GMT
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
	-	`sha256:b5a93478ba2929f3a48153e94b24e7d1e9facd489c6e6e6e4446d5d7f9ff4cf0`  
		Last Modified: Fri, 03 Feb 2017 00:44:26 GMT  
		Size: 3.0 KB (2976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bafe79f94575df068c19355fd0ae24df4e3e41dc8dcc70cf71f2cf3699c70fdb`  
		Last Modified: Fri, 03 Feb 2017 00:44:26 GMT  
		Size: 3.0 KB (2985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5`

```console
$ docker pull solr@sha256:ba22df63b283d5d0897723a995a0e2ff9949e3df9cc476589a24e39ca0207b19
```

-	Platforms:
	-	linux; amd64

### `solr:5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266164314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:828f7ea933f790a71d3f7f626cda3c6b9c1b70c22b07557aca40ee5feb4c7dee`
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
# Fri, 03 Feb 2017 00:43:42 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Fri, 03 Feb 2017 00:43:43 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 03 Feb 2017 00:43:44 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Feb 2017 00:43:44 GMT
EXPOSE 8983/tcp
# Fri, 03 Feb 2017 00:43:45 GMT
WORKDIR /opt/solr
# Fri, 03 Feb 2017 00:43:45 GMT
USER [solr]
# Fri, 03 Feb 2017 00:43:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Feb 2017 00:43:46 GMT
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
	-	`sha256:b5a93478ba2929f3a48153e94b24e7d1e9facd489c6e6e6e4446d5d7f9ff4cf0`  
		Last Modified: Fri, 03 Feb 2017 00:44:26 GMT  
		Size: 3.0 KB (2976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bafe79f94575df068c19355fd0ae24df4e3e41dc8dcc70cf71f2cf3699c70fdb`  
		Last Modified: Fri, 03 Feb 2017 00:44:26 GMT  
		Size: 3.0 KB (2985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5.3-alpine`

```console
$ docker pull solr@sha256:4d299bd579e9841f1e1467e3456d423136c40a1861edd0eb3230ae0cf4b42fa0
```

-	Platforms:
	-	linux; amd64

### `solr:5.5.3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.4 MB (179370982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:825fd3e7175c2142993899cb6fd528986659fdd256fc1a75ba2157dbd5a20e42`
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
# Fri, 03 Feb 2017 00:43:47 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Fri, 03 Feb 2017 00:43:48 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 03 Feb 2017 00:43:49 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Feb 2017 00:43:49 GMT
EXPOSE 8983/tcp
# Fri, 03 Feb 2017 00:43:49 GMT
WORKDIR /opt/solr
# Fri, 03 Feb 2017 00:43:50 GMT
USER [solr]
# Fri, 03 Feb 2017 00:43:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Feb 2017 00:43:50 GMT
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
	-	`sha256:18a031cb03f2d6a00d59d0ef66d5f0d4fd34389d6d37b08495a3a7faa133a567`  
		Last Modified: Fri, 03 Feb 2017 00:45:18 GMT  
		Size: 3.0 KB (2976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9209cea5df865d4a643787153466b9b6a700891699e4601f4e1bbde5d8c73338`  
		Last Modified: Fri, 03 Feb 2017 00:45:17 GMT  
		Size: 3.0 KB (2983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5-alpine`

```console
$ docker pull solr@sha256:4d299bd579e9841f1e1467e3456d423136c40a1861edd0eb3230ae0cf4b42fa0
```

-	Platforms:
	-	linux; amd64

### `solr:5.5-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.4 MB (179370982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:825fd3e7175c2142993899cb6fd528986659fdd256fc1a75ba2157dbd5a20e42`
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
# Fri, 03 Feb 2017 00:43:47 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Fri, 03 Feb 2017 00:43:48 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 03 Feb 2017 00:43:49 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Feb 2017 00:43:49 GMT
EXPOSE 8983/tcp
# Fri, 03 Feb 2017 00:43:49 GMT
WORKDIR /opt/solr
# Fri, 03 Feb 2017 00:43:50 GMT
USER [solr]
# Fri, 03 Feb 2017 00:43:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Feb 2017 00:43:50 GMT
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
	-	`sha256:18a031cb03f2d6a00d59d0ef66d5f0d4fd34389d6d37b08495a3a7faa133a567`  
		Last Modified: Fri, 03 Feb 2017 00:45:18 GMT  
		Size: 3.0 KB (2976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9209cea5df865d4a643787153466b9b6a700891699e4601f4e1bbde5d8c73338`  
		Last Modified: Fri, 03 Feb 2017 00:45:17 GMT  
		Size: 3.0 KB (2983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5-alpine`

```console
$ docker pull solr@sha256:4d299bd579e9841f1e1467e3456d423136c40a1861edd0eb3230ae0cf4b42fa0
```

-	Platforms:
	-	linux; amd64

### `solr:5-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.4 MB (179370982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:825fd3e7175c2142993899cb6fd528986659fdd256fc1a75ba2157dbd5a20e42`
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
# Fri, 03 Feb 2017 00:43:47 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Fri, 03 Feb 2017 00:43:48 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 03 Feb 2017 00:43:49 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Feb 2017 00:43:49 GMT
EXPOSE 8983/tcp
# Fri, 03 Feb 2017 00:43:49 GMT
WORKDIR /opt/solr
# Fri, 03 Feb 2017 00:43:50 GMT
USER [solr]
# Fri, 03 Feb 2017 00:43:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Feb 2017 00:43:50 GMT
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
	-	`sha256:18a031cb03f2d6a00d59d0ef66d5f0d4fd34389d6d37b08495a3a7faa133a567`  
		Last Modified: Fri, 03 Feb 2017 00:45:18 GMT  
		Size: 3.0 KB (2976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9209cea5df865d4a643787153466b9b6a700891699e4601f4e1bbde5d8c73338`  
		Last Modified: Fri, 03 Feb 2017 00:45:17 GMT  
		Size: 3.0 KB (2983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3.0`

```console
$ docker pull solr@sha256:748d250a30d228ccb4f7f8eb11fe538b8285e4a313660ed4254d86b736e01d9d
```

-	Platforms:
	-	linux; amd64

### `solr:6.3.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.8 MB (274783039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5040485a3f27f9e9202baa8f0f76a95f41a00e430dbe49405f743dffbcad617`
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
# Fri, 03 Feb 2017 00:43:51 GMT
COPY dir:abdaca4e15e2e9bc98e5068a7497f01d2fabb66c519ab4a7513e70f2b02dda70 in /opt/docker-solr/scripts 
# Fri, 03 Feb 2017 00:43:53 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 03 Feb 2017 00:43:53 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Feb 2017 00:43:53 GMT
EXPOSE 8983/tcp
# Fri, 03 Feb 2017 00:43:54 GMT
WORKDIR /opt/solr
# Fri, 03 Feb 2017 00:43:54 GMT
USER [solr]
# Fri, 03 Feb 2017 00:43:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Feb 2017 00:43:55 GMT
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
	-	`sha256:e3e33a589765aedef0ade21f9441ca5a709a19983319a255796dd1f288b4fbd2`  
		Last Modified: Fri, 03 Feb 2017 00:46:08 GMT  
		Size: 3.0 KB (2975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4960b3fe3aef39647789e2c9f8de6bbf09599e5e90a1cba02d889bb620c22b66`  
		Last Modified: Fri, 03 Feb 2017 00:46:09 GMT  
		Size: 3.0 KB (2981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3`

```console
$ docker pull solr@sha256:748d250a30d228ccb4f7f8eb11fe538b8285e4a313660ed4254d86b736e01d9d
```

-	Platforms:
	-	linux; amd64

### `solr:6.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.8 MB (274783039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5040485a3f27f9e9202baa8f0f76a95f41a00e430dbe49405f743dffbcad617`
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
# Fri, 03 Feb 2017 00:43:51 GMT
COPY dir:abdaca4e15e2e9bc98e5068a7497f01d2fabb66c519ab4a7513e70f2b02dda70 in /opt/docker-solr/scripts 
# Fri, 03 Feb 2017 00:43:53 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 03 Feb 2017 00:43:53 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Feb 2017 00:43:53 GMT
EXPOSE 8983/tcp
# Fri, 03 Feb 2017 00:43:54 GMT
WORKDIR /opt/solr
# Fri, 03 Feb 2017 00:43:54 GMT
USER [solr]
# Fri, 03 Feb 2017 00:43:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Feb 2017 00:43:55 GMT
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
	-	`sha256:e3e33a589765aedef0ade21f9441ca5a709a19983319a255796dd1f288b4fbd2`  
		Last Modified: Fri, 03 Feb 2017 00:46:08 GMT  
		Size: 3.0 KB (2975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4960b3fe3aef39647789e2c9f8de6bbf09599e5e90a1cba02d889bb620c22b66`  
		Last Modified: Fri, 03 Feb 2017 00:46:09 GMT  
		Size: 3.0 KB (2981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3.0-alpine`

```console
$ docker pull solr@sha256:917b1a76962adf8790ddc05691601c7c2b477e003a9c1c5fbf526bd28e36e9c0
```

-	Platforms:
	-	linux; amd64

### `solr:6.3.0-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187989884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb503bd0054bc09647e8d347fefee381bccc07e95a2ca94c84624fd4b1240acf`
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
# Fri, 03 Feb 2017 00:43:56 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Fri, 03 Feb 2017 00:43:57 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 03 Feb 2017 00:43:57 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Feb 2017 00:43:57 GMT
EXPOSE 8983/tcp
# Fri, 03 Feb 2017 00:43:58 GMT
WORKDIR /opt/solr
# Fri, 03 Feb 2017 00:43:58 GMT
USER [solr]
# Fri, 03 Feb 2017 00:43:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Feb 2017 00:43:59 GMT
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
	-	`sha256:052632176d1834da32372b07e6397affaa85dba00bf49d791aa3a2854ac87365`  
		Last Modified: Fri, 03 Feb 2017 00:46:44 GMT  
		Size: 3.0 KB (2978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e5d832e063373ddd0e4325d8928bb6dec211fcb8a2393cef49fb8d57e26637`  
		Last Modified: Fri, 03 Feb 2017 00:46:44 GMT  
		Size: 3.0 KB (2986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3-alpine`

```console
$ docker pull solr@sha256:917b1a76962adf8790ddc05691601c7c2b477e003a9c1c5fbf526bd28e36e9c0
```

-	Platforms:
	-	linux; amd64

### `solr:6.3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187989884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb503bd0054bc09647e8d347fefee381bccc07e95a2ca94c84624fd4b1240acf`
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
# Fri, 03 Feb 2017 00:43:56 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Fri, 03 Feb 2017 00:43:57 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 03 Feb 2017 00:43:57 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Feb 2017 00:43:57 GMT
EXPOSE 8983/tcp
# Fri, 03 Feb 2017 00:43:58 GMT
WORKDIR /opt/solr
# Fri, 03 Feb 2017 00:43:58 GMT
USER [solr]
# Fri, 03 Feb 2017 00:43:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Feb 2017 00:43:59 GMT
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
	-	`sha256:052632176d1834da32372b07e6397affaa85dba00bf49d791aa3a2854ac87365`  
		Last Modified: Fri, 03 Feb 2017 00:46:44 GMT  
		Size: 3.0 KB (2978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e5d832e063373ddd0e4325d8928bb6dec211fcb8a2393cef49fb8d57e26637`  
		Last Modified: Fri, 03 Feb 2017 00:46:44 GMT  
		Size: 3.0 KB (2986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.4.1`

```console
$ docker pull solr@sha256:ef4a82f656dcda8f5bf11fd79e651d6392e939b5ab60ac9241c0df9cc43d1520
```

-	Platforms:
	-	linux; amd64

### `solr:6.4.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.8 MB (275771955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b35253c63171ade2997a2cb38fb937acbfeeb115bf85f466afc998d2493089ea`
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
# Tue, 17 Jan 2017 20:24:18 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 17 Jan 2017 20:24:19 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 17 Jan 2017 20:24:20 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 06 Feb 2017 22:21:15 GMT
ENV SOLR_VERSION=6.4.1
# Mon, 06 Feb 2017 22:21:15 GMT
ENV SOLR_SHA256=ebce206dd4a66600384ccdd9a604536135594ce4c24814bbd5a3e8a8ec1efbb9
# Mon, 06 Feb 2017 22:21:16 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.1/solr-6.4.1.tgz
# Mon, 06 Feb 2017 22:21:31 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 06 Feb 2017 22:21:32 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Mon, 06 Feb 2017 22:21:33 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 06 Feb 2017 22:21:33 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Feb 2017 22:21:33 GMT
EXPOSE 8983/tcp
# Mon, 06 Feb 2017 22:21:34 GMT
WORKDIR /opt/solr
# Mon, 06 Feb 2017 22:21:34 GMT
USER [solr]
# Mon, 06 Feb 2017 22:21:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Feb 2017 22:21:35 GMT
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
	-	`sha256:df4cab1c8b0b55371664f1552cbe29830f56b3529b067938cf8373dd34bb1492`  
		Last Modified: Wed, 18 Jan 2017 07:35:02 GMT  
		Size: 7.4 KB (7397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d26113645946899a8bae05ec683917722a85d817ef88b513bbe839bf94578e8e`  
		Last Modified: Mon, 06 Feb 2017 22:24:59 GMT  
		Size: 141.5 MB (141452811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70249f1855bbab5ba89b4e657b11dfe2d2bfd40dad49f49d23b7f4ba071a37a`  
		Last Modified: Mon, 06 Feb 2017 22:24:48 GMT  
		Size: 3.0 KB (2976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb505b84deb9c8aabc7817e41143d9f10f88850d0216a32fc28e7d575c460dc7`  
		Last Modified: Mon, 06 Feb 2017 22:24:49 GMT  
		Size: 3.0 KB (2986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.4`

```console
$ docker pull solr@sha256:ef4a82f656dcda8f5bf11fd79e651d6392e939b5ab60ac9241c0df9cc43d1520
```

-	Platforms:
	-	linux; amd64

### `solr:6.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.8 MB (275771955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b35253c63171ade2997a2cb38fb937acbfeeb115bf85f466afc998d2493089ea`
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
# Tue, 17 Jan 2017 20:24:18 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 17 Jan 2017 20:24:19 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 17 Jan 2017 20:24:20 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 06 Feb 2017 22:21:15 GMT
ENV SOLR_VERSION=6.4.1
# Mon, 06 Feb 2017 22:21:15 GMT
ENV SOLR_SHA256=ebce206dd4a66600384ccdd9a604536135594ce4c24814bbd5a3e8a8ec1efbb9
# Mon, 06 Feb 2017 22:21:16 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.1/solr-6.4.1.tgz
# Mon, 06 Feb 2017 22:21:31 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 06 Feb 2017 22:21:32 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Mon, 06 Feb 2017 22:21:33 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 06 Feb 2017 22:21:33 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Feb 2017 22:21:33 GMT
EXPOSE 8983/tcp
# Mon, 06 Feb 2017 22:21:34 GMT
WORKDIR /opt/solr
# Mon, 06 Feb 2017 22:21:34 GMT
USER [solr]
# Mon, 06 Feb 2017 22:21:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Feb 2017 22:21:35 GMT
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
	-	`sha256:df4cab1c8b0b55371664f1552cbe29830f56b3529b067938cf8373dd34bb1492`  
		Last Modified: Wed, 18 Jan 2017 07:35:02 GMT  
		Size: 7.4 KB (7397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d26113645946899a8bae05ec683917722a85d817ef88b513bbe839bf94578e8e`  
		Last Modified: Mon, 06 Feb 2017 22:24:59 GMT  
		Size: 141.5 MB (141452811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70249f1855bbab5ba89b4e657b11dfe2d2bfd40dad49f49d23b7f4ba071a37a`  
		Last Modified: Mon, 06 Feb 2017 22:24:48 GMT  
		Size: 3.0 KB (2976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb505b84deb9c8aabc7817e41143d9f10f88850d0216a32fc28e7d575c460dc7`  
		Last Modified: Mon, 06 Feb 2017 22:24:49 GMT  
		Size: 3.0 KB (2986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6`

```console
$ docker pull solr@sha256:ef4a82f656dcda8f5bf11fd79e651d6392e939b5ab60ac9241c0df9cc43d1520
```

-	Platforms:
	-	linux; amd64

### `solr:6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.8 MB (275771955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b35253c63171ade2997a2cb38fb937acbfeeb115bf85f466afc998d2493089ea`
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
# Tue, 17 Jan 2017 20:24:18 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 17 Jan 2017 20:24:19 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 17 Jan 2017 20:24:20 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 06 Feb 2017 22:21:15 GMT
ENV SOLR_VERSION=6.4.1
# Mon, 06 Feb 2017 22:21:15 GMT
ENV SOLR_SHA256=ebce206dd4a66600384ccdd9a604536135594ce4c24814bbd5a3e8a8ec1efbb9
# Mon, 06 Feb 2017 22:21:16 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.1/solr-6.4.1.tgz
# Mon, 06 Feb 2017 22:21:31 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 06 Feb 2017 22:21:32 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Mon, 06 Feb 2017 22:21:33 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 06 Feb 2017 22:21:33 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Feb 2017 22:21:33 GMT
EXPOSE 8983/tcp
# Mon, 06 Feb 2017 22:21:34 GMT
WORKDIR /opt/solr
# Mon, 06 Feb 2017 22:21:34 GMT
USER [solr]
# Mon, 06 Feb 2017 22:21:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Feb 2017 22:21:35 GMT
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
	-	`sha256:df4cab1c8b0b55371664f1552cbe29830f56b3529b067938cf8373dd34bb1492`  
		Last Modified: Wed, 18 Jan 2017 07:35:02 GMT  
		Size: 7.4 KB (7397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d26113645946899a8bae05ec683917722a85d817ef88b513bbe839bf94578e8e`  
		Last Modified: Mon, 06 Feb 2017 22:24:59 GMT  
		Size: 141.5 MB (141452811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70249f1855bbab5ba89b4e657b11dfe2d2bfd40dad49f49d23b7f4ba071a37a`  
		Last Modified: Mon, 06 Feb 2017 22:24:48 GMT  
		Size: 3.0 KB (2976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb505b84deb9c8aabc7817e41143d9f10f88850d0216a32fc28e7d575c460dc7`  
		Last Modified: Mon, 06 Feb 2017 22:24:49 GMT  
		Size: 3.0 KB (2986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:latest`

```console
$ docker pull solr@sha256:ef4a82f656dcda8f5bf11fd79e651d6392e939b5ab60ac9241c0df9cc43d1520
```

-	Platforms:
	-	linux; amd64

### `solr:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.8 MB (275771955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b35253c63171ade2997a2cb38fb937acbfeeb115bf85f466afc998d2493089ea`
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
# Tue, 17 Jan 2017 20:24:18 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 17 Jan 2017 20:24:19 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 17 Jan 2017 20:24:20 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 06 Feb 2017 22:21:15 GMT
ENV SOLR_VERSION=6.4.1
# Mon, 06 Feb 2017 22:21:15 GMT
ENV SOLR_SHA256=ebce206dd4a66600384ccdd9a604536135594ce4c24814bbd5a3e8a8ec1efbb9
# Mon, 06 Feb 2017 22:21:16 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.1/solr-6.4.1.tgz
# Mon, 06 Feb 2017 22:21:31 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 06 Feb 2017 22:21:32 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Mon, 06 Feb 2017 22:21:33 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 06 Feb 2017 22:21:33 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Feb 2017 22:21:33 GMT
EXPOSE 8983/tcp
# Mon, 06 Feb 2017 22:21:34 GMT
WORKDIR /opt/solr
# Mon, 06 Feb 2017 22:21:34 GMT
USER [solr]
# Mon, 06 Feb 2017 22:21:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Feb 2017 22:21:35 GMT
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
	-	`sha256:df4cab1c8b0b55371664f1552cbe29830f56b3529b067938cf8373dd34bb1492`  
		Last Modified: Wed, 18 Jan 2017 07:35:02 GMT  
		Size: 7.4 KB (7397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d26113645946899a8bae05ec683917722a85d817ef88b513bbe839bf94578e8e`  
		Last Modified: Mon, 06 Feb 2017 22:24:59 GMT  
		Size: 141.5 MB (141452811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70249f1855bbab5ba89b4e657b11dfe2d2bfd40dad49f49d23b7f4ba071a37a`  
		Last Modified: Mon, 06 Feb 2017 22:24:48 GMT  
		Size: 3.0 KB (2976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb505b84deb9c8aabc7817e41143d9f10f88850d0216a32fc28e7d575c460dc7`  
		Last Modified: Mon, 06 Feb 2017 22:24:49 GMT  
		Size: 3.0 KB (2986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.4.1-alpine`

```console
$ docker pull solr@sha256:21d02b159144b2b50cf7bc835b53d22f7d166234a80a13cbd71af6377c642aad
```

-	Platforms:
	-	linux; amd64

### `solr:6.4.1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (188978734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c632df612af1da04896bfe628462e7af936f6a2884780fddb00f79c7701f83a`
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
# Tue, 27 Dec 2016 21:56:29 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 27 Dec 2016 21:56:33 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 27 Dec 2016 21:56:43 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 27 Dec 2016 21:56:45 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 06 Feb 2017 22:21:36 GMT
ENV SOLR_VERSION=6.4.1
# Mon, 06 Feb 2017 22:21:36 GMT
ENV SOLR_SHA256=ebce206dd4a66600384ccdd9a604536135594ce4c24814bbd5a3e8a8ec1efbb9
# Mon, 06 Feb 2017 22:21:36 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.1/solr-6.4.1.tgz
# Mon, 06 Feb 2017 22:21:53 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 06 Feb 2017 22:21:53 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Mon, 06 Feb 2017 22:21:54 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 06 Feb 2017 22:21:55 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 06 Feb 2017 22:21:55 GMT
EXPOSE 8983/tcp
# Mon, 06 Feb 2017 22:21:55 GMT
WORKDIR /opt/solr
# Mon, 06 Feb 2017 22:21:55 GMT
USER [solr]
# Mon, 06 Feb 2017 22:21:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Feb 2017 22:21:56 GMT
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
	-	`sha256:ec13ad37b923525d0e950e27a62db763033cdd449d71209cb8eef63c80beb422`  
		Last Modified: Tue, 27 Dec 2016 22:13:14 GMT  
		Size: 7.1 KB (7083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c781698b520237ac7c5396093e5cf19c268a70f616c2d37f5951cf27db6b7668`  
		Last Modified: Tue, 27 Dec 2016 22:10:12 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e998c9bea4caed568755178ad778f49495295daf1194fdb139d2b7a3ef7db6`  
		Last Modified: Mon, 06 Feb 2017 22:26:18 GMT  
		Size: 141.5 MB (141452770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1257363711d84d6e6b47e5f622e73d1c3a16c6d08d3fa8ccb470577439ce4608`  
		Last Modified: Mon, 06 Feb 2017 22:26:08 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb36f1a54e953d06faf23edde663e7119917494a88817437174322fea92dd09`  
		Last Modified: Mon, 06 Feb 2017 22:26:08 GMT  
		Size: 3.0 KB (2981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.4-alpine`

```console
$ docker pull solr@sha256:21d02b159144b2b50cf7bc835b53d22f7d166234a80a13cbd71af6377c642aad
```

-	Platforms:
	-	linux; amd64

### `solr:6.4-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (188978734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c632df612af1da04896bfe628462e7af936f6a2884780fddb00f79c7701f83a`
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
# Tue, 27 Dec 2016 21:56:29 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 27 Dec 2016 21:56:33 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 27 Dec 2016 21:56:43 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 27 Dec 2016 21:56:45 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 06 Feb 2017 22:21:36 GMT
ENV SOLR_VERSION=6.4.1
# Mon, 06 Feb 2017 22:21:36 GMT
ENV SOLR_SHA256=ebce206dd4a66600384ccdd9a604536135594ce4c24814bbd5a3e8a8ec1efbb9
# Mon, 06 Feb 2017 22:21:36 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.1/solr-6.4.1.tgz
# Mon, 06 Feb 2017 22:21:53 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 06 Feb 2017 22:21:53 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Mon, 06 Feb 2017 22:21:54 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 06 Feb 2017 22:21:55 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 06 Feb 2017 22:21:55 GMT
EXPOSE 8983/tcp
# Mon, 06 Feb 2017 22:21:55 GMT
WORKDIR /opt/solr
# Mon, 06 Feb 2017 22:21:55 GMT
USER [solr]
# Mon, 06 Feb 2017 22:21:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Feb 2017 22:21:56 GMT
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
	-	`sha256:ec13ad37b923525d0e950e27a62db763033cdd449d71209cb8eef63c80beb422`  
		Last Modified: Tue, 27 Dec 2016 22:13:14 GMT  
		Size: 7.1 KB (7083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c781698b520237ac7c5396093e5cf19c268a70f616c2d37f5951cf27db6b7668`  
		Last Modified: Tue, 27 Dec 2016 22:10:12 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e998c9bea4caed568755178ad778f49495295daf1194fdb139d2b7a3ef7db6`  
		Last Modified: Mon, 06 Feb 2017 22:26:18 GMT  
		Size: 141.5 MB (141452770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1257363711d84d6e6b47e5f622e73d1c3a16c6d08d3fa8ccb470577439ce4608`  
		Last Modified: Mon, 06 Feb 2017 22:26:08 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb36f1a54e953d06faf23edde663e7119917494a88817437174322fea92dd09`  
		Last Modified: Mon, 06 Feb 2017 22:26:08 GMT  
		Size: 3.0 KB (2981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6-alpine`

```console
$ docker pull solr@sha256:21d02b159144b2b50cf7bc835b53d22f7d166234a80a13cbd71af6377c642aad
```

-	Platforms:
	-	linux; amd64

### `solr:6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (188978734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c632df612af1da04896bfe628462e7af936f6a2884780fddb00f79c7701f83a`
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
# Tue, 27 Dec 2016 21:56:29 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 27 Dec 2016 21:56:33 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 27 Dec 2016 21:56:43 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 27 Dec 2016 21:56:45 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 06 Feb 2017 22:21:36 GMT
ENV SOLR_VERSION=6.4.1
# Mon, 06 Feb 2017 22:21:36 GMT
ENV SOLR_SHA256=ebce206dd4a66600384ccdd9a604536135594ce4c24814bbd5a3e8a8ec1efbb9
# Mon, 06 Feb 2017 22:21:36 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.1/solr-6.4.1.tgz
# Mon, 06 Feb 2017 22:21:53 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 06 Feb 2017 22:21:53 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Mon, 06 Feb 2017 22:21:54 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 06 Feb 2017 22:21:55 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 06 Feb 2017 22:21:55 GMT
EXPOSE 8983/tcp
# Mon, 06 Feb 2017 22:21:55 GMT
WORKDIR /opt/solr
# Mon, 06 Feb 2017 22:21:55 GMT
USER [solr]
# Mon, 06 Feb 2017 22:21:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Feb 2017 22:21:56 GMT
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
	-	`sha256:ec13ad37b923525d0e950e27a62db763033cdd449d71209cb8eef63c80beb422`  
		Last Modified: Tue, 27 Dec 2016 22:13:14 GMT  
		Size: 7.1 KB (7083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c781698b520237ac7c5396093e5cf19c268a70f616c2d37f5951cf27db6b7668`  
		Last Modified: Tue, 27 Dec 2016 22:10:12 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e998c9bea4caed568755178ad778f49495295daf1194fdb139d2b7a3ef7db6`  
		Last Modified: Mon, 06 Feb 2017 22:26:18 GMT  
		Size: 141.5 MB (141452770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1257363711d84d6e6b47e5f622e73d1c3a16c6d08d3fa8ccb470577439ce4608`  
		Last Modified: Mon, 06 Feb 2017 22:26:08 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb36f1a54e953d06faf23edde663e7119917494a88817437174322fea92dd09`  
		Last Modified: Mon, 06 Feb 2017 22:26:08 GMT  
		Size: 3.0 KB (2981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:alpine`

```console
$ docker pull solr@sha256:21d02b159144b2b50cf7bc835b53d22f7d166234a80a13cbd71af6377c642aad
```

-	Platforms:
	-	linux; amd64

### `solr:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (188978734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c632df612af1da04896bfe628462e7af936f6a2884780fddb00f79c7701f83a`
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
# Tue, 27 Dec 2016 21:56:29 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 27 Dec 2016 21:56:33 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 27 Dec 2016 21:56:43 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 27 Dec 2016 21:56:45 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Mon, 06 Feb 2017 22:21:36 GMT
ENV SOLR_VERSION=6.4.1
# Mon, 06 Feb 2017 22:21:36 GMT
ENV SOLR_SHA256=ebce206dd4a66600384ccdd9a604536135594ce4c24814bbd5a3e8a8ec1efbb9
# Mon, 06 Feb 2017 22:21:36 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.4.1/solr-6.4.1.tgz
# Mon, 06 Feb 2017 22:21:53 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Mon, 06 Feb 2017 22:21:53 GMT
COPY dir:a1334d90f054a1dc82fff589ec6096bb7d4216f958abf3d6d6ce0238c93fa3b3 in /opt/docker-solr/scripts 
# Mon, 06 Feb 2017 22:21:54 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Mon, 06 Feb 2017 22:21:55 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 06 Feb 2017 22:21:55 GMT
EXPOSE 8983/tcp
# Mon, 06 Feb 2017 22:21:55 GMT
WORKDIR /opt/solr
# Mon, 06 Feb 2017 22:21:55 GMT
USER [solr]
# Mon, 06 Feb 2017 22:21:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Feb 2017 22:21:56 GMT
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
	-	`sha256:ec13ad37b923525d0e950e27a62db763033cdd449d71209cb8eef63c80beb422`  
		Last Modified: Tue, 27 Dec 2016 22:13:14 GMT  
		Size: 7.1 KB (7083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c781698b520237ac7c5396093e5cf19c268a70f616c2d37f5951cf27db6b7668`  
		Last Modified: Tue, 27 Dec 2016 22:10:12 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e998c9bea4caed568755178ad778f49495295daf1194fdb139d2b7a3ef7db6`  
		Last Modified: Mon, 06 Feb 2017 22:26:18 GMT  
		Size: 141.5 MB (141452770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1257363711d84d6e6b47e5f622e73d1c3a16c6d08d3fa8ccb470577439ce4608`  
		Last Modified: Mon, 06 Feb 2017 22:26:08 GMT  
		Size: 3.0 KB (2977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb36f1a54e953d06faf23edde663e7119917494a88817437174322fea92dd09`  
		Last Modified: Mon, 06 Feb 2017 22:26:08 GMT  
		Size: 3.0 KB (2981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
