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
-	[`solr:6`](#solr6)
-	[`solr:latest`](#solrlatest)
-	[`solr:6.2.1-alpine`](#solr621-alpine)
-	[`solr:6.2-alpine`](#solr62-alpine)
-	[`solr:6-alpine`](#solr6-alpine)
-	[`solr:alpine`](#solralpine)

## `solr:5.3.2`

```console
$ docker pull solr@sha256:2dc30b68df136d449593b229299277612426c5fcc62a9c724dc1091f2d8f875b
```

-	Platforms:
	-	linux; amd64

### `solr:5.3.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.4 MB (264407765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d8f8e20b0d87299c20f9f8ea25244b71419f9373a97f13fbabc532e68b76ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

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
# Tue, 08 Nov 2016 22:55:13 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Tue, 08 Nov 2016 22:55:13 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 08 Nov 2016 22:55:14 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 08 Nov 2016 22:57:38 GMT
ENV SOLR_VERSION=5.3.2
# Tue, 08 Nov 2016 22:57:38 GMT
ENV SOLR_SHA256=7c26601229ed712c639d00882f35304d87e0032028be4754d098a9b694877f48
# Tue, 08 Nov 2016 22:57:39 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.3.2/solr-5.3.2.tgz
# Tue, 08 Nov 2016 22:57:53 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 08 Nov 2016 22:57:54 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Tue, 08 Nov 2016 22:57:55 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 08 Nov 2016 22:58:03 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 22:58:04 GMT
EXPOSE 8983/tcp
# Tue, 08 Nov 2016 22:58:04 GMT
WORKDIR /opt/solr
# Tue, 08 Nov 2016 22:58:04 GMT
USER [solr]
# Tue, 08 Nov 2016 22:58:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Nov 2016 22:58:05 GMT
CMD ["solr"]
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
	-	`sha256:531a0514fd372f0b81952803f2391c007a2d48b994f6d18b880d77a38e54a5a1`  
		Last Modified: Tue, 08 Nov 2016 22:55:47 GMT  
		Size: 8.0 KB (7962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80b1d9edc9ec88fc659413f6b285b93073cdd3054f56c3c9e6250da5da2c2993`  
		Last Modified: Tue, 08 Nov 2016 22:58:28 GMT  
		Size: 130.1 MB (130124003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6c4b12378a469e79a5d4a03435442ebb2dad9dd5ec3d7b39d730e13b63f53e`  
		Last Modified: Tue, 08 Nov 2016 22:58:16 GMT  
		Size: 1.9 KB (1866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c14900912b925f60c4f1da543cdcb8a16df893a5cb2bb24be89b336a6919ef3`  
		Last Modified: Tue, 08 Nov 2016 22:58:16 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.3`

```console
$ docker pull solr@sha256:2dc30b68df136d449593b229299277612426c5fcc62a9c724dc1091f2d8f875b
```

-	Platforms:
	-	linux; amd64

### `solr:5.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.4 MB (264407765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d8f8e20b0d87299c20f9f8ea25244b71419f9373a97f13fbabc532e68b76ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

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
# Tue, 08 Nov 2016 22:55:13 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Tue, 08 Nov 2016 22:55:13 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 08 Nov 2016 22:55:14 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 08 Nov 2016 22:57:38 GMT
ENV SOLR_VERSION=5.3.2
# Tue, 08 Nov 2016 22:57:38 GMT
ENV SOLR_SHA256=7c26601229ed712c639d00882f35304d87e0032028be4754d098a9b694877f48
# Tue, 08 Nov 2016 22:57:39 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.3.2/solr-5.3.2.tgz
# Tue, 08 Nov 2016 22:57:53 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 08 Nov 2016 22:57:54 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Tue, 08 Nov 2016 22:57:55 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 08 Nov 2016 22:58:03 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 22:58:04 GMT
EXPOSE 8983/tcp
# Tue, 08 Nov 2016 22:58:04 GMT
WORKDIR /opt/solr
# Tue, 08 Nov 2016 22:58:04 GMT
USER [solr]
# Tue, 08 Nov 2016 22:58:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Nov 2016 22:58:05 GMT
CMD ["solr"]
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
	-	`sha256:531a0514fd372f0b81952803f2391c007a2d48b994f6d18b880d77a38e54a5a1`  
		Last Modified: Tue, 08 Nov 2016 22:55:47 GMT  
		Size: 8.0 KB (7962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80b1d9edc9ec88fc659413f6b285b93073cdd3054f56c3c9e6250da5da2c2993`  
		Last Modified: Tue, 08 Nov 2016 22:58:28 GMT  
		Size: 130.1 MB (130124003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6c4b12378a469e79a5d4a03435442ebb2dad9dd5ec3d7b39d730e13b63f53e`  
		Last Modified: Tue, 08 Nov 2016 22:58:16 GMT  
		Size: 1.9 KB (1866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c14900912b925f60c4f1da543cdcb8a16df893a5cb2bb24be89b336a6919ef3`  
		Last Modified: Tue, 08 Nov 2016 22:58:16 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.3.2-alpine`

```console
$ docker pull solr@sha256:abe42e775ed24b3b48bbebcc313e6d9f8d69c22dd1c5876bdd121f4ba82cb07f
```

-	Platforms:
	-	linux; amd64

### `solr:5.3.2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.6 MB (177628422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee399685eaddfc36dbbdbe9c7d412f0526adf9252e108109ae4cc087bd79ebbe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

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
# Wed, 19 Oct 2016 00:12:59 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 19 Oct 2016 00:12:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 19 Oct 2016 00:13:00 GMT
ARG GPG_KEYSERVER
# Wed, 19 Oct 2016 00:13:03 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 19 Oct 2016 00:13:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 19 Oct 2016 00:13:05 GMT
ENV SOLR_USER=solr
# Wed, 19 Oct 2016 00:13:05 GMT
ENV SOLR_UID=8983
# Wed, 19 Oct 2016 00:13:07 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 19 Oct 2016 00:13:07 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Wed, 19 Oct 2016 00:13:12 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Wed, 19 Oct 2016 00:13:12 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 19 Oct 2016 00:13:15 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 19 Oct 2016 00:14:32 GMT
ENV SOLR_VERSION=5.3.2
# Wed, 19 Oct 2016 00:14:32 GMT
ENV SOLR_SHA256=7c26601229ed712c639d00882f35304d87e0032028be4754d098a9b694877f48
# Wed, 19 Oct 2016 00:14:33 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.3.2/solr-5.3.2.tgz
# Wed, 19 Oct 2016 00:14:47 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 19 Oct 2016 00:14:48 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Wed, 19 Oct 2016 00:14:49 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 19 Oct 2016 00:14:49 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 19 Oct 2016 00:14:50 GMT
EXPOSE 8983/tcp
# Wed, 19 Oct 2016 00:14:50 GMT
WORKDIR /opt/solr
# Wed, 19 Oct 2016 00:14:50 GMT
USER [solr]
# Wed, 19 Oct 2016 00:14:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:14:51 GMT
CMD ["solr"]
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
	-	`sha256:0ad20b7d95b6510401e90cb5e10273ebfc9a98af20e80f5c803bc6ce3cb7d9e8`  
		Last Modified: Wed, 19 Oct 2016 00:13:49 GMT  
		Size: 4.9 MB (4921969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ad8b9dcce767ca07aadfea82fc054b76f002d99a0efc595b39ea8c239398f0`  
		Last Modified: Wed, 19 Oct 2016 00:13:48 GMT  
		Size: 607.7 KB (607748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b593e8c046ad8063eaf48b232bdf5dcb324363b3b9626335eea453a7d77132`  
		Last Modified: Wed, 19 Oct 2016 00:13:47 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657e3af2490a2a090f7e0655a8ff112be8b59f5264414de0a6aa04e609dec4a7`  
		Last Modified: Wed, 19 Oct 2016 00:13:44 GMT  
		Size: 7.6 KB (7643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f54af36fd9773451682213068049b31846aee721cb36357d4eaa63898d774c`  
		Last Modified: Wed, 19 Oct 2016 00:13:44 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99860956f57e5934240825e4dab238870e815a0a3557d16ef5fa92e470367f48`  
		Last Modified: Wed, 19 Oct 2016 00:15:12 GMT  
		Size: 130.1 MB (130123907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19d2ea1d4023b18dff27d10ae7b2f365058b0bcf8ed8385f3adacab7543bbab`  
		Last Modified: Wed, 19 Oct 2016 00:15:00 GMT  
		Size: 1.9 KB (1864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871187244be27fb3aa1b064c591f2c96f61e8acef4141c799786f5a7e6a0a269`  
		Last Modified: Wed, 19 Oct 2016 00:15:00 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.3-alpine`

```console
$ docker pull solr@sha256:abe42e775ed24b3b48bbebcc313e6d9f8d69c22dd1c5876bdd121f4ba82cb07f
```

-	Platforms:
	-	linux; amd64

### `solr:5.3-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.6 MB (177628422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee399685eaddfc36dbbdbe9c7d412f0526adf9252e108109ae4cc087bd79ebbe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

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
# Wed, 19 Oct 2016 00:12:59 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 19 Oct 2016 00:12:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 19 Oct 2016 00:13:00 GMT
ARG GPG_KEYSERVER
# Wed, 19 Oct 2016 00:13:03 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 19 Oct 2016 00:13:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 19 Oct 2016 00:13:05 GMT
ENV SOLR_USER=solr
# Wed, 19 Oct 2016 00:13:05 GMT
ENV SOLR_UID=8983
# Wed, 19 Oct 2016 00:13:07 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 19 Oct 2016 00:13:07 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Wed, 19 Oct 2016 00:13:12 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Wed, 19 Oct 2016 00:13:12 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 19 Oct 2016 00:13:15 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 19 Oct 2016 00:14:32 GMT
ENV SOLR_VERSION=5.3.2
# Wed, 19 Oct 2016 00:14:32 GMT
ENV SOLR_SHA256=7c26601229ed712c639d00882f35304d87e0032028be4754d098a9b694877f48
# Wed, 19 Oct 2016 00:14:33 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.3.2/solr-5.3.2.tgz
# Wed, 19 Oct 2016 00:14:47 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 19 Oct 2016 00:14:48 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Wed, 19 Oct 2016 00:14:49 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 19 Oct 2016 00:14:49 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 19 Oct 2016 00:14:50 GMT
EXPOSE 8983/tcp
# Wed, 19 Oct 2016 00:14:50 GMT
WORKDIR /opt/solr
# Wed, 19 Oct 2016 00:14:50 GMT
USER [solr]
# Wed, 19 Oct 2016 00:14:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:14:51 GMT
CMD ["solr"]
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
	-	`sha256:0ad20b7d95b6510401e90cb5e10273ebfc9a98af20e80f5c803bc6ce3cb7d9e8`  
		Last Modified: Wed, 19 Oct 2016 00:13:49 GMT  
		Size: 4.9 MB (4921969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ad8b9dcce767ca07aadfea82fc054b76f002d99a0efc595b39ea8c239398f0`  
		Last Modified: Wed, 19 Oct 2016 00:13:48 GMT  
		Size: 607.7 KB (607748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b593e8c046ad8063eaf48b232bdf5dcb324363b3b9626335eea453a7d77132`  
		Last Modified: Wed, 19 Oct 2016 00:13:47 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657e3af2490a2a090f7e0655a8ff112be8b59f5264414de0a6aa04e609dec4a7`  
		Last Modified: Wed, 19 Oct 2016 00:13:44 GMT  
		Size: 7.6 KB (7643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f54af36fd9773451682213068049b31846aee721cb36357d4eaa63898d774c`  
		Last Modified: Wed, 19 Oct 2016 00:13:44 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99860956f57e5934240825e4dab238870e815a0a3557d16ef5fa92e470367f48`  
		Last Modified: Wed, 19 Oct 2016 00:15:12 GMT  
		Size: 130.1 MB (130123907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19d2ea1d4023b18dff27d10ae7b2f365058b0bcf8ed8385f3adacab7543bbab`  
		Last Modified: Wed, 19 Oct 2016 00:15:00 GMT  
		Size: 1.9 KB (1864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871187244be27fb3aa1b064c591f2c96f61e8acef4141c799786f5a7e6a0a269`  
		Last Modified: Wed, 19 Oct 2016 00:15:00 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.4.1`

```console
$ docker pull solr@sha256:22464d9b8166d8b6c77a47f92d40e161bc3d22f9c37b612d5e39d3e95ea276d0
```

-	Platforms:
	-	linux; amd64

### `solr:5.4.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265731888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:344bfa9da156c374c802be4469bd36e83bfcaa2aa7ce12916e27cbc47260700c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

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
# Tue, 08 Nov 2016 22:59:40 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Tue, 08 Nov 2016 22:59:41 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 08 Nov 2016 22:59:41 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 22:59:42 GMT
EXPOSE 8983/tcp
# Tue, 08 Nov 2016 22:59:42 GMT
WORKDIR /opt/solr
# Tue, 08 Nov 2016 22:59:43 GMT
USER [solr]
# Tue, 08 Nov 2016 22:59:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Nov 2016 22:59:43 GMT
CMD ["solr"]
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
	-	`sha256:e927e4d30b925fd7f4ece5007a1dc7924868cb97368f1cd46d555d69fbcfbf26`  
		Last Modified: Tue, 08 Nov 2016 22:59:56 GMT  
		Size: 1.9 KB (1866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0ecfe7f079afa5f75e69a1f8b3637495f6cbba1970481d9f268ce1cd8b461a`  
		Last Modified: Tue, 08 Nov 2016 22:59:56 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.4`

```console
$ docker pull solr@sha256:22464d9b8166d8b6c77a47f92d40e161bc3d22f9c37b612d5e39d3e95ea276d0
```

-	Platforms:
	-	linux; amd64

### `solr:5.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265731888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:344bfa9da156c374c802be4469bd36e83bfcaa2aa7ce12916e27cbc47260700c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

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
# Tue, 08 Nov 2016 22:59:40 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Tue, 08 Nov 2016 22:59:41 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 08 Nov 2016 22:59:41 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 22:59:42 GMT
EXPOSE 8983/tcp
# Tue, 08 Nov 2016 22:59:42 GMT
WORKDIR /opt/solr
# Tue, 08 Nov 2016 22:59:43 GMT
USER [solr]
# Tue, 08 Nov 2016 22:59:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Nov 2016 22:59:43 GMT
CMD ["solr"]
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
	-	`sha256:e927e4d30b925fd7f4ece5007a1dc7924868cb97368f1cd46d555d69fbcfbf26`  
		Last Modified: Tue, 08 Nov 2016 22:59:56 GMT  
		Size: 1.9 KB (1866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0ecfe7f079afa5f75e69a1f8b3637495f6cbba1970481d9f268ce1cd8b461a`  
		Last Modified: Tue, 08 Nov 2016 22:59:56 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.4.1-alpine`

```console
$ docker pull solr@sha256:a09377bc57634327e7f19118bce77bcda890a79a1520970c01b5d87450b48be9
```

-	Platforms:
	-	linux; amd64

### `solr:5.4.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (178952439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:503d10c5d6c9e5c9f317cd10d25d403e462c60e138072d635dd9f57479813669`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

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
# Wed, 19 Oct 2016 00:12:59 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 19 Oct 2016 00:12:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 19 Oct 2016 00:13:00 GMT
ARG GPG_KEYSERVER
# Wed, 19 Oct 2016 00:13:03 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 19 Oct 2016 00:13:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 19 Oct 2016 00:13:05 GMT
ENV SOLR_USER=solr
# Wed, 19 Oct 2016 00:13:05 GMT
ENV SOLR_UID=8983
# Wed, 19 Oct 2016 00:13:07 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 19 Oct 2016 00:15:31 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Wed, 19 Oct 2016 00:15:36 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Wed, 19 Oct 2016 00:15:36 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 19 Oct 2016 00:15:39 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 19 Oct 2016 00:15:39 GMT
ENV SOLR_VERSION=5.4.1
# Wed, 19 Oct 2016 00:15:39 GMT
ENV SOLR_SHA256=3e4b4ec7bd728b49b2ebc3dbe8f3d1ef89fded4ab86b9e2f856bedd58c99f28b
# Wed, 19 Oct 2016 00:15:40 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.4.1/solr-5.4.1.tgz
# Wed, 19 Oct 2016 00:15:55 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 19 Oct 2016 00:15:55 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Wed, 19 Oct 2016 00:15:56 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 19 Oct 2016 00:15:56 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 19 Oct 2016 00:15:57 GMT
EXPOSE 8983/tcp
# Wed, 19 Oct 2016 00:15:57 GMT
WORKDIR /opt/solr
# Wed, 19 Oct 2016 00:15:58 GMT
USER [solr]
# Wed, 19 Oct 2016 00:15:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:15:58 GMT
CMD ["solr"]
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
	-	`sha256:0ad20b7d95b6510401e90cb5e10273ebfc9a98af20e80f5c803bc6ce3cb7d9e8`  
		Last Modified: Wed, 19 Oct 2016 00:13:49 GMT  
		Size: 4.9 MB (4921969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ad8b9dcce767ca07aadfea82fc054b76f002d99a0efc595b39ea8c239398f0`  
		Last Modified: Wed, 19 Oct 2016 00:13:48 GMT  
		Size: 607.7 KB (607748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b593e8c046ad8063eaf48b232bdf5dcb324363b3b9626335eea453a7d77132`  
		Last Modified: Wed, 19 Oct 2016 00:13:47 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9568b3694c8db82d42ea69cd8ef85c41deb705c12d5a09115250a83d27f5257`  
		Last Modified: Wed, 19 Oct 2016 00:16:07 GMT  
		Size: 7.1 KB (7087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebae19f4bccfcebdef8410809164f7a6431d7bf123079d7e2aaa3331c7abb576`  
		Last Modified: Wed, 19 Oct 2016 00:16:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a664a75b9bdcf58dcfaff7327b02003a936be63ca568b201427e27a034f2051`  
		Last Modified: Wed, 19 Oct 2016 00:16:19 GMT  
		Size: 131.4 MB (131448472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc801ca1842c62c757669200d61fff2e0ec93afc41d93b8af450d7820a3266d0`  
		Last Modified: Wed, 19 Oct 2016 00:16:08 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02944d0f51b296472cd6e4feac85d518a2622a2e7ce36dcb68b0d9e769bf46b1`  
		Last Modified: Wed, 19 Oct 2016 00:16:07 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.4-alpine`

```console
$ docker pull solr@sha256:a09377bc57634327e7f19118bce77bcda890a79a1520970c01b5d87450b48be9
```

-	Platforms:
	-	linux; amd64

### `solr:5.4-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (178952439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:503d10c5d6c9e5c9f317cd10d25d403e462c60e138072d635dd9f57479813669`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

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
# Wed, 19 Oct 2016 00:12:59 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 19 Oct 2016 00:12:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 19 Oct 2016 00:13:00 GMT
ARG GPG_KEYSERVER
# Wed, 19 Oct 2016 00:13:03 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 19 Oct 2016 00:13:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 19 Oct 2016 00:13:05 GMT
ENV SOLR_USER=solr
# Wed, 19 Oct 2016 00:13:05 GMT
ENV SOLR_UID=8983
# Wed, 19 Oct 2016 00:13:07 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 19 Oct 2016 00:15:31 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Wed, 19 Oct 2016 00:15:36 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Wed, 19 Oct 2016 00:15:36 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 19 Oct 2016 00:15:39 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 19 Oct 2016 00:15:39 GMT
ENV SOLR_VERSION=5.4.1
# Wed, 19 Oct 2016 00:15:39 GMT
ENV SOLR_SHA256=3e4b4ec7bd728b49b2ebc3dbe8f3d1ef89fded4ab86b9e2f856bedd58c99f28b
# Wed, 19 Oct 2016 00:15:40 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.4.1/solr-5.4.1.tgz
# Wed, 19 Oct 2016 00:15:55 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 19 Oct 2016 00:15:55 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Wed, 19 Oct 2016 00:15:56 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 19 Oct 2016 00:15:56 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 19 Oct 2016 00:15:57 GMT
EXPOSE 8983/tcp
# Wed, 19 Oct 2016 00:15:57 GMT
WORKDIR /opt/solr
# Wed, 19 Oct 2016 00:15:58 GMT
USER [solr]
# Wed, 19 Oct 2016 00:15:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:15:58 GMT
CMD ["solr"]
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
	-	`sha256:0ad20b7d95b6510401e90cb5e10273ebfc9a98af20e80f5c803bc6ce3cb7d9e8`  
		Last Modified: Wed, 19 Oct 2016 00:13:49 GMT  
		Size: 4.9 MB (4921969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ad8b9dcce767ca07aadfea82fc054b76f002d99a0efc595b39ea8c239398f0`  
		Last Modified: Wed, 19 Oct 2016 00:13:48 GMT  
		Size: 607.7 KB (607748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b593e8c046ad8063eaf48b232bdf5dcb324363b3b9626335eea453a7d77132`  
		Last Modified: Wed, 19 Oct 2016 00:13:47 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9568b3694c8db82d42ea69cd8ef85c41deb705c12d5a09115250a83d27f5257`  
		Last Modified: Wed, 19 Oct 2016 00:16:07 GMT  
		Size: 7.1 KB (7087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebae19f4bccfcebdef8410809164f7a6431d7bf123079d7e2aaa3331c7abb576`  
		Last Modified: Wed, 19 Oct 2016 00:16:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a664a75b9bdcf58dcfaff7327b02003a936be63ca568b201427e27a034f2051`  
		Last Modified: Wed, 19 Oct 2016 00:16:19 GMT  
		Size: 131.4 MB (131448472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc801ca1842c62c757669200d61fff2e0ec93afc41d93b8af450d7820a3266d0`  
		Last Modified: Wed, 19 Oct 2016 00:16:08 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02944d0f51b296472cd6e4feac85d518a2622a2e7ce36dcb68b0d9e769bf46b1`  
		Last Modified: Wed, 19 Oct 2016 00:16:07 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5.3`

```console
$ docker pull solr@sha256:03c994dda5d1826fbe287eca95184fe9208fd4ef682f5c54a9fdd9e42c35e1ce
```

-	Platforms:
	-	linux; amd64

### `solr:5.5.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266128223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e99edcc2f3297bbf804249cab0e444c0464964dd4e7b7c4f125252142717b50b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

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
# Tue, 08 Nov 2016 22:55:13 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Tue, 08 Nov 2016 22:55:13 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 08 Nov 2016 22:55:14 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 08 Nov 2016 22:55:15 GMT
ENV SOLR_VERSION=5.5.3
# Tue, 08 Nov 2016 22:55:15 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Tue, 08 Nov 2016 22:55:15 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Tue, 08 Nov 2016 22:55:30 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 08 Nov 2016 22:55:31 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Tue, 08 Nov 2016 22:55:32 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 08 Nov 2016 22:55:32 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 22:55:33 GMT
EXPOSE 8983/tcp
# Tue, 08 Nov 2016 22:55:33 GMT
WORKDIR /opt/solr
# Tue, 08 Nov 2016 22:55:33 GMT
USER [solr]
# Tue, 08 Nov 2016 22:55:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Nov 2016 22:55:34 GMT
CMD ["solr"]
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
	-	`sha256:531a0514fd372f0b81952803f2391c007a2d48b994f6d18b880d77a38e54a5a1`  
		Last Modified: Tue, 08 Nov 2016 22:55:47 GMT  
		Size: 8.0 KB (7962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550701ade07d487d7ce6e4b40368801b8adb54a3f72622872a0c4cbf34e44dc9`  
		Last Modified: Tue, 08 Nov 2016 22:56:07 GMT  
		Size: 131.8 MB (131844457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f120cec1b98e7053b6e8643fcca1ab6129f9c53f24a77245af62f532e44216f`  
		Last Modified: Tue, 08 Nov 2016 22:55:47 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310b98a0509629429e134c14f62143227efca574418235acd18b26da48a3e478`  
		Last Modified: Tue, 08 Nov 2016 22:55:47 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5`

```console
$ docker pull solr@sha256:03c994dda5d1826fbe287eca95184fe9208fd4ef682f5c54a9fdd9e42c35e1ce
```

-	Platforms:
	-	linux; amd64

### `solr:5.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266128223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e99edcc2f3297bbf804249cab0e444c0464964dd4e7b7c4f125252142717b50b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

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
# Tue, 08 Nov 2016 22:55:13 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Tue, 08 Nov 2016 22:55:13 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 08 Nov 2016 22:55:14 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 08 Nov 2016 22:55:15 GMT
ENV SOLR_VERSION=5.5.3
# Tue, 08 Nov 2016 22:55:15 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Tue, 08 Nov 2016 22:55:15 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Tue, 08 Nov 2016 22:55:30 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 08 Nov 2016 22:55:31 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Tue, 08 Nov 2016 22:55:32 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 08 Nov 2016 22:55:32 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 22:55:33 GMT
EXPOSE 8983/tcp
# Tue, 08 Nov 2016 22:55:33 GMT
WORKDIR /opt/solr
# Tue, 08 Nov 2016 22:55:33 GMT
USER [solr]
# Tue, 08 Nov 2016 22:55:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Nov 2016 22:55:34 GMT
CMD ["solr"]
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
	-	`sha256:531a0514fd372f0b81952803f2391c007a2d48b994f6d18b880d77a38e54a5a1`  
		Last Modified: Tue, 08 Nov 2016 22:55:47 GMT  
		Size: 8.0 KB (7962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550701ade07d487d7ce6e4b40368801b8adb54a3f72622872a0c4cbf34e44dc9`  
		Last Modified: Tue, 08 Nov 2016 22:56:07 GMT  
		Size: 131.8 MB (131844457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f120cec1b98e7053b6e8643fcca1ab6129f9c53f24a77245af62f532e44216f`  
		Last Modified: Tue, 08 Nov 2016 22:55:47 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310b98a0509629429e134c14f62143227efca574418235acd18b26da48a3e478`  
		Last Modified: Tue, 08 Nov 2016 22:55:47 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5`

```console
$ docker pull solr@sha256:03c994dda5d1826fbe287eca95184fe9208fd4ef682f5c54a9fdd9e42c35e1ce
```

-	Platforms:
	-	linux; amd64

### `solr:5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266128223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e99edcc2f3297bbf804249cab0e444c0464964dd4e7b7c4f125252142717b50b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

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
# Tue, 08 Nov 2016 22:55:13 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Tue, 08 Nov 2016 22:55:13 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 08 Nov 2016 22:55:14 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 08 Nov 2016 22:55:15 GMT
ENV SOLR_VERSION=5.5.3
# Tue, 08 Nov 2016 22:55:15 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Tue, 08 Nov 2016 22:55:15 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Tue, 08 Nov 2016 22:55:30 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 08 Nov 2016 22:55:31 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Tue, 08 Nov 2016 22:55:32 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 08 Nov 2016 22:55:32 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 22:55:33 GMT
EXPOSE 8983/tcp
# Tue, 08 Nov 2016 22:55:33 GMT
WORKDIR /opt/solr
# Tue, 08 Nov 2016 22:55:33 GMT
USER [solr]
# Tue, 08 Nov 2016 22:55:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Nov 2016 22:55:34 GMT
CMD ["solr"]
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
	-	`sha256:531a0514fd372f0b81952803f2391c007a2d48b994f6d18b880d77a38e54a5a1`  
		Last Modified: Tue, 08 Nov 2016 22:55:47 GMT  
		Size: 8.0 KB (7962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550701ade07d487d7ce6e4b40368801b8adb54a3f72622872a0c4cbf34e44dc9`  
		Last Modified: Tue, 08 Nov 2016 22:56:07 GMT  
		Size: 131.8 MB (131844457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f120cec1b98e7053b6e8643fcca1ab6129f9c53f24a77245af62f532e44216f`  
		Last Modified: Tue, 08 Nov 2016 22:55:47 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310b98a0509629429e134c14f62143227efca574418235acd18b26da48a3e478`  
		Last Modified: Tue, 08 Nov 2016 22:55:47 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5.3-alpine`

```console
$ docker pull solr@sha256:c5ae55f44ef913b41a55d112fcfb18071dd7cf79b9116f52f71642d511fbb916
```

-	Platforms:
	-	linux; amd64

### `solr:5.5.3-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.3 MB (179349001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:026d0c22ca8d3b6dd31e07ddce5706830260b2e470cab99016cf286936f083a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

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
# Wed, 19 Oct 2016 00:12:59 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 19 Oct 2016 00:12:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 19 Oct 2016 00:13:00 GMT
ARG GPG_KEYSERVER
# Wed, 19 Oct 2016 00:13:03 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 19 Oct 2016 00:13:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 19 Oct 2016 00:13:05 GMT
ENV SOLR_USER=solr
# Wed, 19 Oct 2016 00:13:05 GMT
ENV SOLR_UID=8983
# Wed, 19 Oct 2016 00:13:07 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 19 Oct 2016 00:13:07 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Wed, 19 Oct 2016 00:13:12 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Wed, 19 Oct 2016 00:13:12 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 19 Oct 2016 00:13:15 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 19 Oct 2016 00:13:15 GMT
ENV SOLR_VERSION=5.5.3
# Wed, 19 Oct 2016 00:13:16 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Wed, 19 Oct 2016 00:13:16 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Wed, 19 Oct 2016 00:13:32 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 19 Oct 2016 00:13:32 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Wed, 19 Oct 2016 00:13:33 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 19 Oct 2016 00:13:34 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 19 Oct 2016 00:13:34 GMT
EXPOSE 8983/tcp
# Wed, 19 Oct 2016 00:13:34 GMT
WORKDIR /opt/solr
# Wed, 19 Oct 2016 00:13:35 GMT
USER [solr]
# Wed, 19 Oct 2016 00:13:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:13:35 GMT
CMD ["solr"]
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
	-	`sha256:0ad20b7d95b6510401e90cb5e10273ebfc9a98af20e80f5c803bc6ce3cb7d9e8`  
		Last Modified: Wed, 19 Oct 2016 00:13:49 GMT  
		Size: 4.9 MB (4921969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ad8b9dcce767ca07aadfea82fc054b76f002d99a0efc595b39ea8c239398f0`  
		Last Modified: Wed, 19 Oct 2016 00:13:48 GMT  
		Size: 607.7 KB (607748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b593e8c046ad8063eaf48b232bdf5dcb324363b3b9626335eea453a7d77132`  
		Last Modified: Wed, 19 Oct 2016 00:13:47 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657e3af2490a2a090f7e0655a8ff112be8b59f5264414de0a6aa04e609dec4a7`  
		Last Modified: Wed, 19 Oct 2016 00:13:44 GMT  
		Size: 7.6 KB (7643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f54af36fd9773451682213068049b31846aee721cb36357d4eaa63898d774c`  
		Last Modified: Wed, 19 Oct 2016 00:13:44 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8d8bf73f45988b0cf6246b3e9815a20ce13f8a152d8a18bf678c76c0de67ed`  
		Last Modified: Wed, 19 Oct 2016 00:13:59 GMT  
		Size: 131.8 MB (131844484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0d8aaeed1a86f8ce6bc09a6d19634fdbca3e707e713022fbeb500ec7ff82a0`  
		Last Modified: Wed, 19 Oct 2016 00:13:44 GMT  
		Size: 1.9 KB (1867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03fff0cb3a5ad417a05cc075916bff2e96f80bce20659f1331a8c07c0865318`  
		Last Modified: Wed, 19 Oct 2016 00:13:44 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5-alpine`

```console
$ docker pull solr@sha256:c5ae55f44ef913b41a55d112fcfb18071dd7cf79b9116f52f71642d511fbb916
```

-	Platforms:
	-	linux; amd64

### `solr:5.5-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.3 MB (179349001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:026d0c22ca8d3b6dd31e07ddce5706830260b2e470cab99016cf286936f083a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

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
# Wed, 19 Oct 2016 00:12:59 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 19 Oct 2016 00:12:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 19 Oct 2016 00:13:00 GMT
ARG GPG_KEYSERVER
# Wed, 19 Oct 2016 00:13:03 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 19 Oct 2016 00:13:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 19 Oct 2016 00:13:05 GMT
ENV SOLR_USER=solr
# Wed, 19 Oct 2016 00:13:05 GMT
ENV SOLR_UID=8983
# Wed, 19 Oct 2016 00:13:07 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 19 Oct 2016 00:13:07 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Wed, 19 Oct 2016 00:13:12 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Wed, 19 Oct 2016 00:13:12 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 19 Oct 2016 00:13:15 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 19 Oct 2016 00:13:15 GMT
ENV SOLR_VERSION=5.5.3
# Wed, 19 Oct 2016 00:13:16 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Wed, 19 Oct 2016 00:13:16 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Wed, 19 Oct 2016 00:13:32 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 19 Oct 2016 00:13:32 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Wed, 19 Oct 2016 00:13:33 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 19 Oct 2016 00:13:34 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 19 Oct 2016 00:13:34 GMT
EXPOSE 8983/tcp
# Wed, 19 Oct 2016 00:13:34 GMT
WORKDIR /opt/solr
# Wed, 19 Oct 2016 00:13:35 GMT
USER [solr]
# Wed, 19 Oct 2016 00:13:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:13:35 GMT
CMD ["solr"]
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
	-	`sha256:0ad20b7d95b6510401e90cb5e10273ebfc9a98af20e80f5c803bc6ce3cb7d9e8`  
		Last Modified: Wed, 19 Oct 2016 00:13:49 GMT  
		Size: 4.9 MB (4921969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ad8b9dcce767ca07aadfea82fc054b76f002d99a0efc595b39ea8c239398f0`  
		Last Modified: Wed, 19 Oct 2016 00:13:48 GMT  
		Size: 607.7 KB (607748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b593e8c046ad8063eaf48b232bdf5dcb324363b3b9626335eea453a7d77132`  
		Last Modified: Wed, 19 Oct 2016 00:13:47 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657e3af2490a2a090f7e0655a8ff112be8b59f5264414de0a6aa04e609dec4a7`  
		Last Modified: Wed, 19 Oct 2016 00:13:44 GMT  
		Size: 7.6 KB (7643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f54af36fd9773451682213068049b31846aee721cb36357d4eaa63898d774c`  
		Last Modified: Wed, 19 Oct 2016 00:13:44 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8d8bf73f45988b0cf6246b3e9815a20ce13f8a152d8a18bf678c76c0de67ed`  
		Last Modified: Wed, 19 Oct 2016 00:13:59 GMT  
		Size: 131.8 MB (131844484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0d8aaeed1a86f8ce6bc09a6d19634fdbca3e707e713022fbeb500ec7ff82a0`  
		Last Modified: Wed, 19 Oct 2016 00:13:44 GMT  
		Size: 1.9 KB (1867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03fff0cb3a5ad417a05cc075916bff2e96f80bce20659f1331a8c07c0865318`  
		Last Modified: Wed, 19 Oct 2016 00:13:44 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5-alpine`

```console
$ docker pull solr@sha256:c5ae55f44ef913b41a55d112fcfb18071dd7cf79b9116f52f71642d511fbb916
```

-	Platforms:
	-	linux; amd64

### `solr:5-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.3 MB (179349001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:026d0c22ca8d3b6dd31e07ddce5706830260b2e470cab99016cf286936f083a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

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
# Wed, 19 Oct 2016 00:12:59 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 19 Oct 2016 00:12:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 19 Oct 2016 00:13:00 GMT
ARG GPG_KEYSERVER
# Wed, 19 Oct 2016 00:13:03 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 19 Oct 2016 00:13:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 19 Oct 2016 00:13:05 GMT
ENV SOLR_USER=solr
# Wed, 19 Oct 2016 00:13:05 GMT
ENV SOLR_UID=8983
# Wed, 19 Oct 2016 00:13:07 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 19 Oct 2016 00:13:07 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Wed, 19 Oct 2016 00:13:12 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Wed, 19 Oct 2016 00:13:12 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 19 Oct 2016 00:13:15 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 19 Oct 2016 00:13:15 GMT
ENV SOLR_VERSION=5.5.3
# Wed, 19 Oct 2016 00:13:16 GMT
ENV SOLR_SHA256=74e8a924dac0e073854af121a6de9d58fe8cc315d16b57e17f429c6a91b0b065
# Wed, 19 Oct 2016 00:13:16 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.3/solr-5.5.3.tgz
# Wed, 19 Oct 2016 00:13:32 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 19 Oct 2016 00:13:32 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Wed, 19 Oct 2016 00:13:33 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 19 Oct 2016 00:13:34 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 19 Oct 2016 00:13:34 GMT
EXPOSE 8983/tcp
# Wed, 19 Oct 2016 00:13:34 GMT
WORKDIR /opt/solr
# Wed, 19 Oct 2016 00:13:35 GMT
USER [solr]
# Wed, 19 Oct 2016 00:13:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:13:35 GMT
CMD ["solr"]
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
	-	`sha256:0ad20b7d95b6510401e90cb5e10273ebfc9a98af20e80f5c803bc6ce3cb7d9e8`  
		Last Modified: Wed, 19 Oct 2016 00:13:49 GMT  
		Size: 4.9 MB (4921969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ad8b9dcce767ca07aadfea82fc054b76f002d99a0efc595b39ea8c239398f0`  
		Last Modified: Wed, 19 Oct 2016 00:13:48 GMT  
		Size: 607.7 KB (607748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b593e8c046ad8063eaf48b232bdf5dcb324363b3b9626335eea453a7d77132`  
		Last Modified: Wed, 19 Oct 2016 00:13:47 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657e3af2490a2a090f7e0655a8ff112be8b59f5264414de0a6aa04e609dec4a7`  
		Last Modified: Wed, 19 Oct 2016 00:13:44 GMT  
		Size: 7.6 KB (7643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f54af36fd9773451682213068049b31846aee721cb36357d4eaa63898d774c`  
		Last Modified: Wed, 19 Oct 2016 00:13:44 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8d8bf73f45988b0cf6246b3e9815a20ce13f8a152d8a18bf678c76c0de67ed`  
		Last Modified: Wed, 19 Oct 2016 00:13:59 GMT  
		Size: 131.8 MB (131844484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0d8aaeed1a86f8ce6bc09a6d19634fdbca3e707e713022fbeb500ec7ff82a0`  
		Last Modified: Wed, 19 Oct 2016 00:13:44 GMT  
		Size: 1.9 KB (1867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03fff0cb3a5ad417a05cc075916bff2e96f80bce20659f1331a8c07c0865318`  
		Last Modified: Wed, 19 Oct 2016 00:13:44 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.0.1`

```console
$ docker pull solr@sha256:d02617658755dee2a619f1e4a8680a6d60d51b9a121be8b3137193dd49b7c96a
```

-	Platforms:
	-	linux; amd64

### `solr:6.0.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267077573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6080d3a43767942ffcd43b50af70e9b5c4dbc2cb109f7d94faf7e70eb330f3ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

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
# Tue, 08 Nov 2016 23:04:10 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Tue, 08 Nov 2016 23:04:10 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 08 Nov 2016 23:04:12 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 08 Nov 2016 23:04:13 GMT
ENV SOLR_VERSION=6.0.1
# Tue, 08 Nov 2016 23:04:13 GMT
ENV SOLR_SHA256=4fd25942f0b8083a2499e1dc606c6dd29e4b520c28a16a2d82111088126d43af
# Tue, 08 Nov 2016 23:04:13 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.0.1/solr-6.0.1.tgz
# Tue, 08 Nov 2016 23:04:28 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 08 Nov 2016 23:04:29 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Tue, 08 Nov 2016 23:04:37 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 08 Nov 2016 23:04:38 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 23:04:38 GMT
EXPOSE 8983/tcp
# Tue, 08 Nov 2016 23:04:38 GMT
WORKDIR /opt/solr
# Tue, 08 Nov 2016 23:04:39 GMT
USER [solr]
# Tue, 08 Nov 2016 23:04:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Nov 2016 23:04:40 GMT
CMD ["solr"]
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
	-	`sha256:254b0f163a5c1b229db234ab0979568e19d427968e679a587b5230af5107ae0f`  
		Last Modified: Tue, 08 Nov 2016 23:04:51 GMT  
		Size: 14.6 KB (14562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eba295bc906e9089314630465372e43a30cf9ff814d51a3375194f702781176`  
		Last Modified: Tue, 08 Nov 2016 23:05:07 GMT  
		Size: 132.8 MB (132787210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db7cf2bf1e4d54509674071504405aa04b555819b521a08ee970ce8667f3721`  
		Last Modified: Tue, 08 Nov 2016 23:04:51 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b38c1e9d9e0d0617ac909861b624c4eec2b6ec285f3b498a3120fbcd5905a2`  
		Last Modified: Tue, 08 Nov 2016 23:04:51 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.0`

```console
$ docker pull solr@sha256:d02617658755dee2a619f1e4a8680a6d60d51b9a121be8b3137193dd49b7c96a
```

-	Platforms:
	-	linux; amd64

### `solr:6.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.1 MB (267077573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6080d3a43767942ffcd43b50af70e9b5c4dbc2cb109f7d94faf7e70eb330f3ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

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
# Tue, 08 Nov 2016 23:04:10 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Tue, 08 Nov 2016 23:04:10 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 08 Nov 2016 23:04:12 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 08 Nov 2016 23:04:13 GMT
ENV SOLR_VERSION=6.0.1
# Tue, 08 Nov 2016 23:04:13 GMT
ENV SOLR_SHA256=4fd25942f0b8083a2499e1dc606c6dd29e4b520c28a16a2d82111088126d43af
# Tue, 08 Nov 2016 23:04:13 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.0.1/solr-6.0.1.tgz
# Tue, 08 Nov 2016 23:04:28 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 08 Nov 2016 23:04:29 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Tue, 08 Nov 2016 23:04:37 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 08 Nov 2016 23:04:38 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 23:04:38 GMT
EXPOSE 8983/tcp
# Tue, 08 Nov 2016 23:04:38 GMT
WORKDIR /opt/solr
# Tue, 08 Nov 2016 23:04:39 GMT
USER [solr]
# Tue, 08 Nov 2016 23:04:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Nov 2016 23:04:40 GMT
CMD ["solr"]
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
	-	`sha256:254b0f163a5c1b229db234ab0979568e19d427968e679a587b5230af5107ae0f`  
		Last Modified: Tue, 08 Nov 2016 23:04:51 GMT  
		Size: 14.6 KB (14562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eba295bc906e9089314630465372e43a30cf9ff814d51a3375194f702781176`  
		Last Modified: Tue, 08 Nov 2016 23:05:07 GMT  
		Size: 132.8 MB (132787210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db7cf2bf1e4d54509674071504405aa04b555819b521a08ee970ce8667f3721`  
		Last Modified: Tue, 08 Nov 2016 23:04:51 GMT  
		Size: 1.9 KB (1869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b38c1e9d9e0d0617ac909861b624c4eec2b6ec285f3b498a3120fbcd5905a2`  
		Last Modified: Tue, 08 Nov 2016 23:04:51 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.0.1-alpine`

```console
$ docker pull solr@sha256:e9a81bd206876d415498ea331db82982d961c8377f7fa260f52916ed1ac7092d
```

-	Platforms:
	-	linux; amd64

### `solr:6.0.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.3 MB (180298040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33c329b7816080b77fbd42cc7eb92ee5f35cd71b891f742ce6c3bdc6b7999e24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

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
# Wed, 19 Oct 2016 00:12:59 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 19 Oct 2016 00:12:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 19 Oct 2016 00:13:00 GMT
ARG GPG_KEYSERVER
# Wed, 19 Oct 2016 00:13:03 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 19 Oct 2016 00:13:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 19 Oct 2016 00:13:05 GMT
ENV SOLR_USER=solr
# Wed, 19 Oct 2016 00:13:05 GMT
ENV SOLR_UID=8983
# Wed, 19 Oct 2016 00:13:07 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 19 Oct 2016 00:18:26 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Wed, 19 Oct 2016 00:18:31 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Wed, 19 Oct 2016 00:18:32 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 19 Oct 2016 00:18:34 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 19 Oct 2016 00:18:35 GMT
ENV SOLR_VERSION=6.0.1
# Wed, 19 Oct 2016 00:18:35 GMT
ENV SOLR_SHA256=4fd25942f0b8083a2499e1dc606c6dd29e4b520c28a16a2d82111088126d43af
# Wed, 19 Oct 2016 00:18:35 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.0.1/solr-6.0.1.tgz
# Wed, 19 Oct 2016 00:18:51 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 19 Oct 2016 00:18:51 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Wed, 19 Oct 2016 00:18:52 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 19 Oct 2016 00:18:53 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 19 Oct 2016 00:18:53 GMT
EXPOSE 8983/tcp
# Wed, 19 Oct 2016 00:18:53 GMT
WORKDIR /opt/solr
# Wed, 19 Oct 2016 00:18:54 GMT
USER [solr]
# Wed, 19 Oct 2016 00:18:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:18:54 GMT
CMD ["solr"]
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
	-	`sha256:0ad20b7d95b6510401e90cb5e10273ebfc9a98af20e80f5c803bc6ce3cb7d9e8`  
		Last Modified: Wed, 19 Oct 2016 00:13:49 GMT  
		Size: 4.9 MB (4921969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ad8b9dcce767ca07aadfea82fc054b76f002d99a0efc595b39ea8c239398f0`  
		Last Modified: Wed, 19 Oct 2016 00:13:48 GMT  
		Size: 607.7 KB (607748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b593e8c046ad8063eaf48b232bdf5dcb324363b3b9626335eea453a7d77132`  
		Last Modified: Wed, 19 Oct 2016 00:13:47 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0e12172027d3f8e410655a47e55a126ab1f9f048d9b6d9b652836686dbdb15`  
		Last Modified: Wed, 19 Oct 2016 00:19:04 GMT  
		Size: 14.1 KB (14127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92ed7aeb3a2619e208a46d5d30a3a640a4cca872bed910477a2304db70422a5`  
		Last Modified: Wed, 19 Oct 2016 00:19:04 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3345205bbb005dbbe053d5d50a16259e6f5aa3d265f3b98b58165b5e355ac2b2`  
		Last Modified: Wed, 19 Oct 2016 00:19:16 GMT  
		Size: 132.8 MB (132787035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:261245c91b053f58d85fd5fa8e9aac8fa298399768729868656c50593bc5ecd5`  
		Last Modified: Wed, 19 Oct 2016 00:19:06 GMT  
		Size: 1.9 KB (1870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e861b5d966101261916d713d117d42592dbfcdfe7ff34a80f3919e27a74e4673`  
		Last Modified: Wed, 19 Oct 2016 00:19:04 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.0-alpine`

```console
$ docker pull solr@sha256:e9a81bd206876d415498ea331db82982d961c8377f7fa260f52916ed1ac7092d
```

-	Platforms:
	-	linux; amd64

### `solr:6.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.3 MB (180298040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33c329b7816080b77fbd42cc7eb92ee5f35cd71b891f742ce6c3bdc6b7999e24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

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
# Wed, 19 Oct 2016 00:12:59 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 19 Oct 2016 00:12:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 19 Oct 2016 00:13:00 GMT
ARG GPG_KEYSERVER
# Wed, 19 Oct 2016 00:13:03 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 19 Oct 2016 00:13:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 19 Oct 2016 00:13:05 GMT
ENV SOLR_USER=solr
# Wed, 19 Oct 2016 00:13:05 GMT
ENV SOLR_UID=8983
# Wed, 19 Oct 2016 00:13:07 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 19 Oct 2016 00:18:26 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Wed, 19 Oct 2016 00:18:31 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Wed, 19 Oct 2016 00:18:32 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 19 Oct 2016 00:18:34 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 19 Oct 2016 00:18:35 GMT
ENV SOLR_VERSION=6.0.1
# Wed, 19 Oct 2016 00:18:35 GMT
ENV SOLR_SHA256=4fd25942f0b8083a2499e1dc606c6dd29e4b520c28a16a2d82111088126d43af
# Wed, 19 Oct 2016 00:18:35 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.0.1/solr-6.0.1.tgz
# Wed, 19 Oct 2016 00:18:51 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 19 Oct 2016 00:18:51 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Wed, 19 Oct 2016 00:18:52 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 19 Oct 2016 00:18:53 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 19 Oct 2016 00:18:53 GMT
EXPOSE 8983/tcp
# Wed, 19 Oct 2016 00:18:53 GMT
WORKDIR /opt/solr
# Wed, 19 Oct 2016 00:18:54 GMT
USER [solr]
# Wed, 19 Oct 2016 00:18:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:18:54 GMT
CMD ["solr"]
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
	-	`sha256:0ad20b7d95b6510401e90cb5e10273ebfc9a98af20e80f5c803bc6ce3cb7d9e8`  
		Last Modified: Wed, 19 Oct 2016 00:13:49 GMT  
		Size: 4.9 MB (4921969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ad8b9dcce767ca07aadfea82fc054b76f002d99a0efc595b39ea8c239398f0`  
		Last Modified: Wed, 19 Oct 2016 00:13:48 GMT  
		Size: 607.7 KB (607748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b593e8c046ad8063eaf48b232bdf5dcb324363b3b9626335eea453a7d77132`  
		Last Modified: Wed, 19 Oct 2016 00:13:47 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0e12172027d3f8e410655a47e55a126ab1f9f048d9b6d9b652836686dbdb15`  
		Last Modified: Wed, 19 Oct 2016 00:19:04 GMT  
		Size: 14.1 KB (14127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92ed7aeb3a2619e208a46d5d30a3a640a4cca872bed910477a2304db70422a5`  
		Last Modified: Wed, 19 Oct 2016 00:19:04 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3345205bbb005dbbe053d5d50a16259e6f5aa3d265f3b98b58165b5e355ac2b2`  
		Last Modified: Wed, 19 Oct 2016 00:19:16 GMT  
		Size: 132.8 MB (132787035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:261245c91b053f58d85fd5fa8e9aac8fa298399768729868656c50593bc5ecd5`  
		Last Modified: Wed, 19 Oct 2016 00:19:06 GMT  
		Size: 1.9 KB (1870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e861b5d966101261916d713d117d42592dbfcdfe7ff34a80f3919e27a74e4673`  
		Last Modified: Wed, 19 Oct 2016 00:19:04 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.1.0`

```console
$ docker pull solr@sha256:13732cd9b8bb2097c1bcde01b65ecd7220e77b118a0533d6f18aab512f72cab8
```

-	Platforms:
	-	linux; amd64

### `solr:6.1.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.8 MB (267776190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3cf7e9c55142b761629872b54d97886f5204b07e94d3a547a45471ee5a8a232`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

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
# Tue, 08 Nov 2016 23:06:08 GMT
ENV SOLR_VERSION=6.1.0
# Tue, 08 Nov 2016 23:06:08 GMT
ENV SOLR_SHA256=74630a06d45eb44c0afe2bfb6e2cd80c9d8d92aa0c48a563e39c32996a76c8b0
# Tue, 08 Nov 2016 23:06:08 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.1.0/solr-6.1.0.tgz
# Tue, 08 Nov 2016 23:06:24 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 08 Nov 2016 23:06:24 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Tue, 08 Nov 2016 23:06:25 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 08 Nov 2016 23:06:33 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 23:06:34 GMT
EXPOSE 8983/tcp
# Tue, 08 Nov 2016 23:06:34 GMT
WORKDIR /opt/solr
# Tue, 08 Nov 2016 23:06:34 GMT
USER [solr]
# Tue, 08 Nov 2016 23:06:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Nov 2016 23:06:35 GMT
CMD ["solr"]
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
	-	`sha256:8e6f5591e3459529a10c05c05f7d76a3eab6c8c47667ff90fe285e6bce83dd60`  
		Last Modified: Tue, 08 Nov 2016 23:06:59 GMT  
		Size: 133.5 MB (133492997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dbe8459644ea30570b110d99d934b44d5812c453276086ed7162f221ff42f15`  
		Last Modified: Tue, 08 Nov 2016 23:06:46 GMT  
		Size: 1.9 KB (1868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c0d74d5d16e1d85a5ff25e55013d98406045e298cb73a105cf4e411c1285a8`  
		Last Modified: Tue, 08 Nov 2016 23:06:46 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.1`

```console
$ docker pull solr@sha256:13732cd9b8bb2097c1bcde01b65ecd7220e77b118a0533d6f18aab512f72cab8
```

-	Platforms:
	-	linux; amd64

### `solr:6.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.8 MB (267776190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3cf7e9c55142b761629872b54d97886f5204b07e94d3a547a45471ee5a8a232`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

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
# Tue, 08 Nov 2016 23:06:08 GMT
ENV SOLR_VERSION=6.1.0
# Tue, 08 Nov 2016 23:06:08 GMT
ENV SOLR_SHA256=74630a06d45eb44c0afe2bfb6e2cd80c9d8d92aa0c48a563e39c32996a76c8b0
# Tue, 08 Nov 2016 23:06:08 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.1.0/solr-6.1.0.tgz
# Tue, 08 Nov 2016 23:06:24 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 08 Nov 2016 23:06:24 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Tue, 08 Nov 2016 23:06:25 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 08 Nov 2016 23:06:33 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 23:06:34 GMT
EXPOSE 8983/tcp
# Tue, 08 Nov 2016 23:06:34 GMT
WORKDIR /opt/solr
# Tue, 08 Nov 2016 23:06:34 GMT
USER [solr]
# Tue, 08 Nov 2016 23:06:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Nov 2016 23:06:35 GMT
CMD ["solr"]
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
	-	`sha256:8e6f5591e3459529a10c05c05f7d76a3eab6c8c47667ff90fe285e6bce83dd60`  
		Last Modified: Tue, 08 Nov 2016 23:06:59 GMT  
		Size: 133.5 MB (133492997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dbe8459644ea30570b110d99d934b44d5812c453276086ed7162f221ff42f15`  
		Last Modified: Tue, 08 Nov 2016 23:06:46 GMT  
		Size: 1.9 KB (1868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c0d74d5d16e1d85a5ff25e55013d98406045e298cb73a105cf4e411c1285a8`  
		Last Modified: Tue, 08 Nov 2016 23:06:46 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.1.0-alpine`

```console
$ docker pull solr@sha256:5710674b0ee2768300c5b7b1ddf9b1f74951ea7e9b6c363461cb6ffd400f815b
```

-	Platforms:
	-	linux; amd64

### `solr:6.1.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.0 MB (180996922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0917d50dd8d4a831ad69d41d32245166c1d0fd6333d540fe19ecfd1afd2d3e3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

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
# Wed, 19 Oct 2016 00:12:59 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 19 Oct 2016 00:12:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 19 Oct 2016 00:13:00 GMT
ARG GPG_KEYSERVER
# Wed, 19 Oct 2016 00:13:03 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 19 Oct 2016 00:13:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 19 Oct 2016 00:13:05 GMT
ENV SOLR_USER=solr
# Wed, 19 Oct 2016 00:13:05 GMT
ENV SOLR_UID=8983
# Wed, 19 Oct 2016 00:13:07 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 19 Oct 2016 00:15:31 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Wed, 19 Oct 2016 00:15:36 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Wed, 19 Oct 2016 00:15:36 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 19 Oct 2016 00:15:39 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 19 Oct 2016 00:19:37 GMT
ENV SOLR_VERSION=6.1.0
# Wed, 19 Oct 2016 00:19:37 GMT
ENV SOLR_SHA256=74630a06d45eb44c0afe2bfb6e2cd80c9d8d92aa0c48a563e39c32996a76c8b0
# Wed, 19 Oct 2016 00:19:37 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.1.0/solr-6.1.0.tgz
# Wed, 19 Oct 2016 00:19:53 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 19 Oct 2016 00:19:54 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Wed, 19 Oct 2016 00:19:55 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 19 Oct 2016 00:19:55 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 19 Oct 2016 00:19:55 GMT
EXPOSE 8983/tcp
# Wed, 19 Oct 2016 00:19:56 GMT
WORKDIR /opt/solr
# Wed, 19 Oct 2016 00:19:56 GMT
USER [solr]
# Wed, 19 Oct 2016 00:19:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:19:57 GMT
CMD ["solr"]
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
	-	`sha256:0ad20b7d95b6510401e90cb5e10273ebfc9a98af20e80f5c803bc6ce3cb7d9e8`  
		Last Modified: Wed, 19 Oct 2016 00:13:49 GMT  
		Size: 4.9 MB (4921969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ad8b9dcce767ca07aadfea82fc054b76f002d99a0efc595b39ea8c239398f0`  
		Last Modified: Wed, 19 Oct 2016 00:13:48 GMT  
		Size: 607.7 KB (607748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b593e8c046ad8063eaf48b232bdf5dcb324363b3b9626335eea453a7d77132`  
		Last Modified: Wed, 19 Oct 2016 00:13:47 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9568b3694c8db82d42ea69cd8ef85c41deb705c12d5a09115250a83d27f5257`  
		Last Modified: Wed, 19 Oct 2016 00:16:07 GMT  
		Size: 7.1 KB (7087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebae19f4bccfcebdef8410809164f7a6431d7bf123079d7e2aaa3331c7abb576`  
		Last Modified: Wed, 19 Oct 2016 00:16:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ede8510752d4b2ab22a302c479e56ff5af652210d1e7165920c17eccb70e287`  
		Last Modified: Wed, 19 Oct 2016 00:20:18 GMT  
		Size: 133.5 MB (133492960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7488e54f2ab46c2f443b72a173e9755fb5fc4a5e475cd90a9a57aba5d1870e8a`  
		Last Modified: Wed, 19 Oct 2016 00:20:06 GMT  
		Size: 1.9 KB (1867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90fe1daf04515b81cbf48d5bf5d5b8b0fbfe7cbd8b577b8c6c1ffc68085cd9a9`  
		Last Modified: Wed, 19 Oct 2016 00:20:05 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.1-alpine`

```console
$ docker pull solr@sha256:5710674b0ee2768300c5b7b1ddf9b1f74951ea7e9b6c363461cb6ffd400f815b
```

-	Platforms:
	-	linux; amd64

### `solr:6.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.0 MB (180996922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0917d50dd8d4a831ad69d41d32245166c1d0fd6333d540fe19ecfd1afd2d3e3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

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
# Wed, 19 Oct 2016 00:12:59 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 19 Oct 2016 00:12:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 19 Oct 2016 00:13:00 GMT
ARG GPG_KEYSERVER
# Wed, 19 Oct 2016 00:13:03 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 19 Oct 2016 00:13:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 19 Oct 2016 00:13:05 GMT
ENV SOLR_USER=solr
# Wed, 19 Oct 2016 00:13:05 GMT
ENV SOLR_UID=8983
# Wed, 19 Oct 2016 00:13:07 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 19 Oct 2016 00:15:31 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Wed, 19 Oct 2016 00:15:36 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Wed, 19 Oct 2016 00:15:36 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 19 Oct 2016 00:15:39 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 19 Oct 2016 00:19:37 GMT
ENV SOLR_VERSION=6.1.0
# Wed, 19 Oct 2016 00:19:37 GMT
ENV SOLR_SHA256=74630a06d45eb44c0afe2bfb6e2cd80c9d8d92aa0c48a563e39c32996a76c8b0
# Wed, 19 Oct 2016 00:19:37 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.1.0/solr-6.1.0.tgz
# Wed, 19 Oct 2016 00:19:53 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 19 Oct 2016 00:19:54 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Wed, 19 Oct 2016 00:19:55 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 19 Oct 2016 00:19:55 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 19 Oct 2016 00:19:55 GMT
EXPOSE 8983/tcp
# Wed, 19 Oct 2016 00:19:56 GMT
WORKDIR /opt/solr
# Wed, 19 Oct 2016 00:19:56 GMT
USER [solr]
# Wed, 19 Oct 2016 00:19:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:19:57 GMT
CMD ["solr"]
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
	-	`sha256:0ad20b7d95b6510401e90cb5e10273ebfc9a98af20e80f5c803bc6ce3cb7d9e8`  
		Last Modified: Wed, 19 Oct 2016 00:13:49 GMT  
		Size: 4.9 MB (4921969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ad8b9dcce767ca07aadfea82fc054b76f002d99a0efc595b39ea8c239398f0`  
		Last Modified: Wed, 19 Oct 2016 00:13:48 GMT  
		Size: 607.7 KB (607748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b593e8c046ad8063eaf48b232bdf5dcb324363b3b9626335eea453a7d77132`  
		Last Modified: Wed, 19 Oct 2016 00:13:47 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9568b3694c8db82d42ea69cd8ef85c41deb705c12d5a09115250a83d27f5257`  
		Last Modified: Wed, 19 Oct 2016 00:16:07 GMT  
		Size: 7.1 KB (7087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebae19f4bccfcebdef8410809164f7a6431d7bf123079d7e2aaa3331c7abb576`  
		Last Modified: Wed, 19 Oct 2016 00:16:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ede8510752d4b2ab22a302c479e56ff5af652210d1e7165920c17eccb70e287`  
		Last Modified: Wed, 19 Oct 2016 00:20:18 GMT  
		Size: 133.5 MB (133492960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7488e54f2ab46c2f443b72a173e9755fb5fc4a5e475cd90a9a57aba5d1870e8a`  
		Last Modified: Wed, 19 Oct 2016 00:20:06 GMT  
		Size: 1.9 KB (1867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90fe1daf04515b81cbf48d5bf5d5b8b0fbfe7cbd8b577b8c6c1ffc68085cd9a9`  
		Last Modified: Wed, 19 Oct 2016 00:20:05 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.2.1`

```console
$ docker pull solr@sha256:7a071f49282186ee80bc171d42c1ccd456683dc0ddc12583e93ee7874961ee5f
```

-	Platforms:
	-	linux; amd64

### `solr:6.2.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277845551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eaaafbb9d21e61ab43ff773dda7bc65e0e6e775967203c20691b310625f0917`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

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
# Tue, 08 Nov 2016 23:01:16 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Tue, 08 Nov 2016 23:01:16 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 08 Nov 2016 23:01:18 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 08 Nov 2016 23:01:18 GMT
ENV SOLR_VERSION=6.2.1
# Tue, 08 Nov 2016 23:01:26 GMT
ENV SOLR_SHA256=344cb317ab42978dcc66944dd8cfbd5721e27e1c64919308082b0623a310b607
# Tue, 08 Nov 2016 23:01:26 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.1/solr-6.2.1.tgz
# Tue, 08 Nov 2016 23:01:43 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 08 Nov 2016 23:01:43 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Tue, 08 Nov 2016 23:01:44 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 08 Nov 2016 23:01:44 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 23:01:45 GMT
EXPOSE 8983/tcp
# Tue, 08 Nov 2016 23:01:45 GMT
WORKDIR /opt/solr
# Tue, 08 Nov 2016 23:01:46 GMT
USER [solr]
# Tue, 08 Nov 2016 23:01:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Nov 2016 23:01:47 GMT
CMD ["solr"]
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
	-	`sha256:d4cd3c23c5719cf0119e7c66fd32b066476e0c954f493b74b98e3efcbafb6fc9`  
		Last Modified: Tue, 08 Nov 2016 23:01:59 GMT  
		Size: 6.8 KB (6777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1197e8bb4b71391cff29c1e3cc9456d227cf55016fac69e01e8a6e2cdc82c98b`  
		Last Modified: Tue, 08 Nov 2016 23:02:12 GMT  
		Size: 143.6 MB (143562973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccc1f49b0c0f1572aa1198cb6ee1f11a635ef7a0f0373b83d5698fcfa349d6f`  
		Last Modified: Tue, 08 Nov 2016 23:01:59 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26d710c66b872fbdca2604516a2a8d06a36d08392af4bb609181e5653a2bc97`  
		Last Modified: Tue, 08 Nov 2016 23:01:58 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.2`

```console
$ docker pull solr@sha256:7a071f49282186ee80bc171d42c1ccd456683dc0ddc12583e93ee7874961ee5f
```

-	Platforms:
	-	linux; amd64

### `solr:6.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277845551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eaaafbb9d21e61ab43ff773dda7bc65e0e6e775967203c20691b310625f0917`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

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
# Tue, 08 Nov 2016 23:01:16 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Tue, 08 Nov 2016 23:01:16 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 08 Nov 2016 23:01:18 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 08 Nov 2016 23:01:18 GMT
ENV SOLR_VERSION=6.2.1
# Tue, 08 Nov 2016 23:01:26 GMT
ENV SOLR_SHA256=344cb317ab42978dcc66944dd8cfbd5721e27e1c64919308082b0623a310b607
# Tue, 08 Nov 2016 23:01:26 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.1/solr-6.2.1.tgz
# Tue, 08 Nov 2016 23:01:43 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 08 Nov 2016 23:01:43 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Tue, 08 Nov 2016 23:01:44 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 08 Nov 2016 23:01:44 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 23:01:45 GMT
EXPOSE 8983/tcp
# Tue, 08 Nov 2016 23:01:45 GMT
WORKDIR /opt/solr
# Tue, 08 Nov 2016 23:01:46 GMT
USER [solr]
# Tue, 08 Nov 2016 23:01:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Nov 2016 23:01:47 GMT
CMD ["solr"]
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
	-	`sha256:d4cd3c23c5719cf0119e7c66fd32b066476e0c954f493b74b98e3efcbafb6fc9`  
		Last Modified: Tue, 08 Nov 2016 23:01:59 GMT  
		Size: 6.8 KB (6777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1197e8bb4b71391cff29c1e3cc9456d227cf55016fac69e01e8a6e2cdc82c98b`  
		Last Modified: Tue, 08 Nov 2016 23:02:12 GMT  
		Size: 143.6 MB (143562973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccc1f49b0c0f1572aa1198cb6ee1f11a635ef7a0f0373b83d5698fcfa349d6f`  
		Last Modified: Tue, 08 Nov 2016 23:01:59 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26d710c66b872fbdca2604516a2a8d06a36d08392af4bb609181e5653a2bc97`  
		Last Modified: Tue, 08 Nov 2016 23:01:58 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6`

```console
$ docker pull solr@sha256:7a071f49282186ee80bc171d42c1ccd456683dc0ddc12583e93ee7874961ee5f
```

-	Platforms:
	-	linux; amd64

### `solr:6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277845551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eaaafbb9d21e61ab43ff773dda7bc65e0e6e775967203c20691b310625f0917`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

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
# Tue, 08 Nov 2016 23:01:16 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Tue, 08 Nov 2016 23:01:16 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 08 Nov 2016 23:01:18 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 08 Nov 2016 23:01:18 GMT
ENV SOLR_VERSION=6.2.1
# Tue, 08 Nov 2016 23:01:26 GMT
ENV SOLR_SHA256=344cb317ab42978dcc66944dd8cfbd5721e27e1c64919308082b0623a310b607
# Tue, 08 Nov 2016 23:01:26 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.1/solr-6.2.1.tgz
# Tue, 08 Nov 2016 23:01:43 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 08 Nov 2016 23:01:43 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Tue, 08 Nov 2016 23:01:44 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 08 Nov 2016 23:01:44 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 23:01:45 GMT
EXPOSE 8983/tcp
# Tue, 08 Nov 2016 23:01:45 GMT
WORKDIR /opt/solr
# Tue, 08 Nov 2016 23:01:46 GMT
USER [solr]
# Tue, 08 Nov 2016 23:01:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Nov 2016 23:01:47 GMT
CMD ["solr"]
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
	-	`sha256:d4cd3c23c5719cf0119e7c66fd32b066476e0c954f493b74b98e3efcbafb6fc9`  
		Last Modified: Tue, 08 Nov 2016 23:01:59 GMT  
		Size: 6.8 KB (6777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1197e8bb4b71391cff29c1e3cc9456d227cf55016fac69e01e8a6e2cdc82c98b`  
		Last Modified: Tue, 08 Nov 2016 23:02:12 GMT  
		Size: 143.6 MB (143562973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccc1f49b0c0f1572aa1198cb6ee1f11a635ef7a0f0373b83d5698fcfa349d6f`  
		Last Modified: Tue, 08 Nov 2016 23:01:59 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26d710c66b872fbdca2604516a2a8d06a36d08392af4bb609181e5653a2bc97`  
		Last Modified: Tue, 08 Nov 2016 23:01:58 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:latest`

```console
$ docker pull solr@sha256:7a071f49282186ee80bc171d42c1ccd456683dc0ddc12583e93ee7874961ee5f
```

-	Platforms:
	-	linux; amd64

### `solr:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277845551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eaaafbb9d21e61ab43ff773dda7bc65e0e6e775967203c20691b310625f0917`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

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
# Tue, 08 Nov 2016 23:01:16 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Tue, 08 Nov 2016 23:01:16 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 08 Nov 2016 23:01:18 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 08 Nov 2016 23:01:18 GMT
ENV SOLR_VERSION=6.2.1
# Tue, 08 Nov 2016 23:01:26 GMT
ENV SOLR_SHA256=344cb317ab42978dcc66944dd8cfbd5721e27e1c64919308082b0623a310b607
# Tue, 08 Nov 2016 23:01:26 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.1/solr-6.2.1.tgz
# Tue, 08 Nov 2016 23:01:43 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 08 Nov 2016 23:01:43 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Tue, 08 Nov 2016 23:01:44 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 08 Nov 2016 23:01:44 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 23:01:45 GMT
EXPOSE 8983/tcp
# Tue, 08 Nov 2016 23:01:45 GMT
WORKDIR /opt/solr
# Tue, 08 Nov 2016 23:01:46 GMT
USER [solr]
# Tue, 08 Nov 2016 23:01:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 08 Nov 2016 23:01:47 GMT
CMD ["solr"]
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
	-	`sha256:d4cd3c23c5719cf0119e7c66fd32b066476e0c954f493b74b98e3efcbafb6fc9`  
		Last Modified: Tue, 08 Nov 2016 23:01:59 GMT  
		Size: 6.8 KB (6777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1197e8bb4b71391cff29c1e3cc9456d227cf55016fac69e01e8a6e2cdc82c98b`  
		Last Modified: Tue, 08 Nov 2016 23:02:12 GMT  
		Size: 143.6 MB (143562973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccc1f49b0c0f1572aa1198cb6ee1f11a635ef7a0f0373b83d5698fcfa349d6f`  
		Last Modified: Tue, 08 Nov 2016 23:01:59 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26d710c66b872fbdca2604516a2a8d06a36d08392af4bb609181e5653a2bc97`  
		Last Modified: Tue, 08 Nov 2016 23:01:58 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.2.1-alpine`

```console
$ docker pull solr@sha256:e68db31b972c8365033d3878aacdebd69f38ccd637f8a9d2b0105de0eeac142d
```

-	Platforms:
	-	linux; amd64

### `solr:6.2.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.1 MB (191066345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a23897dbdaa868bdedeb9b5b92779715596fdc2a87e87789a4852d7cde69ed5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

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
# Wed, 19 Oct 2016 00:12:59 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 19 Oct 2016 00:12:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 19 Oct 2016 00:13:00 GMT
ARG GPG_KEYSERVER
# Wed, 19 Oct 2016 00:13:03 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 19 Oct 2016 00:13:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 19 Oct 2016 00:13:05 GMT
ENV SOLR_USER=solr
# Wed, 19 Oct 2016 00:13:05 GMT
ENV SOLR_UID=8983
# Wed, 19 Oct 2016 00:13:07 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 19 Oct 2016 00:16:42 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Wed, 19 Oct 2016 00:16:53 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Wed, 19 Oct 2016 00:16:53 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 19 Oct 2016 00:16:56 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 19 Oct 2016 00:16:56 GMT
ENV SOLR_VERSION=6.2.1
# Wed, 19 Oct 2016 00:16:56 GMT
ENV SOLR_SHA256=344cb317ab42978dcc66944dd8cfbd5721e27e1c64919308082b0623a310b607
# Wed, 19 Oct 2016 00:16:57 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.1/solr-6.2.1.tgz
# Wed, 19 Oct 2016 00:17:13 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 19 Oct 2016 00:17:14 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Wed, 19 Oct 2016 00:17:15 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 19 Oct 2016 00:17:15 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 19 Oct 2016 00:17:16 GMT
EXPOSE 8983/tcp
# Wed, 19 Oct 2016 00:17:16 GMT
WORKDIR /opt/solr
# Wed, 19 Oct 2016 00:17:17 GMT
USER [solr]
# Wed, 19 Oct 2016 00:17:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:17:17 GMT
CMD ["solr"]
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
	-	`sha256:0ad20b7d95b6510401e90cb5e10273ebfc9a98af20e80f5c803bc6ce3cb7d9e8`  
		Last Modified: Wed, 19 Oct 2016 00:13:49 GMT  
		Size: 4.9 MB (4921969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ad8b9dcce767ca07aadfea82fc054b76f002d99a0efc595b39ea8c239398f0`  
		Last Modified: Wed, 19 Oct 2016 00:13:48 GMT  
		Size: 607.7 KB (607748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b593e8c046ad8063eaf48b232bdf5dcb324363b3b9626335eea453a7d77132`  
		Last Modified: Wed, 19 Oct 2016 00:13:47 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7944fd3db19cbbcfa8c2419e0aeac8d9466262460c030b28927300d73e3f0bc6`  
		Last Modified: Wed, 19 Oct 2016 00:17:26 GMT  
		Size: 6.5 KB (6516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c125e49dc284a9a91c4ac1bd7cfee2f7f807b17f81ce56e68dac7ee92732a9`  
		Last Modified: Wed, 19 Oct 2016 00:17:27 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4702967e96fb6bf86de9282978d4db511baf5338fc946a262b7dbcd84245d7bc`  
		Last Modified: Wed, 19 Oct 2016 00:17:40 GMT  
		Size: 143.6 MB (143562949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c449776779233727a3703bcc49660d03328c85aa2b210b3b1ba447d784299e10`  
		Last Modified: Wed, 19 Oct 2016 00:17:27 GMT  
		Size: 1.9 KB (1870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8717e7c0b1e6ca549afadec6004950ff8e918b2370dfacf43d3f2f45000d04d`  
		Last Modified: Wed, 19 Oct 2016 00:17:26 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.2-alpine`

```console
$ docker pull solr@sha256:e68db31b972c8365033d3878aacdebd69f38ccd637f8a9d2b0105de0eeac142d
```

-	Platforms:
	-	linux; amd64

### `solr:6.2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.1 MB (191066345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a23897dbdaa868bdedeb9b5b92779715596fdc2a87e87789a4852d7cde69ed5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

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
# Wed, 19 Oct 2016 00:12:59 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 19 Oct 2016 00:12:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 19 Oct 2016 00:13:00 GMT
ARG GPG_KEYSERVER
# Wed, 19 Oct 2016 00:13:03 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 19 Oct 2016 00:13:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 19 Oct 2016 00:13:05 GMT
ENV SOLR_USER=solr
# Wed, 19 Oct 2016 00:13:05 GMT
ENV SOLR_UID=8983
# Wed, 19 Oct 2016 00:13:07 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 19 Oct 2016 00:16:42 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Wed, 19 Oct 2016 00:16:53 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Wed, 19 Oct 2016 00:16:53 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 19 Oct 2016 00:16:56 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 19 Oct 2016 00:16:56 GMT
ENV SOLR_VERSION=6.2.1
# Wed, 19 Oct 2016 00:16:56 GMT
ENV SOLR_SHA256=344cb317ab42978dcc66944dd8cfbd5721e27e1c64919308082b0623a310b607
# Wed, 19 Oct 2016 00:16:57 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.1/solr-6.2.1.tgz
# Wed, 19 Oct 2016 00:17:13 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 19 Oct 2016 00:17:14 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Wed, 19 Oct 2016 00:17:15 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 19 Oct 2016 00:17:15 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 19 Oct 2016 00:17:16 GMT
EXPOSE 8983/tcp
# Wed, 19 Oct 2016 00:17:16 GMT
WORKDIR /opt/solr
# Wed, 19 Oct 2016 00:17:17 GMT
USER [solr]
# Wed, 19 Oct 2016 00:17:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:17:17 GMT
CMD ["solr"]
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
	-	`sha256:0ad20b7d95b6510401e90cb5e10273ebfc9a98af20e80f5c803bc6ce3cb7d9e8`  
		Last Modified: Wed, 19 Oct 2016 00:13:49 GMT  
		Size: 4.9 MB (4921969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ad8b9dcce767ca07aadfea82fc054b76f002d99a0efc595b39ea8c239398f0`  
		Last Modified: Wed, 19 Oct 2016 00:13:48 GMT  
		Size: 607.7 KB (607748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b593e8c046ad8063eaf48b232bdf5dcb324363b3b9626335eea453a7d77132`  
		Last Modified: Wed, 19 Oct 2016 00:13:47 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7944fd3db19cbbcfa8c2419e0aeac8d9466262460c030b28927300d73e3f0bc6`  
		Last Modified: Wed, 19 Oct 2016 00:17:26 GMT  
		Size: 6.5 KB (6516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c125e49dc284a9a91c4ac1bd7cfee2f7f807b17f81ce56e68dac7ee92732a9`  
		Last Modified: Wed, 19 Oct 2016 00:17:27 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4702967e96fb6bf86de9282978d4db511baf5338fc946a262b7dbcd84245d7bc`  
		Last Modified: Wed, 19 Oct 2016 00:17:40 GMT  
		Size: 143.6 MB (143562949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c449776779233727a3703bcc49660d03328c85aa2b210b3b1ba447d784299e10`  
		Last Modified: Wed, 19 Oct 2016 00:17:27 GMT  
		Size: 1.9 KB (1870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8717e7c0b1e6ca549afadec6004950ff8e918b2370dfacf43d3f2f45000d04d`  
		Last Modified: Wed, 19 Oct 2016 00:17:26 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6-alpine`

```console
$ docker pull solr@sha256:e68db31b972c8365033d3878aacdebd69f38ccd637f8a9d2b0105de0eeac142d
```

-	Platforms:
	-	linux; amd64

### `solr:6-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.1 MB (191066345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a23897dbdaa868bdedeb9b5b92779715596fdc2a87e87789a4852d7cde69ed5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

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
# Wed, 19 Oct 2016 00:12:59 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 19 Oct 2016 00:12:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 19 Oct 2016 00:13:00 GMT
ARG GPG_KEYSERVER
# Wed, 19 Oct 2016 00:13:03 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 19 Oct 2016 00:13:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 19 Oct 2016 00:13:05 GMT
ENV SOLR_USER=solr
# Wed, 19 Oct 2016 00:13:05 GMT
ENV SOLR_UID=8983
# Wed, 19 Oct 2016 00:13:07 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 19 Oct 2016 00:16:42 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Wed, 19 Oct 2016 00:16:53 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Wed, 19 Oct 2016 00:16:53 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 19 Oct 2016 00:16:56 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 19 Oct 2016 00:16:56 GMT
ENV SOLR_VERSION=6.2.1
# Wed, 19 Oct 2016 00:16:56 GMT
ENV SOLR_SHA256=344cb317ab42978dcc66944dd8cfbd5721e27e1c64919308082b0623a310b607
# Wed, 19 Oct 2016 00:16:57 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.1/solr-6.2.1.tgz
# Wed, 19 Oct 2016 00:17:13 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 19 Oct 2016 00:17:14 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Wed, 19 Oct 2016 00:17:15 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 19 Oct 2016 00:17:15 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 19 Oct 2016 00:17:16 GMT
EXPOSE 8983/tcp
# Wed, 19 Oct 2016 00:17:16 GMT
WORKDIR /opt/solr
# Wed, 19 Oct 2016 00:17:17 GMT
USER [solr]
# Wed, 19 Oct 2016 00:17:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:17:17 GMT
CMD ["solr"]
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
	-	`sha256:0ad20b7d95b6510401e90cb5e10273ebfc9a98af20e80f5c803bc6ce3cb7d9e8`  
		Last Modified: Wed, 19 Oct 2016 00:13:49 GMT  
		Size: 4.9 MB (4921969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ad8b9dcce767ca07aadfea82fc054b76f002d99a0efc595b39ea8c239398f0`  
		Last Modified: Wed, 19 Oct 2016 00:13:48 GMT  
		Size: 607.7 KB (607748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b593e8c046ad8063eaf48b232bdf5dcb324363b3b9626335eea453a7d77132`  
		Last Modified: Wed, 19 Oct 2016 00:13:47 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7944fd3db19cbbcfa8c2419e0aeac8d9466262460c030b28927300d73e3f0bc6`  
		Last Modified: Wed, 19 Oct 2016 00:17:26 GMT  
		Size: 6.5 KB (6516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c125e49dc284a9a91c4ac1bd7cfee2f7f807b17f81ce56e68dac7ee92732a9`  
		Last Modified: Wed, 19 Oct 2016 00:17:27 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4702967e96fb6bf86de9282978d4db511baf5338fc946a262b7dbcd84245d7bc`  
		Last Modified: Wed, 19 Oct 2016 00:17:40 GMT  
		Size: 143.6 MB (143562949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c449776779233727a3703bcc49660d03328c85aa2b210b3b1ba447d784299e10`  
		Last Modified: Wed, 19 Oct 2016 00:17:27 GMT  
		Size: 1.9 KB (1870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8717e7c0b1e6ca549afadec6004950ff8e918b2370dfacf43d3f2f45000d04d`  
		Last Modified: Wed, 19 Oct 2016 00:17:26 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:alpine`

```console
$ docker pull solr@sha256:e68db31b972c8365033d3878aacdebd69f38ccd637f8a9d2b0105de0eeac142d
```

-	Platforms:
	-	linux; amd64

### `solr:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.1 MB (191066345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a23897dbdaa868bdedeb9b5b92779715596fdc2a87e87789a4852d7cde69ed5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

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
# Wed, 19 Oct 2016 00:12:59 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 19 Oct 2016 00:12:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 19 Oct 2016 00:13:00 GMT
ARG GPG_KEYSERVER
# Wed, 19 Oct 2016 00:13:03 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 19 Oct 2016 00:13:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 19 Oct 2016 00:13:05 GMT
ENV SOLR_USER=solr
# Wed, 19 Oct 2016 00:13:05 GMT
ENV SOLR_UID=8983
# Wed, 19 Oct 2016 00:13:07 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Wed, 19 Oct 2016 00:16:42 GMT
ENV SOLR_KEY=38D2EA16DDF5FC722EBC433FDC92616F177050F6
# Wed, 19 Oct 2016 00:16:53 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Wed, 19 Oct 2016 00:16:53 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Wed, 19 Oct 2016 00:16:56 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Wed, 19 Oct 2016 00:16:56 GMT
ENV SOLR_VERSION=6.2.1
# Wed, 19 Oct 2016 00:16:56 GMT
ENV SOLR_SHA256=344cb317ab42978dcc66944dd8cfbd5721e27e1c64919308082b0623a310b607
# Wed, 19 Oct 2016 00:16:57 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.1/solr-6.2.1.tgz
# Wed, 19 Oct 2016 00:17:13 GMT
RUN mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Wed, 19 Oct 2016 00:17:14 GMT
COPY dir:445a64003ceb4c1d31dd545966a72c2745c380f4aa7641b8bbb09e4fd15cc0f6 in /opt/docker-solr/scripts 
# Wed, 19 Oct 2016 00:17:15 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Wed, 19 Oct 2016 00:17:15 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 19 Oct 2016 00:17:16 GMT
EXPOSE 8983/tcp
# Wed, 19 Oct 2016 00:17:16 GMT
WORKDIR /opt/solr
# Wed, 19 Oct 2016 00:17:17 GMT
USER [solr]
# Wed, 19 Oct 2016 00:17:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 00:17:17 GMT
CMD ["solr"]
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
	-	`sha256:0ad20b7d95b6510401e90cb5e10273ebfc9a98af20e80f5c803bc6ce3cb7d9e8`  
		Last Modified: Wed, 19 Oct 2016 00:13:49 GMT  
		Size: 4.9 MB (4921969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ad8b9dcce767ca07aadfea82fc054b76f002d99a0efc595b39ea8c239398f0`  
		Last Modified: Wed, 19 Oct 2016 00:13:48 GMT  
		Size: 607.7 KB (607748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b593e8c046ad8063eaf48b232bdf5dcb324363b3b9626335eea453a7d77132`  
		Last Modified: Wed, 19 Oct 2016 00:13:47 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7944fd3db19cbbcfa8c2419e0aeac8d9466262460c030b28927300d73e3f0bc6`  
		Last Modified: Wed, 19 Oct 2016 00:17:26 GMT  
		Size: 6.5 KB (6516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c125e49dc284a9a91c4ac1bd7cfee2f7f807b17f81ce56e68dac7ee92732a9`  
		Last Modified: Wed, 19 Oct 2016 00:17:27 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4702967e96fb6bf86de9282978d4db511baf5338fc946a262b7dbcd84245d7bc`  
		Last Modified: Wed, 19 Oct 2016 00:17:40 GMT  
		Size: 143.6 MB (143562949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c449776779233727a3703bcc49660d03328c85aa2b210b3b1ba447d784299e10`  
		Last Modified: Wed, 19 Oct 2016 00:17:27 GMT  
		Size: 1.9 KB (1870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8717e7c0b1e6ca549afadec6004950ff8e918b2370dfacf43d3f2f45000d04d`  
		Last Modified: Wed, 19 Oct 2016 00:17:26 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
