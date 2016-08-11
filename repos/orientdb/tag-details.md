<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `orientdb`

-	[`orientdb:2.0.18`](#orientdb2018)
-	[`orientdb:2.1.19`](#orientdb2119)
-	[`orientdb:2.2.6`](#orientdb226)
-	[`orientdb:latest`](#orientdblatest)

## `orientdb:2.0.18`

```console
$ docker pull orientdb@sha256:5b5b92d62777813b23f3fa915b5720e4d470f13bb0d17777ba875ac150fc0a07
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.0.18` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.9 MB (289882233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b8eb6bc466490b1982f0a07281ac78e445bef1aeeba4891fd9a0bdc52d3a86f`
-	Default Command: `["server.sh"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:02:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:06:43 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 05 Aug 2016 22:06:43 GMT
ENV LANG=C.UTF-8
# Fri, 05 Aug 2016 22:06:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 Aug 2016 22:06:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 10 Aug 2016 18:34:54 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:34:55 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:34:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:41:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:41:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 19:17:01 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 11 Aug 2016 19:17:02 GMT
ENV ORIENTDB_VERSION=2.0.18
# Thu, 11 Aug 2016 19:17:04 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9e7b7e7b6d95795b188adb4e5898a1b8
# Thu, 11 Aug 2016 19:17:05 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f562794536bbf8ae2145f96153e58b1e5d9211b3
# Thu, 11 Aug 2016 19:17:12 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 11 Aug 2016 19:17:13 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 19:17:15 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 11 Aug 2016 19:17:16 GMT
WORKDIR /orientdb
# Thu, 11 Aug 2016 19:17:18 GMT
EXPOSE 2424/tcp
# Thu, 11 Aug 2016 19:17:20 GMT
EXPOSE 2480/tcp
# Thu, 11 Aug 2016 19:17:22 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:557cb7f84eb963a60165663691b52690b01249b98c7c106228ee789eaa5070a3`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 593.2 KB (593224 bytes)
	-	`sha256:831d48be5871bba311d21a7394b6b46f4cb6ed31881212987bf0aae298230354`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 220.0 B
	-	`sha256:fecf7eeb197dc492abce9acd7f0519424c7e5f34f4ffeffd721bf0277652d4d7`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 240.0 B
	-	`sha256:e5e3695c1a93559e79e9203e80ba22855cd93c2105e5e346aaebf4c7673183eb`  
		Last Modified: Wed, 10 Aug 2016 18:49:58 GMT  
		Size: 130.1 MB (130071319 bytes)
	-	`sha256:a37afaae8f5b70acee6cc9f963e7ffe068bbc02e2eb59b01e64f4b50cafa22f0`  
		Last Modified: Wed, 10 Aug 2016 18:49:28 GMT  
		Size: 284.4 KB (284396 bytes)
	-	`sha256:80d16f1f41ea93aa99bf263108333d4603cddb96f020dd1430ae3ca1defd054a`  
		Last Modified: Thu, 11 Aug 2016 19:17:43 GMT  
		Size: 46.5 MB (46544860 bytes)

## `orientdb:2.1.19`

```console
$ docker pull orientdb@sha256:30fd503d4770367c7f6855908d6867eb4ef1aaf8e7b0bb6abba82ea60478f713
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.1.19` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82939803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8ee19ddaaeca7a97fcbfe4e53b4737115a505d02fd7bad3e3afb67e9afd34ea`
-	Default Command: `["server.sh"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:34:53 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jun 2016 20:34:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 23 Jun 2016 20:38:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 07 Jul 2016 19:04:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 19:04:53 GMT
ENV JAVA_VERSION=8u92
# Thu, 07 Jul 2016 19:04:54 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Thu, 07 Jul 2016 19:05:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Jul 2016 21:33:02 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 07 Jul 2016 21:33:02 GMT
ENV ORIENTDB_VERSION=2.1.19
# Thu, 07 Jul 2016 21:33:03 GMT
ENV ORIENTDB_DOWNLOAD_MD5=11942093675c32b9341658bd56f191f0
# Thu, 07 Jul 2016 21:33:04 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=289b5d0950254e90531e65a3f4ef530bb4193f32
# Thu, 07 Jul 2016 21:33:07 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Thu, 07 Jul 2016 21:33:13 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 07 Jul 2016 21:33:13 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 21:33:14 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 07 Jul 2016 21:33:15 GMT
WORKDIR /orientdb
# Thu, 07 Jul 2016 21:33:15 GMT
EXPOSE 2424/tcp
# Thu, 07 Jul 2016 21:33:16 GMT
EXPOSE 2480/tcp
# Thu, 07 Jul 2016 21:33:17 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:87d57f795d926435b5621342da8fc8555bd966d7c4b15c6eb202e16737505c61`  
		Last Modified: Thu, 07 Jul 2016 19:12:16 GMT  
		Size: 49.3 MB (49325243 bytes)
	-	`sha256:cd0e97d46a618eb8c7adeea65c9a6de438ec32c49305eca217f125783db302a6`  
		Last Modified: Thu, 07 Jul 2016 21:33:24 GMT  
		Size: 261.8 KB (261819 bytes)
	-	`sha256:b0900e176236bca289b7fcd9ad549c0862dda8f1eacd6f3050ab422d9ed00fc4`  
		Last Modified: Thu, 07 Jul 2016 21:33:28 GMT  
		Size: 31.0 MB (31042225 bytes)

## `orientdb:2.2.6`

```console
$ docker pull orientdb@sha256:c58b5918c2f46908fd026988e660f251050ac9134dbf204b342514ad9db510e2
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.2.6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.4 MB (86436762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4dd9b8aac438401b8c664a1d28805a20a7b50f626d5f8daf270d284eac30f4c`
-	Default Command: `["server.sh"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:34:53 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jun 2016 20:34:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 23 Jun 2016 20:38:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 07 Jul 2016 19:04:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 19:04:53 GMT
ENV JAVA_VERSION=8u92
# Thu, 07 Jul 2016 19:04:54 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Thu, 07 Jul 2016 19:05:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Jul 2016 21:33:02 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 07 Jul 2016 21:33:36 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Fri, 29 Jul 2016 16:53:24 GMT
ENV ORIENTDB_VERSION=2.2.6
# Fri, 29 Jul 2016 16:53:25 GMT
ENV ORIENTDB_DOWNLOAD_MD5=01e4ff2c2e753e5197a6b78848ea5b34
# Fri, 29 Jul 2016 16:53:25 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=2d945bab96256c8f2128a855fa9f724be62be166
# Fri, 29 Jul 2016 16:53:26 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.6/orientdb-community-2.2.6.tar.gz
# Fri, 29 Jul 2016 16:53:30 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Fri, 29 Jul 2016 16:53:34 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 29 Jul 2016 16:53:35 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 29 Jul 2016 16:53:36 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 29 Jul 2016 16:53:37 GMT
WORKDIR /orientdb
# Fri, 29 Jul 2016 16:53:38 GMT
EXPOSE 2424/tcp
# Fri, 29 Jul 2016 16:53:39 GMT
EXPOSE 2480/tcp
# Fri, 29 Jul 2016 16:53:40 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:87d57f795d926435b5621342da8fc8555bd966d7c4b15c6eb202e16737505c61`  
		Last Modified: Thu, 07 Jul 2016 19:12:16 GMT  
		Size: 49.3 MB (49325243 bytes)
	-	`sha256:08ccf3e4e3536601a430fe7716047bb01b794c69aa92e4f7c9e45069871bfed9`  
		Last Modified: Fri, 29 Jul 2016 16:54:12 GMT  
		Size: 261.8 KB (261823 bytes)
	-	`sha256:0834a0e794c81acfdbd5e6bf2e2d19d8eff4cb92af12428477444edb0ecd0d03`  
		Last Modified: Fri, 29 Jul 2016 16:54:16 GMT  
		Size: 34.5 MB (34539180 bytes)

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:c58b5918c2f46908fd026988e660f251050ac9134dbf204b342514ad9db510e2
```

-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.4 MB (86436762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4dd9b8aac438401b8c664a1d28805a20a7b50f626d5f8daf270d284eac30f4c`
-	Default Command: `["server.sh"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:34:53 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jun 2016 20:34:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 23 Jun 2016 20:38:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 07 Jul 2016 19:04:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Jul 2016 19:04:53 GMT
ENV JAVA_VERSION=8u92
# Thu, 07 Jul 2016 19:04:54 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Thu, 07 Jul 2016 19:05:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Jul 2016 21:33:02 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 07 Jul 2016 21:33:36 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Fri, 29 Jul 2016 16:53:24 GMT
ENV ORIENTDB_VERSION=2.2.6
# Fri, 29 Jul 2016 16:53:25 GMT
ENV ORIENTDB_DOWNLOAD_MD5=01e4ff2c2e753e5197a6b78848ea5b34
# Fri, 29 Jul 2016 16:53:25 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=2d945bab96256c8f2128a855fa9f724be62be166
# Fri, 29 Jul 2016 16:53:26 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.6/orientdb-community-2.2.6.tar.gz
# Fri, 29 Jul 2016 16:53:30 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Fri, 29 Jul 2016 16:53:34 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 29 Jul 2016 16:53:35 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 29 Jul 2016 16:53:36 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 29 Jul 2016 16:53:37 GMT
WORKDIR /orientdb
# Fri, 29 Jul 2016 16:53:38 GMT
EXPOSE 2424/tcp
# Fri, 29 Jul 2016 16:53:39 GMT
EXPOSE 2480/tcp
# Fri, 29 Jul 2016 16:53:40 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:87d57f795d926435b5621342da8fc8555bd966d7c4b15c6eb202e16737505c61`  
		Last Modified: Thu, 07 Jul 2016 19:12:16 GMT  
		Size: 49.3 MB (49325243 bytes)
	-	`sha256:08ccf3e4e3536601a430fe7716047bb01b794c69aa92e4f7c9e45069871bfed9`  
		Last Modified: Fri, 29 Jul 2016 16:54:12 GMT  
		Size: 261.8 KB (261823 bytes)
	-	`sha256:0834a0e794c81acfdbd5e6bf2e2d19d8eff4cb92af12428477444edb0ecd0d03`  
		Last Modified: Fri, 29 Jul 2016 16:54:16 GMT  
		Size: 34.5 MB (34539180 bytes)
