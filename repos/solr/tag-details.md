<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `solr`

-	[`solr:5.3.2`](#solr532)
-	[`solr:5.3`](#solr53)
-	[`solr:5.3.2-alpine`](#solr532-alpine)
-	[`solr:5.3-alpine`](#solr53-alpine)
-	[`solr:5.4.1`](#solr541)
-	[`solr:5.4`](#solr54)
-	[`solr:5.4.1-alpine`](#solr541-alpine)
-	[`solr:5.4-alpine`](#solr54-alpine)
-	[`solr:5.5.3`](#solr553)
-	[`solr:5.5`](#solr55)
-	[`solr:5`](#solr5)
-	[`solr:5.5.3-alpine`](#solr553-alpine)
-	[`solr:5.5-alpine`](#solr55-alpine)
-	[`solr:5-alpine`](#solr5-alpine)
-	[`solr:6.0.1`](#solr601)
-	[`solr:6.0`](#solr60)
-	[`solr:6.0.1-alpine`](#solr601-alpine)
-	[`solr:6.0-alpine`](#solr60-alpine)
-	[`solr:6.1.0`](#solr610)
-	[`solr:6.1`](#solr61)
-	[`solr:6.1.0-alpine`](#solr610-alpine)
-	[`solr:6.1-alpine`](#solr61-alpine)
-	[`solr:6.2.1`](#solr621)
-	[`solr:6.2`](#solr62)
-	[`solr:6.2.1-alpine`](#solr621-alpine)
-	[`solr:6.2-alpine`](#solr62-alpine)
-	[`solr:6.3.0`](#solr630)
-	[`solr:6.3`](#solr63)
-	[`solr:6`](#solr6)
-	[`solr:latest`](#solrlatest)
-	[`solr:6.3.0-alpine`](#solr630-alpine)
-	[`solr:6.3-alpine`](#solr63-alpine)
-	[`solr:6-alpine`](#solr6-alpine)
-	[`solr:alpine`](#solralpine)

## `solr:5.3.2`

```console
$ docker pull solr@sha256:4cc79f862758098492fcf06ea85c50597d784db4e88f56b567865ceffc5c209e
```

-	Platforms:
	-	linux; amd64

### `solr:5.3.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.4 MB (264416941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57e5e9f0ea490c5967cc6c25c7b68abd7695396e7bb777bfbd4e90475d65f911`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Dec 2016 22:55:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 14 Dec 2016 22:55:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 14 Dec 2016 22:55:24 GMT
ARG GPG_KEYSERVER
# Wed, 14 Dec 2016 22:55:40 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_USER=solr
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_UID=8983
# Wed, 14 Dec 2016 22:55:42 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 14 Dec 2016 22:55:43 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Wed, 14 Dec 2016 22:55:43 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 14 Dec 2016 22:55:45 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 14 Dec 2016 22:56:07 GMT
ENV SOLR_VERSION=5.3.2
# Wed, 14 Dec 2016 22:56:07 GMT
ENV SOLR_SHA256=7c26601229ed712c639d00882f35304d87e0032028be4754d098a9b694877f48
# Wed, 14 Dec 2016 22:56:08 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.3.2/solr-5.3.2.tgz
# Wed, 14 Dec 2016 22:56:22 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 14 Dec 2016 22:56:25 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Wed, 14 Dec 2016 22:56:26 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 14 Dec 2016 22:56:26 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 22:56:27 GMT
EXPOSE 8983/tcp
# Wed, 14 Dec 2016 22:56:27 GMT
WORKDIR /opt/solr
# Wed, 14 Dec 2016 22:56:28 GMT
USER [solr]
# Wed, 14 Dec 2016 22:56:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 22:56:29 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f126c845f2bcf1db4ec70ad2e3ddd8ef3317c2ff4ace65f98aea4b45caf2ad6`  
		Last Modified: Wed, 21 Dec 2016 20:15:13 GMT  
		Size: 10.1 MB (10080203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537c9646cc918f95ad9d5f56f39ff7930f57dd04c86a0410cc456b42a2c64857`  
		Last Modified: Wed, 21 Dec 2016 20:15:05 GMT  
		Size: 4.6 KB (4633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b2b6482e70243a2e4b235933e3316926de24471e46e04d3f3f04d16deec21fc`  
		Last Modified: Wed, 21 Dec 2016 20:15:05 GMT  
		Size: 8.0 KB (7963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00682f9188758d50cda661c92274109f1340baa071651bcd1d99ce2733ef3af`  
		Last Modified: Wed, 21 Dec 2016 20:15:19 GMT  
		Size: 130.1 MB (130123939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbe51f8bf3d968dbfb914995db3a6e484b25c0e0d01d2a80b4a65f5a8c72b8d5`  
		Last Modified: Wed, 21 Dec 2016 20:15:05 GMT  
		Size: 2.3 KB (2316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac3aa351e43bf35e5513a9c4408fb7185b93df08c56ea03fe0ee214cc4e4172`  
		Last Modified: Wed, 21 Dec 2016 20:15:05 GMT  
		Size: 2.3 KB (2327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.3`

```console
$ docker pull solr@sha256:4cc79f862758098492fcf06ea85c50597d784db4e88f56b567865ceffc5c209e
```

-	Platforms:
	-	linux; amd64

### `solr:5.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.4 MB (264416941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57e5e9f0ea490c5967cc6c25c7b68abd7695396e7bb777bfbd4e90475d65f911`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Dec 2016 22:55:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 14 Dec 2016 22:55:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 14 Dec 2016 22:55:24 GMT
ARG GPG_KEYSERVER
# Wed, 14 Dec 2016 22:55:40 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_USER=solr
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_UID=8983
# Wed, 14 Dec 2016 22:55:42 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 14 Dec 2016 22:55:43 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Wed, 14 Dec 2016 22:55:43 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 14 Dec 2016 22:55:45 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 14 Dec 2016 22:56:07 GMT
ENV SOLR_VERSION=5.3.2
# Wed, 14 Dec 2016 22:56:07 GMT
ENV SOLR_SHA256=7c26601229ed712c639d00882f35304d87e0032028be4754d098a9b694877f48
# Wed, 14 Dec 2016 22:56:08 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.3.2/solr-5.3.2.tgz
# Wed, 14 Dec 2016 22:56:22 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 14 Dec 2016 22:56:25 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Wed, 14 Dec 2016 22:56:26 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 14 Dec 2016 22:56:26 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 22:56:27 GMT
EXPOSE 8983/tcp
# Wed, 14 Dec 2016 22:56:27 GMT
WORKDIR /opt/solr
# Wed, 14 Dec 2016 22:56:28 GMT
USER [solr]
# Wed, 14 Dec 2016 22:56:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 22:56:29 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f126c845f2bcf1db4ec70ad2e3ddd8ef3317c2ff4ace65f98aea4b45caf2ad6`  
		Last Modified: Wed, 21 Dec 2016 20:15:13 GMT  
		Size: 10.1 MB (10080203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537c9646cc918f95ad9d5f56f39ff7930f57dd04c86a0410cc456b42a2c64857`  
		Last Modified: Wed, 21 Dec 2016 20:15:05 GMT  
		Size: 4.6 KB (4633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b2b6482e70243a2e4b235933e3316926de24471e46e04d3f3f04d16deec21fc`  
		Last Modified: Wed, 21 Dec 2016 20:15:05 GMT  
		Size: 8.0 KB (7963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00682f9188758d50cda661c92274109f1340baa071651bcd1d99ce2733ef3af`  
		Last Modified: Wed, 21 Dec 2016 20:15:19 GMT  
		Size: 130.1 MB (130123939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbe51f8bf3d968dbfb914995db3a6e484b25c0e0d01d2a80b4a65f5a8c72b8d5`  
		Last Modified: Wed, 21 Dec 2016 20:15:05 GMT  
		Size: 2.3 KB (2316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac3aa351e43bf35e5513a9c4408fb7185b93df08c56ea03fe0ee214cc4e4172`  
		Last Modified: Wed, 21 Dec 2016 20:15:05 GMT  
		Size: 2.3 KB (2327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.3.2-alpine`

```console
$ docker pull solr@sha256:8769f00ca4ffffec1bbe768ac4e1800f14d93d85c7263188f91f34c076957bf1
```

-	Platforms:
	-	linux; amd64

### `solr:5.3.2-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.6 MB (177648946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15d7fd5971abeb86cbc03ef1becbf58818b934fbb733903e5dbd6db39a7debf0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Thu, 17 Nov 2016 21:47:51 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:52 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 02:40:52 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 18 Nov 2016 02:40:53 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 18 Nov 2016 02:40:53 GMT
ARG GPG_KEYSERVER
# Fri, 18 Nov 2016 02:40:57 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Fri, 18 Nov 2016 02:40:59 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_USER=solr
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_UID=8983
# Fri, 18 Nov 2016 02:41:01 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Fri, 18 Nov 2016 02:41:02 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Fri, 18 Nov 2016 02:41:06 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:41:06 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Fri, 18 Nov 2016 02:41:09 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:41:09 GMT
ENV SOLR_VERSION=5.3.2
# Fri, 18 Nov 2016 02:41:09 GMT
ENV SOLR_SHA256=7c26601229ed712c639d00882f35304d87e0032028be4754d098a9b694877f48
# Fri, 18 Nov 2016 02:41:10 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.3.2/solr-5.3.2.tgz
# Fri, 18 Nov 2016 02:41:25 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 18 Nov 2016 02:41:26 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Fri, 18 Nov 2016 02:41:27 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 18 Nov 2016 02:41:27 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 18 Nov 2016 02:41:28 GMT
EXPOSE 8983/tcp
# Fri, 18 Nov 2016 02:41:28 GMT
WORKDIR /opt/solr
# Fri, 18 Nov 2016 02:41:29 GMT
USER [solr]
# Fri, 18 Nov 2016 02:41:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Nov 2016 02:41:29 GMT
CMD ["solr-foreground"]
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
	-	`sha256:857cbad9cd9a8609720fe041554046e94f0813b64887c3c06eac0c2cfb2be741`  
		Last Modified: Thu, 17 Nov 2016 22:03:51 GMT  
		Size: 39.7 MB (39670171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d9b1c3dec6631bdd2dbce65ff2cec30fa6a5820c444fc449d842f17abd79e0`  
		Last Modified: Fri, 18 Nov 2016 02:51:05 GMT  
		Size: 4.9 MB (4920244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b458e4a80123b468fc589df5cbe96a85de6a94e27708ebf20eea60ec27011ff`  
		Last Modified: Fri, 18 Nov 2016 02:51:03 GMT  
		Size: 607.8 KB (607777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ada25335d1c77b9121be29061039fd774d8f1751184c09ef0ed86466fee0fd`  
		Last Modified: Fri, 18 Nov 2016 02:51:02 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e835ca832c23918bfd3e3d728065eabad33f8fbbe3a334a0469b3cf3cf8ebc00`  
		Last Modified: Fri, 18 Nov 2016 02:51:00 GMT  
		Size: 7.6 KB (7646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5881d990744612c05299a7d90afb1930abdd6b00fab62c034e377d19324fb8ba`  
		Last Modified: Fri, 18 Nov 2016 02:51:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b2574d19c47487417d49d71eb5f1f69321fddbc9eadd952c05efa7e05e2d4d`  
		Last Modified: Fri, 18 Nov 2016 02:51:12 GMT  
		Size: 130.1 MB (130123862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8475e2c6aa561722415ce76382f0b31de69d322680916dd5510ddadd4d79eb`  
		Last Modified: Fri, 18 Nov 2016 02:51:00 GMT  
		Size: 2.3 KB (2320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0c322fdb04bc75006a5faf99e3782aeb9414e8b3c247473578af60258a144d`  
		Last Modified: Fri, 18 Nov 2016 02:51:01 GMT  
		Size: 2.3 KB (2327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.3-alpine`

```console
$ docker pull solr@sha256:8769f00ca4ffffec1bbe768ac4e1800f14d93d85c7263188f91f34c076957bf1
```

-	Platforms:
	-	linux; amd64

### `solr:5.3-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.6 MB (177648946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15d7fd5971abeb86cbc03ef1becbf58818b934fbb733903e5dbd6db39a7debf0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Thu, 17 Nov 2016 21:47:51 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:52 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 02:40:52 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 18 Nov 2016 02:40:53 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 18 Nov 2016 02:40:53 GMT
ARG GPG_KEYSERVER
# Fri, 18 Nov 2016 02:40:57 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Fri, 18 Nov 2016 02:40:59 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_USER=solr
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_UID=8983
# Fri, 18 Nov 2016 02:41:01 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Fri, 18 Nov 2016 02:41:02 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Fri, 18 Nov 2016 02:41:06 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:41:06 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Fri, 18 Nov 2016 02:41:09 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:41:09 GMT
ENV SOLR_VERSION=5.3.2
# Fri, 18 Nov 2016 02:41:09 GMT
ENV SOLR_SHA256=7c26601229ed712c639d00882f35304d87e0032028be4754d098a9b694877f48
# Fri, 18 Nov 2016 02:41:10 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.3.2/solr-5.3.2.tgz
# Fri, 18 Nov 2016 02:41:25 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 18 Nov 2016 02:41:26 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Fri, 18 Nov 2016 02:41:27 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 18 Nov 2016 02:41:27 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 18 Nov 2016 02:41:28 GMT
EXPOSE 8983/tcp
# Fri, 18 Nov 2016 02:41:28 GMT
WORKDIR /opt/solr
# Fri, 18 Nov 2016 02:41:29 GMT
USER [solr]
# Fri, 18 Nov 2016 02:41:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Nov 2016 02:41:29 GMT
CMD ["solr-foreground"]
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
	-	`sha256:857cbad9cd9a8609720fe041554046e94f0813b64887c3c06eac0c2cfb2be741`  
		Last Modified: Thu, 17 Nov 2016 22:03:51 GMT  
		Size: 39.7 MB (39670171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d9b1c3dec6631bdd2dbce65ff2cec30fa6a5820c444fc449d842f17abd79e0`  
		Last Modified: Fri, 18 Nov 2016 02:51:05 GMT  
		Size: 4.9 MB (4920244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b458e4a80123b468fc589df5cbe96a85de6a94e27708ebf20eea60ec27011ff`  
		Last Modified: Fri, 18 Nov 2016 02:51:03 GMT  
		Size: 607.8 KB (607777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ada25335d1c77b9121be29061039fd774d8f1751184c09ef0ed86466fee0fd`  
		Last Modified: Fri, 18 Nov 2016 02:51:02 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e835ca832c23918bfd3e3d728065eabad33f8fbbe3a334a0469b3cf3cf8ebc00`  
		Last Modified: Fri, 18 Nov 2016 02:51:00 GMT  
		Size: 7.6 KB (7646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5881d990744612c05299a7d90afb1930abdd6b00fab62c034e377d19324fb8ba`  
		Last Modified: Fri, 18 Nov 2016 02:51:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b2574d19c47487417d49d71eb5f1f69321fddbc9eadd952c05efa7e05e2d4d`  
		Last Modified: Fri, 18 Nov 2016 02:51:12 GMT  
		Size: 130.1 MB (130123862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8475e2c6aa561722415ce76382f0b31de69d322680916dd5510ddadd4d79eb`  
		Last Modified: Fri, 18 Nov 2016 02:51:00 GMT  
		Size: 2.3 KB (2320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0c322fdb04bc75006a5faf99e3782aeb9414e8b3c247473578af60258a144d`  
		Last Modified: Fri, 18 Nov 2016 02:51:01 GMT  
		Size: 2.3 KB (2327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.4.1`

```console
$ docker pull solr@sha256:9c1a9649716ff3519df545ee9bb0370d786e843330fcf40859ca34be502a45f6
```

-	Platforms:
	-	linux; amd64

### `solr:5.4.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265732789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e73780821c2ebae888a99d63b6159457f9cde83391a29e9510ec013a9817b6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:53:53 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 08 Nov 2016 18:53:53 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 18:53:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 08 Nov 2016 18:53:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 08 Nov 2016 18:53:55 GMT
ENV JAVA_VERSION=8u111
# Tue, 08 Nov 2016 18:53:55 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 08 Nov 2016 18:53:56 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 08 Nov 2016 18:54:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 08 Nov 2016 18:54:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 08 Nov 2016 22:54:56 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 08 Nov 2016 22:54:56 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 08 Nov 2016 22:54:56 GMT
ARG GPG_KEYSERVER
# Tue, 08 Nov 2016 22:55:10 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:55:10 GMT
ENV SOLR_USER=solr
# Tue, 08 Nov 2016 22:55:11 GMT
ENV SOLR_UID=8983
# Tue, 08 Nov 2016 22:55:12 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 08 Nov 2016 22:59:20 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 08 Nov 2016 22:59:21 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 08 Nov 2016 22:59:22 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 08 Nov 2016 22:59:23 GMT
ENV SOLR_VERSION=5.4.1
# Tue, 08 Nov 2016 22:59:23 GMT
ENV SOLR_SHA256=3e4b4ec7bd728b49b2ebc3dbe8f3d1ef89fded4ab86b9e2f856bedd58c99f28b
# Tue, 08 Nov 2016 22:59:24 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.4.1/solr-5.4.1.tgz
# Tue, 08 Nov 2016 22:59:40 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 15 Nov 2016 18:44:04 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Tue, 15 Nov 2016 18:44:05 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 15 Nov 2016 18:44:06 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Nov 2016 18:44:06 GMT
EXPOSE 8983/tcp
# Tue, 15 Nov 2016 18:44:06 GMT
WORKDIR /opt/solr
# Tue, 15 Nov 2016 18:44:07 GMT
USER [solr]
# Tue, 15 Nov 2016 18:44:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Nov 2016 18:44:08 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2e387eb26a1afa07fb24ab119e8680fc80f43a194890da1d1bb21f76e23c5e`  
		Last Modified: Tue, 08 Nov 2016 19:04:01 GMT  
		Size: 566.9 KB (566896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef540699244c02b2a8e14c3b4f335314506cb4b12e15c867535cb20ac429a37`  
		Last Modified: Tue, 08 Nov 2016 19:11:43 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1624a2f8d1142bb2aed22223df10c5416ff37b599ff48c724d23347d37b2b20e`  
		Last Modified: Tue, 08 Nov 2016 19:11:45 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7018f4ec6e0ab2d452cd6ac9600b8cfa25bcd10c603db8ad9107677e9f8fe15e`  
		Last Modified: Tue, 08 Nov 2016 19:12:03 GMT  
		Size: 53.5 MB (53450336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca3bc2ad3b37551550f7c86d23f4e25066740db6d2f99c3ba99c0f9e0a4d3ec`  
		Last Modified: Tue, 08 Nov 2016 19:11:44 GMT  
		Size: 284.2 KB (284177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f336fb5342a3d6df177b51d1a0f55ec8a81f2c5bdd19fd5c76c741643866b199`  
		Last Modified: Tue, 08 Nov 2016 22:55:54 GMT  
		Size: 10.1 MB (10080088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edff34da058d38fbc42c1e4f84bbb97eeafff01575d9846567ca1436a152ef84`  
		Last Modified: Tue, 08 Nov 2016 22:55:47 GMT  
		Size: 4.6 KB (4633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1f18f7c972ebbcf5215c3c8b130bb3b53707a8814deadba5ac2de5f89d41e0`  
		Last Modified: Tue, 08 Nov 2016 22:59:57 GMT  
		Size: 7.4 KB (7395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a602775e9b0a3b8660207dbf8ea5042fe6c894b8231d8187510ec0c627a1f1f`  
		Last Modified: Tue, 08 Nov 2016 23:00:09 GMT  
		Size: 131.4 MB (131448696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d7224103279c31d94314ddf28da630b73b686abb32beb086439b901330d5d5`  
		Last Modified: Tue, 15 Nov 2016 18:47:15 GMT  
		Size: 2.3 KB (2317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1532a69259eff3823b036faf1b1e20451a96355fe5a72d533ccdf714e51eb6`  
		Last Modified: Tue, 15 Nov 2016 18:47:15 GMT  
		Size: 2.3 KB (2326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.4`

```console
$ docker pull solr@sha256:3a73d8655c6eb7b32730a5811bba45342b1ff7e216e926e40e97bb3f36ac7f82
```

-	Platforms:
	-	linux; amd64

### `solr:5.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265741029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca3119b7610878d64e9ebc7cf76b4d44f944a3c7a4ec184c25f9cdf384b4838a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Dec 2016 22:55:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 14 Dec 2016 22:55:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 14 Dec 2016 22:55:24 GMT
ARG GPG_KEYSERVER
# Wed, 14 Dec 2016 22:55:40 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_USER=solr
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_UID=8983
# Wed, 14 Dec 2016 22:55:42 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 14 Dec 2016 22:56:29 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Wed, 14 Dec 2016 22:56:30 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 14 Dec 2016 22:56:32 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 14 Dec 2016 22:56:32 GMT
ENV SOLR_VERSION=5.4.1
# Wed, 14 Dec 2016 22:56:33 GMT
ENV SOLR_SHA256=3e4b4ec7bd728b49b2ebc3dbe8f3d1ef89fded4ab86b9e2f856bedd58c99f28b
# Wed, 14 Dec 2016 22:56:33 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.4.1/solr-5.4.1.tgz
# Wed, 14 Dec 2016 22:56:48 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 14 Dec 2016 22:56:49 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Wed, 14 Dec 2016 22:56:50 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 14 Dec 2016 22:56:50 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 22:56:51 GMT
EXPOSE 8983/tcp
# Wed, 14 Dec 2016 22:56:51 GMT
WORKDIR /opt/solr
# Wed, 14 Dec 2016 22:56:52 GMT
USER [solr]
# Wed, 14 Dec 2016 22:56:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 22:56:53 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f126c845f2bcf1db4ec70ad2e3ddd8ef3317c2ff4ace65f98aea4b45caf2ad6`  
		Last Modified: Wed, 21 Dec 2016 20:15:13 GMT  
		Size: 10.1 MB (10080203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537c9646cc918f95ad9d5f56f39ff7930f57dd04c86a0410cc456b42a2c64857`  
		Last Modified: Wed, 21 Dec 2016 20:15:05 GMT  
		Size: 4.6 KB (4633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa40e04313f51209c08a794db8c22c1d79bb85f72962711fb1006a4c3dab06b1`  
		Last Modified: Wed, 21 Dec 2016 20:16:05 GMT  
		Size: 7.4 KB (7398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046d25580b38291880eaf43341f81adb910cce1ada12caf5ff3d6dc3749a8e04`  
		Last Modified: Wed, 21 Dec 2016 20:16:18 GMT  
		Size: 131.4 MB (131448591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9844ad054b6a08ea02175663835fb62878ed6093b0daf822c3d04f4945b2c5ed`  
		Last Modified: Wed, 21 Dec 2016 20:16:04 GMT  
		Size: 2.3 KB (2319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e656c9e086d216886e8a2607a02a89afb91df55f1833f501b47871eb0f45a4a5`  
		Last Modified: Wed, 21 Dec 2016 20:16:04 GMT  
		Size: 2.3 KB (2325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.4.1-alpine`

```console
$ docker pull solr@sha256:ada8d52879bb34e1e04e978072a6affdca0b97939fe46c849e9ab659cede2eae
```

-	Platforms:
	-	linux; amd64

### `solr:5.4.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (178973174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b996d4a5aa56f5d76570a22c98f8b1e56760c02abe5afde50241e1273fb4cd01`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Thu, 17 Nov 2016 21:47:51 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:52 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 02:40:52 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 18 Nov 2016 02:40:53 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 18 Nov 2016 02:40:53 GMT
ARG GPG_KEYSERVER
# Fri, 18 Nov 2016 02:40:57 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Fri, 18 Nov 2016 02:40:59 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_USER=solr
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_UID=8983
# Fri, 18 Nov 2016 02:41:01 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Fri, 18 Nov 2016 02:41:30 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Fri, 18 Nov 2016 02:41:34 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:41:34 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Fri, 18 Nov 2016 02:41:37 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:41:37 GMT
ENV SOLR_VERSION=5.4.1
# Fri, 18 Nov 2016 02:41:38 GMT
ENV SOLR_SHA256=3e4b4ec7bd728b49b2ebc3dbe8f3d1ef89fded4ab86b9e2f856bedd58c99f28b
# Fri, 18 Nov 2016 02:41:38 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.4.1/solr-5.4.1.tgz
# Fri, 18 Nov 2016 02:48:21 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 18 Nov 2016 02:48:21 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Fri, 18 Nov 2016 02:48:22 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 18 Nov 2016 02:48:23 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 18 Nov 2016 02:48:23 GMT
EXPOSE 8983/tcp
# Fri, 18 Nov 2016 02:48:23 GMT
WORKDIR /opt/solr
# Fri, 18 Nov 2016 02:48:24 GMT
USER [solr]
# Fri, 18 Nov 2016 02:48:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Nov 2016 02:48:24 GMT
CMD ["solr-foreground"]
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
	-	`sha256:857cbad9cd9a8609720fe041554046e94f0813b64887c3c06eac0c2cfb2be741`  
		Last Modified: Thu, 17 Nov 2016 22:03:51 GMT  
		Size: 39.7 MB (39670171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d9b1c3dec6631bdd2dbce65ff2cec30fa6a5820c444fc449d842f17abd79e0`  
		Last Modified: Fri, 18 Nov 2016 02:51:05 GMT  
		Size: 4.9 MB (4920244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b458e4a80123b468fc589df5cbe96a85de6a94e27708ebf20eea60ec27011ff`  
		Last Modified: Fri, 18 Nov 2016 02:51:03 GMT  
		Size: 607.8 KB (607777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ada25335d1c77b9121be29061039fd774d8f1751184c09ef0ed86466fee0fd`  
		Last Modified: Fri, 18 Nov 2016 02:51:02 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a948d02de2495cab45674d88cdeced7fb67782788f469f187db9484a099678d8`  
		Last Modified: Fri, 18 Nov 2016 02:52:24 GMT  
		Size: 7.1 KB (7087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c53f577c6d1c03fadde3f5f1c84ae00bfb51ead8676416e90d5e0ca63a374c`  
		Last Modified: Fri, 18 Nov 2016 02:52:23 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5572df76473e3f0532f9ae5eeeecea64ae03c9cbf1455325c4dd9e16746b1d`  
		Last Modified: Fri, 18 Nov 2016 02:52:35 GMT  
		Size: 131.4 MB (131448654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:264fa410158c74deb9511b0bc34e85f747438cd14523fccddb0d1986937904ca`  
		Last Modified: Fri, 18 Nov 2016 02:52:24 GMT  
		Size: 2.3 KB (2317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55871dadcea9aef0965962606ee0698032b0c87259952e304fe7ca7604d660b6`  
		Last Modified: Fri, 18 Nov 2016 02:52:23 GMT  
		Size: 2.3 KB (2325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.4-alpine`

```console
$ docker pull solr@sha256:ada8d52879bb34e1e04e978072a6affdca0b97939fe46c849e9ab659cede2eae
```

-	Platforms:
	-	linux; amd64

### `solr:5.4-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (178973174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b996d4a5aa56f5d76570a22c98f8b1e56760c02abe5afde50241e1273fb4cd01`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Thu, 17 Nov 2016 21:47:51 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:52 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 02:40:52 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 18 Nov 2016 02:40:53 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 18 Nov 2016 02:40:53 GMT
ARG GPG_KEYSERVER
# Fri, 18 Nov 2016 02:40:57 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Fri, 18 Nov 2016 02:40:59 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_USER=solr
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_UID=8983
# Fri, 18 Nov 2016 02:41:01 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Fri, 18 Nov 2016 02:41:30 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Fri, 18 Nov 2016 02:41:34 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:41:34 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Fri, 18 Nov 2016 02:41:37 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:41:37 GMT
ENV SOLR_VERSION=5.4.1
# Fri, 18 Nov 2016 02:41:38 GMT
ENV SOLR_SHA256=3e4b4ec7bd728b49b2ebc3dbe8f3d1ef89fded4ab86b9e2f856bedd58c99f28b
# Fri, 18 Nov 2016 02:41:38 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.4.1/solr-5.4.1.tgz
# Fri, 18 Nov 2016 02:48:21 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 18 Nov 2016 02:48:21 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Fri, 18 Nov 2016 02:48:22 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 18 Nov 2016 02:48:23 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 18 Nov 2016 02:48:23 GMT
EXPOSE 8983/tcp
# Fri, 18 Nov 2016 02:48:23 GMT
WORKDIR /opt/solr
# Fri, 18 Nov 2016 02:48:24 GMT
USER [solr]
# Fri, 18 Nov 2016 02:48:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Nov 2016 02:48:24 GMT
CMD ["solr-foreground"]
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
	-	`sha256:857cbad9cd9a8609720fe041554046e94f0813b64887c3c06eac0c2cfb2be741`  
		Last Modified: Thu, 17 Nov 2016 22:03:51 GMT  
		Size: 39.7 MB (39670171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d9b1c3dec6631bdd2dbce65ff2cec30fa6a5820c444fc449d842f17abd79e0`  
		Last Modified: Fri, 18 Nov 2016 02:51:05 GMT  
		Size: 4.9 MB (4920244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b458e4a80123b468fc589df5cbe96a85de6a94e27708ebf20eea60ec27011ff`  
		Last Modified: Fri, 18 Nov 2016 02:51:03 GMT  
		Size: 607.8 KB (607777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ada25335d1c77b9121be29061039fd774d8f1751184c09ef0ed86466fee0fd`  
		Last Modified: Fri, 18 Nov 2016 02:51:02 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a948d02de2495cab45674d88cdeced7fb67782788f469f187db9484a099678d8`  
		Last Modified: Fri, 18 Nov 2016 02:52:24 GMT  
		Size: 7.1 KB (7087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c53f577c6d1c03fadde3f5f1c84ae00bfb51ead8676416e90d5e0ca63a374c`  
		Last Modified: Fri, 18 Nov 2016 02:52:23 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5572df76473e3f0532f9ae5eeeecea64ae03c9cbf1455325c4dd9e16746b1d`  
		Last Modified: Fri, 18 Nov 2016 02:52:35 GMT  
		Size: 131.4 MB (131448654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:264fa410158c74deb9511b0bc34e85f747438cd14523fccddb0d1986937904ca`  
		Last Modified: Fri, 18 Nov 2016 02:52:24 GMT  
		Size: 2.3 KB (2317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55871dadcea9aef0965962606ee0698032b0c87259952e304fe7ca7604d660b6`  
		Last Modified: Fri, 18 Nov 2016 02:52:23 GMT  
		Size: 2.3 KB (2325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5.3`

```console
$ docker pull solr@sha256:9d294f3e02ff8e41597d93145246c761d506e7b355f896f597e5d2f0e18418a0
```

-	Platforms:
	-	linux; amd64

### `solr:5.5.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266137472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36a0f61607ac9d766d3029dd5f82e20258a28edb3b3af4f260d5e57eb26f49f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Dec 2016 22:55:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 14 Dec 2016 22:55:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 14 Dec 2016 22:55:24 GMT
ARG GPG_KEYSERVER
# Wed, 14 Dec 2016 22:55:40 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_USER=solr
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_UID=8983
# Wed, 14 Dec 2016 22:55:42 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 14 Dec 2016 22:55:43 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Wed, 14 Dec 2016 22:55:43 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 14 Dec 2016 22:55:45 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 14 Dec 2016 22:55:46 GMT
ENV SOLR_VERSION=5.5.3
# Wed, 14 Dec 2016 22:55:46 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Wed, 14 Dec 2016 22:55:46 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Wed, 14 Dec 2016 22:56:01 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 14 Dec 2016 22:56:02 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Wed, 14 Dec 2016 22:56:03 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 14 Dec 2016 22:56:04 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 22:56:04 GMT
EXPOSE 8983/tcp
# Wed, 14 Dec 2016 22:56:05 GMT
WORKDIR /opt/solr
# Wed, 14 Dec 2016 22:56:05 GMT
USER [solr]
# Wed, 14 Dec 2016 22:56:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 22:56:06 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f126c845f2bcf1db4ec70ad2e3ddd8ef3317c2ff4ace65f98aea4b45caf2ad6`  
		Last Modified: Wed, 21 Dec 2016 20:15:13 GMT  
		Size: 10.1 MB (10080203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537c9646cc918f95ad9d5f56f39ff7930f57dd04c86a0410cc456b42a2c64857`  
		Last Modified: Wed, 21 Dec 2016 20:15:05 GMT  
		Size: 4.6 KB (4633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b2b6482e70243a2e4b235933e3316926de24471e46e04d3f3f04d16deec21fc`  
		Last Modified: Wed, 21 Dec 2016 20:15:05 GMT  
		Size: 8.0 KB (7963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:954d384735d1a49a177163ff7b5f316359989c432853d078a276e41b7621349a`  
		Last Modified: Wed, 21 Dec 2016 20:17:13 GMT  
		Size: 131.8 MB (131844466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca127f864ee9e8805986adefb8bb9598c7f0659f03d13ca2b8a3ac3762774a3`  
		Last Modified: Wed, 21 Dec 2016 20:17:01 GMT  
		Size: 2.3 KB (2321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe0119a1d4941a62459e4b12d7af1d82325d7f68eede1009c96d0e8ac344e0b`  
		Last Modified: Wed, 21 Dec 2016 20:17:00 GMT  
		Size: 2.3 KB (2326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5`

```console
$ docker pull solr@sha256:9d294f3e02ff8e41597d93145246c761d506e7b355f896f597e5d2f0e18418a0
```

-	Platforms:
	-	linux; amd64

### `solr:5.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266137472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36a0f61607ac9d766d3029dd5f82e20258a28edb3b3af4f260d5e57eb26f49f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Dec 2016 22:55:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 14 Dec 2016 22:55:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 14 Dec 2016 22:55:24 GMT
ARG GPG_KEYSERVER
# Wed, 14 Dec 2016 22:55:40 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_USER=solr
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_UID=8983
# Wed, 14 Dec 2016 22:55:42 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 14 Dec 2016 22:55:43 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Wed, 14 Dec 2016 22:55:43 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 14 Dec 2016 22:55:45 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 14 Dec 2016 22:55:46 GMT
ENV SOLR_VERSION=5.5.3
# Wed, 14 Dec 2016 22:55:46 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Wed, 14 Dec 2016 22:55:46 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Wed, 14 Dec 2016 22:56:01 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 14 Dec 2016 22:56:02 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Wed, 14 Dec 2016 22:56:03 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 14 Dec 2016 22:56:04 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 22:56:04 GMT
EXPOSE 8983/tcp
# Wed, 14 Dec 2016 22:56:05 GMT
WORKDIR /opt/solr
# Wed, 14 Dec 2016 22:56:05 GMT
USER [solr]
# Wed, 14 Dec 2016 22:56:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 22:56:06 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f126c845f2bcf1db4ec70ad2e3ddd8ef3317c2ff4ace65f98aea4b45caf2ad6`  
		Last Modified: Wed, 21 Dec 2016 20:15:13 GMT  
		Size: 10.1 MB (10080203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537c9646cc918f95ad9d5f56f39ff7930f57dd04c86a0410cc456b42a2c64857`  
		Last Modified: Wed, 21 Dec 2016 20:15:05 GMT  
		Size: 4.6 KB (4633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b2b6482e70243a2e4b235933e3316926de24471e46e04d3f3f04d16deec21fc`  
		Last Modified: Wed, 21 Dec 2016 20:15:05 GMT  
		Size: 8.0 KB (7963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:954d384735d1a49a177163ff7b5f316359989c432853d078a276e41b7621349a`  
		Last Modified: Wed, 21 Dec 2016 20:17:13 GMT  
		Size: 131.8 MB (131844466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca127f864ee9e8805986adefb8bb9598c7f0659f03d13ca2b8a3ac3762774a3`  
		Last Modified: Wed, 21 Dec 2016 20:17:01 GMT  
		Size: 2.3 KB (2321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe0119a1d4941a62459e4b12d7af1d82325d7f68eede1009c96d0e8ac344e0b`  
		Last Modified: Wed, 21 Dec 2016 20:17:00 GMT  
		Size: 2.3 KB (2326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5`

```console
$ docker pull solr@sha256:9d294f3e02ff8e41597d93145246c761d506e7b355f896f597e5d2f0e18418a0
```

-	Platforms:
	-	linux; amd64

### `solr:5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266137472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36a0f61607ac9d766d3029dd5f82e20258a28edb3b3af4f260d5e57eb26f49f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Dec 2016 22:55:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 14 Dec 2016 22:55:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 14 Dec 2016 22:55:24 GMT
ARG GPG_KEYSERVER
# Wed, 14 Dec 2016 22:55:40 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_USER=solr
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_UID=8983
# Wed, 14 Dec 2016 22:55:42 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 14 Dec 2016 22:55:43 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Wed, 14 Dec 2016 22:55:43 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 14 Dec 2016 22:55:45 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 14 Dec 2016 22:55:46 GMT
ENV SOLR_VERSION=5.5.3
# Wed, 14 Dec 2016 22:55:46 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Wed, 14 Dec 2016 22:55:46 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Wed, 14 Dec 2016 22:56:01 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 14 Dec 2016 22:56:02 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Wed, 14 Dec 2016 22:56:03 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 14 Dec 2016 22:56:04 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 22:56:04 GMT
EXPOSE 8983/tcp
# Wed, 14 Dec 2016 22:56:05 GMT
WORKDIR /opt/solr
# Wed, 14 Dec 2016 22:56:05 GMT
USER [solr]
# Wed, 14 Dec 2016 22:56:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 22:56:06 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f126c845f2bcf1db4ec70ad2e3ddd8ef3317c2ff4ace65f98aea4b45caf2ad6`  
		Last Modified: Wed, 21 Dec 2016 20:15:13 GMT  
		Size: 10.1 MB (10080203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537c9646cc918f95ad9d5f56f39ff7930f57dd04c86a0410cc456b42a2c64857`  
		Last Modified: Wed, 21 Dec 2016 20:15:05 GMT  
		Size: 4.6 KB (4633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b2b6482e70243a2e4b235933e3316926de24471e46e04d3f3f04d16deec21fc`  
		Last Modified: Wed, 21 Dec 2016 20:15:05 GMT  
		Size: 8.0 KB (7963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:954d384735d1a49a177163ff7b5f316359989c432853d078a276e41b7621349a`  
		Last Modified: Wed, 21 Dec 2016 20:17:13 GMT  
		Size: 131.8 MB (131844466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca127f864ee9e8805986adefb8bb9598c7f0659f03d13ca2b8a3ac3762774a3`  
		Last Modified: Wed, 21 Dec 2016 20:17:01 GMT  
		Size: 2.3 KB (2321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe0119a1d4941a62459e4b12d7af1d82325d7f68eede1009c96d0e8ac344e0b`  
		Last Modified: Wed, 21 Dec 2016 20:17:00 GMT  
		Size: 2.3 KB (2326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5.3-alpine`

```console
$ docker pull solr@sha256:6e5c165f8e79424b77bc30beade39f2e4d784f1c65648251d9724eea4be198c6
```

-	Platforms:
	-	linux; amd64

### `solr:5.5.3-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.4 MB (179369526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f13e87bd337b92a2b4773122bcc55bb30396f834299b895d7d8e50f4392d84b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Thu, 17 Nov 2016 21:47:51 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:52 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 02:40:52 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 18 Nov 2016 02:40:53 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 18 Nov 2016 02:40:53 GMT
ARG GPG_KEYSERVER
# Fri, 18 Nov 2016 02:40:57 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Fri, 18 Nov 2016 02:40:59 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_USER=solr
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_UID=8983
# Fri, 18 Nov 2016 02:41:01 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Fri, 18 Nov 2016 02:41:02 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Fri, 18 Nov 2016 02:41:06 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:41:06 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Fri, 18 Nov 2016 02:41:09 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:48:25 GMT
ENV SOLR_VERSION=5.5.3
# Fri, 18 Nov 2016 02:48:25 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Fri, 18 Nov 2016 02:48:25 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Fri, 18 Nov 2016 02:48:40 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 18 Nov 2016 02:48:41 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Fri, 18 Nov 2016 02:48:42 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 18 Nov 2016 02:48:42 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 18 Nov 2016 02:48:42 GMT
EXPOSE 8983/tcp
# Fri, 18 Nov 2016 02:48:43 GMT
WORKDIR /opt/solr
# Fri, 18 Nov 2016 02:48:43 GMT
USER [solr]
# Fri, 18 Nov 2016 02:48:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Nov 2016 02:48:43 GMT
CMD ["solr-foreground"]
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
	-	`sha256:857cbad9cd9a8609720fe041554046e94f0813b64887c3c06eac0c2cfb2be741`  
		Last Modified: Thu, 17 Nov 2016 22:03:51 GMT  
		Size: 39.7 MB (39670171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d9b1c3dec6631bdd2dbce65ff2cec30fa6a5820c444fc449d842f17abd79e0`  
		Last Modified: Fri, 18 Nov 2016 02:51:05 GMT  
		Size: 4.9 MB (4920244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b458e4a80123b468fc589df5cbe96a85de6a94e27708ebf20eea60ec27011ff`  
		Last Modified: Fri, 18 Nov 2016 02:51:03 GMT  
		Size: 607.8 KB (607777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ada25335d1c77b9121be29061039fd774d8f1751184c09ef0ed86466fee0fd`  
		Last Modified: Fri, 18 Nov 2016 02:51:02 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e835ca832c23918bfd3e3d728065eabad33f8fbbe3a334a0469b3cf3cf8ebc00`  
		Last Modified: Fri, 18 Nov 2016 02:51:00 GMT  
		Size: 7.6 KB (7646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5881d990744612c05299a7d90afb1930abdd6b00fab62c034e377d19324fb8ba`  
		Last Modified: Fri, 18 Nov 2016 02:51:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e0b40d01cfcb9973c42010680960437629b40b6a1174191801cb55093be848`  
		Last Modified: Fri, 18 Nov 2016 02:54:25 GMT  
		Size: 131.8 MB (131844443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cf764ff7cf93a94b0ce17fb88d6b08fe6753401d4f545d325c80d67210b90e`  
		Last Modified: Fri, 18 Nov 2016 02:53:56 GMT  
		Size: 2.3 KB (2318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d8c1dc88b9658c6c2cb941aa19b405c9724045b40e6a19342a543127a8a4fc`  
		Last Modified: Fri, 18 Nov 2016 02:53:55 GMT  
		Size: 2.3 KB (2328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5-alpine`

```console
$ docker pull solr@sha256:6e5c165f8e79424b77bc30beade39f2e4d784f1c65648251d9724eea4be198c6
```

-	Platforms:
	-	linux; amd64

### `solr:5.5-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.4 MB (179369526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f13e87bd337b92a2b4773122bcc55bb30396f834299b895d7d8e50f4392d84b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Thu, 17 Nov 2016 21:47:51 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:52 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 02:40:52 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 18 Nov 2016 02:40:53 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 18 Nov 2016 02:40:53 GMT
ARG GPG_KEYSERVER
# Fri, 18 Nov 2016 02:40:57 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Fri, 18 Nov 2016 02:40:59 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_USER=solr
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_UID=8983
# Fri, 18 Nov 2016 02:41:01 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Fri, 18 Nov 2016 02:41:02 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Fri, 18 Nov 2016 02:41:06 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:41:06 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Fri, 18 Nov 2016 02:41:09 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:48:25 GMT
ENV SOLR_VERSION=5.5.3
# Fri, 18 Nov 2016 02:48:25 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Fri, 18 Nov 2016 02:48:25 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Fri, 18 Nov 2016 02:48:40 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 18 Nov 2016 02:48:41 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Fri, 18 Nov 2016 02:48:42 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 18 Nov 2016 02:48:42 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 18 Nov 2016 02:48:42 GMT
EXPOSE 8983/tcp
# Fri, 18 Nov 2016 02:48:43 GMT
WORKDIR /opt/solr
# Fri, 18 Nov 2016 02:48:43 GMT
USER [solr]
# Fri, 18 Nov 2016 02:48:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Nov 2016 02:48:43 GMT
CMD ["solr-foreground"]
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
	-	`sha256:857cbad9cd9a8609720fe041554046e94f0813b64887c3c06eac0c2cfb2be741`  
		Last Modified: Thu, 17 Nov 2016 22:03:51 GMT  
		Size: 39.7 MB (39670171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d9b1c3dec6631bdd2dbce65ff2cec30fa6a5820c444fc449d842f17abd79e0`  
		Last Modified: Fri, 18 Nov 2016 02:51:05 GMT  
		Size: 4.9 MB (4920244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b458e4a80123b468fc589df5cbe96a85de6a94e27708ebf20eea60ec27011ff`  
		Last Modified: Fri, 18 Nov 2016 02:51:03 GMT  
		Size: 607.8 KB (607777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ada25335d1c77b9121be29061039fd774d8f1751184c09ef0ed86466fee0fd`  
		Last Modified: Fri, 18 Nov 2016 02:51:02 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e835ca832c23918bfd3e3d728065eabad33f8fbbe3a334a0469b3cf3cf8ebc00`  
		Last Modified: Fri, 18 Nov 2016 02:51:00 GMT  
		Size: 7.6 KB (7646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5881d990744612c05299a7d90afb1930abdd6b00fab62c034e377d19324fb8ba`  
		Last Modified: Fri, 18 Nov 2016 02:51:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e0b40d01cfcb9973c42010680960437629b40b6a1174191801cb55093be848`  
		Last Modified: Fri, 18 Nov 2016 02:54:25 GMT  
		Size: 131.8 MB (131844443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cf764ff7cf93a94b0ce17fb88d6b08fe6753401d4f545d325c80d67210b90e`  
		Last Modified: Fri, 18 Nov 2016 02:53:56 GMT  
		Size: 2.3 KB (2318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d8c1dc88b9658c6c2cb941aa19b405c9724045b40e6a19342a543127a8a4fc`  
		Last Modified: Fri, 18 Nov 2016 02:53:55 GMT  
		Size: 2.3 KB (2328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5-alpine`

```console
$ docker pull solr@sha256:6e5c165f8e79424b77bc30beade39f2e4d784f1c65648251d9724eea4be198c6
```

-	Platforms:
	-	linux; amd64

### `solr:5-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.4 MB (179369526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f13e87bd337b92a2b4773122bcc55bb30396f834299b895d7d8e50f4392d84b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Thu, 17 Nov 2016 21:47:51 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:52 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 02:40:52 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 18 Nov 2016 02:40:53 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 18 Nov 2016 02:40:53 GMT
ARG GPG_KEYSERVER
# Fri, 18 Nov 2016 02:40:57 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Fri, 18 Nov 2016 02:40:59 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_USER=solr
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_UID=8983
# Fri, 18 Nov 2016 02:41:01 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Fri, 18 Nov 2016 02:41:02 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Fri, 18 Nov 2016 02:41:06 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:41:06 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Fri, 18 Nov 2016 02:41:09 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:48:25 GMT
ENV SOLR_VERSION=5.5.3
# Fri, 18 Nov 2016 02:48:25 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Fri, 18 Nov 2016 02:48:25 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Fri, 18 Nov 2016 02:48:40 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 18 Nov 2016 02:48:41 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Fri, 18 Nov 2016 02:48:42 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 18 Nov 2016 02:48:42 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 18 Nov 2016 02:48:42 GMT
EXPOSE 8983/tcp
# Fri, 18 Nov 2016 02:48:43 GMT
WORKDIR /opt/solr
# Fri, 18 Nov 2016 02:48:43 GMT
USER [solr]
# Fri, 18 Nov 2016 02:48:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Nov 2016 02:48:43 GMT
CMD ["solr-foreground"]
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
	-	`sha256:857cbad9cd9a8609720fe041554046e94f0813b64887c3c06eac0c2cfb2be741`  
		Last Modified: Thu, 17 Nov 2016 22:03:51 GMT  
		Size: 39.7 MB (39670171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d9b1c3dec6631bdd2dbce65ff2cec30fa6a5820c444fc449d842f17abd79e0`  
		Last Modified: Fri, 18 Nov 2016 02:51:05 GMT  
		Size: 4.9 MB (4920244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b458e4a80123b468fc589df5cbe96a85de6a94e27708ebf20eea60ec27011ff`  
		Last Modified: Fri, 18 Nov 2016 02:51:03 GMT  
		Size: 607.8 KB (607777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ada25335d1c77b9121be29061039fd774d8f1751184c09ef0ed86466fee0fd`  
		Last Modified: Fri, 18 Nov 2016 02:51:02 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e835ca832c23918bfd3e3d728065eabad33f8fbbe3a334a0469b3cf3cf8ebc00`  
		Last Modified: Fri, 18 Nov 2016 02:51:00 GMT  
		Size: 7.6 KB (7646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5881d990744612c05299a7d90afb1930abdd6b00fab62c034e377d19324fb8ba`  
		Last Modified: Fri, 18 Nov 2016 02:51:00 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e0b40d01cfcb9973c42010680960437629b40b6a1174191801cb55093be848`  
		Last Modified: Fri, 18 Nov 2016 02:54:25 GMT  
		Size: 131.8 MB (131844443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cf764ff7cf93a94b0ce17fb88d6b08fe6753401d4f545d325c80d67210b90e`  
		Last Modified: Fri, 18 Nov 2016 02:53:56 GMT  
		Size: 2.3 KB (2318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d8c1dc88b9658c6c2cb941aa19b405c9724045b40e6a19342a543127a8a4fc`  
		Last Modified: Fri, 18 Nov 2016 02:53:55 GMT  
		Size: 2.3 KB (2328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.0.1`

```console
$ docker pull solr@sha256:593ab16708520581aa30ed7c2e05868aa81d65684fb80856758f8bf37fe46675
```

-	Platforms:
	-	linux; amd64

### `solr:6.0.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267086770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5963ca61fe2e112fa70266ea784946f7d799307dec2cfb248bfd3604b2c3753c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Dec 2016 22:55:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 14 Dec 2016 22:55:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 14 Dec 2016 22:55:24 GMT
ARG GPG_KEYSERVER
# Wed, 14 Dec 2016 22:55:40 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_USER=solr
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_UID=8983
# Wed, 14 Dec 2016 22:55:42 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 14 Dec 2016 23:01:03 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Wed, 14 Dec 2016 23:01:03 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 14 Dec 2016 23:01:05 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 14 Dec 2016 23:01:05 GMT
ENV SOLR_VERSION=6.0.1
# Wed, 14 Dec 2016 23:01:06 GMT
ENV SOLR_SHA256=4fd25942f0b8083a2499e1dc606c6dd29e4b520c28a16a2d82111088126d43af
# Wed, 14 Dec 2016 23:01:06 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.0.1/solr-6.0.1.tgz
# Wed, 14 Dec 2016 23:01:21 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 14 Dec 2016 23:01:22 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Wed, 14 Dec 2016 23:01:23 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 14 Dec 2016 23:01:24 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 23:01:24 GMT
EXPOSE 8983/tcp
# Wed, 14 Dec 2016 23:01:25 GMT
WORKDIR /opt/solr
# Wed, 14 Dec 2016 23:01:25 GMT
USER [solr]
# Wed, 14 Dec 2016 23:01:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 23:01:26 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f126c845f2bcf1db4ec70ad2e3ddd8ef3317c2ff4ace65f98aea4b45caf2ad6`  
		Last Modified: Wed, 21 Dec 2016 20:15:13 GMT  
		Size: 10.1 MB (10080203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537c9646cc918f95ad9d5f56f39ff7930f57dd04c86a0410cc456b42a2c64857`  
		Last Modified: Wed, 21 Dec 2016 20:15:05 GMT  
		Size: 4.6 KB (4633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad098c31f0f2f8bc17b10ac978a0ab9f5dff255c21ba82af62c2c67f96ae7e6e`  
		Last Modified: Wed, 21 Dec 2016 20:18:09 GMT  
		Size: 14.6 KB (14555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3c475f3a86ec408a53ca9811e46eb7978ca0c78103d5fcbd202db6527bd4d7`  
		Last Modified: Wed, 21 Dec 2016 20:18:22 GMT  
		Size: 132.8 MB (132787170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297fae15174616e9a08a28c4a9564093f09cd5a2b3adde95e5bc456d6bd0c714`  
		Last Modified: Wed, 21 Dec 2016 20:18:08 GMT  
		Size: 2.3 KB (2321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6bc6e28eea72f3aa444e4653ea274ee6ca4fa0fc27b9bdf0af00aa2a648d47f`  
		Last Modified: Wed, 21 Dec 2016 20:18:08 GMT  
		Size: 2.3 KB (2328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.0`

```console
$ docker pull solr@sha256:593ab16708520581aa30ed7c2e05868aa81d65684fb80856758f8bf37fe46675
```

-	Platforms:
	-	linux; amd64

### `solr:6.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267086770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5963ca61fe2e112fa70266ea784946f7d799307dec2cfb248bfd3604b2c3753c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Dec 2016 22:55:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 14 Dec 2016 22:55:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 14 Dec 2016 22:55:24 GMT
ARG GPG_KEYSERVER
# Wed, 14 Dec 2016 22:55:40 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_USER=solr
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_UID=8983
# Wed, 14 Dec 2016 22:55:42 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 14 Dec 2016 23:01:03 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Wed, 14 Dec 2016 23:01:03 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 14 Dec 2016 23:01:05 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 14 Dec 2016 23:01:05 GMT
ENV SOLR_VERSION=6.0.1
# Wed, 14 Dec 2016 23:01:06 GMT
ENV SOLR_SHA256=4fd25942f0b8083a2499e1dc606c6dd29e4b520c28a16a2d82111088126d43af
# Wed, 14 Dec 2016 23:01:06 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.0.1/solr-6.0.1.tgz
# Wed, 14 Dec 2016 23:01:21 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 14 Dec 2016 23:01:22 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Wed, 14 Dec 2016 23:01:23 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 14 Dec 2016 23:01:24 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 23:01:24 GMT
EXPOSE 8983/tcp
# Wed, 14 Dec 2016 23:01:25 GMT
WORKDIR /opt/solr
# Wed, 14 Dec 2016 23:01:25 GMT
USER [solr]
# Wed, 14 Dec 2016 23:01:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 23:01:26 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f126c845f2bcf1db4ec70ad2e3ddd8ef3317c2ff4ace65f98aea4b45caf2ad6`  
		Last Modified: Wed, 21 Dec 2016 20:15:13 GMT  
		Size: 10.1 MB (10080203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537c9646cc918f95ad9d5f56f39ff7930f57dd04c86a0410cc456b42a2c64857`  
		Last Modified: Wed, 21 Dec 2016 20:15:05 GMT  
		Size: 4.6 KB (4633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad098c31f0f2f8bc17b10ac978a0ab9f5dff255c21ba82af62c2c67f96ae7e6e`  
		Last Modified: Wed, 21 Dec 2016 20:18:09 GMT  
		Size: 14.6 KB (14555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3c475f3a86ec408a53ca9811e46eb7978ca0c78103d5fcbd202db6527bd4d7`  
		Last Modified: Wed, 21 Dec 2016 20:18:22 GMT  
		Size: 132.8 MB (132787170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297fae15174616e9a08a28c4a9564093f09cd5a2b3adde95e5bc456d6bd0c714`  
		Last Modified: Wed, 21 Dec 2016 20:18:08 GMT  
		Size: 2.3 KB (2321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6bc6e28eea72f3aa444e4653ea274ee6ca4fa0fc27b9bdf0af00aa2a648d47f`  
		Last Modified: Wed, 21 Dec 2016 20:18:08 GMT  
		Size: 2.3 KB (2328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.0.1-alpine`

```console
$ docker pull solr@sha256:c77a140b55c2b5f856b8505e94d0e1eb98bf29e94a013b64e0e950c8c6d662d4
```

-	Platforms:
	-	linux; amd64

### `solr:6.0.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.3 MB (180318550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ea935329cd83515a9bfb6fcabbede475c6b17f58e68779948ca5df75a375403`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Thu, 17 Nov 2016 21:47:51 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:52 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 02:40:52 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 18 Nov 2016 02:40:53 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 18 Nov 2016 02:40:53 GMT
ARG GPG_KEYSERVER
# Fri, 18 Nov 2016 02:40:57 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Fri, 18 Nov 2016 02:40:59 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_USER=solr
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_UID=8983
# Fri, 18 Nov 2016 02:41:01 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Fri, 18 Nov 2016 02:48:44 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Fri, 18 Nov 2016 02:48:48 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:48:49 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Fri, 18 Nov 2016 02:48:51 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:48:51 GMT
ENV SOLR_VERSION=6.0.1
# Fri, 18 Nov 2016 02:48:52 GMT
ENV SOLR_SHA256=4fd25942f0b8083a2499e1dc606c6dd29e4b520c28a16a2d82111088126d43af
# Fri, 18 Nov 2016 02:48:52 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.0.1/solr-6.0.1.tgz
# Fri, 18 Nov 2016 02:49:07 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 18 Nov 2016 02:49:07 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Fri, 18 Nov 2016 02:49:08 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 18 Nov 2016 02:49:08 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 18 Nov 2016 02:49:09 GMT
EXPOSE 8983/tcp
# Fri, 18 Nov 2016 02:49:09 GMT
WORKDIR /opt/solr
# Fri, 18 Nov 2016 02:49:09 GMT
USER [solr]
# Fri, 18 Nov 2016 02:49:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Nov 2016 02:49:10 GMT
CMD ["solr-foreground"]
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
	-	`sha256:857cbad9cd9a8609720fe041554046e94f0813b64887c3c06eac0c2cfb2be741`  
		Last Modified: Thu, 17 Nov 2016 22:03:51 GMT  
		Size: 39.7 MB (39670171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d9b1c3dec6631bdd2dbce65ff2cec30fa6a5820c444fc449d842f17abd79e0`  
		Last Modified: Fri, 18 Nov 2016 02:51:05 GMT  
		Size: 4.9 MB (4920244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b458e4a80123b468fc589df5cbe96a85de6a94e27708ebf20eea60ec27011ff`  
		Last Modified: Fri, 18 Nov 2016 02:51:03 GMT  
		Size: 607.8 KB (607777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ada25335d1c77b9121be29061039fd774d8f1751184c09ef0ed86466fee0fd`  
		Last Modified: Fri, 18 Nov 2016 02:51:02 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c02b036551faa702525df5ae343921cf8b4302486ccb21f6cd04e2e862c0055`  
		Last Modified: Fri, 18 Nov 2016 02:55:40 GMT  
		Size: 14.1 KB (14128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3378957ad5f5537ba110236a9d9d5b12786d75dee10741d4b0da81d95c2dcb3`  
		Last Modified: Fri, 18 Nov 2016 02:55:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:252ccae310c6a9cf3a7fbf442c22a0b861f55c002ac2d4c6d7bfbae3c713c284`  
		Last Modified: Fri, 18 Nov 2016 02:55:51 GMT  
		Size: 132.8 MB (132786988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0726829b80c164d51452304b134c3be47275ea3143395aa8bd5e1b8cd91fd472`  
		Last Modified: Fri, 18 Nov 2016 02:55:39 GMT  
		Size: 2.3 KB (2317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddb9122988e1b95eb7be9b72d19749166f2a3afe649ced62a72e59c5ecd6f83`  
		Last Modified: Fri, 18 Nov 2016 02:55:40 GMT  
		Size: 2.3 KB (2326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.0-alpine`

```console
$ docker pull solr@sha256:c77a140b55c2b5f856b8505e94d0e1eb98bf29e94a013b64e0e950c8c6d662d4
```

-	Platforms:
	-	linux; amd64

### `solr:6.0-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.3 MB (180318550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ea935329cd83515a9bfb6fcabbede475c6b17f58e68779948ca5df75a375403`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Thu, 17 Nov 2016 21:47:51 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:52 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 02:40:52 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 18 Nov 2016 02:40:53 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 18 Nov 2016 02:40:53 GMT
ARG GPG_KEYSERVER
# Fri, 18 Nov 2016 02:40:57 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Fri, 18 Nov 2016 02:40:59 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_USER=solr
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_UID=8983
# Fri, 18 Nov 2016 02:41:01 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Fri, 18 Nov 2016 02:48:44 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Fri, 18 Nov 2016 02:48:48 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:48:49 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Fri, 18 Nov 2016 02:48:51 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:48:51 GMT
ENV SOLR_VERSION=6.0.1
# Fri, 18 Nov 2016 02:48:52 GMT
ENV SOLR_SHA256=4fd25942f0b8083a2499e1dc606c6dd29e4b520c28a16a2d82111088126d43af
# Fri, 18 Nov 2016 02:48:52 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.0.1/solr-6.0.1.tgz
# Fri, 18 Nov 2016 02:49:07 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 18 Nov 2016 02:49:07 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Fri, 18 Nov 2016 02:49:08 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 18 Nov 2016 02:49:08 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 18 Nov 2016 02:49:09 GMT
EXPOSE 8983/tcp
# Fri, 18 Nov 2016 02:49:09 GMT
WORKDIR /opt/solr
# Fri, 18 Nov 2016 02:49:09 GMT
USER [solr]
# Fri, 18 Nov 2016 02:49:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Nov 2016 02:49:10 GMT
CMD ["solr-foreground"]
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
	-	`sha256:857cbad9cd9a8609720fe041554046e94f0813b64887c3c06eac0c2cfb2be741`  
		Last Modified: Thu, 17 Nov 2016 22:03:51 GMT  
		Size: 39.7 MB (39670171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d9b1c3dec6631bdd2dbce65ff2cec30fa6a5820c444fc449d842f17abd79e0`  
		Last Modified: Fri, 18 Nov 2016 02:51:05 GMT  
		Size: 4.9 MB (4920244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b458e4a80123b468fc589df5cbe96a85de6a94e27708ebf20eea60ec27011ff`  
		Last Modified: Fri, 18 Nov 2016 02:51:03 GMT  
		Size: 607.8 KB (607777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ada25335d1c77b9121be29061039fd774d8f1751184c09ef0ed86466fee0fd`  
		Last Modified: Fri, 18 Nov 2016 02:51:02 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c02b036551faa702525df5ae343921cf8b4302486ccb21f6cd04e2e862c0055`  
		Last Modified: Fri, 18 Nov 2016 02:55:40 GMT  
		Size: 14.1 KB (14128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3378957ad5f5537ba110236a9d9d5b12786d75dee10741d4b0da81d95c2dcb3`  
		Last Modified: Fri, 18 Nov 2016 02:55:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:252ccae310c6a9cf3a7fbf442c22a0b861f55c002ac2d4c6d7bfbae3c713c284`  
		Last Modified: Fri, 18 Nov 2016 02:55:51 GMT  
		Size: 132.8 MB (132786988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0726829b80c164d51452304b134c3be47275ea3143395aa8bd5e1b8cd91fd472`  
		Last Modified: Fri, 18 Nov 2016 02:55:39 GMT  
		Size: 2.3 KB (2317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddb9122988e1b95eb7be9b72d19749166f2a3afe649ced62a72e59c5ecd6f83`  
		Last Modified: Fri, 18 Nov 2016 02:55:40 GMT  
		Size: 2.3 KB (2326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.1.0`

```console
$ docker pull solr@sha256:d5c7b37058459ab51a733f49864f3234c6b0e993eb4c06de33993de76a3177d9
```

-	Platforms:
	-	linux; amd64

### `solr:6.1.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.8 MB (267785420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c38219f783b2aa16491187bdf0bd74c99af26dfa6aebabdb0716178264c9046`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Dec 2016 22:55:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 14 Dec 2016 22:55:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 14 Dec 2016 22:55:24 GMT
ARG GPG_KEYSERVER
# Wed, 14 Dec 2016 22:55:40 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_USER=solr
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_UID=8983
# Wed, 14 Dec 2016 22:55:42 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 14 Dec 2016 22:56:29 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Wed, 14 Dec 2016 22:56:30 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 14 Dec 2016 22:56:32 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 14 Dec 2016 23:01:27 GMT
ENV SOLR_VERSION=6.1.0
# Wed, 14 Dec 2016 23:01:27 GMT
ENV SOLR_SHA256=74630a06d45eb44c0afe2bfb6e2cd80c9d8d92aa0c48a563e39c32996a76c8b0
# Wed, 14 Dec 2016 23:01:27 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.1.0/solr-6.1.0.tgz
# Wed, 14 Dec 2016 23:01:42 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 14 Dec 2016 23:01:43 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Wed, 14 Dec 2016 23:01:44 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 14 Dec 2016 23:01:44 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 23:01:45 GMT
EXPOSE 8983/tcp
# Wed, 14 Dec 2016 23:01:45 GMT
WORKDIR /opt/solr
# Wed, 14 Dec 2016 23:01:46 GMT
USER [solr]
# Wed, 14 Dec 2016 23:01:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 23:01:47 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f126c845f2bcf1db4ec70ad2e3ddd8ef3317c2ff4ace65f98aea4b45caf2ad6`  
		Last Modified: Wed, 21 Dec 2016 20:15:13 GMT  
		Size: 10.1 MB (10080203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537c9646cc918f95ad9d5f56f39ff7930f57dd04c86a0410cc456b42a2c64857`  
		Last Modified: Wed, 21 Dec 2016 20:15:05 GMT  
		Size: 4.6 KB (4633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa40e04313f51209c08a794db8c22c1d79bb85f72962711fb1006a4c3dab06b1`  
		Last Modified: Wed, 21 Dec 2016 20:16:05 GMT  
		Size: 7.4 KB (7398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8909fe0738e7370fe6e1f230e30c692863c0d7fb42f721f0caf6e285fa0d8759`  
		Last Modified: Wed, 21 Dec 2016 20:19:12 GMT  
		Size: 133.5 MB (133492979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccce1930fbe54c34b5c600bea99a204c27b56be751aec1172cab9da694f59617`  
		Last Modified: Wed, 21 Dec 2016 20:18:59 GMT  
		Size: 2.3 KB (2320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b33985c585da029534761ffa7fc7a5c1a1566de4923a400b4f6a21b7d7fa7b5`  
		Last Modified: Wed, 21 Dec 2016 20:19:00 GMT  
		Size: 2.3 KB (2327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.1`

```console
$ docker pull solr@sha256:d5c7b37058459ab51a733f49864f3234c6b0e993eb4c06de33993de76a3177d9
```

-	Platforms:
	-	linux; amd64

### `solr:6.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.8 MB (267785420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c38219f783b2aa16491187bdf0bd74c99af26dfa6aebabdb0716178264c9046`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Dec 2016 22:55:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 14 Dec 2016 22:55:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 14 Dec 2016 22:55:24 GMT
ARG GPG_KEYSERVER
# Wed, 14 Dec 2016 22:55:40 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_USER=solr
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_UID=8983
# Wed, 14 Dec 2016 22:55:42 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 14 Dec 2016 22:56:29 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Wed, 14 Dec 2016 22:56:30 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 14 Dec 2016 22:56:32 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 14 Dec 2016 23:01:27 GMT
ENV SOLR_VERSION=6.1.0
# Wed, 14 Dec 2016 23:01:27 GMT
ENV SOLR_SHA256=74630a06d45eb44c0afe2bfb6e2cd80c9d8d92aa0c48a563e39c32996a76c8b0
# Wed, 14 Dec 2016 23:01:27 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.1.0/solr-6.1.0.tgz
# Wed, 14 Dec 2016 23:01:42 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 14 Dec 2016 23:01:43 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Wed, 14 Dec 2016 23:01:44 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 14 Dec 2016 23:01:44 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 23:01:45 GMT
EXPOSE 8983/tcp
# Wed, 14 Dec 2016 23:01:45 GMT
WORKDIR /opt/solr
# Wed, 14 Dec 2016 23:01:46 GMT
USER [solr]
# Wed, 14 Dec 2016 23:01:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 23:01:47 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f126c845f2bcf1db4ec70ad2e3ddd8ef3317c2ff4ace65f98aea4b45caf2ad6`  
		Last Modified: Wed, 21 Dec 2016 20:15:13 GMT  
		Size: 10.1 MB (10080203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537c9646cc918f95ad9d5f56f39ff7930f57dd04c86a0410cc456b42a2c64857`  
		Last Modified: Wed, 21 Dec 2016 20:15:05 GMT  
		Size: 4.6 KB (4633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa40e04313f51209c08a794db8c22c1d79bb85f72962711fb1006a4c3dab06b1`  
		Last Modified: Wed, 21 Dec 2016 20:16:05 GMT  
		Size: 7.4 KB (7398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8909fe0738e7370fe6e1f230e30c692863c0d7fb42f721f0caf6e285fa0d8759`  
		Last Modified: Wed, 21 Dec 2016 20:19:12 GMT  
		Size: 133.5 MB (133492979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccce1930fbe54c34b5c600bea99a204c27b56be751aec1172cab9da694f59617`  
		Last Modified: Wed, 21 Dec 2016 20:18:59 GMT  
		Size: 2.3 KB (2320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b33985c585da029534761ffa7fc7a5c1a1566de4923a400b4f6a21b7d7fa7b5`  
		Last Modified: Wed, 21 Dec 2016 20:19:00 GMT  
		Size: 2.3 KB (2327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.1.0-alpine`

```console
$ docker pull solr@sha256:197d18c9aa25e9525727ce2275cce0d4ab25517e6bd7056f2e4ba53267bfc12d
```

-	Platforms:
	-	linux; amd64

### `solr:6.1.0-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.0 MB (181017474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd4709fa6ae78be654e324fdcfef4028b2ffa193eaa7b77759bdae2619275fc1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Thu, 17 Nov 2016 21:47:51 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:52 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 02:40:52 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 18 Nov 2016 02:40:53 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 18 Nov 2016 02:40:53 GMT
ARG GPG_KEYSERVER
# Fri, 18 Nov 2016 02:40:57 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Fri, 18 Nov 2016 02:40:59 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_USER=solr
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_UID=8983
# Fri, 18 Nov 2016 02:41:01 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Fri, 18 Nov 2016 02:41:30 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Fri, 18 Nov 2016 02:41:34 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:41:34 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Fri, 18 Nov 2016 02:41:37 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:49:10 GMT
ENV SOLR_VERSION=6.1.0
# Fri, 18 Nov 2016 02:49:11 GMT
ENV SOLR_SHA256=74630a06d45eb44c0afe2bfb6e2cd80c9d8d92aa0c48a563e39c32996a76c8b0
# Fri, 18 Nov 2016 02:49:11 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.1.0/solr-6.1.0.tgz
# Fri, 18 Nov 2016 02:49:27 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 18 Nov 2016 02:49:27 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Fri, 18 Nov 2016 02:49:28 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 18 Nov 2016 02:49:28 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 18 Nov 2016 02:49:28 GMT
EXPOSE 8983/tcp
# Fri, 18 Nov 2016 02:49:29 GMT
WORKDIR /opt/solr
# Fri, 18 Nov 2016 02:49:29 GMT
USER [solr]
# Fri, 18 Nov 2016 02:49:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Nov 2016 02:49:30 GMT
CMD ["solr-foreground"]
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
	-	`sha256:857cbad9cd9a8609720fe041554046e94f0813b64887c3c06eac0c2cfb2be741`  
		Last Modified: Thu, 17 Nov 2016 22:03:51 GMT  
		Size: 39.7 MB (39670171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d9b1c3dec6631bdd2dbce65ff2cec30fa6a5820c444fc449d842f17abd79e0`  
		Last Modified: Fri, 18 Nov 2016 02:51:05 GMT  
		Size: 4.9 MB (4920244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b458e4a80123b468fc589df5cbe96a85de6a94e27708ebf20eea60ec27011ff`  
		Last Modified: Fri, 18 Nov 2016 02:51:03 GMT  
		Size: 607.8 KB (607777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ada25335d1c77b9121be29061039fd774d8f1751184c09ef0ed86466fee0fd`  
		Last Modified: Fri, 18 Nov 2016 02:51:02 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a948d02de2495cab45674d88cdeced7fb67782788f469f187db9484a099678d8`  
		Last Modified: Fri, 18 Nov 2016 02:52:24 GMT  
		Size: 7.1 KB (7087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c53f577c6d1c03fadde3f5f1c84ae00bfb51ead8676416e90d5e0ca63a374c`  
		Last Modified: Fri, 18 Nov 2016 02:52:23 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e0f783e36034519639913287700161f10ab62164b5f82f9ff321b1dfcea5145`  
		Last Modified: Fri, 18 Nov 2016 02:57:05 GMT  
		Size: 133.5 MB (133492950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4bc73eae5d0a191c72f92ecdb394d363e42de0af90d9f08c35124da1ee213b`  
		Last Modified: Fri, 18 Nov 2016 02:56:54 GMT  
		Size: 2.3 KB (2319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263d04d1ea00ca4d4d2fd5fbd8ab7e86b123c6acbd326fe5e5d260e2578e46e7`  
		Last Modified: Fri, 18 Nov 2016 02:56:54 GMT  
		Size: 2.3 KB (2327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.1-alpine`

```console
$ docker pull solr@sha256:197d18c9aa25e9525727ce2275cce0d4ab25517e6bd7056f2e4ba53267bfc12d
```

-	Platforms:
	-	linux; amd64

### `solr:6.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.0 MB (181017474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd4709fa6ae78be654e324fdcfef4028b2ffa193eaa7b77759bdae2619275fc1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Thu, 17 Nov 2016 21:47:51 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:52 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 02:40:52 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 18 Nov 2016 02:40:53 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 18 Nov 2016 02:40:53 GMT
ARG GPG_KEYSERVER
# Fri, 18 Nov 2016 02:40:57 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Fri, 18 Nov 2016 02:40:59 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_USER=solr
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_UID=8983
# Fri, 18 Nov 2016 02:41:01 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Fri, 18 Nov 2016 02:41:30 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Fri, 18 Nov 2016 02:41:34 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:41:34 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Fri, 18 Nov 2016 02:41:37 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:49:10 GMT
ENV SOLR_VERSION=6.1.0
# Fri, 18 Nov 2016 02:49:11 GMT
ENV SOLR_SHA256=74630a06d45eb44c0afe2bfb6e2cd80c9d8d92aa0c48a563e39c32996a76c8b0
# Fri, 18 Nov 2016 02:49:11 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.1.0/solr-6.1.0.tgz
# Fri, 18 Nov 2016 02:49:27 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 18 Nov 2016 02:49:27 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Fri, 18 Nov 2016 02:49:28 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 18 Nov 2016 02:49:28 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 18 Nov 2016 02:49:28 GMT
EXPOSE 8983/tcp
# Fri, 18 Nov 2016 02:49:29 GMT
WORKDIR /opt/solr
# Fri, 18 Nov 2016 02:49:29 GMT
USER [solr]
# Fri, 18 Nov 2016 02:49:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Nov 2016 02:49:30 GMT
CMD ["solr-foreground"]
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
	-	`sha256:857cbad9cd9a8609720fe041554046e94f0813b64887c3c06eac0c2cfb2be741`  
		Last Modified: Thu, 17 Nov 2016 22:03:51 GMT  
		Size: 39.7 MB (39670171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d9b1c3dec6631bdd2dbce65ff2cec30fa6a5820c444fc449d842f17abd79e0`  
		Last Modified: Fri, 18 Nov 2016 02:51:05 GMT  
		Size: 4.9 MB (4920244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b458e4a80123b468fc589df5cbe96a85de6a94e27708ebf20eea60ec27011ff`  
		Last Modified: Fri, 18 Nov 2016 02:51:03 GMT  
		Size: 607.8 KB (607777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ada25335d1c77b9121be29061039fd774d8f1751184c09ef0ed86466fee0fd`  
		Last Modified: Fri, 18 Nov 2016 02:51:02 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a948d02de2495cab45674d88cdeced7fb67782788f469f187db9484a099678d8`  
		Last Modified: Fri, 18 Nov 2016 02:52:24 GMT  
		Size: 7.1 KB (7087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c53f577c6d1c03fadde3f5f1c84ae00bfb51ead8676416e90d5e0ca63a374c`  
		Last Modified: Fri, 18 Nov 2016 02:52:23 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e0f783e36034519639913287700161f10ab62164b5f82f9ff321b1dfcea5145`  
		Last Modified: Fri, 18 Nov 2016 02:57:05 GMT  
		Size: 133.5 MB (133492950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4bc73eae5d0a191c72f92ecdb394d363e42de0af90d9f08c35124da1ee213b`  
		Last Modified: Fri, 18 Nov 2016 02:56:54 GMT  
		Size: 2.3 KB (2319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263d04d1ea00ca4d4d2fd5fbd8ab7e86b123c6acbd326fe5e5d260e2578e46e7`  
		Last Modified: Fri, 18 Nov 2016 02:56:54 GMT  
		Size: 2.3 KB (2327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.2.1`

```console
$ docker pull solr@sha256:3b028ceebde21b14f38719fadabb24483d84f5a77e0c02c823be2a3f64682697
```

-	Platforms:
	-	linux; amd64

### `solr:6.2.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277854834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56506550c5bfb65e8d7692feec4de299a04563bfaec8c221b07248dc1680d0f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Dec 2016 22:55:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 14 Dec 2016 22:55:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 14 Dec 2016 22:55:24 GMT
ARG GPG_KEYSERVER
# Wed, 14 Dec 2016 22:55:40 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_USER=solr
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_UID=8983
# Wed, 14 Dec 2016 22:55:42 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 14 Dec 2016 22:56:53 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Wed, 14 Dec 2016 22:56:54 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 14 Dec 2016 23:00:40 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 14 Dec 2016 23:01:47 GMT
ENV SOLR_VERSION=6.2.1
# Wed, 14 Dec 2016 23:01:48 GMT
ENV SOLR_SHA256=344cb317ab42978dcc66944dd8cfbd5721e27e1c64919308082b0623a310b607
# Wed, 14 Dec 2016 23:01:48 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.1/solr-6.2.1.tgz
# Wed, 14 Dec 2016 23:02:05 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 14 Dec 2016 23:02:10 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Wed, 14 Dec 2016 23:02:11 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 14 Dec 2016 23:02:12 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 23:02:12 GMT
EXPOSE 8983/tcp
# Wed, 14 Dec 2016 23:02:13 GMT
WORKDIR /opt/solr
# Wed, 14 Dec 2016 23:02:13 GMT
USER [solr]
# Wed, 14 Dec 2016 23:02:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 23:02:14 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f126c845f2bcf1db4ec70ad2e3ddd8ef3317c2ff4ace65f98aea4b45caf2ad6`  
		Last Modified: Wed, 21 Dec 2016 20:15:13 GMT  
		Size: 10.1 MB (10080203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537c9646cc918f95ad9d5f56f39ff7930f57dd04c86a0410cc456b42a2c64857`  
		Last Modified: Wed, 21 Dec 2016 20:15:05 GMT  
		Size: 4.6 KB (4633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6026eebba170c3e133383136ef2d01a0c9de8c2d94c5531e44422c33c345b71a`  
		Last Modified: Wed, 21 Dec 2016 20:19:50 GMT  
		Size: 6.8 KB (6784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c1150cf9251de0911cf1c7f4cfea5faae97b0b96feb228723fc28294fba1f88`  
		Last Modified: Wed, 21 Dec 2016 20:20:04 GMT  
		Size: 143.6 MB (143563008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:488b7e6f53dea2ec1e0c482aa202d231c16a5f893b3f97562c92648fd330412f`  
		Last Modified: Wed, 21 Dec 2016 20:19:51 GMT  
		Size: 2.3 KB (2320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb812a44f4b8789ff7f7e45b02c8ed06760760112dbcf710c828b898cdc75b0`  
		Last Modified: Wed, 21 Dec 2016 20:19:50 GMT  
		Size: 2.3 KB (2326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.2`

```console
$ docker pull solr@sha256:3b028ceebde21b14f38719fadabb24483d84f5a77e0c02c823be2a3f64682697
```

-	Platforms:
	-	linux; amd64

### `solr:6.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277854834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56506550c5bfb65e8d7692feec4de299a04563bfaec8c221b07248dc1680d0f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Dec 2016 22:55:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 14 Dec 2016 22:55:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 14 Dec 2016 22:55:24 GMT
ARG GPG_KEYSERVER
# Wed, 14 Dec 2016 22:55:40 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_USER=solr
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_UID=8983
# Wed, 14 Dec 2016 22:55:42 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 14 Dec 2016 22:56:53 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Wed, 14 Dec 2016 22:56:54 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 14 Dec 2016 23:00:40 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 14 Dec 2016 23:01:47 GMT
ENV SOLR_VERSION=6.2.1
# Wed, 14 Dec 2016 23:01:48 GMT
ENV SOLR_SHA256=344cb317ab42978dcc66944dd8cfbd5721e27e1c64919308082b0623a310b607
# Wed, 14 Dec 2016 23:01:48 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.1/solr-6.2.1.tgz
# Wed, 14 Dec 2016 23:02:05 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 14 Dec 2016 23:02:10 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Wed, 14 Dec 2016 23:02:11 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 14 Dec 2016 23:02:12 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 23:02:12 GMT
EXPOSE 8983/tcp
# Wed, 14 Dec 2016 23:02:13 GMT
WORKDIR /opt/solr
# Wed, 14 Dec 2016 23:02:13 GMT
USER [solr]
# Wed, 14 Dec 2016 23:02:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 23:02:14 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f126c845f2bcf1db4ec70ad2e3ddd8ef3317c2ff4ace65f98aea4b45caf2ad6`  
		Last Modified: Wed, 21 Dec 2016 20:15:13 GMT  
		Size: 10.1 MB (10080203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537c9646cc918f95ad9d5f56f39ff7930f57dd04c86a0410cc456b42a2c64857`  
		Last Modified: Wed, 21 Dec 2016 20:15:05 GMT  
		Size: 4.6 KB (4633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6026eebba170c3e133383136ef2d01a0c9de8c2d94c5531e44422c33c345b71a`  
		Last Modified: Wed, 21 Dec 2016 20:19:50 GMT  
		Size: 6.8 KB (6784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c1150cf9251de0911cf1c7f4cfea5faae97b0b96feb228723fc28294fba1f88`  
		Last Modified: Wed, 21 Dec 2016 20:20:04 GMT  
		Size: 143.6 MB (143563008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:488b7e6f53dea2ec1e0c482aa202d231c16a5f893b3f97562c92648fd330412f`  
		Last Modified: Wed, 21 Dec 2016 20:19:51 GMT  
		Size: 2.3 KB (2320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb812a44f4b8789ff7f7e45b02c8ed06760760112dbcf710c828b898cdc75b0`  
		Last Modified: Wed, 21 Dec 2016 20:19:50 GMT  
		Size: 2.3 KB (2326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.2.1-alpine`

```console
$ docker pull solr@sha256:b9d2154d3718d76e8b2c6f3d6d334f6a9c750dc4f9118c66f1c174aa43f7161e
```

-	Platforms:
	-	linux; amd64

### `solr:6.2.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.1 MB (191086885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77dc13c9f8b0b1ee1f188649529e63b957524be2dd30be012245f62fdde04240`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Thu, 17 Nov 2016 21:47:51 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:52 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 02:40:52 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 18 Nov 2016 02:40:53 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 18 Nov 2016 02:40:53 GMT
ARG GPG_KEYSERVER
# Fri, 18 Nov 2016 02:40:57 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Fri, 18 Nov 2016 02:40:59 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_USER=solr
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_UID=8983
# Fri, 18 Nov 2016 02:41:01 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Fri, 18 Nov 2016 02:49:30 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Fri, 18 Nov 2016 02:49:34 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:49:34 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Fri, 18 Nov 2016 02:49:37 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:49:37 GMT
ENV SOLR_VERSION=6.2.1
# Fri, 18 Nov 2016 02:49:38 GMT
ENV SOLR_SHA256=344cb317ab42978dcc66944dd8cfbd5721e27e1c64919308082b0623a310b607
# Fri, 18 Nov 2016 02:49:38 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.1/solr-6.2.1.tgz
# Fri, 18 Nov 2016 02:49:54 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 18 Nov 2016 02:49:55 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Fri, 18 Nov 2016 02:49:55 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 18 Nov 2016 02:49:56 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 18 Nov 2016 02:49:56 GMT
EXPOSE 8983/tcp
# Fri, 18 Nov 2016 02:49:56 GMT
WORKDIR /opt/solr
# Fri, 18 Nov 2016 02:49:57 GMT
USER [solr]
# Fri, 18 Nov 2016 02:49:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Nov 2016 02:49:57 GMT
CMD ["solr-foreground"]
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
	-	`sha256:857cbad9cd9a8609720fe041554046e94f0813b64887c3c06eac0c2cfb2be741`  
		Last Modified: Thu, 17 Nov 2016 22:03:51 GMT  
		Size: 39.7 MB (39670171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d9b1c3dec6631bdd2dbce65ff2cec30fa6a5820c444fc449d842f17abd79e0`  
		Last Modified: Fri, 18 Nov 2016 02:51:05 GMT  
		Size: 4.9 MB (4920244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b458e4a80123b468fc589df5cbe96a85de6a94e27708ebf20eea60ec27011ff`  
		Last Modified: Fri, 18 Nov 2016 02:51:03 GMT  
		Size: 607.8 KB (607777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ada25335d1c77b9121be29061039fd774d8f1751184c09ef0ed86466fee0fd`  
		Last Modified: Fri, 18 Nov 2016 02:51:02 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fdb9dcc89e2c267406cbcc46eead6378e1a706ae05ec03c9d3df02a707acee4`  
		Last Modified: Fri, 18 Nov 2016 02:58:08 GMT  
		Size: 6.5 KB (6511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede9518feb5959e19e8bebe9a0e9565c86f50940580d8445eb6e703622a7f85d`  
		Last Modified: Fri, 18 Nov 2016 02:58:07 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f393172636c91ee724b6987cd413cf7bce2674e525ba9cd3dc5097cf25389969`  
		Last Modified: Fri, 18 Nov 2016 02:58:20 GMT  
		Size: 143.6 MB (143562937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79865020b7ec649a02569350f50f59f4dfdd675320413aec6eaaf97fb183749`  
		Last Modified: Fri, 18 Nov 2016 02:58:09 GMT  
		Size: 2.3 KB (2318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5773ca9fdffe8aa2e33f3b5bf3c25ae06528c2e4466938152e71ecb56354bada`  
		Last Modified: Fri, 18 Nov 2016 02:58:08 GMT  
		Size: 2.3 KB (2327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.2-alpine`

```console
$ docker pull solr@sha256:b9d2154d3718d76e8b2c6f3d6d334f6a9c750dc4f9118c66f1c174aa43f7161e
```

-	Platforms:
	-	linux; amd64

### `solr:6.2-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.1 MB (191086885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77dc13c9f8b0b1ee1f188649529e63b957524be2dd30be012245f62fdde04240`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Thu, 17 Nov 2016 21:47:51 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:52 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 02:40:52 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 18 Nov 2016 02:40:53 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 18 Nov 2016 02:40:53 GMT
ARG GPG_KEYSERVER
# Fri, 18 Nov 2016 02:40:57 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Fri, 18 Nov 2016 02:40:59 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_USER=solr
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_UID=8983
# Fri, 18 Nov 2016 02:41:01 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Fri, 18 Nov 2016 02:49:30 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Fri, 18 Nov 2016 02:49:34 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:49:34 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Fri, 18 Nov 2016 02:49:37 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:49:37 GMT
ENV SOLR_VERSION=6.2.1
# Fri, 18 Nov 2016 02:49:38 GMT
ENV SOLR_SHA256=344cb317ab42978dcc66944dd8cfbd5721e27e1c64919308082b0623a310b607
# Fri, 18 Nov 2016 02:49:38 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.1/solr-6.2.1.tgz
# Fri, 18 Nov 2016 02:49:54 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 18 Nov 2016 02:49:55 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Fri, 18 Nov 2016 02:49:55 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 18 Nov 2016 02:49:56 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 18 Nov 2016 02:49:56 GMT
EXPOSE 8983/tcp
# Fri, 18 Nov 2016 02:49:56 GMT
WORKDIR /opt/solr
# Fri, 18 Nov 2016 02:49:57 GMT
USER [solr]
# Fri, 18 Nov 2016 02:49:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Nov 2016 02:49:57 GMT
CMD ["solr-foreground"]
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
	-	`sha256:857cbad9cd9a8609720fe041554046e94f0813b64887c3c06eac0c2cfb2be741`  
		Last Modified: Thu, 17 Nov 2016 22:03:51 GMT  
		Size: 39.7 MB (39670171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d9b1c3dec6631bdd2dbce65ff2cec30fa6a5820c444fc449d842f17abd79e0`  
		Last Modified: Fri, 18 Nov 2016 02:51:05 GMT  
		Size: 4.9 MB (4920244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b458e4a80123b468fc589df5cbe96a85de6a94e27708ebf20eea60ec27011ff`  
		Last Modified: Fri, 18 Nov 2016 02:51:03 GMT  
		Size: 607.8 KB (607777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ada25335d1c77b9121be29061039fd774d8f1751184c09ef0ed86466fee0fd`  
		Last Modified: Fri, 18 Nov 2016 02:51:02 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fdb9dcc89e2c267406cbcc46eead6378e1a706ae05ec03c9d3df02a707acee4`  
		Last Modified: Fri, 18 Nov 2016 02:58:08 GMT  
		Size: 6.5 KB (6511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede9518feb5959e19e8bebe9a0e9565c86f50940580d8445eb6e703622a7f85d`  
		Last Modified: Fri, 18 Nov 2016 02:58:07 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f393172636c91ee724b6987cd413cf7bce2674e525ba9cd3dc5097cf25389969`  
		Last Modified: Fri, 18 Nov 2016 02:58:20 GMT  
		Size: 143.6 MB (143562937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79865020b7ec649a02569350f50f59f4dfdd675320413aec6eaaf97fb183749`  
		Last Modified: Fri, 18 Nov 2016 02:58:09 GMT  
		Size: 2.3 KB (2318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5773ca9fdffe8aa2e33f3b5bf3c25ae06528c2e4466938152e71ecb56354bada`  
		Last Modified: Fri, 18 Nov 2016 02:58:08 GMT  
		Size: 2.3 KB (2327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3.0`

```console
$ docker pull solr@sha256:2273c8486101f3c00b8a274675f62e6b110d7f922a9ac073d5b54349bbe1251d
```

-	Platforms:
	-	linux; amd64

### `solr:6.3.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.8 MB (274756300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f56299e5ce61558dafa02cfa7125ef40ba4cc0c177ac8e889a95139162cc2874`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Dec 2016 22:55:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 14 Dec 2016 22:55:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 14 Dec 2016 22:55:24 GMT
ARG GPG_KEYSERVER
# Wed, 14 Dec 2016 22:55:40 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_USER=solr
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_UID=8983
# Wed, 14 Dec 2016 22:55:42 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 14 Dec 2016 22:56:53 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Wed, 14 Dec 2016 22:56:54 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 14 Dec 2016 23:00:40 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 14 Dec 2016 23:00:40 GMT
ENV SOLR_VERSION=6.3.0
# Wed, 14 Dec 2016 23:00:41 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Wed, 14 Dec 2016 23:00:41 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Wed, 14 Dec 2016 23:00:57 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 14 Dec 2016 23:00:58 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Wed, 14 Dec 2016 23:00:59 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 14 Dec 2016 23:00:59 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 23:01:00 GMT
EXPOSE 8983/tcp
# Wed, 14 Dec 2016 23:01:00 GMT
WORKDIR /opt/solr
# Wed, 14 Dec 2016 23:01:01 GMT
USER [solr]
# Wed, 14 Dec 2016 23:01:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 23:01:02 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f126c845f2bcf1db4ec70ad2e3ddd8ef3317c2ff4ace65f98aea4b45caf2ad6`  
		Last Modified: Wed, 21 Dec 2016 20:15:13 GMT  
		Size: 10.1 MB (10080203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537c9646cc918f95ad9d5f56f39ff7930f57dd04c86a0410cc456b42a2c64857`  
		Last Modified: Wed, 21 Dec 2016 20:15:05 GMT  
		Size: 4.6 KB (4633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6026eebba170c3e133383136ef2d01a0c9de8c2d94c5531e44422c33c345b71a`  
		Last Modified: Wed, 21 Dec 2016 20:19:50 GMT  
		Size: 6.8 KB (6784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f498195a253af94eb92bc2d769fcced6a1491c8a318b769ffe45323ed68e1d49`  
		Last Modified: Wed, 21 Dec 2016 20:20:59 GMT  
		Size: 140.5 MB (140464475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f56ed87a6b727e073e8b54c31d211abe4a7707a6eb4cc6920905ebbf3f4713d`  
		Last Modified: Wed, 21 Dec 2016 20:20:44 GMT  
		Size: 2.3 KB (2317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5839970bd72aa158ba6431c52a307372177d443c5b3509ee28d46018fa678a`  
		Last Modified: Wed, 21 Dec 2016 20:20:45 GMT  
		Size: 2.3 KB (2328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3`

```console
$ docker pull solr@sha256:2273c8486101f3c00b8a274675f62e6b110d7f922a9ac073d5b54349bbe1251d
```

-	Platforms:
	-	linux; amd64

### `solr:6.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.8 MB (274756300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f56299e5ce61558dafa02cfa7125ef40ba4cc0c177ac8e889a95139162cc2874`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Dec 2016 22:55:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 14 Dec 2016 22:55:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 14 Dec 2016 22:55:24 GMT
ARG GPG_KEYSERVER
# Wed, 14 Dec 2016 22:55:40 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_USER=solr
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_UID=8983
# Wed, 14 Dec 2016 22:55:42 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 14 Dec 2016 22:56:53 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Wed, 14 Dec 2016 22:56:54 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 14 Dec 2016 23:00:40 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 14 Dec 2016 23:00:40 GMT
ENV SOLR_VERSION=6.3.0
# Wed, 14 Dec 2016 23:00:41 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Wed, 14 Dec 2016 23:00:41 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Wed, 14 Dec 2016 23:00:57 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 14 Dec 2016 23:00:58 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Wed, 14 Dec 2016 23:00:59 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 14 Dec 2016 23:00:59 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 23:01:00 GMT
EXPOSE 8983/tcp
# Wed, 14 Dec 2016 23:01:00 GMT
WORKDIR /opt/solr
# Wed, 14 Dec 2016 23:01:01 GMT
USER [solr]
# Wed, 14 Dec 2016 23:01:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 23:01:02 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f126c845f2bcf1db4ec70ad2e3ddd8ef3317c2ff4ace65f98aea4b45caf2ad6`  
		Last Modified: Wed, 21 Dec 2016 20:15:13 GMT  
		Size: 10.1 MB (10080203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537c9646cc918f95ad9d5f56f39ff7930f57dd04c86a0410cc456b42a2c64857`  
		Last Modified: Wed, 21 Dec 2016 20:15:05 GMT  
		Size: 4.6 KB (4633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6026eebba170c3e133383136ef2d01a0c9de8c2d94c5531e44422c33c345b71a`  
		Last Modified: Wed, 21 Dec 2016 20:19:50 GMT  
		Size: 6.8 KB (6784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f498195a253af94eb92bc2d769fcced6a1491c8a318b769ffe45323ed68e1d49`  
		Last Modified: Wed, 21 Dec 2016 20:20:59 GMT  
		Size: 140.5 MB (140464475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f56ed87a6b727e073e8b54c31d211abe4a7707a6eb4cc6920905ebbf3f4713d`  
		Last Modified: Wed, 21 Dec 2016 20:20:44 GMT  
		Size: 2.3 KB (2317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5839970bd72aa158ba6431c52a307372177d443c5b3509ee28d46018fa678a`  
		Last Modified: Wed, 21 Dec 2016 20:20:45 GMT  
		Size: 2.3 KB (2328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6`

```console
$ docker pull solr@sha256:2273c8486101f3c00b8a274675f62e6b110d7f922a9ac073d5b54349bbe1251d
```

-	Platforms:
	-	linux; amd64

### `solr:6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.8 MB (274756300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f56299e5ce61558dafa02cfa7125ef40ba4cc0c177ac8e889a95139162cc2874`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Dec 2016 22:55:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 14 Dec 2016 22:55:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 14 Dec 2016 22:55:24 GMT
ARG GPG_KEYSERVER
# Wed, 14 Dec 2016 22:55:40 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_USER=solr
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_UID=8983
# Wed, 14 Dec 2016 22:55:42 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 14 Dec 2016 22:56:53 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Wed, 14 Dec 2016 22:56:54 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 14 Dec 2016 23:00:40 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 14 Dec 2016 23:00:40 GMT
ENV SOLR_VERSION=6.3.0
# Wed, 14 Dec 2016 23:00:41 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Wed, 14 Dec 2016 23:00:41 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Wed, 14 Dec 2016 23:00:57 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 14 Dec 2016 23:00:58 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Wed, 14 Dec 2016 23:00:59 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 14 Dec 2016 23:00:59 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 23:01:00 GMT
EXPOSE 8983/tcp
# Wed, 14 Dec 2016 23:01:00 GMT
WORKDIR /opt/solr
# Wed, 14 Dec 2016 23:01:01 GMT
USER [solr]
# Wed, 14 Dec 2016 23:01:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 23:01:02 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f126c845f2bcf1db4ec70ad2e3ddd8ef3317c2ff4ace65f98aea4b45caf2ad6`  
		Last Modified: Wed, 21 Dec 2016 20:15:13 GMT  
		Size: 10.1 MB (10080203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537c9646cc918f95ad9d5f56f39ff7930f57dd04c86a0410cc456b42a2c64857`  
		Last Modified: Wed, 21 Dec 2016 20:15:05 GMT  
		Size: 4.6 KB (4633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6026eebba170c3e133383136ef2d01a0c9de8c2d94c5531e44422c33c345b71a`  
		Last Modified: Wed, 21 Dec 2016 20:19:50 GMT  
		Size: 6.8 KB (6784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f498195a253af94eb92bc2d769fcced6a1491c8a318b769ffe45323ed68e1d49`  
		Last Modified: Wed, 21 Dec 2016 20:20:59 GMT  
		Size: 140.5 MB (140464475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f56ed87a6b727e073e8b54c31d211abe4a7707a6eb4cc6920905ebbf3f4713d`  
		Last Modified: Wed, 21 Dec 2016 20:20:44 GMT  
		Size: 2.3 KB (2317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5839970bd72aa158ba6431c52a307372177d443c5b3509ee28d46018fa678a`  
		Last Modified: Wed, 21 Dec 2016 20:20:45 GMT  
		Size: 2.3 KB (2328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:latest`

```console
$ docker pull solr@sha256:2273c8486101f3c00b8a274675f62e6b110d7f922a9ac073d5b54349bbe1251d
```

-	Platforms:
	-	linux; amd64

### `solr:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.8 MB (274756300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f56299e5ce61558dafa02cfa7125ef40ba4cc0c177ac8e889a95139162cc2874`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Dec 2016 22:55:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 14 Dec 2016 22:55:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 14 Dec 2016 22:55:24 GMT
ARG GPG_KEYSERVER
# Wed, 14 Dec 2016 22:55:40 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_USER=solr
# Wed, 14 Dec 2016 22:55:41 GMT
ENV SOLR_UID=8983
# Wed, 14 Dec 2016 22:55:42 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 14 Dec 2016 22:56:53 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Wed, 14 Dec 2016 22:56:54 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 14 Dec 2016 23:00:40 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 14 Dec 2016 23:00:40 GMT
ENV SOLR_VERSION=6.3.0
# Wed, 14 Dec 2016 23:00:41 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Wed, 14 Dec 2016 23:00:41 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Wed, 14 Dec 2016 23:00:57 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 14 Dec 2016 23:00:58 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Wed, 14 Dec 2016 23:00:59 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 14 Dec 2016 23:00:59 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 23:01:00 GMT
EXPOSE 8983/tcp
# Wed, 14 Dec 2016 23:01:00 GMT
WORKDIR /opt/solr
# Wed, 14 Dec 2016 23:01:01 GMT
USER [solr]
# Wed, 14 Dec 2016 23:01:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 23:01:02 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f126c845f2bcf1db4ec70ad2e3ddd8ef3317c2ff4ace65f98aea4b45caf2ad6`  
		Last Modified: Wed, 21 Dec 2016 20:15:13 GMT  
		Size: 10.1 MB (10080203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537c9646cc918f95ad9d5f56f39ff7930f57dd04c86a0410cc456b42a2c64857`  
		Last Modified: Wed, 21 Dec 2016 20:15:05 GMT  
		Size: 4.6 KB (4633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6026eebba170c3e133383136ef2d01a0c9de8c2d94c5531e44422c33c345b71a`  
		Last Modified: Wed, 21 Dec 2016 20:19:50 GMT  
		Size: 6.8 KB (6784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f498195a253af94eb92bc2d769fcced6a1491c8a318b769ffe45323ed68e1d49`  
		Last Modified: Wed, 21 Dec 2016 20:20:59 GMT  
		Size: 140.5 MB (140464475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f56ed87a6b727e073e8b54c31d211abe4a7707a6eb4cc6920905ebbf3f4713d`  
		Last Modified: Wed, 21 Dec 2016 20:20:44 GMT  
		Size: 2.3 KB (2317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5839970bd72aa158ba6431c52a307372177d443c5b3509ee28d46018fa678a`  
		Last Modified: Wed, 21 Dec 2016 20:20:45 GMT  
		Size: 2.3 KB (2328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3.0-alpine`

```console
$ docker pull solr@sha256:829fe36d701d9593537590fe00ea1f20787a87f082669875a66ff2926f696290
```

-	Platforms:
	-	linux; amd64

### `solr:6.3.0-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187988348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:801f53b8453c737f395744c104dc65d16da10aa81f9bf711fb3def4f92eb4405`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Thu, 17 Nov 2016 21:47:51 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:52 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 02:40:52 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 18 Nov 2016 02:40:53 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 18 Nov 2016 02:40:53 GMT
ARG GPG_KEYSERVER
# Fri, 18 Nov 2016 02:40:57 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Fri, 18 Nov 2016 02:40:59 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_USER=solr
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_UID=8983
# Fri, 18 Nov 2016 02:41:01 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Fri, 18 Nov 2016 02:49:30 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Fri, 18 Nov 2016 02:49:34 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:49:34 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Fri, 18 Nov 2016 02:49:37 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:49:58 GMT
ENV SOLR_VERSION=6.3.0
# Fri, 18 Nov 2016 02:49:58 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Fri, 18 Nov 2016 02:49:58 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Fri, 18 Nov 2016 02:50:14 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 18 Nov 2016 02:50:15 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Fri, 18 Nov 2016 02:50:15 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 18 Nov 2016 02:50:16 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 18 Nov 2016 02:50:16 GMT
EXPOSE 8983/tcp
# Fri, 18 Nov 2016 02:50:16 GMT
WORKDIR /opt/solr
# Fri, 18 Nov 2016 02:50:17 GMT
USER [solr]
# Fri, 18 Nov 2016 02:50:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Nov 2016 02:50:17 GMT
CMD ["solr-foreground"]
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
	-	`sha256:857cbad9cd9a8609720fe041554046e94f0813b64887c3c06eac0c2cfb2be741`  
		Last Modified: Thu, 17 Nov 2016 22:03:51 GMT  
		Size: 39.7 MB (39670171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d9b1c3dec6631bdd2dbce65ff2cec30fa6a5820c444fc449d842f17abd79e0`  
		Last Modified: Fri, 18 Nov 2016 02:51:05 GMT  
		Size: 4.9 MB (4920244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b458e4a80123b468fc589df5cbe96a85de6a94e27708ebf20eea60ec27011ff`  
		Last Modified: Fri, 18 Nov 2016 02:51:03 GMT  
		Size: 607.8 KB (607777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ada25335d1c77b9121be29061039fd774d8f1751184c09ef0ed86466fee0fd`  
		Last Modified: Fri, 18 Nov 2016 02:51:02 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fdb9dcc89e2c267406cbcc46eead6378e1a706ae05ec03c9d3df02a707acee4`  
		Last Modified: Fri, 18 Nov 2016 02:58:08 GMT  
		Size: 6.5 KB (6511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede9518feb5959e19e8bebe9a0e9565c86f50940580d8445eb6e703622a7f85d`  
		Last Modified: Fri, 18 Nov 2016 02:58:07 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe7518ec568850f8a8dc34a2c8c263545c2913959db10b4b24232feafe13319`  
		Last Modified: Fri, 18 Nov 2016 03:00:28 GMT  
		Size: 140.5 MB (140464400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2919641eec2f22de666c73260b3315cb2fcccb07ec65664420d763298f3d7b`  
		Last Modified: Fri, 18 Nov 2016 03:00:13 GMT  
		Size: 2.3 KB (2318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3d4c6708764e4a4e7a5c009ed1ea733622b9f228b1b89905d49737ed3ba994`  
		Last Modified: Fri, 18 Nov 2016 03:00:14 GMT  
		Size: 2.3 KB (2327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.3-alpine`

```console
$ docker pull solr@sha256:829fe36d701d9593537590fe00ea1f20787a87f082669875a66ff2926f696290
```

-	Platforms:
	-	linux; amd64

### `solr:6.3-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187988348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:801f53b8453c737f395744c104dc65d16da10aa81f9bf711fb3def4f92eb4405`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Thu, 17 Nov 2016 21:47:51 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:52 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 02:40:52 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 18 Nov 2016 02:40:53 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 18 Nov 2016 02:40:53 GMT
ARG GPG_KEYSERVER
# Fri, 18 Nov 2016 02:40:57 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Fri, 18 Nov 2016 02:40:59 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_USER=solr
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_UID=8983
# Fri, 18 Nov 2016 02:41:01 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Fri, 18 Nov 2016 02:49:30 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Fri, 18 Nov 2016 02:49:34 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:49:34 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Fri, 18 Nov 2016 02:49:37 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:49:58 GMT
ENV SOLR_VERSION=6.3.0
# Fri, 18 Nov 2016 02:49:58 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Fri, 18 Nov 2016 02:49:58 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Fri, 18 Nov 2016 02:50:14 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 18 Nov 2016 02:50:15 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Fri, 18 Nov 2016 02:50:15 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 18 Nov 2016 02:50:16 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 18 Nov 2016 02:50:16 GMT
EXPOSE 8983/tcp
# Fri, 18 Nov 2016 02:50:16 GMT
WORKDIR /opt/solr
# Fri, 18 Nov 2016 02:50:17 GMT
USER [solr]
# Fri, 18 Nov 2016 02:50:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Nov 2016 02:50:17 GMT
CMD ["solr-foreground"]
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
	-	`sha256:857cbad9cd9a8609720fe041554046e94f0813b64887c3c06eac0c2cfb2be741`  
		Last Modified: Thu, 17 Nov 2016 22:03:51 GMT  
		Size: 39.7 MB (39670171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d9b1c3dec6631bdd2dbce65ff2cec30fa6a5820c444fc449d842f17abd79e0`  
		Last Modified: Fri, 18 Nov 2016 02:51:05 GMT  
		Size: 4.9 MB (4920244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b458e4a80123b468fc589df5cbe96a85de6a94e27708ebf20eea60ec27011ff`  
		Last Modified: Fri, 18 Nov 2016 02:51:03 GMT  
		Size: 607.8 KB (607777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ada25335d1c77b9121be29061039fd774d8f1751184c09ef0ed86466fee0fd`  
		Last Modified: Fri, 18 Nov 2016 02:51:02 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fdb9dcc89e2c267406cbcc46eead6378e1a706ae05ec03c9d3df02a707acee4`  
		Last Modified: Fri, 18 Nov 2016 02:58:08 GMT  
		Size: 6.5 KB (6511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede9518feb5959e19e8bebe9a0e9565c86f50940580d8445eb6e703622a7f85d`  
		Last Modified: Fri, 18 Nov 2016 02:58:07 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe7518ec568850f8a8dc34a2c8c263545c2913959db10b4b24232feafe13319`  
		Last Modified: Fri, 18 Nov 2016 03:00:28 GMT  
		Size: 140.5 MB (140464400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2919641eec2f22de666c73260b3315cb2fcccb07ec65664420d763298f3d7b`  
		Last Modified: Fri, 18 Nov 2016 03:00:13 GMT  
		Size: 2.3 KB (2318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3d4c6708764e4a4e7a5c009ed1ea733622b9f228b1b89905d49737ed3ba994`  
		Last Modified: Fri, 18 Nov 2016 03:00:14 GMT  
		Size: 2.3 KB (2327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6-alpine`

```console
$ docker pull solr@sha256:829fe36d701d9593537590fe00ea1f20787a87f082669875a66ff2926f696290
```

-	Platforms:
	-	linux; amd64

### `solr:6-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187988348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:801f53b8453c737f395744c104dc65d16da10aa81f9bf711fb3def4f92eb4405`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Thu, 17 Nov 2016 21:47:51 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:52 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 02:40:52 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 18 Nov 2016 02:40:53 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 18 Nov 2016 02:40:53 GMT
ARG GPG_KEYSERVER
# Fri, 18 Nov 2016 02:40:57 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Fri, 18 Nov 2016 02:40:59 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_USER=solr
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_UID=8983
# Fri, 18 Nov 2016 02:41:01 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Fri, 18 Nov 2016 02:49:30 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Fri, 18 Nov 2016 02:49:34 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:49:34 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Fri, 18 Nov 2016 02:49:37 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:49:58 GMT
ENV SOLR_VERSION=6.3.0
# Fri, 18 Nov 2016 02:49:58 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Fri, 18 Nov 2016 02:49:58 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Fri, 18 Nov 2016 02:50:14 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 18 Nov 2016 02:50:15 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Fri, 18 Nov 2016 02:50:15 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 18 Nov 2016 02:50:16 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 18 Nov 2016 02:50:16 GMT
EXPOSE 8983/tcp
# Fri, 18 Nov 2016 02:50:16 GMT
WORKDIR /opt/solr
# Fri, 18 Nov 2016 02:50:17 GMT
USER [solr]
# Fri, 18 Nov 2016 02:50:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Nov 2016 02:50:17 GMT
CMD ["solr-foreground"]
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
	-	`sha256:857cbad9cd9a8609720fe041554046e94f0813b64887c3c06eac0c2cfb2be741`  
		Last Modified: Thu, 17 Nov 2016 22:03:51 GMT  
		Size: 39.7 MB (39670171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d9b1c3dec6631bdd2dbce65ff2cec30fa6a5820c444fc449d842f17abd79e0`  
		Last Modified: Fri, 18 Nov 2016 02:51:05 GMT  
		Size: 4.9 MB (4920244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b458e4a80123b468fc589df5cbe96a85de6a94e27708ebf20eea60ec27011ff`  
		Last Modified: Fri, 18 Nov 2016 02:51:03 GMT  
		Size: 607.8 KB (607777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ada25335d1c77b9121be29061039fd774d8f1751184c09ef0ed86466fee0fd`  
		Last Modified: Fri, 18 Nov 2016 02:51:02 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fdb9dcc89e2c267406cbcc46eead6378e1a706ae05ec03c9d3df02a707acee4`  
		Last Modified: Fri, 18 Nov 2016 02:58:08 GMT  
		Size: 6.5 KB (6511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede9518feb5959e19e8bebe9a0e9565c86f50940580d8445eb6e703622a7f85d`  
		Last Modified: Fri, 18 Nov 2016 02:58:07 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe7518ec568850f8a8dc34a2c8c263545c2913959db10b4b24232feafe13319`  
		Last Modified: Fri, 18 Nov 2016 03:00:28 GMT  
		Size: 140.5 MB (140464400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2919641eec2f22de666c73260b3315cb2fcccb07ec65664420d763298f3d7b`  
		Last Modified: Fri, 18 Nov 2016 03:00:13 GMT  
		Size: 2.3 KB (2318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3d4c6708764e4a4e7a5c009ed1ea733622b9f228b1b89905d49737ed3ba994`  
		Last Modified: Fri, 18 Nov 2016 03:00:14 GMT  
		Size: 2.3 KB (2327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:alpine`

```console
$ docker pull solr@sha256:829fe36d701d9593537590fe00ea1f20787a87f082669875a66ff2926f696290
```

-	Platforms:
	-	linux; amd64

### `solr:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187988348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:801f53b8453c737f395744c104dc65d16da10aa81f9bf711fb3def4f92eb4405`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Thu, 17 Nov 2016 21:47:51 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:52 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 02:40:52 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 18 Nov 2016 02:40:53 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 18 Nov 2016 02:40:53 GMT
ARG GPG_KEYSERVER
# Fri, 18 Nov 2016 02:40:57 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Fri, 18 Nov 2016 02:40:59 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_USER=solr
# Fri, 18 Nov 2016 02:41:00 GMT
ENV SOLR_UID=8983
# Fri, 18 Nov 2016 02:41:01 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Fri, 18 Nov 2016 02:49:30 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Fri, 18 Nov 2016 02:49:34 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:49:34 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Fri, 18 Nov 2016 02:49:37 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Fri, 18 Nov 2016 02:49:58 GMT
ENV SOLR_VERSION=6.3.0
# Fri, 18 Nov 2016 02:49:58 GMT
ENV SOLR_SHA256=07692257575fe54ddb8a8f64e96d3d352f2f533aa91b5752be1869d2acf2f544
# Fri, 18 Nov 2016 02:49:58 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.3.0/solr-6.3.0.tgz
# Fri, 18 Nov 2016 02:50:14 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Fri, 18 Nov 2016 02:50:15 GMT
COPY dir:9d47d3dd0c7025a38f19b76cfb19cd6acff0a605ef36b4d51067f62d7a74908a in /opt/docker-solr/scripts 
# Fri, 18 Nov 2016 02:50:15 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Fri, 18 Nov 2016 02:50:16 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 18 Nov 2016 02:50:16 GMT
EXPOSE 8983/tcp
# Fri, 18 Nov 2016 02:50:16 GMT
WORKDIR /opt/solr
# Fri, 18 Nov 2016 02:50:17 GMT
USER [solr]
# Fri, 18 Nov 2016 02:50:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 18 Nov 2016 02:50:17 GMT
CMD ["solr-foreground"]
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
	-	`sha256:857cbad9cd9a8609720fe041554046e94f0813b64887c3c06eac0c2cfb2be741`  
		Last Modified: Thu, 17 Nov 2016 22:03:51 GMT  
		Size: 39.7 MB (39670171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d9b1c3dec6631bdd2dbce65ff2cec30fa6a5820c444fc449d842f17abd79e0`  
		Last Modified: Fri, 18 Nov 2016 02:51:05 GMT  
		Size: 4.9 MB (4920244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b458e4a80123b468fc589df5cbe96a85de6a94e27708ebf20eea60ec27011ff`  
		Last Modified: Fri, 18 Nov 2016 02:51:03 GMT  
		Size: 607.8 KB (607777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ada25335d1c77b9121be29061039fd774d8f1751184c09ef0ed86466fee0fd`  
		Last Modified: Fri, 18 Nov 2016 02:51:02 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fdb9dcc89e2c267406cbcc46eead6378e1a706ae05ec03c9d3df02a707acee4`  
		Last Modified: Fri, 18 Nov 2016 02:58:08 GMT  
		Size: 6.5 KB (6511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede9518feb5959e19e8bebe9a0e9565c86f50940580d8445eb6e703622a7f85d`  
		Last Modified: Fri, 18 Nov 2016 02:58:07 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe7518ec568850f8a8dc34a2c8c263545c2913959db10b4b24232feafe13319`  
		Last Modified: Fri, 18 Nov 2016 03:00:28 GMT  
		Size: 140.5 MB (140464400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2919641eec2f22de666c73260b3315cb2fcccb07ec65664420d763298f3d7b`  
		Last Modified: Fri, 18 Nov 2016 03:00:13 GMT  
		Size: 2.3 KB (2318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3d4c6708764e4a4e7a5c009ed1ea733622b9f228b1b89905d49737ed3ba994`  
		Last Modified: Fri, 18 Nov 2016 03:00:14 GMT  
		Size: 2.3 KB (2327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
