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
-	[`solr:6`](#solr6)
-	[`solr:latest`](#solrlatest)
-	[`solr:6.1.0-alpine`](#solr610-alpine)
-	[`solr:6.1-alpine`](#solr61-alpine)
-	[`solr:6-alpine`](#solr6-alpine)
-	[`solr:alpine`](#solralpine)

## `solr:5.3.2`

```console
$ docker pull solr@sha256:56a93a5f7769c889e937f53468390de296d9fbf76b95ae8e86b0d934411eaa2b
```

-	Platforms:
	-	linux; amd64

### `solr:5.3.2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.2 MB (269169206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5913eb440238bf4833ab1eccbee8e436fcd17e3d335f81c6b3a8a41246fb4212`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 20:04:58 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 11 Aug 2016 20:04:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 11 Aug 2016 20:05:00 GMT
ARG GPG_KEYSERVER
# Thu, 11 Aug 2016 20:06:11 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 20:06:12 GMT
ENV SOLR_USER=solr
# Thu, 11 Aug 2016 20:06:13 GMT
ENV SOLR_UID=8983
# Thu, 11 Aug 2016 20:06:15 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Thu, 11 Aug 2016 20:06:16 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Thu, 11 Aug 2016 20:06:17 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Thu, 11 Aug 2016 20:06:20 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Thu, 11 Aug 2016 20:06:21 GMT
ENV SOLR_VERSION=5.3.2
# Thu, 11 Aug 2016 20:06:22 GMT
ENV SOLR_SHA256=7c26601229ed712c639d00882f35304d87e0032028be4754d098a9b694877f48
# Thu, 11 Aug 2016 20:06:22 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.3.2/solr-5.3.2.tgz
# Thu, 11 Aug 2016 20:06:47 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 11 Aug 2016 20:06:49 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts
# Thu, 11 Aug 2016 20:06:51 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 11 Aug 2016 20:06:52 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 20:06:53 GMT
EXPOSE 8983/tcp
# Thu, 11 Aug 2016 20:06:53 GMT
WORKDIR /opt/solr
# Thu, 11 Aug 2016 20:06:54 GMT
USER [solr]
# Thu, 11 Aug 2016 20:06:55 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 20:06:56 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:098acfb291187038145d00f8e2b9e3ec0aa2dc8e437e7a0ba0571b76a0c1d113`  
		Last Modified: Thu, 11 Aug 2016 20:07:14 GMT  
		Size: 10.1 MB (10080065 bytes)
	-	`sha256:a9939f9c8844ae176b0c9dac2eaa02aafc18645bf177d143f76e0f9c2ea3ba21`  
		Last Modified: Thu, 11 Aug 2016 20:07:06 GMT  
		Size: 4.6 KB (4637 bytes)
	-	`sha256:371520d3b3146815a80985b0a15fca1c46fbbc24b09e2846087f903830abb9be`  
		Last Modified: Thu, 11 Aug 2016 20:07:06 GMT  
		Size: 8.0 KB (7964 bytes)
	-	`sha256:6b93b9f07ddccad192608898d339853194e869981fde2ee20b74b45a24fdd575`  
		Last Modified: Thu, 11 Aug 2016 20:07:22 GMT  
		Size: 134.9 MB (134926906 bytes)
	-	`sha256:942b32f5a56391bb555721d77465e404ea82890f30fa444454d63eed1a581716`  
		Last Modified: Thu, 11 Aug 2016 20:07:07 GMT  
		Size: 1.9 KB (1874 bytes)
	-	`sha256:00e48fc9e63744a5f521173c0ff18fdb785a2d9507f99f826f0f8898f8d026f6`  
		Last Modified: Thu, 11 Aug 2016 20:07:06 GMT  
		Size: 1.9 KB (1884 bytes)

## `solr:5.3`

```console
$ docker pull solr@sha256:56a93a5f7769c889e937f53468390de296d9fbf76b95ae8e86b0d934411eaa2b
```

-	Platforms:
	-	linux; amd64

### `solr:5.3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.2 MB (269169206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5913eb440238bf4833ab1eccbee8e436fcd17e3d335f81c6b3a8a41246fb4212`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 20:04:58 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 11 Aug 2016 20:04:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 11 Aug 2016 20:05:00 GMT
ARG GPG_KEYSERVER
# Thu, 11 Aug 2016 20:06:11 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 20:06:12 GMT
ENV SOLR_USER=solr
# Thu, 11 Aug 2016 20:06:13 GMT
ENV SOLR_UID=8983
# Thu, 11 Aug 2016 20:06:15 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Thu, 11 Aug 2016 20:06:16 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Thu, 11 Aug 2016 20:06:17 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Thu, 11 Aug 2016 20:06:20 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Thu, 11 Aug 2016 20:06:21 GMT
ENV SOLR_VERSION=5.3.2
# Thu, 11 Aug 2016 20:06:22 GMT
ENV SOLR_SHA256=7c26601229ed712c639d00882f35304d87e0032028be4754d098a9b694877f48
# Thu, 11 Aug 2016 20:06:22 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.3.2/solr-5.3.2.tgz
# Thu, 11 Aug 2016 20:06:47 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 11 Aug 2016 20:06:49 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts
# Thu, 11 Aug 2016 20:06:51 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 11 Aug 2016 20:06:52 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 20:06:53 GMT
EXPOSE 8983/tcp
# Thu, 11 Aug 2016 20:06:53 GMT
WORKDIR /opt/solr
# Thu, 11 Aug 2016 20:06:54 GMT
USER [solr]
# Thu, 11 Aug 2016 20:06:55 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 20:06:56 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:098acfb291187038145d00f8e2b9e3ec0aa2dc8e437e7a0ba0571b76a0c1d113`  
		Last Modified: Thu, 11 Aug 2016 20:07:14 GMT  
		Size: 10.1 MB (10080065 bytes)
	-	`sha256:a9939f9c8844ae176b0c9dac2eaa02aafc18645bf177d143f76e0f9c2ea3ba21`  
		Last Modified: Thu, 11 Aug 2016 20:07:06 GMT  
		Size: 4.6 KB (4637 bytes)
	-	`sha256:371520d3b3146815a80985b0a15fca1c46fbbc24b09e2846087f903830abb9be`  
		Last Modified: Thu, 11 Aug 2016 20:07:06 GMT  
		Size: 8.0 KB (7964 bytes)
	-	`sha256:6b93b9f07ddccad192608898d339853194e869981fde2ee20b74b45a24fdd575`  
		Last Modified: Thu, 11 Aug 2016 20:07:22 GMT  
		Size: 134.9 MB (134926906 bytes)
	-	`sha256:942b32f5a56391bb555721d77465e404ea82890f30fa444454d63eed1a581716`  
		Last Modified: Thu, 11 Aug 2016 20:07:07 GMT  
		Size: 1.9 KB (1874 bytes)
	-	`sha256:00e48fc9e63744a5f521173c0ff18fdb785a2d9507f99f826f0f8898f8d026f6`  
		Last Modified: Thu, 11 Aug 2016 20:07:06 GMT  
		Size: 1.9 KB (1884 bytes)

## `solr:5.3.2-alpine`

```console
$ docker pull solr@sha256:6fdb75755ebb4b62f51cf6b3b988fb00fd7ddf47066f1901f196e85662100fe3
```

-	Platforms:
	-	linux; amd64

### `solr:5.3.2-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.3 MB (182262190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7973dcd50725c5326cffb0b6e86d12796b388bea6ff626d9d8776e286e03b669`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:34:53 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jun 2016 20:34:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 23 Jun 2016 20:36:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 07 Jul 2016 19:05:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_VERSION=8u92
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Thu, 07 Jul 2016 19:05:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Jul 2016 21:53:27 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 07 Jul 2016 21:53:27 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 07 Jul 2016 21:53:28 GMT
ARG GPG_KEYSERVER
# Thu, 07 Jul 2016 21:53:34 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Thu, 07 Jul 2016 21:53:38 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Thu, 07 Jul 2016 21:53:39 GMT
ENV SOLR_USER=solr
# Thu, 07 Jul 2016 21:53:39 GMT
ENV SOLR_UID=8983
# Thu, 07 Jul 2016 21:53:41 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Thu, 07 Jul 2016 21:55:17 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Thu, 07 Jul 2016 21:55:26 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Thu, 07 Jul 2016 21:55:27 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Thu, 07 Jul 2016 21:55:30 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Thu, 07 Jul 2016 21:55:31 GMT
ENV SOLR_VERSION=5.3.2
# Thu, 07 Jul 2016 21:55:31 GMT
ENV SOLR_SHA256=7c26601229ed712c639d00882f35304d87e0032028be4754d098a9b694877f48
# Thu, 07 Jul 2016 21:55:32 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.3.2/solr-5.3.2.tgz
# Thu, 07 Jul 2016 21:55:57 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 07 Jul 2016 21:55:58 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts
# Thu, 07 Jul 2016 21:56:00 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 07 Jul 2016 21:56:00 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 21:56:01 GMT
EXPOSE 8983/tcp
# Thu, 07 Jul 2016 21:56:01 GMT
WORKDIR /opt/solr
# Thu, 07 Jul 2016 21:56:02 GMT
USER [solr]
# Thu, 07 Jul 2016 21:56:03 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Thu, 07 Jul 2016 21:56:03 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:745c1cd94ebe79c47147dc3c57bb9cba552a51edb00465b243006e01a1e941a9`  
		Last Modified: Thu, 07 Jul 2016 19:14:28 GMT  
		Size: 39.6 MB (39647617 bytes)
	-	`sha256:7412bb3dd7b1f9875da50e5f9752e534b73b64dd231bedda46b4e564ddc9812b`  
		Last Modified: Thu, 07 Jul 2016 21:54:30 GMT  
		Size: 4.7 MB (4745554 bytes)
	-	`sha256:a3b4838e58766b06cbc6f31b0471e4b6cf27376ea446518bd9b7f955883a61f5`  
		Last Modified: Thu, 07 Jul 2016 21:54:27 GMT  
		Size: 597.7 KB (597715 bytes)
	-	`sha256:f2d52cdf127a9ef6f6969cec245e2a8ee1cf80b6548aa186de705e8e24b3ef5e`  
		Last Modified: Thu, 07 Jul 2016 21:54:26 GMT  
		Size: 22.5 KB (22481 bytes)
	-	`sha256:37d41511d04ba883d00e892a258561d25e9e5c270bdd5eceeeddcf89062ee8ae`  
		Last Modified: Thu, 07 Jul 2016 21:56:10 GMT  
		Size: 7.7 KB (7652 bytes)
	-	`sha256:2fa78eb527423d0ece399ebfcbb7a0a79ee0a5fb785f46cbbd06f9085fa23da0`  
		Last Modified: Thu, 07 Jul 2016 21:56:10 GMT  
		Size: 154.0 B
	-	`sha256:dac39aead79eb062c2d3029d07f5a9a62f780e94de366edf481e8dbcf5b9decb`  
		Last Modified: Thu, 07 Jul 2016 21:56:23 GMT  
		Size: 134.9 MB (134926746 bytes)
	-	`sha256:59fa13ff3d890dbe8fdbfc97914e0d5cda8051439ef0319e0efc954e0e52301b`  
		Last Modified: Thu, 07 Jul 2016 21:56:11 GMT  
		Size: 1.9 KB (1874 bytes)
	-	`sha256:e3bce7b031d19a453e856ca40171dd44e1159cd128805fbc6828342dd9f2d8a3`  
		Last Modified: Thu, 07 Jul 2016 21:56:11 GMT  
		Size: 1.9 KB (1881 bytes)

## `solr:5.3-alpine`

```console
$ docker pull solr@sha256:6fdb75755ebb4b62f51cf6b3b988fb00fd7ddf47066f1901f196e85662100fe3
```

-	Platforms:
	-	linux; amd64

### `solr:5.3-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.3 MB (182262190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7973dcd50725c5326cffb0b6e86d12796b388bea6ff626d9d8776e286e03b669`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:34:53 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jun 2016 20:34:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 23 Jun 2016 20:36:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 07 Jul 2016 19:05:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_VERSION=8u92
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Thu, 07 Jul 2016 19:05:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Jul 2016 21:53:27 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 07 Jul 2016 21:53:27 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 07 Jul 2016 21:53:28 GMT
ARG GPG_KEYSERVER
# Thu, 07 Jul 2016 21:53:34 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Thu, 07 Jul 2016 21:53:38 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Thu, 07 Jul 2016 21:53:39 GMT
ENV SOLR_USER=solr
# Thu, 07 Jul 2016 21:53:39 GMT
ENV SOLR_UID=8983
# Thu, 07 Jul 2016 21:53:41 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Thu, 07 Jul 2016 21:55:17 GMT
ENV SOLR_KEY=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Thu, 07 Jul 2016 21:55:26 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Thu, 07 Jul 2016 21:55:27 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Thu, 07 Jul 2016 21:55:30 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Thu, 07 Jul 2016 21:55:31 GMT
ENV SOLR_VERSION=5.3.2
# Thu, 07 Jul 2016 21:55:31 GMT
ENV SOLR_SHA256=7c26601229ed712c639d00882f35304d87e0032028be4754d098a9b694877f48
# Thu, 07 Jul 2016 21:55:32 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.3.2/solr-5.3.2.tgz
# Thu, 07 Jul 2016 21:55:57 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 07 Jul 2016 21:55:58 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts
# Thu, 07 Jul 2016 21:56:00 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 07 Jul 2016 21:56:00 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 21:56:01 GMT
EXPOSE 8983/tcp
# Thu, 07 Jul 2016 21:56:01 GMT
WORKDIR /opt/solr
# Thu, 07 Jul 2016 21:56:02 GMT
USER [solr]
# Thu, 07 Jul 2016 21:56:03 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Thu, 07 Jul 2016 21:56:03 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:745c1cd94ebe79c47147dc3c57bb9cba552a51edb00465b243006e01a1e941a9`  
		Last Modified: Thu, 07 Jul 2016 19:14:28 GMT  
		Size: 39.6 MB (39647617 bytes)
	-	`sha256:7412bb3dd7b1f9875da50e5f9752e534b73b64dd231bedda46b4e564ddc9812b`  
		Last Modified: Thu, 07 Jul 2016 21:54:30 GMT  
		Size: 4.7 MB (4745554 bytes)
	-	`sha256:a3b4838e58766b06cbc6f31b0471e4b6cf27376ea446518bd9b7f955883a61f5`  
		Last Modified: Thu, 07 Jul 2016 21:54:27 GMT  
		Size: 597.7 KB (597715 bytes)
	-	`sha256:f2d52cdf127a9ef6f6969cec245e2a8ee1cf80b6548aa186de705e8e24b3ef5e`  
		Last Modified: Thu, 07 Jul 2016 21:54:26 GMT  
		Size: 22.5 KB (22481 bytes)
	-	`sha256:37d41511d04ba883d00e892a258561d25e9e5c270bdd5eceeeddcf89062ee8ae`  
		Last Modified: Thu, 07 Jul 2016 21:56:10 GMT  
		Size: 7.7 KB (7652 bytes)
	-	`sha256:2fa78eb527423d0ece399ebfcbb7a0a79ee0a5fb785f46cbbd06f9085fa23da0`  
		Last Modified: Thu, 07 Jul 2016 21:56:10 GMT  
		Size: 154.0 B
	-	`sha256:dac39aead79eb062c2d3029d07f5a9a62f780e94de366edf481e8dbcf5b9decb`  
		Last Modified: Thu, 07 Jul 2016 21:56:23 GMT  
		Size: 134.9 MB (134926746 bytes)
	-	`sha256:59fa13ff3d890dbe8fdbfc97914e0d5cda8051439ef0319e0efc954e0e52301b`  
		Last Modified: Thu, 07 Jul 2016 21:56:11 GMT  
		Size: 1.9 KB (1874 bytes)
	-	`sha256:e3bce7b031d19a453e856ca40171dd44e1159cd128805fbc6828342dd9f2d8a3`  
		Last Modified: Thu, 07 Jul 2016 21:56:11 GMT  
		Size: 1.9 KB (1881 bytes)

## `solr:5.4.1`

```console
$ docker pull solr@sha256:08382d4a95f46ce1d990893bbbbd881f286e9f7442ae7fc3eaf657d08541d03e
```

-	Platforms:
	-	linux; amd64

### `solr:5.4.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.6 MB (270558659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:419f290749d5f324e35bfcd38c7acd3aa703c0b2b731f7fc9081cc4e1370d7f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 20:04:58 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 11 Aug 2016 20:04:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 11 Aug 2016 20:05:00 GMT
ARG GPG_KEYSERVER
# Thu, 11 Aug 2016 20:06:11 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 20:06:12 GMT
ENV SOLR_USER=solr
# Thu, 11 Aug 2016 20:06:13 GMT
ENV SOLR_UID=8983
# Thu, 11 Aug 2016 20:06:15 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Thu, 11 Aug 2016 20:08:10 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Thu, 11 Aug 2016 20:08:11 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Thu, 11 Aug 2016 20:08:14 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Thu, 11 Aug 2016 20:10:59 GMT
ENV SOLR_VERSION=5.4.1
# Thu, 11 Aug 2016 20:10:59 GMT
ENV SOLR_SHA256=3e4b4ec7bd728b49b2ebc3dbe8f3d1ef89fded4ab86b9e2f856bedd58c99f28b
# Thu, 11 Aug 2016 20:11:00 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.4.1/solr-5.4.1.tgz
# Thu, 11 Aug 2016 20:11:26 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 11 Aug 2016 20:11:27 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts
# Thu, 11 Aug 2016 20:11:30 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 11 Aug 2016 20:11:30 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 20:11:31 GMT
EXPOSE 8983/tcp
# Thu, 11 Aug 2016 20:11:32 GMT
WORKDIR /opt/solr
# Thu, 11 Aug 2016 20:11:33 GMT
USER [solr]
# Thu, 11 Aug 2016 20:11:34 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 20:11:35 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:098acfb291187038145d00f8e2b9e3ec0aa2dc8e437e7a0ba0571b76a0c1d113`  
		Last Modified: Thu, 11 Aug 2016 20:07:14 GMT  
		Size: 10.1 MB (10080065 bytes)
	-	`sha256:a9939f9c8844ae176b0c9dac2eaa02aafc18645bf177d143f76e0f9c2ea3ba21`  
		Last Modified: Thu, 11 Aug 2016 20:07:06 GMT  
		Size: 4.6 KB (4637 bytes)
	-	`sha256:6096f775cfe1fd4ed91cbabbde7d3f4d6f179b6af58667af164acb12beecd906`  
		Last Modified: Thu, 11 Aug 2016 20:08:49 GMT  
		Size: 7.4 KB (7400 bytes)
	-	`sha256:2f64a212e1ba40b0d5c9d4abdc3f999fbde71f764fbc8540ec254d69653fb625`  
		Last Modified: Thu, 11 Aug 2016 20:12:06 GMT  
		Size: 136.3 MB (136316924 bytes)
	-	`sha256:763e85ced67417d5e85c5aab5c5a8fe799cf59e7007fa010df91242e04038c44`  
		Last Modified: Thu, 11 Aug 2016 20:11:46 GMT  
		Size: 1.9 KB (1874 bytes)
	-	`sha256:74ba8d9c58e09178df844015df20453c164fd94b739c090fd24e4b350406cf2d`  
		Last Modified: Thu, 11 Aug 2016 20:11:45 GMT  
		Size: 1.9 KB (1883 bytes)

## `solr:5.4`

```console
$ docker pull solr@sha256:08382d4a95f46ce1d990893bbbbd881f286e9f7442ae7fc3eaf657d08541d03e
```

-	Platforms:
	-	linux; amd64

### `solr:5.4` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.6 MB (270558659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:419f290749d5f324e35bfcd38c7acd3aa703c0b2b731f7fc9081cc4e1370d7f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 20:04:58 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 11 Aug 2016 20:04:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 11 Aug 2016 20:05:00 GMT
ARG GPG_KEYSERVER
# Thu, 11 Aug 2016 20:06:11 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 20:06:12 GMT
ENV SOLR_USER=solr
# Thu, 11 Aug 2016 20:06:13 GMT
ENV SOLR_UID=8983
# Thu, 11 Aug 2016 20:06:15 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Thu, 11 Aug 2016 20:08:10 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Thu, 11 Aug 2016 20:08:11 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Thu, 11 Aug 2016 20:08:14 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Thu, 11 Aug 2016 20:10:59 GMT
ENV SOLR_VERSION=5.4.1
# Thu, 11 Aug 2016 20:10:59 GMT
ENV SOLR_SHA256=3e4b4ec7bd728b49b2ebc3dbe8f3d1ef89fded4ab86b9e2f856bedd58c99f28b
# Thu, 11 Aug 2016 20:11:00 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.4.1/solr-5.4.1.tgz
# Thu, 11 Aug 2016 20:11:26 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 11 Aug 2016 20:11:27 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts
# Thu, 11 Aug 2016 20:11:30 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 11 Aug 2016 20:11:30 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 20:11:31 GMT
EXPOSE 8983/tcp
# Thu, 11 Aug 2016 20:11:32 GMT
WORKDIR /opt/solr
# Thu, 11 Aug 2016 20:11:33 GMT
USER [solr]
# Thu, 11 Aug 2016 20:11:34 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 20:11:35 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:098acfb291187038145d00f8e2b9e3ec0aa2dc8e437e7a0ba0571b76a0c1d113`  
		Last Modified: Thu, 11 Aug 2016 20:07:14 GMT  
		Size: 10.1 MB (10080065 bytes)
	-	`sha256:a9939f9c8844ae176b0c9dac2eaa02aafc18645bf177d143f76e0f9c2ea3ba21`  
		Last Modified: Thu, 11 Aug 2016 20:07:06 GMT  
		Size: 4.6 KB (4637 bytes)
	-	`sha256:6096f775cfe1fd4ed91cbabbde7d3f4d6f179b6af58667af164acb12beecd906`  
		Last Modified: Thu, 11 Aug 2016 20:08:49 GMT  
		Size: 7.4 KB (7400 bytes)
	-	`sha256:2f64a212e1ba40b0d5c9d4abdc3f999fbde71f764fbc8540ec254d69653fb625`  
		Last Modified: Thu, 11 Aug 2016 20:12:06 GMT  
		Size: 136.3 MB (136316924 bytes)
	-	`sha256:763e85ced67417d5e85c5aab5c5a8fe799cf59e7007fa010df91242e04038c44`  
		Last Modified: Thu, 11 Aug 2016 20:11:46 GMT  
		Size: 1.9 KB (1874 bytes)
	-	`sha256:74ba8d9c58e09178df844015df20453c164fd94b739c090fd24e4b350406cf2d`  
		Last Modified: Thu, 11 Aug 2016 20:11:45 GMT  
		Size: 1.9 KB (1883 bytes)

## `solr:5.4.1-alpine`

```console
$ docker pull solr@sha256:a26f6d46746495fd83aa215e3693fa57b12118fcdb22941a69d9059fbf2c2df0
```

-	Platforms:
	-	linux; amd64

### `solr:5.4.1-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.7 MB (183650779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb504f4939c6dd70e9ebd98da6d94fe71056ed9fc7531b535504ba1944f83c24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:34:53 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jun 2016 20:34:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 23 Jun 2016 20:36:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 07 Jul 2016 19:05:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_VERSION=8u92
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Thu, 07 Jul 2016 19:05:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Jul 2016 21:53:27 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 07 Jul 2016 21:53:27 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 07 Jul 2016 21:53:28 GMT
ARG GPG_KEYSERVER
# Thu, 07 Jul 2016 21:53:34 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Thu, 07 Jul 2016 21:53:38 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Thu, 07 Jul 2016 21:53:39 GMT
ENV SOLR_USER=solr
# Thu, 07 Jul 2016 21:53:39 GMT
ENV SOLR_UID=8983
# Thu, 07 Jul 2016 21:53:41 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Thu, 07 Jul 2016 21:53:42 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Thu, 07 Jul 2016 21:53:50 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Thu, 07 Jul 2016 21:53:51 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Thu, 07 Jul 2016 21:53:54 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Thu, 07 Jul 2016 21:57:00 GMT
ENV SOLR_VERSION=5.4.1
# Thu, 07 Jul 2016 21:57:01 GMT
ENV SOLR_SHA256=3e4b4ec7bd728b49b2ebc3dbe8f3d1ef89fded4ab86b9e2f856bedd58c99f28b
# Thu, 07 Jul 2016 21:57:01 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.4.1/solr-5.4.1.tgz
# Thu, 07 Jul 2016 21:57:26 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 07 Jul 2016 21:57:27 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts
# Thu, 07 Jul 2016 21:57:29 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 07 Jul 2016 21:57:30 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 21:57:30 GMT
EXPOSE 8983/tcp
# Thu, 07 Jul 2016 21:57:31 GMT
WORKDIR /opt/solr
# Thu, 07 Jul 2016 21:57:31 GMT
USER [solr]
# Thu, 07 Jul 2016 21:57:32 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Thu, 07 Jul 2016 21:57:32 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:745c1cd94ebe79c47147dc3c57bb9cba552a51edb00465b243006e01a1e941a9`  
		Last Modified: Thu, 07 Jul 2016 19:14:28 GMT  
		Size: 39.6 MB (39647617 bytes)
	-	`sha256:7412bb3dd7b1f9875da50e5f9752e534b73b64dd231bedda46b4e564ddc9812b`  
		Last Modified: Thu, 07 Jul 2016 21:54:30 GMT  
		Size: 4.7 MB (4745554 bytes)
	-	`sha256:a3b4838e58766b06cbc6f31b0471e4b6cf27376ea446518bd9b7f955883a61f5`  
		Last Modified: Thu, 07 Jul 2016 21:54:27 GMT  
		Size: 597.7 KB (597715 bytes)
	-	`sha256:f2d52cdf127a9ef6f6969cec245e2a8ee1cf80b6548aa186de705e8e24b3ef5e`  
		Last Modified: Thu, 07 Jul 2016 21:54:26 GMT  
		Size: 22.5 KB (22481 bytes)
	-	`sha256:078582909bfa1ffa1be934e56916a3ced07c72c2a3ae5c5e650c08ef384931cd`  
		Last Modified: Thu, 07 Jul 2016 21:54:24 GMT  
		Size: 7.1 KB (7088 bytes)
	-	`sha256:bb203397a210f245d7bd766512dbc5d3d5efa126f90c8ad49587a9ad3f2443e0`  
		Last Modified: Thu, 07 Jul 2016 21:54:24 GMT  
		Size: 154.0 B
	-	`sha256:5a2a3bfd2c08944c0d63ff7231c6e61b9cc6de98fa192b9ac45bb19fb95049e2`  
		Last Modified: Thu, 07 Jul 2016 21:58:14 GMT  
		Size: 136.3 MB (136315899 bytes)
	-	`sha256:f9971ee4d72175687312b6922f11bd22a9646f17b68ef82bfd19363c2e8e129e`  
		Last Modified: Thu, 07 Jul 2016 21:57:40 GMT  
		Size: 1.9 KB (1874 bytes)
	-	`sha256:1c844e20a1af8d4ac800ad6d518ad568e7ced016260770a6c2e16d08ca752ece`  
		Last Modified: Thu, 07 Jul 2016 21:57:40 GMT  
		Size: 1.9 KB (1881 bytes)

## `solr:5.4-alpine`

```console
$ docker pull solr@sha256:a26f6d46746495fd83aa215e3693fa57b12118fcdb22941a69d9059fbf2c2df0
```

-	Platforms:
	-	linux; amd64

### `solr:5.4-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.7 MB (183650779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb504f4939c6dd70e9ebd98da6d94fe71056ed9fc7531b535504ba1944f83c24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:34:53 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jun 2016 20:34:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 23 Jun 2016 20:36:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 07 Jul 2016 19:05:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_VERSION=8u92
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Thu, 07 Jul 2016 19:05:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Jul 2016 21:53:27 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 07 Jul 2016 21:53:27 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 07 Jul 2016 21:53:28 GMT
ARG GPG_KEYSERVER
# Thu, 07 Jul 2016 21:53:34 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Thu, 07 Jul 2016 21:53:38 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Thu, 07 Jul 2016 21:53:39 GMT
ENV SOLR_USER=solr
# Thu, 07 Jul 2016 21:53:39 GMT
ENV SOLR_UID=8983
# Thu, 07 Jul 2016 21:53:41 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Thu, 07 Jul 2016 21:53:42 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Thu, 07 Jul 2016 21:53:50 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Thu, 07 Jul 2016 21:53:51 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Thu, 07 Jul 2016 21:53:54 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Thu, 07 Jul 2016 21:57:00 GMT
ENV SOLR_VERSION=5.4.1
# Thu, 07 Jul 2016 21:57:01 GMT
ENV SOLR_SHA256=3e4b4ec7bd728b49b2ebc3dbe8f3d1ef89fded4ab86b9e2f856bedd58c99f28b
# Thu, 07 Jul 2016 21:57:01 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.4.1/solr-5.4.1.tgz
# Thu, 07 Jul 2016 21:57:26 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 07 Jul 2016 21:57:27 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts
# Thu, 07 Jul 2016 21:57:29 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 07 Jul 2016 21:57:30 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 21:57:30 GMT
EXPOSE 8983/tcp
# Thu, 07 Jul 2016 21:57:31 GMT
WORKDIR /opt/solr
# Thu, 07 Jul 2016 21:57:31 GMT
USER [solr]
# Thu, 07 Jul 2016 21:57:32 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Thu, 07 Jul 2016 21:57:32 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:745c1cd94ebe79c47147dc3c57bb9cba552a51edb00465b243006e01a1e941a9`  
		Last Modified: Thu, 07 Jul 2016 19:14:28 GMT  
		Size: 39.6 MB (39647617 bytes)
	-	`sha256:7412bb3dd7b1f9875da50e5f9752e534b73b64dd231bedda46b4e564ddc9812b`  
		Last Modified: Thu, 07 Jul 2016 21:54:30 GMT  
		Size: 4.7 MB (4745554 bytes)
	-	`sha256:a3b4838e58766b06cbc6f31b0471e4b6cf27376ea446518bd9b7f955883a61f5`  
		Last Modified: Thu, 07 Jul 2016 21:54:27 GMT  
		Size: 597.7 KB (597715 bytes)
	-	`sha256:f2d52cdf127a9ef6f6969cec245e2a8ee1cf80b6548aa186de705e8e24b3ef5e`  
		Last Modified: Thu, 07 Jul 2016 21:54:26 GMT  
		Size: 22.5 KB (22481 bytes)
	-	`sha256:078582909bfa1ffa1be934e56916a3ced07c72c2a3ae5c5e650c08ef384931cd`  
		Last Modified: Thu, 07 Jul 2016 21:54:24 GMT  
		Size: 7.1 KB (7088 bytes)
	-	`sha256:bb203397a210f245d7bd766512dbc5d3d5efa126f90c8ad49587a9ad3f2443e0`  
		Last Modified: Thu, 07 Jul 2016 21:54:24 GMT  
		Size: 154.0 B
	-	`sha256:5a2a3bfd2c08944c0d63ff7231c6e61b9cc6de98fa192b9ac45bb19fb95049e2`  
		Last Modified: Thu, 07 Jul 2016 21:58:14 GMT  
		Size: 136.3 MB (136315899 bytes)
	-	`sha256:f9971ee4d72175687312b6922f11bd22a9646f17b68ef82bfd19363c2e8e129e`  
		Last Modified: Thu, 07 Jul 2016 21:57:40 GMT  
		Size: 1.9 KB (1874 bytes)
	-	`sha256:1c844e20a1af8d4ac800ad6d518ad568e7ced016260770a6c2e16d08ca752ece`  
		Last Modified: Thu, 07 Jul 2016 21:57:40 GMT  
		Size: 1.9 KB (1881 bytes)

## `solr:5.5.2`

```console
$ docker pull solr@sha256:eede9a823f0305894d1dd081ba408f6287ab6d40b8ee0f450290e2ec6dcd9d3b
```

-	Platforms:
	-	linux; amd64

### `solr:5.5.2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.1 MB (271054022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab10bc7edc060d96e18e45c53c33b7d8ea80d9194ac7a90e3c101aa20a7af8e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 20:04:58 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 11 Aug 2016 20:04:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 11 Aug 2016 20:05:00 GMT
ARG GPG_KEYSERVER
# Thu, 11 Aug 2016 20:06:11 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 20:06:12 GMT
ENV SOLR_USER=solr
# Thu, 11 Aug 2016 20:06:13 GMT
ENV SOLR_UID=8983
# Thu, 11 Aug 2016 20:06:15 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Thu, 11 Aug 2016 20:12:51 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Thu, 11 Aug 2016 20:12:52 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Thu, 11 Aug 2016 20:12:55 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Thu, 11 Aug 2016 20:12:56 GMT
ENV SOLR_VERSION=5.5.2
# Thu, 11 Aug 2016 20:12:57 GMT
ENV SOLR_SHA256=e62bab565675e10d27f40d5bb090b4181b2f0c21870adf98d1ea873ead7758e1
# Thu, 11 Aug 2016 20:12:58 GMT
ENV SOLR_URL=http://www-us.apache.org/dist/lucene/solr/5.5.2/solr-5.5.2.tgz
# Thu, 11 Aug 2016 20:13:10 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 11 Aug 2016 20:13:12 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts
# Thu, 11 Aug 2016 20:13:14 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 11 Aug 2016 20:13:15 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 20:13:16 GMT
EXPOSE 8983/tcp
# Thu, 11 Aug 2016 20:13:16 GMT
WORKDIR /opt/solr
# Thu, 11 Aug 2016 20:13:17 GMT
USER [solr]
# Thu, 11 Aug 2016 20:13:18 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 20:13:19 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:098acfb291187038145d00f8e2b9e3ec0aa2dc8e437e7a0ba0571b76a0c1d113`  
		Last Modified: Thu, 11 Aug 2016 20:07:14 GMT  
		Size: 10.1 MB (10080065 bytes)
	-	`sha256:a9939f9c8844ae176b0c9dac2eaa02aafc18645bf177d143f76e0f9c2ea3ba21`  
		Last Modified: Thu, 11 Aug 2016 20:07:06 GMT  
		Size: 4.6 KB (4637 bytes)
	-	`sha256:0d451ea93e8f00e34c9e3cf0d37098fe5bb1d1fafe1f8f6b209af7ff800e9f34`  
		Last Modified: Thu, 11 Aug 2016 20:13:30 GMT  
		Size: 14.6 KB (14565 bytes)
	-	`sha256:396e470cafa4c1a134b7d44211977d5184a30ddffcc0aedbff16a74f52921d2e`  
		Last Modified: Thu, 11 Aug 2016 20:13:44 GMT  
		Size: 136.8 MB (136805122 bytes)
	-	`sha256:a9d020b8c9ca101eb602dd9256af4d33ec12d64e8de4155a9ec554ec48b18531`  
		Last Modified: Thu, 11 Aug 2016 20:13:30 GMT  
		Size: 1.9 KB (1874 bytes)
	-	`sha256:ec2f3c7db7080e9734099fda8b20a5a7a7d1fc7bd9aef5c230a6e047ced53143`  
		Last Modified: Thu, 11 Aug 2016 20:13:30 GMT  
		Size: 1.9 KB (1883 bytes)

## `solr:5.5`

```console
$ docker pull solr@sha256:eede9a823f0305894d1dd081ba408f6287ab6d40b8ee0f450290e2ec6dcd9d3b
```

-	Platforms:
	-	linux; amd64

### `solr:5.5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.1 MB (271054022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab10bc7edc060d96e18e45c53c33b7d8ea80d9194ac7a90e3c101aa20a7af8e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 20:04:58 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 11 Aug 2016 20:04:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 11 Aug 2016 20:05:00 GMT
ARG GPG_KEYSERVER
# Thu, 11 Aug 2016 20:06:11 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 20:06:12 GMT
ENV SOLR_USER=solr
# Thu, 11 Aug 2016 20:06:13 GMT
ENV SOLR_UID=8983
# Thu, 11 Aug 2016 20:06:15 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Thu, 11 Aug 2016 20:12:51 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Thu, 11 Aug 2016 20:12:52 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Thu, 11 Aug 2016 20:12:55 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Thu, 11 Aug 2016 20:12:56 GMT
ENV SOLR_VERSION=5.5.2
# Thu, 11 Aug 2016 20:12:57 GMT
ENV SOLR_SHA256=e62bab565675e10d27f40d5bb090b4181b2f0c21870adf98d1ea873ead7758e1
# Thu, 11 Aug 2016 20:12:58 GMT
ENV SOLR_URL=http://www-us.apache.org/dist/lucene/solr/5.5.2/solr-5.5.2.tgz
# Thu, 11 Aug 2016 20:13:10 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 11 Aug 2016 20:13:12 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts
# Thu, 11 Aug 2016 20:13:14 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 11 Aug 2016 20:13:15 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 20:13:16 GMT
EXPOSE 8983/tcp
# Thu, 11 Aug 2016 20:13:16 GMT
WORKDIR /opt/solr
# Thu, 11 Aug 2016 20:13:17 GMT
USER [solr]
# Thu, 11 Aug 2016 20:13:18 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 20:13:19 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:098acfb291187038145d00f8e2b9e3ec0aa2dc8e437e7a0ba0571b76a0c1d113`  
		Last Modified: Thu, 11 Aug 2016 20:07:14 GMT  
		Size: 10.1 MB (10080065 bytes)
	-	`sha256:a9939f9c8844ae176b0c9dac2eaa02aafc18645bf177d143f76e0f9c2ea3ba21`  
		Last Modified: Thu, 11 Aug 2016 20:07:06 GMT  
		Size: 4.6 KB (4637 bytes)
	-	`sha256:0d451ea93e8f00e34c9e3cf0d37098fe5bb1d1fafe1f8f6b209af7ff800e9f34`  
		Last Modified: Thu, 11 Aug 2016 20:13:30 GMT  
		Size: 14.6 KB (14565 bytes)
	-	`sha256:396e470cafa4c1a134b7d44211977d5184a30ddffcc0aedbff16a74f52921d2e`  
		Last Modified: Thu, 11 Aug 2016 20:13:44 GMT  
		Size: 136.8 MB (136805122 bytes)
	-	`sha256:a9d020b8c9ca101eb602dd9256af4d33ec12d64e8de4155a9ec554ec48b18531`  
		Last Modified: Thu, 11 Aug 2016 20:13:30 GMT  
		Size: 1.9 KB (1874 bytes)
	-	`sha256:ec2f3c7db7080e9734099fda8b20a5a7a7d1fc7bd9aef5c230a6e047ced53143`  
		Last Modified: Thu, 11 Aug 2016 20:13:30 GMT  
		Size: 1.9 KB (1883 bytes)

## `solr:5`

```console
$ docker pull solr@sha256:eede9a823f0305894d1dd081ba408f6287ab6d40b8ee0f450290e2ec6dcd9d3b
```

-	Platforms:
	-	linux; amd64

### `solr:5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.1 MB (271054022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab10bc7edc060d96e18e45c53c33b7d8ea80d9194ac7a90e3c101aa20a7af8e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 20:04:58 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 11 Aug 2016 20:04:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 11 Aug 2016 20:05:00 GMT
ARG GPG_KEYSERVER
# Thu, 11 Aug 2016 20:06:11 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 20:06:12 GMT
ENV SOLR_USER=solr
# Thu, 11 Aug 2016 20:06:13 GMT
ENV SOLR_UID=8983
# Thu, 11 Aug 2016 20:06:15 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Thu, 11 Aug 2016 20:12:51 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Thu, 11 Aug 2016 20:12:52 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Thu, 11 Aug 2016 20:12:55 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Thu, 11 Aug 2016 20:12:56 GMT
ENV SOLR_VERSION=5.5.2
# Thu, 11 Aug 2016 20:12:57 GMT
ENV SOLR_SHA256=e62bab565675e10d27f40d5bb090b4181b2f0c21870adf98d1ea873ead7758e1
# Thu, 11 Aug 2016 20:12:58 GMT
ENV SOLR_URL=http://www-us.apache.org/dist/lucene/solr/5.5.2/solr-5.5.2.tgz
# Thu, 11 Aug 2016 20:13:10 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 11 Aug 2016 20:13:12 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts
# Thu, 11 Aug 2016 20:13:14 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 11 Aug 2016 20:13:15 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 20:13:16 GMT
EXPOSE 8983/tcp
# Thu, 11 Aug 2016 20:13:16 GMT
WORKDIR /opt/solr
# Thu, 11 Aug 2016 20:13:17 GMT
USER [solr]
# Thu, 11 Aug 2016 20:13:18 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 20:13:19 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:098acfb291187038145d00f8e2b9e3ec0aa2dc8e437e7a0ba0571b76a0c1d113`  
		Last Modified: Thu, 11 Aug 2016 20:07:14 GMT  
		Size: 10.1 MB (10080065 bytes)
	-	`sha256:a9939f9c8844ae176b0c9dac2eaa02aafc18645bf177d143f76e0f9c2ea3ba21`  
		Last Modified: Thu, 11 Aug 2016 20:07:06 GMT  
		Size: 4.6 KB (4637 bytes)
	-	`sha256:0d451ea93e8f00e34c9e3cf0d37098fe5bb1d1fafe1f8f6b209af7ff800e9f34`  
		Last Modified: Thu, 11 Aug 2016 20:13:30 GMT  
		Size: 14.6 KB (14565 bytes)
	-	`sha256:396e470cafa4c1a134b7d44211977d5184a30ddffcc0aedbff16a74f52921d2e`  
		Last Modified: Thu, 11 Aug 2016 20:13:44 GMT  
		Size: 136.8 MB (136805122 bytes)
	-	`sha256:a9d020b8c9ca101eb602dd9256af4d33ec12d64e8de4155a9ec554ec48b18531`  
		Last Modified: Thu, 11 Aug 2016 20:13:30 GMT  
		Size: 1.9 KB (1874 bytes)
	-	`sha256:ec2f3c7db7080e9734099fda8b20a5a7a7d1fc7bd9aef5c230a6e047ced53143`  
		Last Modified: Thu, 11 Aug 2016 20:13:30 GMT  
		Size: 1.9 KB (1883 bytes)

## `solr:5.5.2-alpine`

```console
$ docker pull solr@sha256:277de0640590fb434d970ba74d40f85fc8c249109c622652816637e15efaf3f2
```

-	Platforms:
	-	linux; amd64

### `solr:5.5.2-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 MB (184146582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f94175f88d1cc7f4a1d9b51f34ad5372a38ca744dc395e1e87f31a9dc98c972`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:34:53 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jun 2016 20:34:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 23 Jun 2016 20:36:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 07 Jul 2016 19:05:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_VERSION=8u92
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Thu, 07 Jul 2016 19:05:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Jul 2016 21:53:27 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 07 Jul 2016 21:53:27 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 07 Jul 2016 21:53:28 GMT
ARG GPG_KEYSERVER
# Thu, 07 Jul 2016 21:53:34 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Thu, 07 Jul 2016 21:53:38 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Thu, 07 Jul 2016 21:53:39 GMT
ENV SOLR_USER=solr
# Thu, 07 Jul 2016 21:53:39 GMT
ENV SOLR_UID=8983
# Thu, 07 Jul 2016 21:53:41 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Thu, 07 Jul 2016 21:59:00 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Thu, 07 Jul 2016 21:59:08 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Thu, 07 Jul 2016 21:59:09 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Thu, 07 Jul 2016 21:59:12 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Thu, 07 Jul 2016 21:59:12 GMT
ENV SOLR_VERSION=5.5.2
# Thu, 07 Jul 2016 21:59:13 GMT
ENV SOLR_SHA256=e62bab565675e10d27f40d5bb090b4181b2f0c21870adf98d1ea873ead7758e1
# Thu, 07 Jul 2016 21:59:13 GMT
ENV SOLR_URL=http://www-us.apache.org/dist/lucene/solr/5.5.2/solr-5.5.2.tgz
# Thu, 07 Jul 2016 21:59:26 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 07 Jul 2016 21:59:28 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts
# Thu, 07 Jul 2016 21:59:29 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 07 Jul 2016 21:59:30 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 21:59:30 GMT
EXPOSE 8983/tcp
# Thu, 07 Jul 2016 21:59:31 GMT
WORKDIR /opt/solr
# Thu, 07 Jul 2016 21:59:31 GMT
USER [solr]
# Thu, 07 Jul 2016 21:59:32 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Thu, 07 Jul 2016 21:59:33 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:745c1cd94ebe79c47147dc3c57bb9cba552a51edb00465b243006e01a1e941a9`  
		Last Modified: Thu, 07 Jul 2016 19:14:28 GMT  
		Size: 39.6 MB (39647617 bytes)
	-	`sha256:7412bb3dd7b1f9875da50e5f9752e534b73b64dd231bedda46b4e564ddc9812b`  
		Last Modified: Thu, 07 Jul 2016 21:54:30 GMT  
		Size: 4.7 MB (4745554 bytes)
	-	`sha256:a3b4838e58766b06cbc6f31b0471e4b6cf27376ea446518bd9b7f955883a61f5`  
		Last Modified: Thu, 07 Jul 2016 21:54:27 GMT  
		Size: 597.7 KB (597715 bytes)
	-	`sha256:f2d52cdf127a9ef6f6969cec245e2a8ee1cf80b6548aa186de705e8e24b3ef5e`  
		Last Modified: Thu, 07 Jul 2016 21:54:26 GMT  
		Size: 22.5 KB (22481 bytes)
	-	`sha256:47dc4dc5ba512ead4a8f3b641cd037dcf0e4205978b94aa92df5ba3d88badddf`  
		Last Modified: Thu, 07 Jul 2016 21:59:40 GMT  
		Size: 14.1 KB (14141 bytes)
	-	`sha256:4c8007c975ea0cf74b39b2acb71032d060b766f60ca43c1a271bde3f5d08ec4f`  
		Last Modified: Thu, 07 Jul 2016 21:59:40 GMT  
		Size: 155.0 B
	-	`sha256:cb703de9234198e03226ba72c6cdba499df91b7f4c72ddd0df437d73ca112fb5`  
		Last Modified: Thu, 07 Jul 2016 21:59:53 GMT  
		Size: 136.8 MB (136804648 bytes)
	-	`sha256:d5db28a9b01b700edab37dcaa1bf556997b328d9e07346410d0dc6b4777b7c8b`  
		Last Modified: Thu, 07 Jul 2016 21:59:40 GMT  
		Size: 1.9 KB (1873 bytes)
	-	`sha256:28c420291956317bbbc2cac93175d89c4a6eca70af61546b59d82d48f13511b3`  
		Last Modified: Thu, 07 Jul 2016 21:59:40 GMT  
		Size: 1.9 KB (1882 bytes)

## `solr:5.5-alpine`

```console
$ docker pull solr@sha256:277de0640590fb434d970ba74d40f85fc8c249109c622652816637e15efaf3f2
```

-	Platforms:
	-	linux; amd64

### `solr:5.5-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 MB (184146582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f94175f88d1cc7f4a1d9b51f34ad5372a38ca744dc395e1e87f31a9dc98c972`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:34:53 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jun 2016 20:34:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 23 Jun 2016 20:36:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 07 Jul 2016 19:05:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_VERSION=8u92
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Thu, 07 Jul 2016 19:05:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Jul 2016 21:53:27 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 07 Jul 2016 21:53:27 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 07 Jul 2016 21:53:28 GMT
ARG GPG_KEYSERVER
# Thu, 07 Jul 2016 21:53:34 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Thu, 07 Jul 2016 21:53:38 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Thu, 07 Jul 2016 21:53:39 GMT
ENV SOLR_USER=solr
# Thu, 07 Jul 2016 21:53:39 GMT
ENV SOLR_UID=8983
# Thu, 07 Jul 2016 21:53:41 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Thu, 07 Jul 2016 21:59:00 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Thu, 07 Jul 2016 21:59:08 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Thu, 07 Jul 2016 21:59:09 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Thu, 07 Jul 2016 21:59:12 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Thu, 07 Jul 2016 21:59:12 GMT
ENV SOLR_VERSION=5.5.2
# Thu, 07 Jul 2016 21:59:13 GMT
ENV SOLR_SHA256=e62bab565675e10d27f40d5bb090b4181b2f0c21870adf98d1ea873ead7758e1
# Thu, 07 Jul 2016 21:59:13 GMT
ENV SOLR_URL=http://www-us.apache.org/dist/lucene/solr/5.5.2/solr-5.5.2.tgz
# Thu, 07 Jul 2016 21:59:26 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 07 Jul 2016 21:59:28 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts
# Thu, 07 Jul 2016 21:59:29 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 07 Jul 2016 21:59:30 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 21:59:30 GMT
EXPOSE 8983/tcp
# Thu, 07 Jul 2016 21:59:31 GMT
WORKDIR /opt/solr
# Thu, 07 Jul 2016 21:59:31 GMT
USER [solr]
# Thu, 07 Jul 2016 21:59:32 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Thu, 07 Jul 2016 21:59:33 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:745c1cd94ebe79c47147dc3c57bb9cba552a51edb00465b243006e01a1e941a9`  
		Last Modified: Thu, 07 Jul 2016 19:14:28 GMT  
		Size: 39.6 MB (39647617 bytes)
	-	`sha256:7412bb3dd7b1f9875da50e5f9752e534b73b64dd231bedda46b4e564ddc9812b`  
		Last Modified: Thu, 07 Jul 2016 21:54:30 GMT  
		Size: 4.7 MB (4745554 bytes)
	-	`sha256:a3b4838e58766b06cbc6f31b0471e4b6cf27376ea446518bd9b7f955883a61f5`  
		Last Modified: Thu, 07 Jul 2016 21:54:27 GMT  
		Size: 597.7 KB (597715 bytes)
	-	`sha256:f2d52cdf127a9ef6f6969cec245e2a8ee1cf80b6548aa186de705e8e24b3ef5e`  
		Last Modified: Thu, 07 Jul 2016 21:54:26 GMT  
		Size: 22.5 KB (22481 bytes)
	-	`sha256:47dc4dc5ba512ead4a8f3b641cd037dcf0e4205978b94aa92df5ba3d88badddf`  
		Last Modified: Thu, 07 Jul 2016 21:59:40 GMT  
		Size: 14.1 KB (14141 bytes)
	-	`sha256:4c8007c975ea0cf74b39b2acb71032d060b766f60ca43c1a271bde3f5d08ec4f`  
		Last Modified: Thu, 07 Jul 2016 21:59:40 GMT  
		Size: 155.0 B
	-	`sha256:cb703de9234198e03226ba72c6cdba499df91b7f4c72ddd0df437d73ca112fb5`  
		Last Modified: Thu, 07 Jul 2016 21:59:53 GMT  
		Size: 136.8 MB (136804648 bytes)
	-	`sha256:d5db28a9b01b700edab37dcaa1bf556997b328d9e07346410d0dc6b4777b7c8b`  
		Last Modified: Thu, 07 Jul 2016 21:59:40 GMT  
		Size: 1.9 KB (1873 bytes)
	-	`sha256:28c420291956317bbbc2cac93175d89c4a6eca70af61546b59d82d48f13511b3`  
		Last Modified: Thu, 07 Jul 2016 21:59:40 GMT  
		Size: 1.9 KB (1882 bytes)

## `solr:5-alpine`

```console
$ docker pull solr@sha256:277de0640590fb434d970ba74d40f85fc8c249109c622652816637e15efaf3f2
```

-	Platforms:
	-	linux; amd64

### `solr:5-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 MB (184146582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f94175f88d1cc7f4a1d9b51f34ad5372a38ca744dc395e1e87f31a9dc98c972`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:34:53 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jun 2016 20:34:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 23 Jun 2016 20:36:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 07 Jul 2016 19:05:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_VERSION=8u92
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Thu, 07 Jul 2016 19:05:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Jul 2016 21:53:27 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 07 Jul 2016 21:53:27 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 07 Jul 2016 21:53:28 GMT
ARG GPG_KEYSERVER
# Thu, 07 Jul 2016 21:53:34 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Thu, 07 Jul 2016 21:53:38 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Thu, 07 Jul 2016 21:53:39 GMT
ENV SOLR_USER=solr
# Thu, 07 Jul 2016 21:53:39 GMT
ENV SOLR_UID=8983
# Thu, 07 Jul 2016 21:53:41 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Thu, 07 Jul 2016 21:59:00 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Thu, 07 Jul 2016 21:59:08 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Thu, 07 Jul 2016 21:59:09 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Thu, 07 Jul 2016 21:59:12 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Thu, 07 Jul 2016 21:59:12 GMT
ENV SOLR_VERSION=5.5.2
# Thu, 07 Jul 2016 21:59:13 GMT
ENV SOLR_SHA256=e62bab565675e10d27f40d5bb090b4181b2f0c21870adf98d1ea873ead7758e1
# Thu, 07 Jul 2016 21:59:13 GMT
ENV SOLR_URL=http://www-us.apache.org/dist/lucene/solr/5.5.2/solr-5.5.2.tgz
# Thu, 07 Jul 2016 21:59:26 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 07 Jul 2016 21:59:28 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts
# Thu, 07 Jul 2016 21:59:29 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 07 Jul 2016 21:59:30 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 21:59:30 GMT
EXPOSE 8983/tcp
# Thu, 07 Jul 2016 21:59:31 GMT
WORKDIR /opt/solr
# Thu, 07 Jul 2016 21:59:31 GMT
USER [solr]
# Thu, 07 Jul 2016 21:59:32 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Thu, 07 Jul 2016 21:59:33 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:745c1cd94ebe79c47147dc3c57bb9cba552a51edb00465b243006e01a1e941a9`  
		Last Modified: Thu, 07 Jul 2016 19:14:28 GMT  
		Size: 39.6 MB (39647617 bytes)
	-	`sha256:7412bb3dd7b1f9875da50e5f9752e534b73b64dd231bedda46b4e564ddc9812b`  
		Last Modified: Thu, 07 Jul 2016 21:54:30 GMT  
		Size: 4.7 MB (4745554 bytes)
	-	`sha256:a3b4838e58766b06cbc6f31b0471e4b6cf27376ea446518bd9b7f955883a61f5`  
		Last Modified: Thu, 07 Jul 2016 21:54:27 GMT  
		Size: 597.7 KB (597715 bytes)
	-	`sha256:f2d52cdf127a9ef6f6969cec245e2a8ee1cf80b6548aa186de705e8e24b3ef5e`  
		Last Modified: Thu, 07 Jul 2016 21:54:26 GMT  
		Size: 22.5 KB (22481 bytes)
	-	`sha256:47dc4dc5ba512ead4a8f3b641cd037dcf0e4205978b94aa92df5ba3d88badddf`  
		Last Modified: Thu, 07 Jul 2016 21:59:40 GMT  
		Size: 14.1 KB (14141 bytes)
	-	`sha256:4c8007c975ea0cf74b39b2acb71032d060b766f60ca43c1a271bde3f5d08ec4f`  
		Last Modified: Thu, 07 Jul 2016 21:59:40 GMT  
		Size: 155.0 B
	-	`sha256:cb703de9234198e03226ba72c6cdba499df91b7f4c72ddd0df437d73ca112fb5`  
		Last Modified: Thu, 07 Jul 2016 21:59:53 GMT  
		Size: 136.8 MB (136804648 bytes)
	-	`sha256:d5db28a9b01b700edab37dcaa1bf556997b328d9e07346410d0dc6b4777b7c8b`  
		Last Modified: Thu, 07 Jul 2016 21:59:40 GMT  
		Size: 1.9 KB (1873 bytes)
	-	`sha256:28c420291956317bbbc2cac93175d89c4a6eca70af61546b59d82d48f13511b3`  
		Last Modified: Thu, 07 Jul 2016 21:59:40 GMT  
		Size: 1.9 KB (1882 bytes)

## `solr:6.0.1`

```console
$ docker pull solr@sha256:96388d702033073592c9694f3af64f9f72a49bfdafae7e57150c2df1ad143743
```

-	Platforms:
	-	linux; amd64

### `solr:6.0.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.2 MB (272157541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc2debc8452e28b1572b16d0637390a20a3c112f969e9f4fd7d8fd95aa6fef86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 20:04:58 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 11 Aug 2016 20:04:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 11 Aug 2016 20:05:00 GMT
ARG GPG_KEYSERVER
# Thu, 11 Aug 2016 20:06:11 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 20:06:12 GMT
ENV SOLR_USER=solr
# Thu, 11 Aug 2016 20:06:13 GMT
ENV SOLR_UID=8983
# Thu, 11 Aug 2016 20:06:15 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Thu, 11 Aug 2016 20:12:51 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Thu, 11 Aug 2016 20:12:52 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Thu, 11 Aug 2016 20:12:55 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Thu, 11 Aug 2016 20:14:54 GMT
ENV SOLR_VERSION=6.0.1
# Thu, 11 Aug 2016 20:14:55 GMT
ENV SOLR_SHA256=4fd25942f0b8083a2499e1dc606c6dd29e4b520c28a16a2d82111088126d43af
# Thu, 11 Aug 2016 20:14:56 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.0.1/solr-6.0.1.tgz
# Thu, 11 Aug 2016 20:15:22 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 11 Aug 2016 20:15:24 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts
# Thu, 11 Aug 2016 20:15:26 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 11 Aug 2016 20:15:27 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 20:15:28 GMT
EXPOSE 8983/tcp
# Thu, 11 Aug 2016 20:15:29 GMT
WORKDIR /opt/solr
# Thu, 11 Aug 2016 20:15:30 GMT
USER [solr]
# Thu, 11 Aug 2016 20:15:31 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 20:15:32 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:098acfb291187038145d00f8e2b9e3ec0aa2dc8e437e7a0ba0571b76a0c1d113`  
		Last Modified: Thu, 11 Aug 2016 20:07:14 GMT  
		Size: 10.1 MB (10080065 bytes)
	-	`sha256:a9939f9c8844ae176b0c9dac2eaa02aafc18645bf177d143f76e0f9c2ea3ba21`  
		Last Modified: Thu, 11 Aug 2016 20:07:06 GMT  
		Size: 4.6 KB (4637 bytes)
	-	`sha256:0d451ea93e8f00e34c9e3cf0d37098fe5bb1d1fafe1f8f6b209af7ff800e9f34`  
		Last Modified: Thu, 11 Aug 2016 20:13:30 GMT  
		Size: 14.6 KB (14565 bytes)
	-	`sha256:f53a827294d5b6d6cd67c327ed1ca6a97711e7a67aab18d1bed545bff3749d65`  
		Last Modified: Thu, 11 Aug 2016 20:15:56 GMT  
		Size: 137.9 MB (137908642 bytes)
	-	`sha256:9a41dce878f07e22934100a219d3d400547ef23908660e52c2f1498c166bd55b`  
		Last Modified: Thu, 11 Aug 2016 20:15:42 GMT  
		Size: 1.9 KB (1875 bytes)
	-	`sha256:900f16955639833260cfbe48d4e29ff18dcacdf12abd59b34e60e4cf0185795a`  
		Last Modified: Thu, 11 Aug 2016 20:15:42 GMT  
		Size: 1.9 KB (1881 bytes)

## `solr:6.0`

```console
$ docker pull solr@sha256:96388d702033073592c9694f3af64f9f72a49bfdafae7e57150c2df1ad143743
```

-	Platforms:
	-	linux; amd64

### `solr:6.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.2 MB (272157541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc2debc8452e28b1572b16d0637390a20a3c112f969e9f4fd7d8fd95aa6fef86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 20:04:58 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 11 Aug 2016 20:04:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 11 Aug 2016 20:05:00 GMT
ARG GPG_KEYSERVER
# Thu, 11 Aug 2016 20:06:11 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 20:06:12 GMT
ENV SOLR_USER=solr
# Thu, 11 Aug 2016 20:06:13 GMT
ENV SOLR_UID=8983
# Thu, 11 Aug 2016 20:06:15 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Thu, 11 Aug 2016 20:12:51 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Thu, 11 Aug 2016 20:12:52 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Thu, 11 Aug 2016 20:12:55 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Thu, 11 Aug 2016 20:14:54 GMT
ENV SOLR_VERSION=6.0.1
# Thu, 11 Aug 2016 20:14:55 GMT
ENV SOLR_SHA256=4fd25942f0b8083a2499e1dc606c6dd29e4b520c28a16a2d82111088126d43af
# Thu, 11 Aug 2016 20:14:56 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.0.1/solr-6.0.1.tgz
# Thu, 11 Aug 2016 20:15:22 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 11 Aug 2016 20:15:24 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts
# Thu, 11 Aug 2016 20:15:26 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 11 Aug 2016 20:15:27 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 20:15:28 GMT
EXPOSE 8983/tcp
# Thu, 11 Aug 2016 20:15:29 GMT
WORKDIR /opt/solr
# Thu, 11 Aug 2016 20:15:30 GMT
USER [solr]
# Thu, 11 Aug 2016 20:15:31 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 20:15:32 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:098acfb291187038145d00f8e2b9e3ec0aa2dc8e437e7a0ba0571b76a0c1d113`  
		Last Modified: Thu, 11 Aug 2016 20:07:14 GMT  
		Size: 10.1 MB (10080065 bytes)
	-	`sha256:a9939f9c8844ae176b0c9dac2eaa02aafc18645bf177d143f76e0f9c2ea3ba21`  
		Last Modified: Thu, 11 Aug 2016 20:07:06 GMT  
		Size: 4.6 KB (4637 bytes)
	-	`sha256:0d451ea93e8f00e34c9e3cf0d37098fe5bb1d1fafe1f8f6b209af7ff800e9f34`  
		Last Modified: Thu, 11 Aug 2016 20:13:30 GMT  
		Size: 14.6 KB (14565 bytes)
	-	`sha256:f53a827294d5b6d6cd67c327ed1ca6a97711e7a67aab18d1bed545bff3749d65`  
		Last Modified: Thu, 11 Aug 2016 20:15:56 GMT  
		Size: 137.9 MB (137908642 bytes)
	-	`sha256:9a41dce878f07e22934100a219d3d400547ef23908660e52c2f1498c166bd55b`  
		Last Modified: Thu, 11 Aug 2016 20:15:42 GMT  
		Size: 1.9 KB (1875 bytes)
	-	`sha256:900f16955639833260cfbe48d4e29ff18dcacdf12abd59b34e60e4cf0185795a`  
		Last Modified: Thu, 11 Aug 2016 20:15:42 GMT  
		Size: 1.9 KB (1881 bytes)

## `solr:6.0.1-alpine`

```console
$ docker pull solr@sha256:4128bb34c22765481e37f2558bb77d6f399736eb6163ebecf6f8344039e65310
```

-	Platforms:
	-	linux; amd64

### `solr:6.0.1-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185250520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c1a0093bfb34f8644a3786c5445d67f4645f505b318101ffaabf6701d89ab80`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:34:53 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jun 2016 20:34:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 23 Jun 2016 20:36:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 07 Jul 2016 19:05:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_VERSION=8u92
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Thu, 07 Jul 2016 19:05:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Jul 2016 21:53:27 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 07 Jul 2016 21:53:27 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 07 Jul 2016 21:53:28 GMT
ARG GPG_KEYSERVER
# Thu, 07 Jul 2016 21:53:34 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Thu, 07 Jul 2016 21:53:38 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Thu, 07 Jul 2016 21:53:39 GMT
ENV SOLR_USER=solr
# Thu, 07 Jul 2016 21:53:39 GMT
ENV SOLR_UID=8983
# Thu, 07 Jul 2016 21:53:41 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Thu, 07 Jul 2016 21:59:00 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Thu, 07 Jul 2016 21:59:08 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Thu, 07 Jul 2016 21:59:09 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Thu, 07 Jul 2016 21:59:12 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Thu, 07 Jul 2016 22:00:43 GMT
ENV SOLR_VERSION=6.0.1
# Thu, 07 Jul 2016 22:00:44 GMT
ENV SOLR_SHA256=4fd25942f0b8083a2499e1dc606c6dd29e4b520c28a16a2d82111088126d43af
# Thu, 07 Jul 2016 22:00:45 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.0.1/solr-6.0.1.tgz
# Thu, 07 Jul 2016 22:01:10 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 07 Jul 2016 22:01:11 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts
# Thu, 07 Jul 2016 22:01:13 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 07 Jul 2016 22:01:14 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 22:01:14 GMT
EXPOSE 8983/tcp
# Thu, 07 Jul 2016 22:01:15 GMT
WORKDIR /opt/solr
# Thu, 07 Jul 2016 22:01:15 GMT
USER [solr]
# Thu, 07 Jul 2016 22:01:16 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Thu, 07 Jul 2016 22:01:16 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:745c1cd94ebe79c47147dc3c57bb9cba552a51edb00465b243006e01a1e941a9`  
		Last Modified: Thu, 07 Jul 2016 19:14:28 GMT  
		Size: 39.6 MB (39647617 bytes)
	-	`sha256:7412bb3dd7b1f9875da50e5f9752e534b73b64dd231bedda46b4e564ddc9812b`  
		Last Modified: Thu, 07 Jul 2016 21:54:30 GMT  
		Size: 4.7 MB (4745554 bytes)
	-	`sha256:a3b4838e58766b06cbc6f31b0471e4b6cf27376ea446518bd9b7f955883a61f5`  
		Last Modified: Thu, 07 Jul 2016 21:54:27 GMT  
		Size: 597.7 KB (597715 bytes)
	-	`sha256:f2d52cdf127a9ef6f6969cec245e2a8ee1cf80b6548aa186de705e8e24b3ef5e`  
		Last Modified: Thu, 07 Jul 2016 21:54:26 GMT  
		Size: 22.5 KB (22481 bytes)
	-	`sha256:47dc4dc5ba512ead4a8f3b641cd037dcf0e4205978b94aa92df5ba3d88badddf`  
		Last Modified: Thu, 07 Jul 2016 21:59:40 GMT  
		Size: 14.1 KB (14141 bytes)
	-	`sha256:4c8007c975ea0cf74b39b2acb71032d060b766f60ca43c1a271bde3f5d08ec4f`  
		Last Modified: Thu, 07 Jul 2016 21:59:40 GMT  
		Size: 155.0 B
	-	`sha256:a595d242a343b4b7f17b95896b8772a4d48dd24aa4d79692a35f069dce77c8ae`  
		Last Modified: Thu, 07 Jul 2016 22:01:37 GMT  
		Size: 137.9 MB (137908586 bytes)
	-	`sha256:764481962b63d431920f6008df343ea77eec6e9af4613f800e2ddff008c05cae`  
		Last Modified: Thu, 07 Jul 2016 22:01:24 GMT  
		Size: 1.9 KB (1873 bytes)
	-	`sha256:b3d4477bbd2780dd80ba939b888e1c30b3dd07395b1202940e1ad1da223be3f8`  
		Last Modified: Thu, 07 Jul 2016 22:01:24 GMT  
		Size: 1.9 KB (1882 bytes)

## `solr:6.0-alpine`

```console
$ docker pull solr@sha256:4128bb34c22765481e37f2558bb77d6f399736eb6163ebecf6f8344039e65310
```

-	Platforms:
	-	linux; amd64

### `solr:6.0-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185250520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c1a0093bfb34f8644a3786c5445d67f4645f505b318101ffaabf6701d89ab80`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:34:53 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jun 2016 20:34:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 23 Jun 2016 20:36:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 07 Jul 2016 19:05:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_VERSION=8u92
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Thu, 07 Jul 2016 19:05:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Jul 2016 21:53:27 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 07 Jul 2016 21:53:27 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 07 Jul 2016 21:53:28 GMT
ARG GPG_KEYSERVER
# Thu, 07 Jul 2016 21:53:34 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Thu, 07 Jul 2016 21:53:38 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Thu, 07 Jul 2016 21:53:39 GMT
ENV SOLR_USER=solr
# Thu, 07 Jul 2016 21:53:39 GMT
ENV SOLR_UID=8983
# Thu, 07 Jul 2016 21:53:41 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Thu, 07 Jul 2016 21:59:00 GMT
ENV SOLR_KEY=5F55943E13D49059D3F342777186B06E1ED139E7
# Thu, 07 Jul 2016 21:59:08 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Thu, 07 Jul 2016 21:59:09 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Thu, 07 Jul 2016 21:59:12 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Thu, 07 Jul 2016 22:00:43 GMT
ENV SOLR_VERSION=6.0.1
# Thu, 07 Jul 2016 22:00:44 GMT
ENV SOLR_SHA256=4fd25942f0b8083a2499e1dc606c6dd29e4b520c28a16a2d82111088126d43af
# Thu, 07 Jul 2016 22:00:45 GMT
ENV SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.0.1/solr-6.0.1.tgz
# Thu, 07 Jul 2016 22:01:10 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 07 Jul 2016 22:01:11 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts
# Thu, 07 Jul 2016 22:01:13 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 07 Jul 2016 22:01:14 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 22:01:14 GMT
EXPOSE 8983/tcp
# Thu, 07 Jul 2016 22:01:15 GMT
WORKDIR /opt/solr
# Thu, 07 Jul 2016 22:01:15 GMT
USER [solr]
# Thu, 07 Jul 2016 22:01:16 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Thu, 07 Jul 2016 22:01:16 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:745c1cd94ebe79c47147dc3c57bb9cba552a51edb00465b243006e01a1e941a9`  
		Last Modified: Thu, 07 Jul 2016 19:14:28 GMT  
		Size: 39.6 MB (39647617 bytes)
	-	`sha256:7412bb3dd7b1f9875da50e5f9752e534b73b64dd231bedda46b4e564ddc9812b`  
		Last Modified: Thu, 07 Jul 2016 21:54:30 GMT  
		Size: 4.7 MB (4745554 bytes)
	-	`sha256:a3b4838e58766b06cbc6f31b0471e4b6cf27376ea446518bd9b7f955883a61f5`  
		Last Modified: Thu, 07 Jul 2016 21:54:27 GMT  
		Size: 597.7 KB (597715 bytes)
	-	`sha256:f2d52cdf127a9ef6f6969cec245e2a8ee1cf80b6548aa186de705e8e24b3ef5e`  
		Last Modified: Thu, 07 Jul 2016 21:54:26 GMT  
		Size: 22.5 KB (22481 bytes)
	-	`sha256:47dc4dc5ba512ead4a8f3b641cd037dcf0e4205978b94aa92df5ba3d88badddf`  
		Last Modified: Thu, 07 Jul 2016 21:59:40 GMT  
		Size: 14.1 KB (14141 bytes)
	-	`sha256:4c8007c975ea0cf74b39b2acb71032d060b766f60ca43c1a271bde3f5d08ec4f`  
		Last Modified: Thu, 07 Jul 2016 21:59:40 GMT  
		Size: 155.0 B
	-	`sha256:a595d242a343b4b7f17b95896b8772a4d48dd24aa4d79692a35f069dce77c8ae`  
		Last Modified: Thu, 07 Jul 2016 22:01:37 GMT  
		Size: 137.9 MB (137908586 bytes)
	-	`sha256:764481962b63d431920f6008df343ea77eec6e9af4613f800e2ddff008c05cae`  
		Last Modified: Thu, 07 Jul 2016 22:01:24 GMT  
		Size: 1.9 KB (1873 bytes)
	-	`sha256:b3d4477bbd2780dd80ba939b888e1c30b3dd07395b1202940e1ad1da223be3f8`  
		Last Modified: Thu, 07 Jul 2016 22:01:24 GMT  
		Size: 1.9 KB (1882 bytes)

## `solr:6.1.0`

```console
$ docker pull solr@sha256:02d1ec48eb137ab7938c6df6a29579c3f61dcd142ff4684a271aa9bc75f4e0b4
```

-	Platforms:
	-	linux; amd64

### `solr:6.1.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.1 MB (273072598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb71b611d98275f165036771541777f266b9efcba67f1870f2d9ec0b0552b0f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 20:04:58 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 11 Aug 2016 20:04:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 11 Aug 2016 20:05:00 GMT
ARG GPG_KEYSERVER
# Thu, 11 Aug 2016 20:06:11 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 20:06:12 GMT
ENV SOLR_USER=solr
# Thu, 11 Aug 2016 20:06:13 GMT
ENV SOLR_UID=8983
# Thu, 11 Aug 2016 20:06:15 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Thu, 11 Aug 2016 20:08:10 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Thu, 11 Aug 2016 20:08:11 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Thu, 11 Aug 2016 20:08:14 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Thu, 11 Aug 2016 20:08:15 GMT
ENV SOLR_VERSION=6.1.0
# Thu, 11 Aug 2016 20:08:15 GMT
ENV SOLR_SHA256=74630a06d45eb44c0afe2bfb6e2cd80c9d8d92aa0c48a563e39c32996a76c8b0
# Thu, 11 Aug 2016 20:08:16 GMT
ENV SOLR_URL=http://www-us.apache.org/dist/lucene/solr/6.1.0/solr-6.1.0.tgz
# Thu, 11 Aug 2016 20:08:29 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 11 Aug 2016 20:08:31 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts
# Thu, 11 Aug 2016 20:08:33 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 11 Aug 2016 20:08:34 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 20:08:35 GMT
EXPOSE 8983/tcp
# Thu, 11 Aug 2016 20:08:35 GMT
WORKDIR /opt/solr
# Thu, 11 Aug 2016 20:08:36 GMT
USER [solr]
# Thu, 11 Aug 2016 20:08:37 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 20:08:38 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:098acfb291187038145d00f8e2b9e3ec0aa2dc8e437e7a0ba0571b76a0c1d113`  
		Last Modified: Thu, 11 Aug 2016 20:07:14 GMT  
		Size: 10.1 MB (10080065 bytes)
	-	`sha256:a9939f9c8844ae176b0c9dac2eaa02aafc18645bf177d143f76e0f9c2ea3ba21`  
		Last Modified: Thu, 11 Aug 2016 20:07:06 GMT  
		Size: 4.6 KB (4637 bytes)
	-	`sha256:6096f775cfe1fd4ed91cbabbde7d3f4d6f179b6af58667af164acb12beecd906`  
		Last Modified: Thu, 11 Aug 2016 20:08:49 GMT  
		Size: 7.4 KB (7400 bytes)
	-	`sha256:341eef701bcac4b0a586e9b4199d86307b44e9dd2e2c2cae3d1dd5d88cd84dab`  
		Last Modified: Thu, 11 Aug 2016 20:09:02 GMT  
		Size: 138.8 MB (138830867 bytes)
	-	`sha256:97e92023f617bd79cf70a5ee0cf08577971cba3d5a97b191dbc31ff29101f676`  
		Last Modified: Thu, 11 Aug 2016 20:08:49 GMT  
		Size: 1.9 KB (1873 bytes)
	-	`sha256:03738cf30cc560d9b19584b6067190d1174ff70212fac5571513ae3565634276`  
		Last Modified: Thu, 11 Aug 2016 20:08:49 GMT  
		Size: 1.9 KB (1880 bytes)

## `solr:6.1`

```console
$ docker pull solr@sha256:02d1ec48eb137ab7938c6df6a29579c3f61dcd142ff4684a271aa9bc75f4e0b4
```

-	Platforms:
	-	linux; amd64

### `solr:6.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.1 MB (273072598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb71b611d98275f165036771541777f266b9efcba67f1870f2d9ec0b0552b0f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 20:04:58 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 11 Aug 2016 20:04:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 11 Aug 2016 20:05:00 GMT
ARG GPG_KEYSERVER
# Thu, 11 Aug 2016 20:06:11 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 20:06:12 GMT
ENV SOLR_USER=solr
# Thu, 11 Aug 2016 20:06:13 GMT
ENV SOLR_UID=8983
# Thu, 11 Aug 2016 20:06:15 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Thu, 11 Aug 2016 20:08:10 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Thu, 11 Aug 2016 20:08:11 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Thu, 11 Aug 2016 20:08:14 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Thu, 11 Aug 2016 20:08:15 GMT
ENV SOLR_VERSION=6.1.0
# Thu, 11 Aug 2016 20:08:15 GMT
ENV SOLR_SHA256=74630a06d45eb44c0afe2bfb6e2cd80c9d8d92aa0c48a563e39c32996a76c8b0
# Thu, 11 Aug 2016 20:08:16 GMT
ENV SOLR_URL=http://www-us.apache.org/dist/lucene/solr/6.1.0/solr-6.1.0.tgz
# Thu, 11 Aug 2016 20:08:29 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 11 Aug 2016 20:08:31 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts
# Thu, 11 Aug 2016 20:08:33 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 11 Aug 2016 20:08:34 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 20:08:35 GMT
EXPOSE 8983/tcp
# Thu, 11 Aug 2016 20:08:35 GMT
WORKDIR /opt/solr
# Thu, 11 Aug 2016 20:08:36 GMT
USER [solr]
# Thu, 11 Aug 2016 20:08:37 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 20:08:38 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:098acfb291187038145d00f8e2b9e3ec0aa2dc8e437e7a0ba0571b76a0c1d113`  
		Last Modified: Thu, 11 Aug 2016 20:07:14 GMT  
		Size: 10.1 MB (10080065 bytes)
	-	`sha256:a9939f9c8844ae176b0c9dac2eaa02aafc18645bf177d143f76e0f9c2ea3ba21`  
		Last Modified: Thu, 11 Aug 2016 20:07:06 GMT  
		Size: 4.6 KB (4637 bytes)
	-	`sha256:6096f775cfe1fd4ed91cbabbde7d3f4d6f179b6af58667af164acb12beecd906`  
		Last Modified: Thu, 11 Aug 2016 20:08:49 GMT  
		Size: 7.4 KB (7400 bytes)
	-	`sha256:341eef701bcac4b0a586e9b4199d86307b44e9dd2e2c2cae3d1dd5d88cd84dab`  
		Last Modified: Thu, 11 Aug 2016 20:09:02 GMT  
		Size: 138.8 MB (138830867 bytes)
	-	`sha256:97e92023f617bd79cf70a5ee0cf08577971cba3d5a97b191dbc31ff29101f676`  
		Last Modified: Thu, 11 Aug 2016 20:08:49 GMT  
		Size: 1.9 KB (1873 bytes)
	-	`sha256:03738cf30cc560d9b19584b6067190d1174ff70212fac5571513ae3565634276`  
		Last Modified: Thu, 11 Aug 2016 20:08:49 GMT  
		Size: 1.9 KB (1880 bytes)

## `solr:6`

```console
$ docker pull solr@sha256:02d1ec48eb137ab7938c6df6a29579c3f61dcd142ff4684a271aa9bc75f4e0b4
```

-	Platforms:
	-	linux; amd64

### `solr:6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.1 MB (273072598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb71b611d98275f165036771541777f266b9efcba67f1870f2d9ec0b0552b0f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 20:04:58 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 11 Aug 2016 20:04:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 11 Aug 2016 20:05:00 GMT
ARG GPG_KEYSERVER
# Thu, 11 Aug 2016 20:06:11 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 20:06:12 GMT
ENV SOLR_USER=solr
# Thu, 11 Aug 2016 20:06:13 GMT
ENV SOLR_UID=8983
# Thu, 11 Aug 2016 20:06:15 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Thu, 11 Aug 2016 20:08:10 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Thu, 11 Aug 2016 20:08:11 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Thu, 11 Aug 2016 20:08:14 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Thu, 11 Aug 2016 20:08:15 GMT
ENV SOLR_VERSION=6.1.0
# Thu, 11 Aug 2016 20:08:15 GMT
ENV SOLR_SHA256=74630a06d45eb44c0afe2bfb6e2cd80c9d8d92aa0c48a563e39c32996a76c8b0
# Thu, 11 Aug 2016 20:08:16 GMT
ENV SOLR_URL=http://www-us.apache.org/dist/lucene/solr/6.1.0/solr-6.1.0.tgz
# Thu, 11 Aug 2016 20:08:29 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 11 Aug 2016 20:08:31 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts
# Thu, 11 Aug 2016 20:08:33 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 11 Aug 2016 20:08:34 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 20:08:35 GMT
EXPOSE 8983/tcp
# Thu, 11 Aug 2016 20:08:35 GMT
WORKDIR /opt/solr
# Thu, 11 Aug 2016 20:08:36 GMT
USER [solr]
# Thu, 11 Aug 2016 20:08:37 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 20:08:38 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:098acfb291187038145d00f8e2b9e3ec0aa2dc8e437e7a0ba0571b76a0c1d113`  
		Last Modified: Thu, 11 Aug 2016 20:07:14 GMT  
		Size: 10.1 MB (10080065 bytes)
	-	`sha256:a9939f9c8844ae176b0c9dac2eaa02aafc18645bf177d143f76e0f9c2ea3ba21`  
		Last Modified: Thu, 11 Aug 2016 20:07:06 GMT  
		Size: 4.6 KB (4637 bytes)
	-	`sha256:6096f775cfe1fd4ed91cbabbde7d3f4d6f179b6af58667af164acb12beecd906`  
		Last Modified: Thu, 11 Aug 2016 20:08:49 GMT  
		Size: 7.4 KB (7400 bytes)
	-	`sha256:341eef701bcac4b0a586e9b4199d86307b44e9dd2e2c2cae3d1dd5d88cd84dab`  
		Last Modified: Thu, 11 Aug 2016 20:09:02 GMT  
		Size: 138.8 MB (138830867 bytes)
	-	`sha256:97e92023f617bd79cf70a5ee0cf08577971cba3d5a97b191dbc31ff29101f676`  
		Last Modified: Thu, 11 Aug 2016 20:08:49 GMT  
		Size: 1.9 KB (1873 bytes)
	-	`sha256:03738cf30cc560d9b19584b6067190d1174ff70212fac5571513ae3565634276`  
		Last Modified: Thu, 11 Aug 2016 20:08:49 GMT  
		Size: 1.9 KB (1880 bytes)

## `solr:latest`

```console
$ docker pull solr@sha256:02d1ec48eb137ab7938c6df6a29579c3f61dcd142ff4684a271aa9bc75f4e0b4
```

-	Platforms:
	-	linux; amd64

### `solr:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.1 MB (273072598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb71b611d98275f165036771541777f266b9efcba67f1870f2d9ec0b0552b0f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 20:04:58 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 11 Aug 2016 20:04:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 11 Aug 2016 20:05:00 GMT
ARG GPG_KEYSERVER
# Thu, 11 Aug 2016 20:06:11 GMT
RUN apt-get update &&   apt-get -y install lsof &&   rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 20:06:12 GMT
ENV SOLR_USER=solr
# Thu, 11 Aug 2016 20:06:13 GMT
ENV SOLR_UID=8983
# Thu, 11 Aug 2016 20:06:15 GMT
RUN groupadd -r -g $SOLR_UID $SOLR_USER &&   useradd -r -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Thu, 11 Aug 2016 20:08:10 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Thu, 11 Aug 2016 20:08:11 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Thu, 11 Aug 2016 20:08:14 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Thu, 11 Aug 2016 20:08:15 GMT
ENV SOLR_VERSION=6.1.0
# Thu, 11 Aug 2016 20:08:15 GMT
ENV SOLR_SHA256=74630a06d45eb44c0afe2bfb6e2cd80c9d8d92aa0c48a563e39c32996a76c8b0
# Thu, 11 Aug 2016 20:08:16 GMT
ENV SOLR_URL=http://www-us.apache.org/dist/lucene/solr/6.1.0/solr-6.1.0.tgz
# Thu, 11 Aug 2016 20:08:29 GMT
RUN mkdir -p /opt/solr &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 11 Aug 2016 20:08:31 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts
# Thu, 11 Aug 2016 20:08:33 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 11 Aug 2016 20:08:34 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 20:08:35 GMT
EXPOSE 8983/tcp
# Thu, 11 Aug 2016 20:08:35 GMT
WORKDIR /opt/solr
# Thu, 11 Aug 2016 20:08:36 GMT
USER [solr]
# Thu, 11 Aug 2016 20:08:37 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 20:08:38 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:098acfb291187038145d00f8e2b9e3ec0aa2dc8e437e7a0ba0571b76a0c1d113`  
		Last Modified: Thu, 11 Aug 2016 20:07:14 GMT  
		Size: 10.1 MB (10080065 bytes)
	-	`sha256:a9939f9c8844ae176b0c9dac2eaa02aafc18645bf177d143f76e0f9c2ea3ba21`  
		Last Modified: Thu, 11 Aug 2016 20:07:06 GMT  
		Size: 4.6 KB (4637 bytes)
	-	`sha256:6096f775cfe1fd4ed91cbabbde7d3f4d6f179b6af58667af164acb12beecd906`  
		Last Modified: Thu, 11 Aug 2016 20:08:49 GMT  
		Size: 7.4 KB (7400 bytes)
	-	`sha256:341eef701bcac4b0a586e9b4199d86307b44e9dd2e2c2cae3d1dd5d88cd84dab`  
		Last Modified: Thu, 11 Aug 2016 20:09:02 GMT  
		Size: 138.8 MB (138830867 bytes)
	-	`sha256:97e92023f617bd79cf70a5ee0cf08577971cba3d5a97b191dbc31ff29101f676`  
		Last Modified: Thu, 11 Aug 2016 20:08:49 GMT  
		Size: 1.9 KB (1873 bytes)
	-	`sha256:03738cf30cc560d9b19584b6067190d1174ff70212fac5571513ae3565634276`  
		Last Modified: Thu, 11 Aug 2016 20:08:49 GMT  
		Size: 1.9 KB (1880 bytes)

## `solr:6.1.0-alpine`

```console
$ docker pull solr@sha256:8217ff90c3e7895a401eb75dad9cd591a6f3c06a89f994146665831239242744
```

-	Platforms:
	-	linux; amd64

### `solr:6.1.0-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186165617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e6ba6e2223b9220cd0e7763bdc8da8c5b243b765609b2257a6088548d6f3dfb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:34:53 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jun 2016 20:34:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 23 Jun 2016 20:36:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 07 Jul 2016 19:05:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_VERSION=8u92
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Thu, 07 Jul 2016 19:05:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Jul 2016 21:53:27 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 07 Jul 2016 21:53:27 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 07 Jul 2016 21:53:28 GMT
ARG GPG_KEYSERVER
# Thu, 07 Jul 2016 21:53:34 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Thu, 07 Jul 2016 21:53:38 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Thu, 07 Jul 2016 21:53:39 GMT
ENV SOLR_USER=solr
# Thu, 07 Jul 2016 21:53:39 GMT
ENV SOLR_UID=8983
# Thu, 07 Jul 2016 21:53:41 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Thu, 07 Jul 2016 21:53:42 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Thu, 07 Jul 2016 21:53:50 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Thu, 07 Jul 2016 21:53:51 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Thu, 07 Jul 2016 21:53:54 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Thu, 07 Jul 2016 21:53:55 GMT
ENV SOLR_VERSION=6.1.0
# Thu, 07 Jul 2016 21:53:55 GMT
ENV SOLR_SHA256=74630a06d45eb44c0afe2bfb6e2cd80c9d8d92aa0c48a563e39c32996a76c8b0
# Thu, 07 Jul 2016 21:53:56 GMT
ENV SOLR_URL=http://www-us.apache.org/dist/lucene/solr/6.1.0/solr-6.1.0.tgz
# Thu, 07 Jul 2016 21:54:10 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 07 Jul 2016 21:54:11 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts
# Thu, 07 Jul 2016 21:54:13 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 07 Jul 2016 21:54:14 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 21:54:14 GMT
EXPOSE 8983/tcp
# Thu, 07 Jul 2016 21:54:15 GMT
WORKDIR /opt/solr
# Thu, 07 Jul 2016 21:54:15 GMT
USER [solr]
# Thu, 07 Jul 2016 21:54:16 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Thu, 07 Jul 2016 21:54:16 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:745c1cd94ebe79c47147dc3c57bb9cba552a51edb00465b243006e01a1e941a9`  
		Last Modified: Thu, 07 Jul 2016 19:14:28 GMT  
		Size: 39.6 MB (39647617 bytes)
	-	`sha256:7412bb3dd7b1f9875da50e5f9752e534b73b64dd231bedda46b4e564ddc9812b`  
		Last Modified: Thu, 07 Jul 2016 21:54:30 GMT  
		Size: 4.7 MB (4745554 bytes)
	-	`sha256:a3b4838e58766b06cbc6f31b0471e4b6cf27376ea446518bd9b7f955883a61f5`  
		Last Modified: Thu, 07 Jul 2016 21:54:27 GMT  
		Size: 597.7 KB (597715 bytes)
	-	`sha256:f2d52cdf127a9ef6f6969cec245e2a8ee1cf80b6548aa186de705e8e24b3ef5e`  
		Last Modified: Thu, 07 Jul 2016 21:54:26 GMT  
		Size: 22.5 KB (22481 bytes)
	-	`sha256:078582909bfa1ffa1be934e56916a3ced07c72c2a3ae5c5e650c08ef384931cd`  
		Last Modified: Thu, 07 Jul 2016 21:54:24 GMT  
		Size: 7.1 KB (7088 bytes)
	-	`sha256:bb203397a210f245d7bd766512dbc5d3d5efa126f90c8ad49587a9ad3f2443e0`  
		Last Modified: Thu, 07 Jul 2016 21:54:24 GMT  
		Size: 154.0 B
	-	`sha256:c29c52845250ea40ede91fa9c0b5a5f77a1d37c80f8b7a6af7e6167289796acb`  
		Last Modified: Thu, 07 Jul 2016 21:54:38 GMT  
		Size: 138.8 MB (138830733 bytes)
	-	`sha256:648f821f3fa4bd57e21c719e2105a55719632530e8b54c5fc4b6113c2f4c5a40`  
		Last Modified: Thu, 07 Jul 2016 21:54:24 GMT  
		Size: 1.9 KB (1876 bytes)
	-	`sha256:3044292d91defda60d96878693976cc861f9a9152103f5c16e3bc8e21870546e`  
		Last Modified: Thu, 07 Jul 2016 21:54:24 GMT  
		Size: 1.9 KB (1883 bytes)

## `solr:6.1-alpine`

```console
$ docker pull solr@sha256:8217ff90c3e7895a401eb75dad9cd591a6f3c06a89f994146665831239242744
```

-	Platforms:
	-	linux; amd64

### `solr:6.1-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186165617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e6ba6e2223b9220cd0e7763bdc8da8c5b243b765609b2257a6088548d6f3dfb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:34:53 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jun 2016 20:34:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 23 Jun 2016 20:36:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 07 Jul 2016 19:05:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_VERSION=8u92
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Thu, 07 Jul 2016 19:05:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Jul 2016 21:53:27 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 07 Jul 2016 21:53:27 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 07 Jul 2016 21:53:28 GMT
ARG GPG_KEYSERVER
# Thu, 07 Jul 2016 21:53:34 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Thu, 07 Jul 2016 21:53:38 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Thu, 07 Jul 2016 21:53:39 GMT
ENV SOLR_USER=solr
# Thu, 07 Jul 2016 21:53:39 GMT
ENV SOLR_UID=8983
# Thu, 07 Jul 2016 21:53:41 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Thu, 07 Jul 2016 21:53:42 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Thu, 07 Jul 2016 21:53:50 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Thu, 07 Jul 2016 21:53:51 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Thu, 07 Jul 2016 21:53:54 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Thu, 07 Jul 2016 21:53:55 GMT
ENV SOLR_VERSION=6.1.0
# Thu, 07 Jul 2016 21:53:55 GMT
ENV SOLR_SHA256=74630a06d45eb44c0afe2bfb6e2cd80c9d8d92aa0c48a563e39c32996a76c8b0
# Thu, 07 Jul 2016 21:53:56 GMT
ENV SOLR_URL=http://www-us.apache.org/dist/lucene/solr/6.1.0/solr-6.1.0.tgz
# Thu, 07 Jul 2016 21:54:10 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 07 Jul 2016 21:54:11 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts
# Thu, 07 Jul 2016 21:54:13 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 07 Jul 2016 21:54:14 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 21:54:14 GMT
EXPOSE 8983/tcp
# Thu, 07 Jul 2016 21:54:15 GMT
WORKDIR /opt/solr
# Thu, 07 Jul 2016 21:54:15 GMT
USER [solr]
# Thu, 07 Jul 2016 21:54:16 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Thu, 07 Jul 2016 21:54:16 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:745c1cd94ebe79c47147dc3c57bb9cba552a51edb00465b243006e01a1e941a9`  
		Last Modified: Thu, 07 Jul 2016 19:14:28 GMT  
		Size: 39.6 MB (39647617 bytes)
	-	`sha256:7412bb3dd7b1f9875da50e5f9752e534b73b64dd231bedda46b4e564ddc9812b`  
		Last Modified: Thu, 07 Jul 2016 21:54:30 GMT  
		Size: 4.7 MB (4745554 bytes)
	-	`sha256:a3b4838e58766b06cbc6f31b0471e4b6cf27376ea446518bd9b7f955883a61f5`  
		Last Modified: Thu, 07 Jul 2016 21:54:27 GMT  
		Size: 597.7 KB (597715 bytes)
	-	`sha256:f2d52cdf127a9ef6f6969cec245e2a8ee1cf80b6548aa186de705e8e24b3ef5e`  
		Last Modified: Thu, 07 Jul 2016 21:54:26 GMT  
		Size: 22.5 KB (22481 bytes)
	-	`sha256:078582909bfa1ffa1be934e56916a3ced07c72c2a3ae5c5e650c08ef384931cd`  
		Last Modified: Thu, 07 Jul 2016 21:54:24 GMT  
		Size: 7.1 KB (7088 bytes)
	-	`sha256:bb203397a210f245d7bd766512dbc5d3d5efa126f90c8ad49587a9ad3f2443e0`  
		Last Modified: Thu, 07 Jul 2016 21:54:24 GMT  
		Size: 154.0 B
	-	`sha256:c29c52845250ea40ede91fa9c0b5a5f77a1d37c80f8b7a6af7e6167289796acb`  
		Last Modified: Thu, 07 Jul 2016 21:54:38 GMT  
		Size: 138.8 MB (138830733 bytes)
	-	`sha256:648f821f3fa4bd57e21c719e2105a55719632530e8b54c5fc4b6113c2f4c5a40`  
		Last Modified: Thu, 07 Jul 2016 21:54:24 GMT  
		Size: 1.9 KB (1876 bytes)
	-	`sha256:3044292d91defda60d96878693976cc861f9a9152103f5c16e3bc8e21870546e`  
		Last Modified: Thu, 07 Jul 2016 21:54:24 GMT  
		Size: 1.9 KB (1883 bytes)

## `solr:6-alpine`

```console
$ docker pull solr@sha256:8217ff90c3e7895a401eb75dad9cd591a6f3c06a89f994146665831239242744
```

-	Platforms:
	-	linux; amd64

### `solr:6-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186165617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e6ba6e2223b9220cd0e7763bdc8da8c5b243b765609b2257a6088548d6f3dfb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:34:53 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jun 2016 20:34:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 23 Jun 2016 20:36:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 07 Jul 2016 19:05:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_VERSION=8u92
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Thu, 07 Jul 2016 19:05:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Jul 2016 21:53:27 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 07 Jul 2016 21:53:27 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 07 Jul 2016 21:53:28 GMT
ARG GPG_KEYSERVER
# Thu, 07 Jul 2016 21:53:34 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Thu, 07 Jul 2016 21:53:38 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Thu, 07 Jul 2016 21:53:39 GMT
ENV SOLR_USER=solr
# Thu, 07 Jul 2016 21:53:39 GMT
ENV SOLR_UID=8983
# Thu, 07 Jul 2016 21:53:41 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Thu, 07 Jul 2016 21:53:42 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Thu, 07 Jul 2016 21:53:50 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Thu, 07 Jul 2016 21:53:51 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Thu, 07 Jul 2016 21:53:54 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Thu, 07 Jul 2016 21:53:55 GMT
ENV SOLR_VERSION=6.1.0
# Thu, 07 Jul 2016 21:53:55 GMT
ENV SOLR_SHA256=74630a06d45eb44c0afe2bfb6e2cd80c9d8d92aa0c48a563e39c32996a76c8b0
# Thu, 07 Jul 2016 21:53:56 GMT
ENV SOLR_URL=http://www-us.apache.org/dist/lucene/solr/6.1.0/solr-6.1.0.tgz
# Thu, 07 Jul 2016 21:54:10 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 07 Jul 2016 21:54:11 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts
# Thu, 07 Jul 2016 21:54:13 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 07 Jul 2016 21:54:14 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 21:54:14 GMT
EXPOSE 8983/tcp
# Thu, 07 Jul 2016 21:54:15 GMT
WORKDIR /opt/solr
# Thu, 07 Jul 2016 21:54:15 GMT
USER [solr]
# Thu, 07 Jul 2016 21:54:16 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Thu, 07 Jul 2016 21:54:16 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:745c1cd94ebe79c47147dc3c57bb9cba552a51edb00465b243006e01a1e941a9`  
		Last Modified: Thu, 07 Jul 2016 19:14:28 GMT  
		Size: 39.6 MB (39647617 bytes)
	-	`sha256:7412bb3dd7b1f9875da50e5f9752e534b73b64dd231bedda46b4e564ddc9812b`  
		Last Modified: Thu, 07 Jul 2016 21:54:30 GMT  
		Size: 4.7 MB (4745554 bytes)
	-	`sha256:a3b4838e58766b06cbc6f31b0471e4b6cf27376ea446518bd9b7f955883a61f5`  
		Last Modified: Thu, 07 Jul 2016 21:54:27 GMT  
		Size: 597.7 KB (597715 bytes)
	-	`sha256:f2d52cdf127a9ef6f6969cec245e2a8ee1cf80b6548aa186de705e8e24b3ef5e`  
		Last Modified: Thu, 07 Jul 2016 21:54:26 GMT  
		Size: 22.5 KB (22481 bytes)
	-	`sha256:078582909bfa1ffa1be934e56916a3ced07c72c2a3ae5c5e650c08ef384931cd`  
		Last Modified: Thu, 07 Jul 2016 21:54:24 GMT  
		Size: 7.1 KB (7088 bytes)
	-	`sha256:bb203397a210f245d7bd766512dbc5d3d5efa126f90c8ad49587a9ad3f2443e0`  
		Last Modified: Thu, 07 Jul 2016 21:54:24 GMT  
		Size: 154.0 B
	-	`sha256:c29c52845250ea40ede91fa9c0b5a5f77a1d37c80f8b7a6af7e6167289796acb`  
		Last Modified: Thu, 07 Jul 2016 21:54:38 GMT  
		Size: 138.8 MB (138830733 bytes)
	-	`sha256:648f821f3fa4bd57e21c719e2105a55719632530e8b54c5fc4b6113c2f4c5a40`  
		Last Modified: Thu, 07 Jul 2016 21:54:24 GMT  
		Size: 1.9 KB (1876 bytes)
	-	`sha256:3044292d91defda60d96878693976cc861f9a9152103f5c16e3bc8e21870546e`  
		Last Modified: Thu, 07 Jul 2016 21:54:24 GMT  
		Size: 1.9 KB (1883 bytes)

## `solr:alpine`

```console
$ docker pull solr@sha256:8217ff90c3e7895a401eb75dad9cd591a6f3c06a89f994146665831239242744
```

-	Platforms:
	-	linux; amd64

### `solr:alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186165617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e6ba6e2223b9220cd0e7763bdc8da8c5b243b765609b2257a6088548d6f3dfb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:34:53 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jun 2016 20:34:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 23 Jun 2016 20:36:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 07 Jul 2016 19:05:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_VERSION=8u92
# Thu, 07 Jul 2016 19:05:08 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Thu, 07 Jul 2016 19:05:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Jul 2016 21:53:27 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 07 Jul 2016 21:53:27 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 07 Jul 2016 21:53:28 GMT
ARG GPG_KEYSERVER
# Thu, 07 Jul 2016 21:53:34 GMT
RUN apk add --no-cache         lsof         gnupg         tar         bash
# Thu, 07 Jul 2016 21:53:38 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Thu, 07 Jul 2016 21:53:39 GMT
ENV SOLR_USER=solr
# Thu, 07 Jul 2016 21:53:39 GMT
ENV SOLR_UID=8983
# Thu, 07 Jul 2016 21:53:41 GMT
RUN addgroup -S -g $SOLR_UID $SOLR_USER &&   adduser -S -u $SOLR_UID -g $SOLR_USER $SOLR_USER
# Thu, 07 Jul 2016 21:53:42 GMT
ENV SOLR_KEY=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507
# Thu, 07 Jul 2016 21:53:50 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$SOLR_KEY"
# Thu, 07 Jul 2016 21:53:51 GMT
ENV GPG_KEYSERVER=hkp://ha.pool.sks-keyservers.net
# Thu, 07 Jul 2016 21:53:54 GMT
RUN gpg --keyserver "$GPG_KEYSERVER" --recv-keys "$SOLR_KEY"
# Thu, 07 Jul 2016 21:53:55 GMT
ENV SOLR_VERSION=6.1.0
# Thu, 07 Jul 2016 21:53:55 GMT
ENV SOLR_SHA256=74630a06d45eb44c0afe2bfb6e2cd80c9d8d92aa0c48a563e39c32996a76c8b0
# Thu, 07 Jul 2016 21:53:56 GMT
ENV SOLR_URL=http://www-us.apache.org/dist/lucene/solr/6.1.0/solr-6.1.0.tgz
# Thu, 07 Jul 2016 21:54:10 GMT
RUN mkdir -p /opt/solr &&   wget $SOLR_URL -O /opt/solr.tgz &&   wget $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores &&   sed -i -e 's/#SOLR_PORT=8983/SOLR_PORT=8983/' /opt/solr/bin/solr.in.sh &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_USER /opt/solr &&   mkdir /docker-entrypoint-initdb.d /opt/docker-solr/
# Thu, 07 Jul 2016 21:54:11 GMT
COPY dir:e7e155eea31238308402c3128237b81a9d96ede91c8ac8361c75c62f06b63e9b in /opt/docker-solr/scripts
# Thu, 07 Jul 2016 21:54:13 GMT
RUN chown -R $SOLR_USER:$SOLR_USER /opt/docker-solr
# Thu, 07 Jul 2016 21:54:14 GMT
ENV PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 21:54:14 GMT
EXPOSE 8983/tcp
# Thu, 07 Jul 2016 21:54:15 GMT
WORKDIR /opt/solr
# Thu, 07 Jul 2016 21:54:15 GMT
USER [solr]
# Thu, 07 Jul 2016 21:54:16 GMT
ENTRYPOINT &{["docker-entrypoint.sh"]}
# Thu, 07 Jul 2016 21:54:16 GMT
CMD ["solr"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:745c1cd94ebe79c47147dc3c57bb9cba552a51edb00465b243006e01a1e941a9`  
		Last Modified: Thu, 07 Jul 2016 19:14:28 GMT  
		Size: 39.6 MB (39647617 bytes)
	-	`sha256:7412bb3dd7b1f9875da50e5f9752e534b73b64dd231bedda46b4e564ddc9812b`  
		Last Modified: Thu, 07 Jul 2016 21:54:30 GMT  
		Size: 4.7 MB (4745554 bytes)
	-	`sha256:a3b4838e58766b06cbc6f31b0471e4b6cf27376ea446518bd9b7f955883a61f5`  
		Last Modified: Thu, 07 Jul 2016 21:54:27 GMT  
		Size: 597.7 KB (597715 bytes)
	-	`sha256:f2d52cdf127a9ef6f6969cec245e2a8ee1cf80b6548aa186de705e8e24b3ef5e`  
		Last Modified: Thu, 07 Jul 2016 21:54:26 GMT  
		Size: 22.5 KB (22481 bytes)
	-	`sha256:078582909bfa1ffa1be934e56916a3ced07c72c2a3ae5c5e650c08ef384931cd`  
		Last Modified: Thu, 07 Jul 2016 21:54:24 GMT  
		Size: 7.1 KB (7088 bytes)
	-	`sha256:bb203397a210f245d7bd766512dbc5d3d5efa126f90c8ad49587a9ad3f2443e0`  
		Last Modified: Thu, 07 Jul 2016 21:54:24 GMT  
		Size: 154.0 B
	-	`sha256:c29c52845250ea40ede91fa9c0b5a5f77a1d37c80f8b7a6af7e6167289796acb`  
		Last Modified: Thu, 07 Jul 2016 21:54:38 GMT  
		Size: 138.8 MB (138830733 bytes)
	-	`sha256:648f821f3fa4bd57e21c719e2105a55719632530e8b54c5fc4b6113c2f4c5a40`  
		Last Modified: Thu, 07 Jul 2016 21:54:24 GMT  
		Size: 1.9 KB (1876 bytes)
	-	`sha256:3044292d91defda60d96878693976cc861f9a9152103f5c16e3bc8e21870546e`  
		Last Modified: Thu, 07 Jul 2016 21:54:24 GMT  
		Size: 1.9 KB (1883 bytes)
