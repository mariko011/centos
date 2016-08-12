<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `clojure`

-	[`clojure:latest`](#clojurelatest)
-	[`clojure:lein-2.6.1`](#clojurelein-261)
-	[`clojure:onbuild`](#clojureonbuild)
-	[`clojure:lein-2.6.1-onbuild`](#clojurelein-261-onbuild)
-	[`clojure:alpine`](#clojurealpine)
-	[`clojure:lein-2.6.1-alpine`](#clojurelein-261-alpine)
-	[`clojure:alpine-onbuild`](#clojurealpine-onbuild)
-	[`clojure:lein-2.6.1-alpine-onbuild`](#clojurelein-261-alpine-onbuild)

## `clojure:latest`

**does not exist** (yet?)

## `clojure:lein-2.6.1`

```console
$ docker pull clojure@sha256:83b3c8904579c2b5180346432ed35ca4cd47710bf5027898b9c20e1d44116a1c
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-2.6.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 MB (257326347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78b4dc668b751347fa90315dbcf736e568c5e8f393680f9bbcd10da6c3ae7e54`
-	Default Command: `["\/bin\/bash"]`

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
# Thu, 11 Aug 2016 16:52:58 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Thu, 11 Aug 2016 16:52:59 GMT
ENV LEIN_VERSION=2.6.1
# Thu, 11 Aug 2016 16:53:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 11 Aug 2016 16:53:00 GMT
WORKDIR /tmp
# Thu, 11 Aug 2016 16:54:04 GMT
RUN mkdir -p $LEIN_INSTALL   && wget --quiet https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "f7643a14fd8a4d5c19eeb416db8ea549d8d2c18a *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget --quiet https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget --quiet https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar   &&  apt-get update && apt-get install rlfe && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 16:54:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 11 Aug 2016 16:54:06 GMT
ENV LEIN_ROOT=1
# Thu, 11 Aug 2016 16:54:10 GMT
RUN lein
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
	-	`sha256:9a33ec32020da2047049a0f591f5f22e2ddf085399d65375253c97076a050ee3`  
		Last Modified: Thu, 11 Aug 2016 16:54:23 GMT  
		Size: 14.0 MB (13988807 bytes)
	-	`sha256:93b46c606784fd12b26626aca98290eaff10c52bc52f50468ae567fd232748c9`  
		Last Modified: Thu, 11 Aug 2016 16:54:20 GMT  
		Size: 167.0 B

## `clojure:onbuild`

```console
$ docker pull clojure@sha256:936e4308713e43fc17bd9d61186d7675ee05ca5470a86a702567cc818ee0a45a
```

-	Platforms:
	-	linux; amd64

### `clojure:onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 MB (257326474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fbeca88c49bb107db4df40e3ce2ee2b51a7a0265ff6c054370bcfb92a536016`
-	Default Command: `["lein","run"]`

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
# Thu, 11 Aug 2016 16:52:58 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Thu, 11 Aug 2016 16:52:59 GMT
ENV LEIN_VERSION=2.6.1
# Thu, 11 Aug 2016 16:53:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 11 Aug 2016 16:53:00 GMT
WORKDIR /tmp
# Thu, 11 Aug 2016 16:54:04 GMT
RUN mkdir -p $LEIN_INSTALL   && wget --quiet https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "f7643a14fd8a4d5c19eeb416db8ea549d8d2c18a *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget --quiet https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget --quiet https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar   &&  apt-get update && apt-get install rlfe && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 16:54:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 11 Aug 2016 16:54:06 GMT
ENV LEIN_ROOT=1
# Thu, 11 Aug 2016 16:54:10 GMT
RUN lein
# Thu, 11 Aug 2016 16:54:41 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Thu, 11 Aug 2016 16:54:42 GMT
WORKDIR /usr/src/app
# Thu, 11 Aug 2016 16:54:42 GMT
ONBUILD COPY project.clj /usr/src/app/
# Thu, 11 Aug 2016 16:54:43 GMT
ONBUILD RUN lein deps
# Thu, 11 Aug 2016 16:54:44 GMT
ONBUILD COPY . /usr/src/app
# Thu, 11 Aug 2016 16:54:45 GMT
CMD ["lein" "run"]
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
	-	`sha256:9a33ec32020da2047049a0f591f5f22e2ddf085399d65375253c97076a050ee3`  
		Last Modified: Thu, 11 Aug 2016 16:54:23 GMT  
		Size: 14.0 MB (13988807 bytes)
	-	`sha256:93b46c606784fd12b26626aca98290eaff10c52bc52f50468ae567fd232748c9`  
		Last Modified: Thu, 11 Aug 2016 16:54:20 GMT  
		Size: 167.0 B
	-	`sha256:9e65a1de3e8c0458ff2b209197bef3e1122f2f786ec36c1029ca52432977ab16`  
		Last Modified: Thu, 11 Aug 2016 16:54:55 GMT  
		Size: 127.0 B

## `clojure:lein-2.6.1-onbuild`

```console
$ docker pull clojure@sha256:936e4308713e43fc17bd9d61186d7675ee05ca5470a86a702567cc818ee0a45a
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-2.6.1-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 MB (257326474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fbeca88c49bb107db4df40e3ce2ee2b51a7a0265ff6c054370bcfb92a536016`
-	Default Command: `["lein","run"]`

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
# Thu, 11 Aug 2016 16:52:58 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Thu, 11 Aug 2016 16:52:59 GMT
ENV LEIN_VERSION=2.6.1
# Thu, 11 Aug 2016 16:53:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 11 Aug 2016 16:53:00 GMT
WORKDIR /tmp
# Thu, 11 Aug 2016 16:54:04 GMT
RUN mkdir -p $LEIN_INSTALL   && wget --quiet https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "f7643a14fd8a4d5c19eeb416db8ea549d8d2c18a *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget --quiet https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget --quiet https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar   &&  apt-get update && apt-get install rlfe && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 16:54:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 11 Aug 2016 16:54:06 GMT
ENV LEIN_ROOT=1
# Thu, 11 Aug 2016 16:54:10 GMT
RUN lein
# Thu, 11 Aug 2016 16:54:41 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Thu, 11 Aug 2016 16:54:42 GMT
WORKDIR /usr/src/app
# Thu, 11 Aug 2016 16:54:42 GMT
ONBUILD COPY project.clj /usr/src/app/
# Thu, 11 Aug 2016 16:54:43 GMT
ONBUILD RUN lein deps
# Thu, 11 Aug 2016 16:54:44 GMT
ONBUILD COPY . /usr/src/app
# Thu, 11 Aug 2016 16:54:45 GMT
CMD ["lein" "run"]
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
	-	`sha256:9a33ec32020da2047049a0f591f5f22e2ddf085399d65375253c97076a050ee3`  
		Last Modified: Thu, 11 Aug 2016 16:54:23 GMT  
		Size: 14.0 MB (13988807 bytes)
	-	`sha256:93b46c606784fd12b26626aca98290eaff10c52bc52f50468ae567fd232748c9`  
		Last Modified: Thu, 11 Aug 2016 16:54:20 GMT  
		Size: 167.0 B
	-	`sha256:9e65a1de3e8c0458ff2b209197bef3e1122f2f786ec36c1029ca52432977ab16`  
		Last Modified: Thu, 11 Aug 2016 16:54:55 GMT  
		Size: 127.0 B

## `clojure:alpine`

```console
$ docker pull clojure@sha256:debd7525bdb80ef98ede2ed0959c4f40e463e0240ad4f9844cd9d51ebce0947a
```

-	Platforms:
	-	linux; amd64

### `clojure:alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.6 MB (70598261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4277a7f38a709ecbe0685c308f9d255065ba54a3063e1a3c910fbd2a779f542b`

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
# Thu, 07 Jul 2016 20:57:58 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 07 Jul 2016 20:57:59 GMT
ENV LEIN_VERSION=2.6.1
# Thu, 07 Jul 2016 20:57:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 07 Jul 2016 20:58:00 GMT
WORKDIR /tmp
# Thu, 07 Jul 2016 20:58:05 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Thu, 07 Jul 2016 20:58:31 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "f7643a14fd8a4d5c19eeb416db8ea549d8d2c18a *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 07 Jul 2016 20:58:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Thu, 07 Jul 2016 20:58:32 GMT
ENV LEIN_ROOT=1
# Thu, 07 Jul 2016 20:58:36 GMT
RUN lein
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
	-	`sha256:8cdfc7cd5696cc070b3e7042ff38004499901b29cf848bedd7d528f53775e146`  
		Last Modified: Thu, 07 Jul 2016 20:58:46 GMT  
		Size: 5.2 MB (5181802 bytes)
	-	`sha256:3039f18e5b5ba9c38cfdab134a0e456899098a6d7a5bbc9f7bf771bb2e2381ee`  
		Last Modified: Thu, 07 Jul 2016 20:58:45 GMT  
		Size: 13.8 MB (13780536 bytes)
	-	`sha256:2cb421c6e13308eafb16e5cc45a31fca7b07e998d335338493a0cd3d666ed219`  
		Last Modified: Thu, 07 Jul 2016 20:58:43 GMT  
		Size: 164.0 B

## `clojure:lein-2.6.1-alpine`

```console
$ docker pull clojure@sha256:debd7525bdb80ef98ede2ed0959c4f40e463e0240ad4f9844cd9d51ebce0947a
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-2.6.1-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.6 MB (70598261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4277a7f38a709ecbe0685c308f9d255065ba54a3063e1a3c910fbd2a779f542b`

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
# Thu, 07 Jul 2016 20:57:58 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 07 Jul 2016 20:57:59 GMT
ENV LEIN_VERSION=2.6.1
# Thu, 07 Jul 2016 20:57:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 07 Jul 2016 20:58:00 GMT
WORKDIR /tmp
# Thu, 07 Jul 2016 20:58:05 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Thu, 07 Jul 2016 20:58:31 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "f7643a14fd8a4d5c19eeb416db8ea549d8d2c18a *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 07 Jul 2016 20:58:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Thu, 07 Jul 2016 20:58:32 GMT
ENV LEIN_ROOT=1
# Thu, 07 Jul 2016 20:58:36 GMT
RUN lein
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
	-	`sha256:8cdfc7cd5696cc070b3e7042ff38004499901b29cf848bedd7d528f53775e146`  
		Last Modified: Thu, 07 Jul 2016 20:58:46 GMT  
		Size: 5.2 MB (5181802 bytes)
	-	`sha256:3039f18e5b5ba9c38cfdab134a0e456899098a6d7a5bbc9f7bf771bb2e2381ee`  
		Last Modified: Thu, 07 Jul 2016 20:58:45 GMT  
		Size: 13.8 MB (13780536 bytes)
	-	`sha256:2cb421c6e13308eafb16e5cc45a31fca7b07e998d335338493a0cd3d666ed219`  
		Last Modified: Thu, 07 Jul 2016 20:58:43 GMT  
		Size: 164.0 B

## `clojure:alpine-onbuild`

```console
$ docker pull clojure@sha256:016756c3e6e9ad0a8241bf8fb7ab78e3f80c26ac61395df4322588f4eda20193
```

-	Platforms:
	-	linux; amd64

### `clojure:alpine-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.6 MB (70598386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c32719b23240cd3c4301f4edebaed81f2696d70fb539a1099fa6baea8cb872c7`
-	Default Command: `["lein","run"]`

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
# Thu, 07 Jul 2016 20:57:58 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 07 Jul 2016 20:57:59 GMT
ENV LEIN_VERSION=2.6.1
# Thu, 07 Jul 2016 20:57:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 07 Jul 2016 20:58:00 GMT
WORKDIR /tmp
# Thu, 07 Jul 2016 20:58:05 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Thu, 07 Jul 2016 20:58:31 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "f7643a14fd8a4d5c19eeb416db8ea549d8d2c18a *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 07 Jul 2016 20:58:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Thu, 07 Jul 2016 20:58:32 GMT
ENV LEIN_ROOT=1
# Thu, 07 Jul 2016 20:58:36 GMT
RUN lein
# Thu, 07 Jul 2016 20:59:37 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 07 Jul 2016 20:59:38 GMT
WORKDIR /usr/src/app
# Thu, 07 Jul 2016 20:59:38 GMT
ONBUILD COPY project.clj /usr/src/app/
# Thu, 07 Jul 2016 20:59:39 GMT
ONBUILD RUN lein deps
# Thu, 07 Jul 2016 20:59:39 GMT
ONBUILD COPY . /usr/src/app
# Thu, 07 Jul 2016 20:59:40 GMT
CMD ["lein" "run"]
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
	-	`sha256:8cdfc7cd5696cc070b3e7042ff38004499901b29cf848bedd7d528f53775e146`  
		Last Modified: Thu, 07 Jul 2016 20:58:46 GMT  
		Size: 5.2 MB (5181802 bytes)
	-	`sha256:3039f18e5b5ba9c38cfdab134a0e456899098a6d7a5bbc9f7bf771bb2e2381ee`  
		Last Modified: Thu, 07 Jul 2016 20:58:45 GMT  
		Size: 13.8 MB (13780536 bytes)
	-	`sha256:2cb421c6e13308eafb16e5cc45a31fca7b07e998d335338493a0cd3d666ed219`  
		Last Modified: Thu, 07 Jul 2016 20:58:43 GMT  
		Size: 164.0 B
	-	`sha256:ebbf606c171f7b09833ab1694d40cdaf67a2ee72f54bae5d05e0a7e588fa7e9e`  
		Last Modified: Thu, 07 Jul 2016 20:59:48 GMT  
		Size: 125.0 B

## `clojure:lein-2.6.1-alpine-onbuild`

```console
$ docker pull clojure@sha256:016756c3e6e9ad0a8241bf8fb7ab78e3f80c26ac61395df4322588f4eda20193
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-2.6.1-alpine-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.6 MB (70598386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c32719b23240cd3c4301f4edebaed81f2696d70fb539a1099fa6baea8cb872c7`
-	Default Command: `["lein","run"]`

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
# Thu, 07 Jul 2016 20:57:58 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 07 Jul 2016 20:57:59 GMT
ENV LEIN_VERSION=2.6.1
# Thu, 07 Jul 2016 20:57:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 07 Jul 2016 20:58:00 GMT
WORKDIR /tmp
# Thu, 07 Jul 2016 20:58:05 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Thu, 07 Jul 2016 20:58:31 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "f7643a14fd8a4d5c19eeb416db8ea549d8d2c18a *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 07 Jul 2016 20:58:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Thu, 07 Jul 2016 20:58:32 GMT
ENV LEIN_ROOT=1
# Thu, 07 Jul 2016 20:58:36 GMT
RUN lein
# Thu, 07 Jul 2016 20:59:37 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 07 Jul 2016 20:59:38 GMT
WORKDIR /usr/src/app
# Thu, 07 Jul 2016 20:59:38 GMT
ONBUILD COPY project.clj /usr/src/app/
# Thu, 07 Jul 2016 20:59:39 GMT
ONBUILD RUN lein deps
# Thu, 07 Jul 2016 20:59:39 GMT
ONBUILD COPY . /usr/src/app
# Thu, 07 Jul 2016 20:59:40 GMT
CMD ["lein" "run"]
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
	-	`sha256:8cdfc7cd5696cc070b3e7042ff38004499901b29cf848bedd7d528f53775e146`  
		Last Modified: Thu, 07 Jul 2016 20:58:46 GMT  
		Size: 5.2 MB (5181802 bytes)
	-	`sha256:3039f18e5b5ba9c38cfdab134a0e456899098a6d7a5bbc9f7bf771bb2e2381ee`  
		Last Modified: Thu, 07 Jul 2016 20:58:45 GMT  
		Size: 13.8 MB (13780536 bytes)
	-	`sha256:2cb421c6e13308eafb16e5cc45a31fca7b07e998d335338493a0cd3d666ed219`  
		Last Modified: Thu, 07 Jul 2016 20:58:43 GMT  
		Size: 164.0 B
	-	`sha256:ebbf606c171f7b09833ab1694d40cdaf67a2ee72f54bae5d05e0a7e588fa7e9e`  
		Last Modified: Thu, 07 Jul 2016 20:59:48 GMT  
		Size: 125.0 B
