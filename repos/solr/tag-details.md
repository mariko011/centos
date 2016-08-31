<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `solr`

-	[`solr:5.3.2`](#solr532)
-	[`solr:5.3`](#solr53)
-	[`solr:5.3.2-alpine`](#solr532-alpine)
-	[`solr:5.3-alpine`](#solr53-alpine)
-	[`solr:5.4.1`](#solr541)
-	[`solr:5.4`](#solr54)
-	[`solr:5.4.1-alpine`](#solr541-alpine)
-	[`solr:5.4-alpine`](#solr54-alpine)
-	[`solr:5.5.2`](#solr552)
-	[`solr:5.5`](#solr55)
-	[`solr:5`](#solr5)
-	[`solr:5.5.2-alpine`](#solr552-alpine)
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
-	[`solr:6.2.0`](#solr620)
-	[`solr:6.2`](#solr62)
-	[`solr:6`](#solr6)
-	[`solr:latest`](#solrlatest)
-	[`solr:6.2.0-alpine`](#solr620-alpine)
-	[`solr:6.2-alpine`](#solr62-alpine)
-	[`solr:6-alpine`](#solr6-alpine)
-	[`solr:alpine`](#solralpine)

## `solr:5.3.2`

```console
$ docker pull solr@sha256:0b2f7590eb87b16872fc34eabe029d6006da80d06b5e0230fd1152a3c19e6437
```

-	Platforms:
	-	linux; amd64

### `solr:5.3.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.2 MB (269168999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189177208ca0b1b320f66bdf81ffe3a747e1e9a2b06e1db87abe59d42136ad32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 23:14:25 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:14:25 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:14:25 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:14:46 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:14:46 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:14:47 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:14:48 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:14:48 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Tue, 30 Aug 2016 23:14:48 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:14:51 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:14:52 GMT
ENV SOLR_VERSION=5.3.2
# Tue, 30 Aug 2016 23:14:52 GMT
ENV SOLR_SHA256=7c26601229ed712c639d00882f35304d87e0032028be4754d098a9b694877f48
# Tue, 30 Aug 2016 23:14:52 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.3.2/solr-5.3.2.tgz
# Tue, 30 Aug 2016 23:15:08 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:15:09 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:15:10 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:15:11 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:15:11 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:15:11 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:15:11 GMT
USER [solr]
# Tue, 30 Aug 2016 23:15:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:15:12 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebfc324570b9317d16bd29975bef9916c28176a5b093d3847c3eb5ea1c64ef0`  
		Last Modified: Tue, 30 Aug 2016 23:20:21 GMT  
		Size: 10.1 MB (10079898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065254a52516213eadb7cd89adf7bd359f1d2b0b4f1bea802104caaceb8365c6`  
		Last Modified: Tue, 30 Aug 2016 23:20:09 GMT  
		Size: 4.6 KB (4632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85738d8b8fcab21699ff9af86517954a32b7c243bb59aff9657f8430a0b0a6c3`  
		Last Modified: Tue, 30 Aug 2016 23:20:09 GMT  
		Size: 8.0 KB (7964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e124efde0c8ebe0c440480fe18782cd8314fed6c808d6f2b72fecd742bb12669`  
		Last Modified: Tue, 30 Aug 2016 23:20:37 GMT  
		Size: 134.9 MB (134926848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94a79e35334ca5b799c8f9683d0da1b4c64a0f7169441c69c13fc2fb52c4091`  
		Last Modified: Tue, 30 Aug 2016 23:20:10 GMT  
		Size: 1.9 KB (1872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91aaed2b0e6830b3d0d1885a09ae593a3f668d8bba4902acb081cf8a1bf94135`  
		Last Modified: Tue, 30 Aug 2016 23:20:09 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.3`

```console
$ docker pull solr@sha256:0b2f7590eb87b16872fc34eabe029d6006da80d06b5e0230fd1152a3c19e6437
```

-	Platforms:
	-	linux; amd64

### `solr:5.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.2 MB (269168999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189177208ca0b1b320f66bdf81ffe3a747e1e9a2b06e1db87abe59d42136ad32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 23:14:25 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:14:25 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:14:25 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:14:46 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:14:46 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:14:47 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:14:48 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:14:48 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Tue, 30 Aug 2016 23:14:48 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:14:51 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:14:52 GMT
ENV SOLR_VERSION=5.3.2
# Tue, 30 Aug 2016 23:14:52 GMT
ENV SOLR_SHA256=7c26601229ed712c639d00882f35304d87e0032028be4754d098a9b694877f48
# Tue, 30 Aug 2016 23:14:52 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.3.2/solr-5.3.2.tgz
# Tue, 30 Aug 2016 23:15:08 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:15:09 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:15:10 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:15:11 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:15:11 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:15:11 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:15:11 GMT
USER [solr]
# Tue, 30 Aug 2016 23:15:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:15:12 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebfc324570b9317d16bd29975bef9916c28176a5b093d3847c3eb5ea1c64ef0`  
		Last Modified: Tue, 30 Aug 2016 23:20:21 GMT  
		Size: 10.1 MB (10079898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065254a52516213eadb7cd89adf7bd359f1d2b0b4f1bea802104caaceb8365c6`  
		Last Modified: Tue, 30 Aug 2016 23:20:09 GMT  
		Size: 4.6 KB (4632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85738d8b8fcab21699ff9af86517954a32b7c243bb59aff9657f8430a0b0a6c3`  
		Last Modified: Tue, 30 Aug 2016 23:20:09 GMT  
		Size: 8.0 KB (7964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e124efde0c8ebe0c440480fe18782cd8314fed6c808d6f2b72fecd742bb12669`  
		Last Modified: Tue, 30 Aug 2016 23:20:37 GMT  
		Size: 134.9 MB (134926848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94a79e35334ca5b799c8f9683d0da1b4c64a0f7169441c69c13fc2fb52c4091`  
		Last Modified: Tue, 30 Aug 2016 23:20:10 GMT  
		Size: 1.9 KB (1872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91aaed2b0e6830b3d0d1885a09ae593a3f668d8bba4902acb081cf8a1bf94135`  
		Last Modified: Tue, 30 Aug 2016 23:20:09 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.3.2-alpine`

```console
$ docker pull solr@sha256:e74666944c31d1229d27c2fa5a998f272bffeeb3288b40e14b159ed2bdc1cbb6
```

-	Platforms:
	-	linux; amd64

### `solr:5.3.2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.3 MB (182250013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4435fa76519c18747324e9f1b5635f06bd63c3d328bc63294ce8bd7f91b3ba9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:15:20 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Tue, 30 Aug 2016 23:15:27 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:15:28 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:15:30 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:15:30 GMT
ENV SOLR_VERSION=5.3.2
# Tue, 30 Aug 2016 23:15:31 GMT
ENV SOLR_SHA256=7c26601229ed712c639d00882f35304d87e0032028be4754d098a9b694877f48
# Tue, 30 Aug 2016 23:15:31 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.3.2/solr-5.3.2.tgz
# Tue, 30 Aug 2016 23:15:48 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:15:49 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:15:50 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:15:50 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 23:15:50 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:15:51 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:15:51 GMT
USER [solr]
# Tue, 30 Aug 2016 23:15:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:15:52 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7ef1841e1b359d6cdb32dc1e3dd748564a63e8d75928c081961322851a79ea`  
		Last Modified: Tue, 30 Aug 2016 23:20:56 GMT  
		Size: 7.6 KB (7644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fae23590a58aed0313b5728dde21b562d58979eeaa0a6d011d03820994030a9`  
		Last Modified: Tue, 30 Aug 2016 23:20:56 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ca29ba5771ad827426f21a1cd1f374d9e49ac2286d0c67e963f75bb1720b9e`  
		Last Modified: Tue, 30 Aug 2016 23:21:19 GMT  
		Size: 134.9 MB (134926786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deec8419a5273c46f173630592376a0e457d7c3283e2ef24793dfe870d598f90`  
		Last Modified: Tue, 30 Aug 2016 23:20:56 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917b096018fca920ffc1ee8ba7e57de481c5925eb4cb9288bcb9db7fde78c998`  
		Last Modified: Tue, 30 Aug 2016 23:20:56 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.3-alpine`

```console
$ docker pull solr@sha256:e74666944c31d1229d27c2fa5a998f272bffeeb3288b40e14b159ed2bdc1cbb6
```

-	Platforms:
	-	linux; amd64

### `solr:5.3-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.3 MB (182250013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4435fa76519c18747324e9f1b5635f06bd63c3d328bc63294ce8bd7f91b3ba9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:15:20 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Tue, 30 Aug 2016 23:15:27 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:15:28 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:15:30 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:15:30 GMT
ENV SOLR_VERSION=5.3.2
# Tue, 30 Aug 2016 23:15:31 GMT
ENV SOLR_SHA256=7c26601229ed712c639d00882f35304d87e0032028be4754d098a9b694877f48
# Tue, 30 Aug 2016 23:15:31 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.3.2/solr-5.3.2.tgz
# Tue, 30 Aug 2016 23:15:48 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:15:49 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:15:50 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:15:50 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 23:15:50 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:15:51 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:15:51 GMT
USER [solr]
# Tue, 30 Aug 2016 23:15:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:15:52 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7ef1841e1b359d6cdb32dc1e3dd748564a63e8d75928c081961322851a79ea`  
		Last Modified: Tue, 30 Aug 2016 23:20:56 GMT  
		Size: 7.6 KB (7644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fae23590a58aed0313b5728dde21b562d58979eeaa0a6d011d03820994030a9`  
		Last Modified: Tue, 30 Aug 2016 23:20:56 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ca29ba5771ad827426f21a1cd1f374d9e49ac2286d0c67e963f75bb1720b9e`  
		Last Modified: Tue, 30 Aug 2016 23:21:19 GMT  
		Size: 134.9 MB (134926786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deec8419a5273c46f173630592376a0e457d7c3283e2ef24793dfe870d598f90`  
		Last Modified: Tue, 30 Aug 2016 23:20:56 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917b096018fca920ffc1ee8ba7e57de481c5925eb4cb9288bcb9db7fde78c998`  
		Last Modified: Tue, 30 Aug 2016 23:20:56 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.4.1`

```console
$ docker pull solr@sha256:5582bd205bea59e2f97b0c98eda8c744b6dbcf33f30496055743f9fcc1111b1e
```

-	Platforms:
	-	linux; amd64

### `solr:5.4.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.6 MB (270558332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16a11e8a3cf9fea02cf83ceae05ff8a5f02bd74e9803625088f68f1dcd1bd267`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 23:14:25 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:14:25 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:14:25 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:14:46 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:14:46 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:14:47 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:14:48 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:15:52 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 30 Aug 2016 23:15:53 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:15:55 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:15:55 GMT
ENV SOLR_VERSION=5.4.1
# Tue, 30 Aug 2016 23:15:55 GMT
ENV SOLR_SHA256=3e4b4ec7bd728b49b2ebc3dbe8f3d1ef89fded4ab86b9e2f856bedd58c99f28b
# Tue, 30 Aug 2016 23:15:55 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.4.1/solr-5.4.1.tgz
# Tue, 30 Aug 2016 23:16:12 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:16:13 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:16:14 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:16:14 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:16:14 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:16:14 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:16:15 GMT
USER [solr]
# Tue, 30 Aug 2016 23:16:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:16:15 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebfc324570b9317d16bd29975bef9916c28176a5b093d3847c3eb5ea1c64ef0`  
		Last Modified: Tue, 30 Aug 2016 23:20:21 GMT  
		Size: 10.1 MB (10079898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065254a52516213eadb7cd89adf7bd359f1d2b0b4f1bea802104caaceb8365c6`  
		Last Modified: Tue, 30 Aug 2016 23:20:09 GMT  
		Size: 4.6 KB (4632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312ae797e74d946b9a85835ba21890108cfc2de1db20ffc1e1b03f73ae26131e`  
		Last Modified: Tue, 30 Aug 2016 23:21:46 GMT  
		Size: 7.4 KB (7397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d19b491d867cc7612eacf4c6c3aa2b4af9b6c0fb4f35325df196e73934a5629`  
		Last Modified: Tue, 30 Aug 2016 23:22:11 GMT  
		Size: 136.3 MB (136316746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511830b8d5d208214ded632cc160f12e7cc4b90413be35318eb8576340238374`  
		Last Modified: Tue, 30 Aug 2016 23:21:46 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817b9055f11d6615005a40497eb902b453e4895af131f1b230d711cac4716cc7`  
		Last Modified: Tue, 30 Aug 2016 23:21:46 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.4`

```console
$ docker pull solr@sha256:5582bd205bea59e2f97b0c98eda8c744b6dbcf33f30496055743f9fcc1111b1e
```

-	Platforms:
	-	linux; amd64

### `solr:5.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.6 MB (270558332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16a11e8a3cf9fea02cf83ceae05ff8a5f02bd74e9803625088f68f1dcd1bd267`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 23:14:25 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:14:25 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:14:25 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:14:46 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:14:46 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:14:47 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:14:48 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:15:52 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 30 Aug 2016 23:15:53 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:15:55 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:15:55 GMT
ENV SOLR_VERSION=5.4.1
# Tue, 30 Aug 2016 23:15:55 GMT
ENV SOLR_SHA256=3e4b4ec7bd728b49b2ebc3dbe8f3d1ef89fded4ab86b9e2f856bedd58c99f28b
# Tue, 30 Aug 2016 23:15:55 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.4.1/solr-5.4.1.tgz
# Tue, 30 Aug 2016 23:16:12 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:16:13 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:16:14 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:16:14 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:16:14 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:16:14 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:16:15 GMT
USER [solr]
# Tue, 30 Aug 2016 23:16:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:16:15 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebfc324570b9317d16bd29975bef9916c28176a5b093d3847c3eb5ea1c64ef0`  
		Last Modified: Tue, 30 Aug 2016 23:20:21 GMT  
		Size: 10.1 MB (10079898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065254a52516213eadb7cd89adf7bd359f1d2b0b4f1bea802104caaceb8365c6`  
		Last Modified: Tue, 30 Aug 2016 23:20:09 GMT  
		Size: 4.6 KB (4632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312ae797e74d946b9a85835ba21890108cfc2de1db20ffc1e1b03f73ae26131e`  
		Last Modified: Tue, 30 Aug 2016 23:21:46 GMT  
		Size: 7.4 KB (7397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d19b491d867cc7612eacf4c6c3aa2b4af9b6c0fb4f35325df196e73934a5629`  
		Last Modified: Tue, 30 Aug 2016 23:22:11 GMT  
		Size: 136.3 MB (136316746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511830b8d5d208214ded632cc160f12e7cc4b90413be35318eb8576340238374`  
		Last Modified: Tue, 30 Aug 2016 23:21:46 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817b9055f11d6615005a40497eb902b453e4895af131f1b230d711cac4716cc7`  
		Last Modified: Tue, 30 Aug 2016 23:21:46 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.4.1-alpine`

```console
$ docker pull solr@sha256:454a4c7a003cf7196f121b5b2ea14dcd0c2d294fd454eb2b8d016bc3e69d5e10
```

-	Platforms:
	-	linux; amd64

### `solr:5.4.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.6 MB (183639355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78aa0f293f64d7e54cccf31f7caa28e80288db305554be7de3d3c8e72b4d2c0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:16:17 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 30 Aug 2016 23:16:20 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:16:21 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:16:24 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:16:24 GMT
ENV SOLR_VERSION=5.4.1
# Tue, 30 Aug 2016 23:16:24 GMT
ENV SOLR_SHA256=3e4b4ec7bd728b49b2ebc3dbe8f3d1ef89fded4ab86b9e2f856bedd58c99f28b
# Tue, 30 Aug 2016 23:16:24 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.4.1/solr-5.4.1.tgz
# Tue, 30 Aug 2016 23:16:42 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:16:43 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:16:44 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:16:44 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 23:16:44 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:16:45 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:16:45 GMT
USER [solr]
# Tue, 30 Aug 2016 23:16:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:16:45 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad36ffcc0eef654081de4eadc258402de7baeffee79a7800f87e0d3de57cefe`  
		Last Modified: Tue, 30 Aug 2016 23:22:30 GMT  
		Size: 7.1 KB (7085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174c150c5c16d65bd25b627b46696e51b02610bcb031c24462e65de4bc17b1c1`  
		Last Modified: Tue, 30 Aug 2016 23:22:30 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6893388eb97c9686372fe25d1e8aed936a9e2c84df8b96d2084dbbe1603b00cd`  
		Last Modified: Tue, 30 Aug 2016 23:22:48 GMT  
		Size: 136.3 MB (136316688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27793b28a46508a1163262436e46738d20057635a270abc78a054c4cd4c060a2`  
		Last Modified: Tue, 30 Aug 2016 23:22:30 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085922445a43c903ad7223930c9db3ed32dfaf82518dac437a474d7b43f6312d`  
		Last Modified: Tue, 30 Aug 2016 23:22:30 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.4-alpine`

```console
$ docker pull solr@sha256:454a4c7a003cf7196f121b5b2ea14dcd0c2d294fd454eb2b8d016bc3e69d5e10
```

-	Platforms:
	-	linux; amd64

### `solr:5.4-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.6 MB (183639355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78aa0f293f64d7e54cccf31f7caa28e80288db305554be7de3d3c8e72b4d2c0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:16:17 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 30 Aug 2016 23:16:20 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:16:21 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:16:24 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:16:24 GMT
ENV SOLR_VERSION=5.4.1
# Tue, 30 Aug 2016 23:16:24 GMT
ENV SOLR_SHA256=3e4b4ec7bd728b49b2ebc3dbe8f3d1ef89fded4ab86b9e2f856bedd58c99f28b
# Tue, 30 Aug 2016 23:16:24 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.4.1/solr-5.4.1.tgz
# Tue, 30 Aug 2016 23:16:42 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:16:43 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:16:44 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:16:44 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 23:16:44 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:16:45 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:16:45 GMT
USER [solr]
# Tue, 30 Aug 2016 23:16:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:16:45 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad36ffcc0eef654081de4eadc258402de7baeffee79a7800f87e0d3de57cefe`  
		Last Modified: Tue, 30 Aug 2016 23:22:30 GMT  
		Size: 7.1 KB (7085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174c150c5c16d65bd25b627b46696e51b02610bcb031c24462e65de4bc17b1c1`  
		Last Modified: Tue, 30 Aug 2016 23:22:30 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6893388eb97c9686372fe25d1e8aed936a9e2c84df8b96d2084dbbe1603b00cd`  
		Last Modified: Tue, 30 Aug 2016 23:22:48 GMT  
		Size: 136.3 MB (136316688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27793b28a46508a1163262436e46738d20057635a270abc78a054c4cd4c060a2`  
		Last Modified: Tue, 30 Aug 2016 23:22:30 GMT  
		Size: 1.9 KB (1871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:085922445a43c903ad7223930c9db3ed32dfaf82518dac437a474d7b43f6312d`  
		Last Modified: Tue, 30 Aug 2016 23:22:30 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5.2`

```console
$ docker pull solr@sha256:2ecb4693002ca09f1cf00757c773f47f7a548473ed035ff91faf293445093e4c
```

-	Platforms:
	-	linux; amd64

### `solr:5.5.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.1 MB (271053599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:742d525c1e7c4ea5a6fc104902cd2d69b6f3b4232a007ce80bf00d7b4897409d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 23:14:25 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:14:25 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:14:25 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:14:46 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:14:46 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:14:47 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:14:48 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:16:46 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Tue, 30 Aug 2016 23:16:46 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:16:48 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:16:48 GMT
ENV SOLR_VERSION=5.5.2
# Tue, 30 Aug 2016 23:16:48 GMT
ENV SOLR_SHA256=e62bab565675e10d27f40d5bb090b4181b2f0c21870adf98d1ea873ead7758e1
# Tue, 30 Aug 2016 23:16:49 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.2/solr-5.5.2.tgz
# Tue, 30 Aug 2016 23:17:05 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:17:06 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:17:07 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:17:07 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:17:07 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:17:07 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:17:08 GMT
USER [solr]
# Tue, 30 Aug 2016 23:17:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:17:08 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebfc324570b9317d16bd29975bef9916c28176a5b093d3847c3eb5ea1c64ef0`  
		Last Modified: Tue, 30 Aug 2016 23:20:21 GMT  
		Size: 10.1 MB (10079898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065254a52516213eadb7cd89adf7bd359f1d2b0b4f1bea802104caaceb8365c6`  
		Last Modified: Tue, 30 Aug 2016 23:20:09 GMT  
		Size: 4.6 KB (4632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5287371801f26cd12278df9e69aaaff2b99ff0055cbc80213cb7384c1a72ff5`  
		Last Modified: Tue, 30 Aug 2016 23:23:08 GMT  
		Size: 14.6 KB (14557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fedadb835a5a931908400dbb368f784c8cc375cca85b5976b0e4f81246eb1624`  
		Last Modified: Tue, 30 Aug 2016 23:23:32 GMT  
		Size: 136.8 MB (136804851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c369ef9b103b7e0fa88e429dbc5104097781047596c5920a22a8dd346fc4d86d`  
		Last Modified: Tue, 30 Aug 2016 23:23:08 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c047cfc4fe0bfb14a3fade29ef900353e99952ebd23975b795e57516192131`  
		Last Modified: Tue, 30 Aug 2016 23:23:08 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5`

```console
$ docker pull solr@sha256:2ecb4693002ca09f1cf00757c773f47f7a548473ed035ff91faf293445093e4c
```

-	Platforms:
	-	linux; amd64

### `solr:5.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.1 MB (271053599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:742d525c1e7c4ea5a6fc104902cd2d69b6f3b4232a007ce80bf00d7b4897409d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 23:14:25 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:14:25 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:14:25 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:14:46 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:14:46 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:14:47 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:14:48 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:16:46 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Tue, 30 Aug 2016 23:16:46 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:16:48 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:16:48 GMT
ENV SOLR_VERSION=5.5.2
# Tue, 30 Aug 2016 23:16:48 GMT
ENV SOLR_SHA256=e62bab565675e10d27f40d5bb090b4181b2f0c21870adf98d1ea873ead7758e1
# Tue, 30 Aug 2016 23:16:49 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.2/solr-5.5.2.tgz
# Tue, 30 Aug 2016 23:17:05 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:17:06 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:17:07 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:17:07 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:17:07 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:17:07 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:17:08 GMT
USER [solr]
# Tue, 30 Aug 2016 23:17:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:17:08 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebfc324570b9317d16bd29975bef9916c28176a5b093d3847c3eb5ea1c64ef0`  
		Last Modified: Tue, 30 Aug 2016 23:20:21 GMT  
		Size: 10.1 MB (10079898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065254a52516213eadb7cd89adf7bd359f1d2b0b4f1bea802104caaceb8365c6`  
		Last Modified: Tue, 30 Aug 2016 23:20:09 GMT  
		Size: 4.6 KB (4632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5287371801f26cd12278df9e69aaaff2b99ff0055cbc80213cb7384c1a72ff5`  
		Last Modified: Tue, 30 Aug 2016 23:23:08 GMT  
		Size: 14.6 KB (14557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fedadb835a5a931908400dbb368f784c8cc375cca85b5976b0e4f81246eb1624`  
		Last Modified: Tue, 30 Aug 2016 23:23:32 GMT  
		Size: 136.8 MB (136804851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c369ef9b103b7e0fa88e429dbc5104097781047596c5920a22a8dd346fc4d86d`  
		Last Modified: Tue, 30 Aug 2016 23:23:08 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c047cfc4fe0bfb14a3fade29ef900353e99952ebd23975b795e57516192131`  
		Last Modified: Tue, 30 Aug 2016 23:23:08 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5`

```console
$ docker pull solr@sha256:2ecb4693002ca09f1cf00757c773f47f7a548473ed035ff91faf293445093e4c
```

-	Platforms:
	-	linux; amd64

### `solr:5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.1 MB (271053599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:742d525c1e7c4ea5a6fc104902cd2d69b6f3b4232a007ce80bf00d7b4897409d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 23:14:25 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:14:25 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:14:25 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:14:46 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:14:46 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:14:47 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:14:48 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:16:46 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Tue, 30 Aug 2016 23:16:46 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:16:48 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:16:48 GMT
ENV SOLR_VERSION=5.5.2
# Tue, 30 Aug 2016 23:16:48 GMT
ENV SOLR_SHA256=e62bab565675e10d27f40d5bb090b4181b2f0c21870adf98d1ea873ead7758e1
# Tue, 30 Aug 2016 23:16:49 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.2/solr-5.5.2.tgz
# Tue, 30 Aug 2016 23:17:05 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:17:06 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:17:07 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:17:07 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:17:07 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:17:07 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:17:08 GMT
USER [solr]
# Tue, 30 Aug 2016 23:17:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:17:08 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebfc324570b9317d16bd29975bef9916c28176a5b093d3847c3eb5ea1c64ef0`  
		Last Modified: Tue, 30 Aug 2016 23:20:21 GMT  
		Size: 10.1 MB (10079898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065254a52516213eadb7cd89adf7bd359f1d2b0b4f1bea802104caaceb8365c6`  
		Last Modified: Tue, 30 Aug 2016 23:20:09 GMT  
		Size: 4.6 KB (4632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5287371801f26cd12278df9e69aaaff2b99ff0055cbc80213cb7384c1a72ff5`  
		Last Modified: Tue, 30 Aug 2016 23:23:08 GMT  
		Size: 14.6 KB (14557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fedadb835a5a931908400dbb368f784c8cc375cca85b5976b0e4f81246eb1624`  
		Last Modified: Tue, 30 Aug 2016 23:23:32 GMT  
		Size: 136.8 MB (136804851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c369ef9b103b7e0fa88e429dbc5104097781047596c5920a22a8dd346fc4d86d`  
		Last Modified: Tue, 30 Aug 2016 23:23:08 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c047cfc4fe0bfb14a3fade29ef900353e99952ebd23975b795e57516192131`  
		Last Modified: Tue, 30 Aug 2016 23:23:08 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5.2-alpine`

```console
$ docker pull solr@sha256:b78d2c49468c6694cbbf7348020722574cea515fb4297684ea06662a4cbda01b
```

-	Platforms:
	-	linux; amd64

### `solr:5.5.2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 MB (184134659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a382b339a9825b1fa0c0f68dddd08145827243a05957cf9509ffaddc3d30330c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:17:09 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Tue, 30 Aug 2016 23:17:14 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:17:14 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:17:16 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:17:17 GMT
ENV SOLR_VERSION=5.5.2
# Tue, 30 Aug 2016 23:17:17 GMT
ENV SOLR_SHA256=e62bab565675e10d27f40d5bb090b4181b2f0c21870adf98d1ea873ead7758e1
# Tue, 30 Aug 2016 23:17:17 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.2/solr-5.5.2.tgz
# Tue, 30 Aug 2016 23:17:35 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:17:36 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:17:37 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:17:37 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 23:17:37 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:17:37 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:17:38 GMT
USER [solr]
# Tue, 30 Aug 2016 23:17:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:17:38 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ad55645c4ae28356b67d3600ef30ac7ea683369e0383059ba29156541b676`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 14.1 KB (14127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6172afc1feca8a9f38bad6c8288eaeb167cab09a145d284ad757f6bc5aedc7d6`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2512a3526b71feac330314b16e781d1c4691fc9019a708baa715c1f9971a198b`  
		Last Modified: Tue, 30 Aug 2016 23:24:18 GMT  
		Size: 136.8 MB (136804947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945859d4697077e2027f6f5ab87e1ba546a1ad880681e51218113cca15cc851d`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19235a078887134ea8d6ea10105336f3f97d017afc7ba59293ec5c9c327a0acc`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5.5-alpine`

```console
$ docker pull solr@sha256:b78d2c49468c6694cbbf7348020722574cea515fb4297684ea06662a4cbda01b
```

-	Platforms:
	-	linux; amd64

### `solr:5.5-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 MB (184134659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a382b339a9825b1fa0c0f68dddd08145827243a05957cf9509ffaddc3d30330c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:17:09 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Tue, 30 Aug 2016 23:17:14 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:17:14 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:17:16 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:17:17 GMT
ENV SOLR_VERSION=5.5.2
# Tue, 30 Aug 2016 23:17:17 GMT
ENV SOLR_SHA256=e62bab565675e10d27f40d5bb090b4181b2f0c21870adf98d1ea873ead7758e1
# Tue, 30 Aug 2016 23:17:17 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.2/solr-5.5.2.tgz
# Tue, 30 Aug 2016 23:17:35 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:17:36 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:17:37 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:17:37 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 23:17:37 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:17:37 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:17:38 GMT
USER [solr]
# Tue, 30 Aug 2016 23:17:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:17:38 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ad55645c4ae28356b67d3600ef30ac7ea683369e0383059ba29156541b676`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 14.1 KB (14127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6172afc1feca8a9f38bad6c8288eaeb167cab09a145d284ad757f6bc5aedc7d6`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2512a3526b71feac330314b16e781d1c4691fc9019a708baa715c1f9971a198b`  
		Last Modified: Tue, 30 Aug 2016 23:24:18 GMT  
		Size: 136.8 MB (136804947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945859d4697077e2027f6f5ab87e1ba546a1ad880681e51218113cca15cc851d`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19235a078887134ea8d6ea10105336f3f97d017afc7ba59293ec5c9c327a0acc`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:5-alpine`

```console
$ docker pull solr@sha256:b78d2c49468c6694cbbf7348020722574cea515fb4297684ea06662a4cbda01b
```

-	Platforms:
	-	linux; amd64

### `solr:5-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 MB (184134659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a382b339a9825b1fa0c0f68dddd08145827243a05957cf9509ffaddc3d30330c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:17:09 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Tue, 30 Aug 2016 23:17:14 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:17:14 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:17:16 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:17:17 GMT
ENV SOLR_VERSION=5.5.2
# Tue, 30 Aug 2016 23:17:17 GMT
ENV SOLR_SHA256=e62bab565675e10d27f40d5bb090b4181b2f0c21870adf98d1ea873ead7758e1
# Tue, 30 Aug 2016 23:17:17 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.2/solr-5.5.2.tgz
# Tue, 30 Aug 2016 23:17:35 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:17:36 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:17:37 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:17:37 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 23:17:37 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:17:37 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:17:38 GMT
USER [solr]
# Tue, 30 Aug 2016 23:17:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:17:38 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ad55645c4ae28356b67d3600ef30ac7ea683369e0383059ba29156541b676`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 14.1 KB (14127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6172afc1feca8a9f38bad6c8288eaeb167cab09a145d284ad757f6bc5aedc7d6`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2512a3526b71feac330314b16e781d1c4691fc9019a708baa715c1f9971a198b`  
		Last Modified: Tue, 30 Aug 2016 23:24:18 GMT  
		Size: 136.8 MB (136804947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945859d4697077e2027f6f5ab87e1ba546a1ad880681e51218113cca15cc851d`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19235a078887134ea8d6ea10105336f3f97d017afc7ba59293ec5c9c327a0acc`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.0.1`

```console
$ docker pull solr@sha256:486b5ca1fc83a660b38e9c30ac52be03ae719dd107bbb170d40ead3a9ea1bc72
```

-	Platforms:
	-	linux; amd64

### `solr:6.0.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.2 MB (272157345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da7525b33e9a1309557fd2a1a43654cadb89c2a3063003f1ff2c6fe7e490d846`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 23:14:25 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:14:25 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:14:25 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:14:46 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:14:46 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:14:47 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:14:48 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:16:46 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Tue, 30 Aug 2016 23:16:46 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:16:48 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:17:38 GMT
ENV SOLR_VERSION=6.0.1
# Tue, 30 Aug 2016 23:17:39 GMT
ENV SOLR_SHA256=4fd25942f0b8083a2499e1dc606c6dd29e4b520c28a16a2d82111088126d43af
# Tue, 30 Aug 2016 23:17:39 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.0.1/solr-6.0.1.tgz
# Tue, 30 Aug 2016 23:17:56 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:17:57 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:17:58 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:17:58 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:17:59 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:17:59 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:18:00 GMT
USER [solr]
# Tue, 30 Aug 2016 23:18:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:18:01 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebfc324570b9317d16bd29975bef9916c28176a5b093d3847c3eb5ea1c64ef0`  
		Last Modified: Tue, 30 Aug 2016 23:20:21 GMT  
		Size: 10.1 MB (10079898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065254a52516213eadb7cd89adf7bd359f1d2b0b4f1bea802104caaceb8365c6`  
		Last Modified: Tue, 30 Aug 2016 23:20:09 GMT  
		Size: 4.6 KB (4632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5287371801f26cd12278df9e69aaaff2b99ff0055cbc80213cb7384c1a72ff5`  
		Last Modified: Tue, 30 Aug 2016 23:23:08 GMT  
		Size: 14.6 KB (14557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464d30d982797a0f71d4d61ac422e931ceb64b7122f2c88336838887967cbb41`  
		Last Modified: Tue, 30 Aug 2016 23:25:24 GMT  
		Size: 137.9 MB (137908602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812d5b127f0e8b2744f64cfa664f190b8fe24dc50335a816a2c492372fc567cd`  
		Last Modified: Tue, 30 Aug 2016 23:25:06 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e12ec365103bf10c36f342cd4bd40f1fd114c03d0dae32779c0aa529e418ee`  
		Last Modified: Tue, 30 Aug 2016 23:25:06 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.0`

```console
$ docker pull solr@sha256:486b5ca1fc83a660b38e9c30ac52be03ae719dd107bbb170d40ead3a9ea1bc72
```

-	Platforms:
	-	linux; amd64

### `solr:6.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.2 MB (272157345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da7525b33e9a1309557fd2a1a43654cadb89c2a3063003f1ff2c6fe7e490d846`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 23:14:25 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:14:25 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:14:25 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:14:46 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:14:46 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:14:47 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:14:48 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:16:46 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Tue, 30 Aug 2016 23:16:46 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:16:48 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:17:38 GMT
ENV SOLR_VERSION=6.0.1
# Tue, 30 Aug 2016 23:17:39 GMT
ENV SOLR_SHA256=4fd25942f0b8083a2499e1dc606c6dd29e4b520c28a16a2d82111088126d43af
# Tue, 30 Aug 2016 23:17:39 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.0.1/solr-6.0.1.tgz
# Tue, 30 Aug 2016 23:17:56 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:17:57 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:17:58 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:17:58 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:17:59 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:17:59 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:18:00 GMT
USER [solr]
# Tue, 30 Aug 2016 23:18:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:18:01 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebfc324570b9317d16bd29975bef9916c28176a5b093d3847c3eb5ea1c64ef0`  
		Last Modified: Tue, 30 Aug 2016 23:20:21 GMT  
		Size: 10.1 MB (10079898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065254a52516213eadb7cd89adf7bd359f1d2b0b4f1bea802104caaceb8365c6`  
		Last Modified: Tue, 30 Aug 2016 23:20:09 GMT  
		Size: 4.6 KB (4632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5287371801f26cd12278df9e69aaaff2b99ff0055cbc80213cb7384c1a72ff5`  
		Last Modified: Tue, 30 Aug 2016 23:23:08 GMT  
		Size: 14.6 KB (14557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464d30d982797a0f71d4d61ac422e931ceb64b7122f2c88336838887967cbb41`  
		Last Modified: Tue, 30 Aug 2016 23:25:24 GMT  
		Size: 137.9 MB (137908602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812d5b127f0e8b2744f64cfa664f190b8fe24dc50335a816a2c492372fc567cd`  
		Last Modified: Tue, 30 Aug 2016 23:25:06 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e12ec365103bf10c36f342cd4bd40f1fd114c03d0dae32779c0aa529e418ee`  
		Last Modified: Tue, 30 Aug 2016 23:25:06 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.0.1-alpine`

```console
$ docker pull solr@sha256:2055a0a223c991fdc0cc4a8ab2231acca9f90b91d7cf02cda8eb3d3f8c386be9
```

-	Platforms:
	-	linux; amd64

### `solr:6.0.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.2 MB (185238188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eecf47d24329ade25461afd5c26ba3f618573c6f0a718415cb39a9d53201159`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:17:09 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Tue, 30 Aug 2016 23:17:14 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:17:14 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:17:16 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:18:01 GMT
ENV SOLR_VERSION=6.0.1
# Tue, 30 Aug 2016 23:18:01 GMT
ENV SOLR_SHA256=4fd25942f0b8083a2499e1dc606c6dd29e4b520c28a16a2d82111088126d43af
# Tue, 30 Aug 2016 23:18:02 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.0.1/solr-6.0.1.tgz
# Tue, 30 Aug 2016 23:18:20 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:18:20 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:18:21 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:18:21 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 23:18:21 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:18:22 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:18:22 GMT
USER [solr]
# Tue, 30 Aug 2016 23:18:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:18:22 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ad55645c4ae28356b67d3600ef30ac7ea683369e0383059ba29156541b676`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 14.1 KB (14127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6172afc1feca8a9f38bad6c8288eaeb167cab09a145d284ad757f6bc5aedc7d6`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9443610640a366b4a4f81185e3cbc39f9ae978af674d5966a897403507732c4b`  
		Last Modified: Tue, 30 Aug 2016 23:26:03 GMT  
		Size: 137.9 MB (137908475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e678ea084d5eddb4e6bf1e038c6b90c92586db3b6c730809d0e23148b7a18436`  
		Last Modified: Tue, 30 Aug 2016 23:25:43 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e44efa3e4ed4b0399462d75b220de697c398df61d8f9969f147fea0e48a6abc`  
		Last Modified: Tue, 30 Aug 2016 23:25:43 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.0-alpine`

```console
$ docker pull solr@sha256:2055a0a223c991fdc0cc4a8ab2231acca9f90b91d7cf02cda8eb3d3f8c386be9
```

-	Platforms:
	-	linux; amd64

### `solr:6.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.2 MB (185238188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eecf47d24329ade25461afd5c26ba3f618573c6f0a718415cb39a9d53201159`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:17:09 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Tue, 30 Aug 2016 23:17:14 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:17:14 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:17:16 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:18:01 GMT
ENV SOLR_VERSION=6.0.1
# Tue, 30 Aug 2016 23:18:01 GMT
ENV SOLR_SHA256=4fd25942f0b8083a2499e1dc606c6dd29e4b520c28a16a2d82111088126d43af
# Tue, 30 Aug 2016 23:18:02 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.0.1/solr-6.0.1.tgz
# Tue, 30 Aug 2016 23:18:20 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:18:20 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:18:21 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:18:21 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 23:18:21 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:18:22 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:18:22 GMT
USER [solr]
# Tue, 30 Aug 2016 23:18:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:18:22 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ad55645c4ae28356b67d3600ef30ac7ea683369e0383059ba29156541b676`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 14.1 KB (14127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6172afc1feca8a9f38bad6c8288eaeb167cab09a145d284ad757f6bc5aedc7d6`  
		Last Modified: Tue, 30 Aug 2016 23:23:58 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9443610640a366b4a4f81185e3cbc39f9ae978af674d5966a897403507732c4b`  
		Last Modified: Tue, 30 Aug 2016 23:26:03 GMT  
		Size: 137.9 MB (137908475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e678ea084d5eddb4e6bf1e038c6b90c92586db3b6c730809d0e23148b7a18436`  
		Last Modified: Tue, 30 Aug 2016 23:25:43 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e44efa3e4ed4b0399462d75b220de697c398df61d8f9969f147fea0e48a6abc`  
		Last Modified: Tue, 30 Aug 2016 23:25:43 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.1.0`

```console
$ docker pull solr@sha256:c104e9a526885dd816f6fb7220ca66cd7e671f4ecf179f4afb1f5a7ca53b7ef2
```

-	Platforms:
	-	linux; amd64

### `solr:6.1.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.1 MB (273072411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3bd362dd58f5ff411eda4cefe3fc3b8a10902c2f1c919dc00aa1ba9dc66bc14`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 23:14:25 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:14:25 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:14:25 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:14:46 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:14:46 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:14:47 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:14:48 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:15:52 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 30 Aug 2016 23:15:53 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:15:55 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:18:23 GMT
ENV SOLR_VERSION=6.1.0
# Tue, 30 Aug 2016 23:18:23 GMT
ENV SOLR_SHA256=74630a06d45eb44c0afe2bfb6e2cd80c9d8d92aa0c48a563e39c32996a76c8b0
# Tue, 30 Aug 2016 23:18:23 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.1.0/solr-6.1.0.tgz
# Tue, 30 Aug 2016 23:18:40 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:18:40 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:18:41 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:18:41 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:18:42 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:18:43 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:18:43 GMT
USER [solr]
# Tue, 30 Aug 2016 23:18:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:18:44 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebfc324570b9317d16bd29975bef9916c28176a5b093d3847c3eb5ea1c64ef0`  
		Last Modified: Tue, 30 Aug 2016 23:20:21 GMT  
		Size: 10.1 MB (10079898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065254a52516213eadb7cd89adf7bd359f1d2b0b4f1bea802104caaceb8365c6`  
		Last Modified: Tue, 30 Aug 2016 23:20:09 GMT  
		Size: 4.6 KB (4632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312ae797e74d946b9a85835ba21890108cfc2de1db20ffc1e1b03f73ae26131e`  
		Last Modified: Tue, 30 Aug 2016 23:21:46 GMT  
		Size: 7.4 KB (7397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8218603395a58fa209a1a7906f56b9e13d9fee7b34fd3fe8883c0520df3741f5`  
		Last Modified: Tue, 30 Aug 2016 23:26:47 GMT  
		Size: 138.8 MB (138830828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c93de478a465324819f8157158eac97e96b5480831c3b546495f394249903a`  
		Last Modified: Tue, 30 Aug 2016 23:26:23 GMT  
		Size: 1.9 KB (1872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50511af6d2d4e9f6c02c2afeb982a0998876b946bedc77af80dc2d789a04e36`  
		Last Modified: Tue, 30 Aug 2016 23:26:23 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.1`

```console
$ docker pull solr@sha256:c104e9a526885dd816f6fb7220ca66cd7e671f4ecf179f4afb1f5a7ca53b7ef2
```

-	Platforms:
	-	linux; amd64

### `solr:6.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.1 MB (273072411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3bd362dd58f5ff411eda4cefe3fc3b8a10902c2f1c919dc00aa1ba9dc66bc14`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 23:14:25 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:14:25 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:14:25 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:14:46 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:14:46 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:14:47 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:14:48 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:15:52 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 30 Aug 2016 23:15:53 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:15:55 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:18:23 GMT
ENV SOLR_VERSION=6.1.0
# Tue, 30 Aug 2016 23:18:23 GMT
ENV SOLR_SHA256=74630a06d45eb44c0afe2bfb6e2cd80c9d8d92aa0c48a563e39c32996a76c8b0
# Tue, 30 Aug 2016 23:18:23 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.1.0/solr-6.1.0.tgz
# Tue, 30 Aug 2016 23:18:40 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:18:40 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:18:41 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:18:41 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:18:42 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:18:43 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:18:43 GMT
USER [solr]
# Tue, 30 Aug 2016 23:18:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:18:44 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebfc324570b9317d16bd29975bef9916c28176a5b093d3847c3eb5ea1c64ef0`  
		Last Modified: Tue, 30 Aug 2016 23:20:21 GMT  
		Size: 10.1 MB (10079898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065254a52516213eadb7cd89adf7bd359f1d2b0b4f1bea802104caaceb8365c6`  
		Last Modified: Tue, 30 Aug 2016 23:20:09 GMT  
		Size: 4.6 KB (4632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312ae797e74d946b9a85835ba21890108cfc2de1db20ffc1e1b03f73ae26131e`  
		Last Modified: Tue, 30 Aug 2016 23:21:46 GMT  
		Size: 7.4 KB (7397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8218603395a58fa209a1a7906f56b9e13d9fee7b34fd3fe8883c0520df3741f5`  
		Last Modified: Tue, 30 Aug 2016 23:26:47 GMT  
		Size: 138.8 MB (138830828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c93de478a465324819f8157158eac97e96b5480831c3b546495f394249903a`  
		Last Modified: Tue, 30 Aug 2016 23:26:23 GMT  
		Size: 1.9 KB (1872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50511af6d2d4e9f6c02c2afeb982a0998876b946bedc77af80dc2d789a04e36`  
		Last Modified: Tue, 30 Aug 2016 23:26:23 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.1.0-alpine`

```console
$ docker pull solr@sha256:5dd839271e98cfa9a52cffe50b6799f0370509f6184f2efa6c886e03df60e1e2
```

-	Platforms:
	-	linux; amd64

### `solr:6.1.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186153163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1ccbbfbe4ac939d8e51aaa0c910588ce3b1c063b8ee0ca3745cb83472db08ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:16:17 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 30 Aug 2016 23:16:20 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:16:21 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:16:24 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:18:44 GMT
ENV SOLR_VERSION=6.1.0
# Tue, 30 Aug 2016 23:18:44 GMT
ENV SOLR_SHA256=74630a06d45eb44c0afe2bfb6e2cd80c9d8d92aa0c48a563e39c32996a76c8b0
# Tue, 30 Aug 2016 23:18:45 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.1.0/solr-6.1.0.tgz
# Tue, 30 Aug 2016 23:19:02 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:19:03 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:19:04 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:19:04 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 23:19:05 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:19:05 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:19:05 GMT
USER [solr]
# Tue, 30 Aug 2016 23:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:19:06 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad36ffcc0eef654081de4eadc258402de7baeffee79a7800f87e0d3de57cefe`  
		Last Modified: Tue, 30 Aug 2016 23:22:30 GMT  
		Size: 7.1 KB (7085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174c150c5c16d65bd25b627b46696e51b02610bcb031c24462e65de4bc17b1c1`  
		Last Modified: Tue, 30 Aug 2016 23:22:30 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17da63a5903810adf9fc0c684824f1f232ee298c93cd4902677050a4cbf5802`  
		Last Modified: Tue, 30 Aug 2016 23:27:31 GMT  
		Size: 138.8 MB (138830490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9df3fb7c4ac7a958925773293b5c9612496a4fe21bea9048622ca9b1f7921a8`  
		Last Modified: Tue, 30 Aug 2016 23:27:06 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65bcd0f64c10b42db3d4b414c27f637a067f1c74a644b34c1022b2f56e917603`  
		Last Modified: Tue, 30 Aug 2016 23:27:06 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.1-alpine`

```console
$ docker pull solr@sha256:5dd839271e98cfa9a52cffe50b6799f0370509f6184f2efa6c886e03df60e1e2
```

-	Platforms:
	-	linux; amd64

### `solr:6.1-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186153163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1ccbbfbe4ac939d8e51aaa0c910588ce3b1c063b8ee0ca3745cb83472db08ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:16:17 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Tue, 30 Aug 2016 23:16:20 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:16:21 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:16:24 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:18:44 GMT
ENV SOLR_VERSION=6.1.0
# Tue, 30 Aug 2016 23:18:44 GMT
ENV SOLR_SHA256=74630a06d45eb44c0afe2bfb6e2cd80c9d8d92aa0c48a563e39c32996a76c8b0
# Tue, 30 Aug 2016 23:18:45 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.1.0/solr-6.1.0.tgz
# Tue, 30 Aug 2016 23:19:02 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:19:03 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:19:04 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:19:04 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 23:19:05 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:19:05 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:19:05 GMT
USER [solr]
# Tue, 30 Aug 2016 23:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:19:06 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad36ffcc0eef654081de4eadc258402de7baeffee79a7800f87e0d3de57cefe`  
		Last Modified: Tue, 30 Aug 2016 23:22:30 GMT  
		Size: 7.1 KB (7085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174c150c5c16d65bd25b627b46696e51b02610bcb031c24462e65de4bc17b1c1`  
		Last Modified: Tue, 30 Aug 2016 23:22:30 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17da63a5903810adf9fc0c684824f1f232ee298c93cd4902677050a4cbf5802`  
		Last Modified: Tue, 30 Aug 2016 23:27:31 GMT  
		Size: 138.8 MB (138830490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9df3fb7c4ac7a958925773293b5c9612496a4fe21bea9048622ca9b1f7921a8`  
		Last Modified: Tue, 30 Aug 2016 23:27:06 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65bcd0f64c10b42db3d4b414c27f637a067f1c74a644b34c1022b2f56e917603`  
		Last Modified: Tue, 30 Aug 2016 23:27:06 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.2.0`

```console
$ docker pull solr@sha256:0bee09cc9ec5961d3bcf4224ad4406b54c459a9f535d98287610e409b6f42225
```

-	Platforms:
	-	linux; amd64

### `solr:6.2.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.3 MB (283271313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f703d78443e4208a9d4adb4c7fd90614cbb06bea53686e54a339317da40812b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 23:14:25 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:14:25 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:14:25 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:14:46 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:14:46 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:14:47 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:14:48 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:19:06 GMT
ENV SOLR_KEY=2C72EB1397733A551DDB60CCF119941F6E68DA61
# Tue, 30 Aug 2016 23:19:06 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:19:08 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:19:09 GMT
ENV SOLR_VERSION=6.2.0
# Tue, 30 Aug 2016 23:19:09 GMT
ENV SOLR_SHA256=ba7c93e1c8d28717d6d84788ebdc2e8e9211a32f48b5a30b2a904762a0b7cd39
# Tue, 30 Aug 2016 23:19:09 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.0/solr-6.2.0.tgz
# Tue, 30 Aug 2016 23:19:28 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:19:28 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:19:29 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:19:29 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:19:30 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:19:30 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:19:30 GMT
USER [solr]
# Tue, 30 Aug 2016 23:19:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:19:31 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebfc324570b9317d16bd29975bef9916c28176a5b093d3847c3eb5ea1c64ef0`  
		Last Modified: Tue, 30 Aug 2016 23:20:21 GMT  
		Size: 10.1 MB (10079898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065254a52516213eadb7cd89adf7bd359f1d2b0b4f1bea802104caaceb8365c6`  
		Last Modified: Tue, 30 Aug 2016 23:20:09 GMT  
		Size: 4.6 KB (4632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984e8a232f1001000c70b554c393bb1dd7bded64c044999e6268434bcfeef06e`  
		Last Modified: Tue, 30 Aug 2016 23:27:52 GMT  
		Size: 7.5 KB (7470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e86a19800e40f08c8ad58b25d33b41874c46dbb7acf19121c4615c5f57ad7b`  
		Last Modified: Tue, 30 Aug 2016 23:28:17 GMT  
		Size: 149.0 MB (149029656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a31e698aacb8ade98216e20ae94662854ff100bb431a6f05a7be3c1bef1e662`  
		Last Modified: Tue, 30 Aug 2016 23:27:52 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d0080745f1801178c6659a06dd18f82fd2eb4f6a86b9126af40e6fabb44f9a`  
		Last Modified: Tue, 30 Aug 2016 23:27:52 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.2`

```console
$ docker pull solr@sha256:0bee09cc9ec5961d3bcf4224ad4406b54c459a9f535d98287610e409b6f42225
```

-	Platforms:
	-	linux; amd64

### `solr:6.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.3 MB (283271313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f703d78443e4208a9d4adb4c7fd90614cbb06bea53686e54a339317da40812b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 23:14:25 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:14:25 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:14:25 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:14:46 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:14:46 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:14:47 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:14:48 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:19:06 GMT
ENV SOLR_KEY=2C72EB1397733A551DDB60CCF119941F6E68DA61
# Tue, 30 Aug 2016 23:19:06 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:19:08 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:19:09 GMT
ENV SOLR_VERSION=6.2.0
# Tue, 30 Aug 2016 23:19:09 GMT
ENV SOLR_SHA256=ba7c93e1c8d28717d6d84788ebdc2e8e9211a32f48b5a30b2a904762a0b7cd39
# Tue, 30 Aug 2016 23:19:09 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.0/solr-6.2.0.tgz
# Tue, 30 Aug 2016 23:19:28 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:19:28 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:19:29 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:19:29 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:19:30 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:19:30 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:19:30 GMT
USER [solr]
# Tue, 30 Aug 2016 23:19:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:19:31 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebfc324570b9317d16bd29975bef9916c28176a5b093d3847c3eb5ea1c64ef0`  
		Last Modified: Tue, 30 Aug 2016 23:20:21 GMT  
		Size: 10.1 MB (10079898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065254a52516213eadb7cd89adf7bd359f1d2b0b4f1bea802104caaceb8365c6`  
		Last Modified: Tue, 30 Aug 2016 23:20:09 GMT  
		Size: 4.6 KB (4632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984e8a232f1001000c70b554c393bb1dd7bded64c044999e6268434bcfeef06e`  
		Last Modified: Tue, 30 Aug 2016 23:27:52 GMT  
		Size: 7.5 KB (7470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e86a19800e40f08c8ad58b25d33b41874c46dbb7acf19121c4615c5f57ad7b`  
		Last Modified: Tue, 30 Aug 2016 23:28:17 GMT  
		Size: 149.0 MB (149029656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a31e698aacb8ade98216e20ae94662854ff100bb431a6f05a7be3c1bef1e662`  
		Last Modified: Tue, 30 Aug 2016 23:27:52 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d0080745f1801178c6659a06dd18f82fd2eb4f6a86b9126af40e6fabb44f9a`  
		Last Modified: Tue, 30 Aug 2016 23:27:52 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6`

```console
$ docker pull solr@sha256:0bee09cc9ec5961d3bcf4224ad4406b54c459a9f535d98287610e409b6f42225
```

-	Platforms:
	-	linux; amd64

### `solr:6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.3 MB (283271313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f703d78443e4208a9d4adb4c7fd90614cbb06bea53686e54a339317da40812b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 23:14:25 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:14:25 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:14:25 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:14:46 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:14:46 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:14:47 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:14:48 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:19:06 GMT
ENV SOLR_KEY=2C72EB1397733A551DDB60CCF119941F6E68DA61
# Tue, 30 Aug 2016 23:19:06 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:19:08 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:19:09 GMT
ENV SOLR_VERSION=6.2.0
# Tue, 30 Aug 2016 23:19:09 GMT
ENV SOLR_SHA256=ba7c93e1c8d28717d6d84788ebdc2e8e9211a32f48b5a30b2a904762a0b7cd39
# Tue, 30 Aug 2016 23:19:09 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.0/solr-6.2.0.tgz
# Tue, 30 Aug 2016 23:19:28 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:19:28 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:19:29 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:19:29 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:19:30 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:19:30 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:19:30 GMT
USER [solr]
# Tue, 30 Aug 2016 23:19:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:19:31 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebfc324570b9317d16bd29975bef9916c28176a5b093d3847c3eb5ea1c64ef0`  
		Last Modified: Tue, 30 Aug 2016 23:20:21 GMT  
		Size: 10.1 MB (10079898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065254a52516213eadb7cd89adf7bd359f1d2b0b4f1bea802104caaceb8365c6`  
		Last Modified: Tue, 30 Aug 2016 23:20:09 GMT  
		Size: 4.6 KB (4632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984e8a232f1001000c70b554c393bb1dd7bded64c044999e6268434bcfeef06e`  
		Last Modified: Tue, 30 Aug 2016 23:27:52 GMT  
		Size: 7.5 KB (7470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e86a19800e40f08c8ad58b25d33b41874c46dbb7acf19121c4615c5f57ad7b`  
		Last Modified: Tue, 30 Aug 2016 23:28:17 GMT  
		Size: 149.0 MB (149029656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a31e698aacb8ade98216e20ae94662854ff100bb431a6f05a7be3c1bef1e662`  
		Last Modified: Tue, 30 Aug 2016 23:27:52 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d0080745f1801178c6659a06dd18f82fd2eb4f6a86b9126af40e6fabb44f9a`  
		Last Modified: Tue, 30 Aug 2016 23:27:52 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:latest`

```console
$ docker pull solr@sha256:0bee09cc9ec5961d3bcf4224ad4406b54c459a9f535d98287610e409b6f42225
```

-	Platforms:
	-	linux; amd64

### `solr:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.3 MB (283271313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f703d78443e4208a9d4adb4c7fd90614cbb06bea53686e54a339317da40812b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Tue, 30 Aug 2016 00:24:21 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in / 
# Tue, 30 Aug 2016 00:24:21 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:01:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 19:55:40 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 30 Aug 2016 19:55:41 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:55:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_VERSION=8u102
# Tue, 30 Aug 2016 19:55:42 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 30 Aug 2016 19:55:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 30 Aug 2016 19:56:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 19:56:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Aug 2016 23:14:25 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:14:25 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:14:25 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:14:46 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 23:14:46 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:14:47 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:14:48 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:19:06 GMT
ENV SOLR_KEY=2C72EB1397733A551DDB60CCF119941F6E68DA61
# Tue, 30 Aug 2016 23:19:06 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:19:08 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:19:09 GMT
ENV SOLR_VERSION=6.2.0
# Tue, 30 Aug 2016 23:19:09 GMT
ENV SOLR_SHA256=ba7c93e1c8d28717d6d84788ebdc2e8e9211a32f48b5a30b2a904762a0b7cd39
# Tue, 30 Aug 2016 23:19:09 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.0/solr-6.2.0.tgz
# Tue, 30 Aug 2016 23:19:28 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:19:28 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:19:29 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:19:29 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 23:19:30 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:19:30 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:19:30 GMT
USER [solr]
# Tue, 30 Aug 2016 23:19:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:19:31 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a4cf2cc675828e73bd8d18bce3caa936d93fedb555040bdbec021319451802`  
		Last Modified: Tue, 30 Aug 2016 21:10:14 GMT  
		Size: 18.5 MB (18526925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0074002c1ca76702061f6dfe93bdb1b5201bbf68fc2e007cd11af7d8ab54e301`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 566.7 KB (566663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7f795b9b456275a51a7fa8e1f606e89d007b2ef0e0950a51f7563296f1ba7c`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289ba16233e6d6ee8d69109b2926d89a165dccc2cee41dff3f63f9e5dab2dd52`  
		Last Modified: Tue, 30 Aug 2016 21:10:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d9f6ba2021d41864dea4f9511518360e27d0b5d7acf9ee5dda1ca1ed3f8cc2`  
		Last Modified: Tue, 30 Aug 2016 21:10:19 GMT  
		Size: 53.4 MB (53402046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a272f25f79cc92da8fb2ea837afd1fb963800adc87c103221417940142da6b13`  
		Last Modified: Tue, 30 Aug 2016 21:10:04 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebfc324570b9317d16bd29975bef9916c28176a5b093d3847c3eb5ea1c64ef0`  
		Last Modified: Tue, 30 Aug 2016 23:20:21 GMT  
		Size: 10.1 MB (10079898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065254a52516213eadb7cd89adf7bd359f1d2b0b4f1bea802104caaceb8365c6`  
		Last Modified: Tue, 30 Aug 2016 23:20:09 GMT  
		Size: 4.6 KB (4632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984e8a232f1001000c70b554c393bb1dd7bded64c044999e6268434bcfeef06e`  
		Last Modified: Tue, 30 Aug 2016 23:27:52 GMT  
		Size: 7.5 KB (7470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e86a19800e40f08c8ad58b25d33b41874c46dbb7acf19121c4615c5f57ad7b`  
		Last Modified: Tue, 30 Aug 2016 23:28:17 GMT  
		Size: 149.0 MB (149029656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a31e698aacb8ade98216e20ae94662854ff100bb431a6f05a7be3c1bef1e662`  
		Last Modified: Tue, 30 Aug 2016 23:27:52 GMT  
		Size: 1.9 KB (1873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d0080745f1801178c6659a06dd18f82fd2eb4f6a86b9126af40e6fabb44f9a`  
		Last Modified: Tue, 30 Aug 2016 23:27:52 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.2.0-alpine`

```console
$ docker pull solr@sha256:9f6574f951a8a43ec5f619270585548f3b8ea3d1472367d0e3c208b34f07e25e
```

-	Platforms:
	-	linux; amd64

### `solr:6.2.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.4 MB (196352313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00aca01bd6080134927bdcd0a79f4142ce3c733a9854ea21c9fafe71bfc3cf37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:19:31 GMT
ENV SOLR_KEY=2C72EB1397733A551DDB60CCF119941F6E68DA61
# Tue, 30 Aug 2016 23:19:37 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:19:37 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:19:40 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:19:40 GMT
ENV SOLR_VERSION=6.2.0
# Tue, 30 Aug 2016 23:19:40 GMT
ENV SOLR_SHA256=ba7c93e1c8d28717d6d84788ebdc2e8e9211a32f48b5a30b2a904762a0b7cd39
# Tue, 30 Aug 2016 23:19:41 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.0/solr-6.2.0.tgz
# Tue, 30 Aug 2016 23:20:00 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:20:01 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:20:02 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:20:02 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 23:20:02 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:20:02 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:20:03 GMT
USER [solr]
# Tue, 30 Aug 2016 23:20:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:20:03 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a313ee02e81902188c01d72d6376369927fc7e832a1e81a778c4d6c7b5ff2c60`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 7.2 KB (7153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb62fe6d24a1dd2c174dded71b7d414298ae3d576fdde9261d16e94a0790c442`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc22c9375ba316545326db813658d5406adb4af90d812ec99de9f36fe3f592d0`  
		Last Modified: Tue, 30 Aug 2016 23:29:16 GMT  
		Size: 149.0 MB (149029574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021b32337281b3aa5e905b930b0f5d59dd0f72849de0b37cc7e0a32f0f38092e`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc7a7de2a1af07a516fedf17917f9a9b5dc33cd69ee2ad7e9888fe11a03ec21`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6.2-alpine`

```console
$ docker pull solr@sha256:9f6574f951a8a43ec5f619270585548f3b8ea3d1472367d0e3c208b34f07e25e
```

-	Platforms:
	-	linux; amd64

### `solr:6.2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.4 MB (196352313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00aca01bd6080134927bdcd0a79f4142ce3c733a9854ea21c9fafe71bfc3cf37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:19:31 GMT
ENV SOLR_KEY=2C72EB1397733A551DDB60CCF119941F6E68DA61
# Tue, 30 Aug 2016 23:19:37 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:19:37 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:19:40 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:19:40 GMT
ENV SOLR_VERSION=6.2.0
# Tue, 30 Aug 2016 23:19:40 GMT
ENV SOLR_SHA256=ba7c93e1c8d28717d6d84788ebdc2e8e9211a32f48b5a30b2a904762a0b7cd39
# Tue, 30 Aug 2016 23:19:41 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.0/solr-6.2.0.tgz
# Tue, 30 Aug 2016 23:20:00 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:20:01 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:20:02 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:20:02 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 23:20:02 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:20:02 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:20:03 GMT
USER [solr]
# Tue, 30 Aug 2016 23:20:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:20:03 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a313ee02e81902188c01d72d6376369927fc7e832a1e81a778c4d6c7b5ff2c60`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 7.2 KB (7153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb62fe6d24a1dd2c174dded71b7d414298ae3d576fdde9261d16e94a0790c442`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc22c9375ba316545326db813658d5406adb4af90d812ec99de9f36fe3f592d0`  
		Last Modified: Tue, 30 Aug 2016 23:29:16 GMT  
		Size: 149.0 MB (149029574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021b32337281b3aa5e905b930b0f5d59dd0f72849de0b37cc7e0a32f0f38092e`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc7a7de2a1af07a516fedf17917f9a9b5dc33cd69ee2ad7e9888fe11a03ec21`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:6-alpine`

```console
$ docker pull solr@sha256:9f6574f951a8a43ec5f619270585548f3b8ea3d1472367d0e3c208b34f07e25e
```

-	Platforms:
	-	linux; amd64

### `solr:6-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.4 MB (196352313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00aca01bd6080134927bdcd0a79f4142ce3c733a9854ea21c9fafe71bfc3cf37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:19:31 GMT
ENV SOLR_KEY=2C72EB1397733A551DDB60CCF119941F6E68DA61
# Tue, 30 Aug 2016 23:19:37 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:19:37 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:19:40 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:19:40 GMT
ENV SOLR_VERSION=6.2.0
# Tue, 30 Aug 2016 23:19:40 GMT
ENV SOLR_SHA256=ba7c93e1c8d28717d6d84788ebdc2e8e9211a32f48b5a30b2a904762a0b7cd39
# Tue, 30 Aug 2016 23:19:41 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.0/solr-6.2.0.tgz
# Tue, 30 Aug 2016 23:20:00 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:20:01 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:20:02 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:20:02 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 23:20:02 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:20:02 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:20:03 GMT
USER [solr]
# Tue, 30 Aug 2016 23:20:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:20:03 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a313ee02e81902188c01d72d6376369927fc7e832a1e81a778c4d6c7b5ff2c60`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 7.2 KB (7153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb62fe6d24a1dd2c174dded71b7d414298ae3d576fdde9261d16e94a0790c442`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc22c9375ba316545326db813658d5406adb4af90d812ec99de9f36fe3f592d0`  
		Last Modified: Tue, 30 Aug 2016 23:29:16 GMT  
		Size: 149.0 MB (149029574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021b32337281b3aa5e905b930b0f5d59dd0f72849de0b37cc7e0a32f0f38092e`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc7a7de2a1af07a516fedf17917f9a9b5dc33cd69ee2ad7e9888fe11a03ec21`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `solr:alpine`

```console
$ docker pull solr@sha256:9f6574f951a8a43ec5f619270585548f3b8ea3d1472367d0e3c208b34f07e25e
```

-	Platforms:
	-	linux; amd64

### `solr:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.4 MB (196352313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00aca01bd6080134927bdcd0a79f4142ce3c733a9854ea21c9fafe71bfc3cf37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 23:15:13 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Aug 2016 23:15:13 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Aug 2016 23:15:13 GMT
ARG GPG_KEYSERVER
# Tue, 30 Aug 2016 23:15:16 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Tue, 30 Aug 2016 23:15:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_USER=solr
# Tue, 30 Aug 2016 23:15:19 GMT
ENV SOLR_UID=8983
# Tue, 30 Aug 2016 23:15:20 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Tue, 30 Aug 2016 23:19:31 GMT
ENV SOLR_KEY=2C72EB1397733A551DDB60CCF119941F6E68DA61
# Tue, 30 Aug 2016 23:19:37 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:19:37 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Tue, 30 Aug 2016 23:19:40 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Tue, 30 Aug 2016 23:19:40 GMT
ENV SOLR_VERSION=6.2.0
# Tue, 30 Aug 2016 23:19:40 GMT
ENV SOLR_SHA256=ba7c93e1c8d28717d6d84788ebdc2e8e9211a32f48b5a30b2a904762a0b7cd39
# Tue, 30 Aug 2016 23:19:41 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.2.0/solr-6.2.0.tgz
# Tue, 30 Aug 2016 23:20:00 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Tue, 30 Aug 2016 23:20:01 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts 
# Tue, 30 Aug 2016 23:20:02 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Tue, 30 Aug 2016 23:20:02 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 23:20:02 GMT
EXPOSE 8983/tcp
# Tue, 30 Aug 2016 23:20:02 GMT
WORKDIR /opt/solr
# Tue, 30 Aug 2016 23:20:03 GMT
USER [solr]
# Tue, 30 Aug 2016 23:20:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Aug 2016 23:20:03 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cfd928a2dc715f82d463ba785ab31419bbddef37c5b76a197be1155f7f59b0`  
		Last Modified: Tue, 30 Aug 2016 23:21:02 GMT  
		Size: 4.7 MB (4745499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7713cddf263368bd31f25d897221a672943c507811ce2526c168d356423b0e0a`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 606.8 KB (606820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273eb1ea78fd1291603b6f2133f3b68649887fd399b9b62efda462d702e5e340`  
		Last Modified: Tue, 30 Aug 2016 23:20:59 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a313ee02e81902188c01d72d6376369927fc7e832a1e81a778c4d6c7b5ff2c60`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 7.2 KB (7153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb62fe6d24a1dd2c174dded71b7d414298ae3d576fdde9261d16e94a0790c442`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc22c9375ba316545326db813658d5406adb4af90d812ec99de9f36fe3f592d0`  
		Last Modified: Tue, 30 Aug 2016 23:29:16 GMT  
		Size: 149.0 MB (149029574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021b32337281b3aa5e905b930b0f5d59dd0f72849de0b37cc7e0a32f0f38092e`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc7a7de2a1af07a516fedf17917f9a9b5dc33cd69ee2ad7e9888fe11a03ec21`  
		Last Modified: Tue, 30 Aug 2016 23:28:49 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
