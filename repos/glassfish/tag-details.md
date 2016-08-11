<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `glassfish`

-	[`glassfish:4.0-jdk7`](#glassfish40-jdk7)
-	[`glassfish:4.0`](#glassfish40)
-	[`glassfish:4.1-jdk8`](#glassfish41-jdk8)
-	[`glassfish:4.1`](#glassfish41)
-	[`glassfish:latest`](#glassfishlatest)

## `glassfish:4.0-jdk7`

```console
$ docker pull glassfish@sha256:d648bc87665a3e217894561dbfe2f5c1b2b86543519b98d58bcd7051c6c1f672
```

-	Platforms:
	-	linux; amd64

### `glassfish:4.0-jdk7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.8 MB (354775750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22104e73ab968f8110bd6dc9fd89c4c6fc1fb89f10f5c43e8002df2a332e3afb`
-	Default Command: `["\/bin\/sh","-c","asadmin start-domain --verbose"]`

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
# Fri, 05 Aug 2016 22:02:59 GMT
ENV LANG=C.UTF-8
# Fri, 05 Aug 2016 22:03:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 Aug 2016 22:03:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Fri, 05 Aug 2016 22:03:02 GMT
ENV JAVA_VERSION=7u111
# Fri, 05 Aug 2016 22:03:03 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Fri, 05 Aug 2016 22:05:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 08 Aug 2016 17:40:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Mon, 08 Aug 2016 17:40:18 GMT
ENV GLASSFISH_HOME=/usr/local/glassfish4
# Mon, 08 Aug 2016 17:40:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-7-openjdk-amd64/bin:/usr/local/glassfish4/bin
# Mon, 08 Aug 2016 17:41:21 GMT
RUN apt-get update &&             apt-get install -y curl unzip zip inotify-tools &&             rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 17:41:32 GMT
RUN curl -L -o /tmp/glassfish-4.0.zip http://download.java.net/glassfish/4.0/release/glassfish-4.0.zip &&             unzip /tmp/glassfish-4.0.zip -d /usr/local &&             rm -f /tmp/glassfish-4.0.zip
# Mon, 08 Aug 2016 17:41:33 GMT
EXPOSE 4848/tcp 8080/tcp 8181/tcp
# Mon, 08 Aug 2016 17:41:34 GMT
WORKDIR /usr/local/glassfish4
# Mon, 08 Aug 2016 17:41:35 GMT
CMD ["/bin/sh" "-c" "asadmin start-domain --verbose"]
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
	-	`sha256:7bbd9fac5727074a3af671d929e588dc9d9b1f78cdf87523ac35926fe8cd7e01`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 239.0 B
	-	`sha256:15f5ec8580f15fa5e9ab163c0e8e1ef1153596f9ef3184c4ed141f4d1e41ac4a`  
		Last Modified: Fri, 05 Aug 2016 22:13:01 GMT  
		Size: 139.6 MB (139604792 bytes)
	-	`sha256:552f51f5921e4825e9026da1a6c0cba4ff50d6854231c785be46d9d2a3b4fb36`  
		Last Modified: Mon, 08 Aug 2016 17:41:45 GMT  
		Size: 1.1 MB (1082077 bytes)
	-	`sha256:a6d5e5cc77f76519461cbf7669d49dfd84684230738683d6b0c513a2e4d47275`  
		Last Modified: Mon, 08 Aug 2016 17:41:53 GMT  
		Size: 101.1 MB (101107444 bytes)

## `glassfish:4.0`

```console
$ docker pull glassfish@sha256:d648bc87665a3e217894561dbfe2f5c1b2b86543519b98d58bcd7051c6c1f672
```

-	Platforms:
	-	linux; amd64

### `glassfish:4.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.8 MB (354775750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22104e73ab968f8110bd6dc9fd89c4c6fc1fb89f10f5c43e8002df2a332e3afb`
-	Default Command: `["\/bin\/sh","-c","asadmin start-domain --verbose"]`

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
# Fri, 05 Aug 2016 22:02:59 GMT
ENV LANG=C.UTF-8
# Fri, 05 Aug 2016 22:03:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 Aug 2016 22:03:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Fri, 05 Aug 2016 22:03:02 GMT
ENV JAVA_VERSION=7u111
# Fri, 05 Aug 2016 22:03:03 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-1~deb8u1
# Fri, 05 Aug 2016 22:05:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 08 Aug 2016 17:40:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Mon, 08 Aug 2016 17:40:18 GMT
ENV GLASSFISH_HOME=/usr/local/glassfish4
# Mon, 08 Aug 2016 17:40:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-7-openjdk-amd64/bin:/usr/local/glassfish4/bin
# Mon, 08 Aug 2016 17:41:21 GMT
RUN apt-get update &&             apt-get install -y curl unzip zip inotify-tools &&             rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 17:41:32 GMT
RUN curl -L -o /tmp/glassfish-4.0.zip http://download.java.net/glassfish/4.0/release/glassfish-4.0.zip &&             unzip /tmp/glassfish-4.0.zip -d /usr/local &&             rm -f /tmp/glassfish-4.0.zip
# Mon, 08 Aug 2016 17:41:33 GMT
EXPOSE 4848/tcp 8080/tcp 8181/tcp
# Mon, 08 Aug 2016 17:41:34 GMT
WORKDIR /usr/local/glassfish4
# Mon, 08 Aug 2016 17:41:35 GMT
CMD ["/bin/sh" "-c" "asadmin start-domain --verbose"]
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
	-	`sha256:7bbd9fac5727074a3af671d929e588dc9d9b1f78cdf87523ac35926fe8cd7e01`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 239.0 B
	-	`sha256:15f5ec8580f15fa5e9ab163c0e8e1ef1153596f9ef3184c4ed141f4d1e41ac4a`  
		Last Modified: Fri, 05 Aug 2016 22:13:01 GMT  
		Size: 139.6 MB (139604792 bytes)
	-	`sha256:552f51f5921e4825e9026da1a6c0cba4ff50d6854231c785be46d9d2a3b4fb36`  
		Last Modified: Mon, 08 Aug 2016 17:41:45 GMT  
		Size: 1.1 MB (1082077 bytes)
	-	`sha256:a6d5e5cc77f76519461cbf7669d49dfd84684230738683d6b0c513a2e4d47275`  
		Last Modified: Mon, 08 Aug 2016 17:41:53 GMT  
		Size: 101.1 MB (101107444 bytes)

## `glassfish:4.1-jdk8`

```console
$ docker pull glassfish@sha256:50d6081ae0285d35cf589e4af5eeb3d146f2dcd64e19bb3c92c002a53814a05c
```

-	Platforms:
	-	linux; amd64

### `glassfish:4.1-jdk8` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.1 MB (351096663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eec71077267fd5ef2226cbc06b005b85b3feef28e1562484d2c0f1dc6b9b77a`
-	Default Command: `["\/bin\/sh","-c","asadmin start-domain --verbose"]`

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
# Thu, 11 Aug 2016 17:34:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Thu, 11 Aug 2016 17:34:50 GMT
ENV GLASSFISH_HOME=/usr/local/glassfish4
# Thu, 11 Aug 2016 17:34:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-8-openjdk-amd64/bin:/usr/local/glassfish4/bin
# Thu, 11 Aug 2016 17:35:55 GMT
RUN apt-get update &&             apt-get install -y curl unzip zip inotify-tools &&             rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:36:06 GMT
RUN curl -L -o /tmp/glassfish-4.1.zip http://download.java.net/glassfish/4.1/release/glassfish-4.1.zip &&             unzip /tmp/glassfish-4.1.zip -d /usr/local &&             rm -f /tmp/glassfish-4.1.zip
# Thu, 11 Aug 2016 17:36:07 GMT
EXPOSE 4848/tcp 8080/tcp 8181/tcp
# Thu, 11 Aug 2016 17:36:08 GMT
WORKDIR /usr/local/glassfish4
# Thu, 11 Aug 2016 17:36:09 GMT
CMD ["/bin/sh" "-c" "asadmin start-domain --verbose"]
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
	-	`sha256:22c45aff491831ad8caa645c639cec9661a3bc7b09b7db54b2f4dddeeeb0c3c9`  
		Last Modified: Thu, 11 Aug 2016 17:36:20 GMT  
		Size: 1.1 MB (1080426 bytes)
	-	`sha256:66747d3b7fd143e7a9d0f730a089498bf39079264bd294f49a300df399dc04f3`  
		Last Modified: Thu, 11 Aug 2016 17:36:31 GMT  
		Size: 106.7 MB (106678864 bytes)

## `glassfish:4.1`

```console
$ docker pull glassfish@sha256:50d6081ae0285d35cf589e4af5eeb3d146f2dcd64e19bb3c92c002a53814a05c
```

-	Platforms:
	-	linux; amd64

### `glassfish:4.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.1 MB (351096663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eec71077267fd5ef2226cbc06b005b85b3feef28e1562484d2c0f1dc6b9b77a`
-	Default Command: `["\/bin\/sh","-c","asadmin start-domain --verbose"]`

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
# Thu, 11 Aug 2016 17:34:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Thu, 11 Aug 2016 17:34:50 GMT
ENV GLASSFISH_HOME=/usr/local/glassfish4
# Thu, 11 Aug 2016 17:34:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-8-openjdk-amd64/bin:/usr/local/glassfish4/bin
# Thu, 11 Aug 2016 17:35:55 GMT
RUN apt-get update &&             apt-get install -y curl unzip zip inotify-tools &&             rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:36:06 GMT
RUN curl -L -o /tmp/glassfish-4.1.zip http://download.java.net/glassfish/4.1/release/glassfish-4.1.zip &&             unzip /tmp/glassfish-4.1.zip -d /usr/local &&             rm -f /tmp/glassfish-4.1.zip
# Thu, 11 Aug 2016 17:36:07 GMT
EXPOSE 4848/tcp 8080/tcp 8181/tcp
# Thu, 11 Aug 2016 17:36:08 GMT
WORKDIR /usr/local/glassfish4
# Thu, 11 Aug 2016 17:36:09 GMT
CMD ["/bin/sh" "-c" "asadmin start-domain --verbose"]
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
	-	`sha256:22c45aff491831ad8caa645c639cec9661a3bc7b09b7db54b2f4dddeeeb0c3c9`  
		Last Modified: Thu, 11 Aug 2016 17:36:20 GMT  
		Size: 1.1 MB (1080426 bytes)
	-	`sha256:66747d3b7fd143e7a9d0f730a089498bf39079264bd294f49a300df399dc04f3`  
		Last Modified: Thu, 11 Aug 2016 17:36:31 GMT  
		Size: 106.7 MB (106678864 bytes)

## `glassfish:latest`

```console
$ docker pull glassfish@sha256:f7ed06fd07744b7c8bfd79a4a8543674ecb1421019d6cd704ea391a1aeaf987b
```

-	Platforms:
	-	linux; amd64

### `glassfish:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.0 MB (351010151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4216584f50c35dd7a4b58463beeadad5e0d14ea88a9206ee5f64794ccb859e4`
-	Default Command: `["\/bin\/sh","-c","asadmin start-domain --verbose"]`

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
# Fri, 05 Aug 2016 22:06:47 GMT
ENV JAVA_VERSION=8u91
# Fri, 05 Aug 2016 22:06:48 GMT
ENV JAVA_DEBIAN_VERSION=8u91-b14-1~bpo8+1
# Fri, 05 Aug 2016 22:06:48 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 05 Aug 2016 22:08:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 05 Aug 2016 22:08:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 Aug 2016 17:42:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Mon, 08 Aug 2016 17:42:20 GMT
ENV GLASSFISH_HOME=/usr/local/glassfish4
# Mon, 08 Aug 2016 17:42:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-8-openjdk-amd64/bin:/usr/local/glassfish4/bin
# Mon, 08 Aug 2016 17:43:22 GMT
RUN apt-get update &&             apt-get install -y curl unzip zip inotify-tools &&             rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 17:43:36 GMT
RUN curl -L -o /tmp/glassfish-4.1.zip http://download.java.net/glassfish/4.1/release/glassfish-4.1.zip &&             unzip /tmp/glassfish-4.1.zip -d /usr/local &&             rm -f /tmp/glassfish-4.1.zip
# Mon, 08 Aug 2016 17:43:37 GMT
EXPOSE 4848/tcp 8080/tcp 8181/tcp
# Mon, 08 Aug 2016 17:43:37 GMT
WORKDIR /usr/local/glassfish4
# Mon, 08 Aug 2016 17:43:38 GMT
CMD ["/bin/sh" "-c" "asadmin start-domain --verbose"]
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
	-	`sha256:b987bd349aa094960d32b6cf01f28604a595155ff3f6e9ad4262e4b3eba480d7`  
		Last Modified: Fri, 05 Aug 2016 22:17:58 GMT  
		Size: 130.0 MB (129984944 bytes)
	-	`sha256:cc07342899764251d877aeb04dd94a665b46ef2422afda45ad2b044d66d2dfe4`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 284.3 KB (284348 bytes)
	-	`sha256:4531ce0c5588ccded98c31b07797f7440add8afaaa0624c646dbba92b39baee4`  
		Last Modified: Mon, 08 Aug 2016 17:43:49 GMT  
		Size: 1.1 MB (1080324 bytes)
	-	`sha256:d1f098af690ebc104c1926aac54bfcfba91cc5262511bfe8cf038ff0187aa071`  
		Last Modified: Mon, 08 Aug 2016 17:44:00 GMT  
		Size: 106.7 MB (106678877 bytes)
