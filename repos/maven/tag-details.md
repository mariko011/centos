<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `maven`

-	[`maven:3.3.9-jdk-7`](#maven339-jdk-7)
-	[`maven:3.3-jdk-7`](#maven33-jdk-7)
-	[`maven:3-jdk-7`](#maven3-jdk-7)
-	[`maven:3.3.9-jdk-7-onbuild`](#maven339-jdk-7-onbuild)
-	[`maven:3.3-jdk-7-onbuild`](#maven33-jdk-7-onbuild)
-	[`maven:3-jdk-7-onbuild`](#maven3-jdk-7-onbuild)
-	[`maven:3.3.9-jdk-7-alpine`](#maven339-jdk-7-alpine)
-	[`maven:3.3-jdk-7-alpine`](#maven33-jdk-7-alpine)
-	[`maven:3-jdk-7-alpine`](#maven3-jdk-7-alpine)
-	[`maven:3.3.9-jdk-7-onbuild-alpine`](#maven339-jdk-7-onbuild-alpine)
-	[`maven:3.3-jdk-7-onbuild-alpine`](#maven33-jdk-7-onbuild-alpine)
-	[`maven:3-jdk-7-onbuild-alpine`](#maven3-jdk-7-onbuild-alpine)
-	[`maven:3.3.9-jdk-8`](#maven339-jdk-8)
-	[`maven:3.3.9`](#maven339)
-	[`maven:3.3-jdk-8`](#maven33-jdk-8)
-	[`maven:3.3`](#maven33)
-	[`maven:3-jdk-8`](#maven3-jdk-8)
-	[`maven:3`](#maven3)
-	[`maven:latest`](#mavenlatest)
-	[`maven:3.3.9-jdk-8-onbuild`](#maven339-jdk-8-onbuild)
-	[`maven:3.3.9-onbuild`](#maven339-onbuild)
-	[`maven:3.3-jdk-8-onbuild`](#maven33-jdk-8-onbuild)
-	[`maven:3.3-onbuild`](#maven33-onbuild)
-	[`maven:3-jdk-8-onbuild`](#maven3-jdk-8-onbuild)
-	[`maven:3-onbuild`](#maven3-onbuild)
-	[`maven:onbuild`](#mavenonbuild)
-	[`maven:3.3.9-jdk-8-alpine`](#maven339-jdk-8-alpine)
-	[`maven:3.3.9-alpine`](#maven339-alpine)
-	[`maven:3.3-jdk-8-alpine`](#maven33-jdk-8-alpine)
-	[`maven:3.3-alpine`](#maven33-alpine)
-	[`maven:3-jdk-8-alpine`](#maven3-jdk-8-alpine)
-	[`maven:3-alpine`](#maven3-alpine)
-	[`maven:alpine`](#mavenalpine)
-	[`maven:3.3.9-jdk-8-onbuild-alpine`](#maven339-jdk-8-onbuild-alpine)
-	[`maven:3.3.9-onbuild-alpine`](#maven339-onbuild-alpine)
-	[`maven:3.3-jdk-8-onbuild-alpine`](#maven33-jdk-8-onbuild-alpine)
-	[`maven:3.3-onbuild-alpine`](#maven33-onbuild-alpine)
-	[`maven:3-jdk-8-onbuild-alpine`](#maven3-jdk-8-onbuild-alpine)
-	[`maven:3-onbuild-alpine`](#maven3-onbuild-alpine)
-	[`maven:onbuild-alpine`](#mavenonbuild-alpine)
-	[`maven:3.3.9-jdk-9`](#maven339-jdk-9)
-	[`maven:3.3-jdk-9`](#maven33-jdk-9)
-	[`maven:3-jdk-9`](#maven3-jdk-9)
-	[`maven:3.3.9-jdk-9-onbuild`](#maven339-jdk-9-onbuild)
-	[`maven:3.3-jdk-9-onbuild`](#maven33-jdk-9-onbuild)
-	[`maven:3-jdk-9-onbuild`](#maven3-jdk-9-onbuild)

## `maven:3.3.9-jdk-7`

```console
$ docker pull maven@sha256:d6864df576642804b3c4a87d339a44a6bf31bdec63ba23f70be57ae07941a133
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261185026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f69af923d821010a110561b090d570be1feaa1f42f8ca515737e99ba87539516`
-	Default Command: `["mvn"]`

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
# Thu, 11 Aug 2016 18:28:14 GMT
ENV MAVEN_VERSION=3.3.9
# Thu, 11 Aug 2016 18:28:16 GMT
RUN mkdir -p /usr/share/maven   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 Aug 2016 18:28:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 Aug 2016 18:28:17 GMT
VOLUME [/root/.m2]
# Thu, 11 Aug 2016 18:28:18 GMT
CMD ["mvn"]
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
	-	`sha256:46d812bf96928ebc7236d1e9710957d7e2d7326aa1cffd7a80a84adcc944770f`  
		Last Modified: Thu, 11 Aug 2016 18:28:34 GMT  
		Size: 8.6 MB (8598797 bytes)

## `maven:3.3-jdk-7`

```console
$ docker pull maven@sha256:d6864df576642804b3c4a87d339a44a6bf31bdec63ba23f70be57ae07941a133
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261185026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f69af923d821010a110561b090d570be1feaa1f42f8ca515737e99ba87539516`
-	Default Command: `["mvn"]`

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
# Thu, 11 Aug 2016 18:28:14 GMT
ENV MAVEN_VERSION=3.3.9
# Thu, 11 Aug 2016 18:28:16 GMT
RUN mkdir -p /usr/share/maven   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 Aug 2016 18:28:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 Aug 2016 18:28:17 GMT
VOLUME [/root/.m2]
# Thu, 11 Aug 2016 18:28:18 GMT
CMD ["mvn"]
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
	-	`sha256:46d812bf96928ebc7236d1e9710957d7e2d7326aa1cffd7a80a84adcc944770f`  
		Last Modified: Thu, 11 Aug 2016 18:28:34 GMT  
		Size: 8.6 MB (8598797 bytes)

## `maven:3-jdk-7`

```console
$ docker pull maven@sha256:d6864df576642804b3c4a87d339a44a6bf31bdec63ba23f70be57ae07941a133
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261185026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f69af923d821010a110561b090d570be1feaa1f42f8ca515737e99ba87539516`
-	Default Command: `["mvn"]`

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
# Thu, 11 Aug 2016 18:28:14 GMT
ENV MAVEN_VERSION=3.3.9
# Thu, 11 Aug 2016 18:28:16 GMT
RUN mkdir -p /usr/share/maven   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 Aug 2016 18:28:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 Aug 2016 18:28:17 GMT
VOLUME [/root/.m2]
# Thu, 11 Aug 2016 18:28:18 GMT
CMD ["mvn"]
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
	-	`sha256:46d812bf96928ebc7236d1e9710957d7e2d7326aa1cffd7a80a84adcc944770f`  
		Last Modified: Thu, 11 Aug 2016 18:28:34 GMT  
		Size: 8.6 MB (8598797 bytes)

## `maven:3.3.9-jdk-7-onbuild`

```console
$ docker pull maven@sha256:db987fd5d3e1c9d07d7196d94466a171517b4005cdf9e5649d4114fe0cd3f4ab
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-7-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261186289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cadd8ff6f21d66228afa82cc50ea23d0c0e2a6f0fd8635f80d842d021ee22ef1`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 17 Aug 2016 19:39:03 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 17 Aug 2016 19:39:04 GMT
ARG USER_HOME_DIR=/root
# Wed, 17 Aug 2016 19:39:06 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 17 Aug 2016 19:39:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 17 Aug 2016 19:39:08 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 17 Aug 2016 19:39:10 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh
# Wed, 17 Aug 2016 19:39:11 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/
# Wed, 17 Aug 2016 19:39:12 GMT
VOLUME [/root/.m2]
# Wed, 17 Aug 2016 19:39:13 GMT
ENTRYPOINT &{["/usr/local/bin/mvn-entrypoint.sh"]}
# Wed, 17 Aug 2016 19:39:14 GMT
CMD ["mvn"]
# Wed, 17 Aug 2016 19:39:23 GMT
RUN mkdir -p /usr/src/app
# Wed, 17 Aug 2016 19:39:24 GMT
WORKDIR /usr/src/app
# Wed, 17 Aug 2016 19:39:25 GMT
ONBUILD ADD . /usr/src/app
# Wed, 17 Aug 2016 19:39:26 GMT
ONBUILD RUN mvn install
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
	-	`sha256:b91df8c05571365c5771c92b77f8fa5367d037ee6a1871eb2a3d8aaefb58a593`  
		Last Modified: Wed, 17 Aug 2016 19:42:10 GMT  
		Size: 8.6 MB (8598861 bytes)
	-	`sha256:79ca13583f0208ee12e2b9338a4e8fe2ebeee0f1448b2c9e9ad0d30e05196c1e`  
		Last Modified: Wed, 17 Aug 2016 19:42:10 GMT  
		Size: 692.0 B
	-	`sha256:9aad738f48439e20fe8ab5421fc9077e46de84ac1d4514b6e57b2b8a83115a99`  
		Last Modified: Wed, 17 Aug 2016 19:42:09 GMT  
		Size: 350.0 B
	-	`sha256:c587e74e653819223951504f9b8fc2036c9820e4e7db6c9dc2aa8aea68ad0f86`  
		Last Modified: Wed, 17 Aug 2016 19:42:54 GMT  
		Size: 157.0 B

## `maven:3.3-jdk-7-onbuild`

```console
$ docker pull maven@sha256:1720db676fdd5d77f18da54ffe8318f48609cdaa57d040877d5fd5726645cb69
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-7-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261185184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:125fba063257cd64a45bb99394674e5d1054a32a79d22477d0292d2eafbfa593`
-	Default Command: `["mvn"]`

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
# Thu, 11 Aug 2016 18:28:14 GMT
ENV MAVEN_VERSION=3.3.9
# Thu, 11 Aug 2016 18:28:16 GMT
RUN mkdir -p /usr/share/maven   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 Aug 2016 18:28:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 Aug 2016 18:28:17 GMT
VOLUME [/root/.m2]
# Thu, 11 Aug 2016 18:28:18 GMT
CMD ["mvn"]
# Thu, 11 Aug 2016 18:30:46 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 Aug 2016 18:30:47 GMT
WORKDIR /usr/src/app
# Thu, 11 Aug 2016 18:30:48 GMT
ONBUILD ADD . /usr/src/app
# Thu, 11 Aug 2016 18:30:49 GMT
ONBUILD RUN mvn install
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
	-	`sha256:46d812bf96928ebc7236d1e9710957d7e2d7326aa1cffd7a80a84adcc944770f`  
		Last Modified: Thu, 11 Aug 2016 18:28:34 GMT  
		Size: 8.6 MB (8598797 bytes)
	-	`sha256:b649137263107e05f5c05020b7619366f94a14a49e34a2784bf0c7481c0b1e2b`  
		Last Modified: Thu, 11 Aug 2016 18:31:03 GMT  
		Size: 158.0 B

## `maven:3-jdk-7-onbuild`

```console
$ docker pull maven@sha256:1720db676fdd5d77f18da54ffe8318f48609cdaa57d040877d5fd5726645cb69
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261185184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:125fba063257cd64a45bb99394674e5d1054a32a79d22477d0292d2eafbfa593`
-	Default Command: `["mvn"]`

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
# Thu, 11 Aug 2016 18:28:14 GMT
ENV MAVEN_VERSION=3.3.9
# Thu, 11 Aug 2016 18:28:16 GMT
RUN mkdir -p /usr/share/maven   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 Aug 2016 18:28:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 Aug 2016 18:28:17 GMT
VOLUME [/root/.m2]
# Thu, 11 Aug 2016 18:28:18 GMT
CMD ["mvn"]
# Thu, 11 Aug 2016 18:30:46 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 Aug 2016 18:30:47 GMT
WORKDIR /usr/src/app
# Thu, 11 Aug 2016 18:30:48 GMT
ONBUILD ADD . /usr/src/app
# Thu, 11 Aug 2016 18:30:49 GMT
ONBUILD RUN mvn install
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
	-	`sha256:46d812bf96928ebc7236d1e9710957d7e2d7326aa1cffd7a80a84adcc944770f`  
		Last Modified: Thu, 11 Aug 2016 18:28:34 GMT  
		Size: 8.6 MB (8598797 bytes)
	-	`sha256:b649137263107e05f5c05020b7619366f94a14a49e34a2784bf0c7481c0b1e2b`  
		Last Modified: Thu, 11 Aug 2016 18:31:03 GMT  
		Size: 158.0 B

## `maven:3.3.9-jdk-7-alpine`

**does not exist** (yet?)

## `maven:3.3-jdk-7-alpine`

**does not exist** (yet?)

## `maven:3-jdk-7-alpine`

**does not exist** (yet?)

## `maven:3.3.9-jdk-7-onbuild-alpine`

```console
$ docker pull maven@sha256:76d45dfe706f7ccab39429ecb55a417c16b27bf23ec237e667b29247951a1803
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-7-onbuild-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.6 MB (89573650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6e46720ce27f2072ec3930bbc80e5aeb3f2e3f132b3aefc4226929b527e8f61`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 23 Jun 2016 19:55:18 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in /
# Thu, 23 Jun 2016 20:34:53 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jun 2016 20:34:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 23 Jun 2016 20:34:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Thu, 07 Jul 2016 19:04:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 07 Jul 2016 19:04:28 GMT
ENV JAVA_VERSION=7u91
# Thu, 07 Jul 2016 19:04:28 GMT
ENV JAVA_ALPINE_VERSION=7.91.2.6.3-r2
# Thu, 07 Jul 2016 19:04:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 17 Aug 2016 19:39:32 GMT
RUN apk add --no-cache curl tar bash
# Wed, 17 Aug 2016 19:39:37 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 17 Aug 2016 19:39:38 GMT
ARG USER_HOME_DIR=/root
# Wed, 17 Aug 2016 19:39:41 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 17 Aug 2016 19:39:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 17 Aug 2016 19:39:43 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 17 Aug 2016 19:39:44 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh
# Wed, 17 Aug 2016 19:39:52 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/
# Wed, 17 Aug 2016 19:39:53 GMT
VOLUME [/root/.m2]
# Wed, 17 Aug 2016 19:39:54 GMT
ENTRYPOINT &{["/usr/local/bin/mvn-entrypoint.sh"]}
# Wed, 17 Aug 2016 19:39:55 GMT
CMD ["mvn"]
# Wed, 17 Aug 2016 19:39:58 GMT
RUN mkdir -p /usr/src/app
# Wed, 17 Aug 2016 19:39:59 GMT
WORKDIR /usr/src/app
# Wed, 17 Aug 2016 19:40:00 GMT
ONBUILD ADD . /usr/src/app
# Wed, 17 Aug 2016 19:40:01 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B
	-	`sha256:4f289d9816581c1109ebadddd142aeba536b7b854a6be789a3a8ea9be7c07021`  
		Last Modified: Thu, 07 Jul 2016 19:08:18 GMT  
		Size: 76.6 MB (76600018 bytes)
	-	`sha256:7c8e452cfed35cb6111ee6d6ee4a3c50f4fc8f7b0bf8bc8fc17329bd156ded90`  
		Last Modified: Wed, 17 Aug 2016 19:43:37 GMT  
		Size: 2.1 MB (2063088 bytes)
	-	`sha256:e56749227c29a9e1b9ac0d0d14efb6179badd3a6ec2ca07dfd728486e4e65b95`  
		Last Modified: Wed, 17 Aug 2016 19:43:38 GMT  
		Size: 8.6 MB (8598836 bytes)
	-	`sha256:4c1cbca6dcf45774dabe0608fd7c176c6f33e7601dfc510969df484ce76328ea`  
		Last Modified: Wed, 17 Aug 2016 19:43:36 GMT  
		Size: 686.0 B
	-	`sha256:86a00dbcc55ebb320d5a0a100cff2dba05fe08bbc7a55cf746c9c55185f5b0e3`  
		Last Modified: Wed, 17 Aug 2016 19:43:36 GMT  
		Size: 348.0 B
	-	`sha256:23be3520c46462a4d20ba796d5edb451743710ff2881f97d10c74baf873321d0`  
		Last Modified: Wed, 17 Aug 2016 19:44:20 GMT  
		Size: 158.0 B

## `maven:3.3-jdk-7-onbuild-alpine`

**does not exist** (yet?)

## `maven:3-jdk-7-onbuild-alpine`

**does not exist** (yet?)

## `maven:3.3.9-jdk-8`

```console
$ docker pull maven@sha256:8ae9c3f7a4e772690b8daa3b98b4745f7a18eb921ff4146556eed2eace02f62a
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-8` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251936168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:510d0653eda57cb040717ca07c4fe2d67f6162447220adfa8cb73d0b765cb3cf`
-	Default Command: `["mvn"]`

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
# Thu, 11 Aug 2016 18:31:39 GMT
ENV MAVEN_VERSION=3.3.9
# Thu, 11 Aug 2016 18:31:43 GMT
RUN mkdir -p /usr/share/maven   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 Aug 2016 18:31:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 Aug 2016 18:31:46 GMT
VOLUME [/root/.m2]
# Thu, 11 Aug 2016 18:31:47 GMT
CMD ["mvn"]
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
	-	`sha256:d483721ffa890a86322c3ab1dfe326576088d45a61dd541b7c8faf7f326f467e`  
		Last Modified: Thu, 11 Aug 2016 18:32:02 GMT  
		Size: 8.6 MB (8598795 bytes)

## `maven:3.3.9`

```console
$ docker pull maven@sha256:8ae9c3f7a4e772690b8daa3b98b4745f7a18eb921ff4146556eed2eace02f62a
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251936168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:510d0653eda57cb040717ca07c4fe2d67f6162447220adfa8cb73d0b765cb3cf`
-	Default Command: `["mvn"]`

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
# Thu, 11 Aug 2016 18:31:39 GMT
ENV MAVEN_VERSION=3.3.9
# Thu, 11 Aug 2016 18:31:43 GMT
RUN mkdir -p /usr/share/maven   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 Aug 2016 18:31:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 Aug 2016 18:31:46 GMT
VOLUME [/root/.m2]
# Thu, 11 Aug 2016 18:31:47 GMT
CMD ["mvn"]
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
	-	`sha256:d483721ffa890a86322c3ab1dfe326576088d45a61dd541b7c8faf7f326f467e`  
		Last Modified: Thu, 11 Aug 2016 18:32:02 GMT  
		Size: 8.6 MB (8598795 bytes)

## `maven:3.3-jdk-8`

```console
$ docker pull maven@sha256:8ae9c3f7a4e772690b8daa3b98b4745f7a18eb921ff4146556eed2eace02f62a
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-8` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251936168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:510d0653eda57cb040717ca07c4fe2d67f6162447220adfa8cb73d0b765cb3cf`
-	Default Command: `["mvn"]`

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
# Thu, 11 Aug 2016 18:31:39 GMT
ENV MAVEN_VERSION=3.3.9
# Thu, 11 Aug 2016 18:31:43 GMT
RUN mkdir -p /usr/share/maven   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 Aug 2016 18:31:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 Aug 2016 18:31:46 GMT
VOLUME [/root/.m2]
# Thu, 11 Aug 2016 18:31:47 GMT
CMD ["mvn"]
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
	-	`sha256:d483721ffa890a86322c3ab1dfe326576088d45a61dd541b7c8faf7f326f467e`  
		Last Modified: Thu, 11 Aug 2016 18:32:02 GMT  
		Size: 8.6 MB (8598795 bytes)

## `maven:3.3`

```console
$ docker pull maven@sha256:a5283092002ec9739819c9b392203103346dfc163586ff46c30ead13b60cc436
```

-	Platforms:
	-	linux; amd64

### `maven:3.3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251937265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9a8e0b1f015f177707e9419d2b6ad630f53bc1068d91065b1c3947107f108b9`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 17 Aug 2016 19:40:09 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 17 Aug 2016 19:40:10 GMT
ARG USER_HOME_DIR=/root
# Wed, 17 Aug 2016 19:40:13 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 17 Aug 2016 19:40:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 17 Aug 2016 19:40:15 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 17 Aug 2016 19:40:23 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh
# Wed, 17 Aug 2016 19:40:25 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/
# Wed, 17 Aug 2016 19:40:26 GMT
VOLUME [/root/.m2]
# Wed, 17 Aug 2016 19:40:26 GMT
ENTRYPOINT &{["/usr/local/bin/mvn-entrypoint.sh"]}
# Wed, 17 Aug 2016 19:40:27 GMT
CMD ["mvn"]
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
	-	`sha256:c4f25a7091e79de2add92836a554263f476300e8bdfebb0b5e202c741cd907a6`  
		Last Modified: Wed, 17 Aug 2016 19:45:33 GMT  
		Size: 8.6 MB (8598853 bytes)
	-	`sha256:b2c79660917fb74b01b567555347f9f7443d351a1a6c93d0bc1bd3c252e442f0`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 691.0 B
	-	`sha256:75c9d0ac3f73514e20309cd8ab4ca66f541aaf22bb82559f7b4446119dd24125`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 348.0 B

## `maven:3-jdk-8`

```console
$ docker pull maven@sha256:a5283092002ec9739819c9b392203103346dfc163586ff46c30ead13b60cc436
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251937265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9a8e0b1f015f177707e9419d2b6ad630f53bc1068d91065b1c3947107f108b9`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 17 Aug 2016 19:40:09 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 17 Aug 2016 19:40:10 GMT
ARG USER_HOME_DIR=/root
# Wed, 17 Aug 2016 19:40:13 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 17 Aug 2016 19:40:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 17 Aug 2016 19:40:15 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 17 Aug 2016 19:40:23 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh
# Wed, 17 Aug 2016 19:40:25 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/
# Wed, 17 Aug 2016 19:40:26 GMT
VOLUME [/root/.m2]
# Wed, 17 Aug 2016 19:40:26 GMT
ENTRYPOINT &{["/usr/local/bin/mvn-entrypoint.sh"]}
# Wed, 17 Aug 2016 19:40:27 GMT
CMD ["mvn"]
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
	-	`sha256:c4f25a7091e79de2add92836a554263f476300e8bdfebb0b5e202c741cd907a6`  
		Last Modified: Wed, 17 Aug 2016 19:45:33 GMT  
		Size: 8.6 MB (8598853 bytes)
	-	`sha256:b2c79660917fb74b01b567555347f9f7443d351a1a6c93d0bc1bd3c252e442f0`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 691.0 B
	-	`sha256:75c9d0ac3f73514e20309cd8ab4ca66f541aaf22bb82559f7b4446119dd24125`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 348.0 B

## `maven:3`

```console
$ docker pull maven@sha256:8ae9c3f7a4e772690b8daa3b98b4745f7a18eb921ff4146556eed2eace02f62a
```

-	Platforms:
	-	linux; amd64

### `maven:3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251936168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:510d0653eda57cb040717ca07c4fe2d67f6162447220adfa8cb73d0b765cb3cf`
-	Default Command: `["mvn"]`

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
# Thu, 11 Aug 2016 18:31:39 GMT
ENV MAVEN_VERSION=3.3.9
# Thu, 11 Aug 2016 18:31:43 GMT
RUN mkdir -p /usr/share/maven   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 Aug 2016 18:31:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 Aug 2016 18:31:46 GMT
VOLUME [/root/.m2]
# Thu, 11 Aug 2016 18:31:47 GMT
CMD ["mvn"]
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
	-	`sha256:d483721ffa890a86322c3ab1dfe326576088d45a61dd541b7c8faf7f326f467e`  
		Last Modified: Thu, 11 Aug 2016 18:32:02 GMT  
		Size: 8.6 MB (8598795 bytes)

## `maven:latest`

```console
$ docker pull maven@sha256:8ae9c3f7a4e772690b8daa3b98b4745f7a18eb921ff4146556eed2eace02f62a
```

-	Platforms:
	-	linux; amd64

### `maven:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251936168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:510d0653eda57cb040717ca07c4fe2d67f6162447220adfa8cb73d0b765cb3cf`
-	Default Command: `["mvn"]`

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
# Thu, 11 Aug 2016 18:31:39 GMT
ENV MAVEN_VERSION=3.3.9
# Thu, 11 Aug 2016 18:31:43 GMT
RUN mkdir -p /usr/share/maven   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 11 Aug 2016 18:31:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 11 Aug 2016 18:31:46 GMT
VOLUME [/root/.m2]
# Thu, 11 Aug 2016 18:31:47 GMT
CMD ["mvn"]
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
	-	`sha256:d483721ffa890a86322c3ab1dfe326576088d45a61dd541b7c8faf7f326f467e`  
		Last Modified: Thu, 11 Aug 2016 18:32:02 GMT  
		Size: 8.6 MB (8598795 bytes)

## `maven:3.3.9-jdk-8-onbuild`

```console
$ docker pull maven@sha256:affee0a15ad7809fdc274edaa25afa2b31931f2b9731f813d869c9145c8a4ae6
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-8-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251937423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f16c89b365354356b91244d156609c54fb3832dca29ef4c00d18bb89d4f1ab1`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 17 Aug 2016 19:40:09 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 17 Aug 2016 19:40:10 GMT
ARG USER_HOME_DIR=/root
# Wed, 17 Aug 2016 19:40:13 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 17 Aug 2016 19:40:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 17 Aug 2016 19:40:15 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 17 Aug 2016 19:40:23 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh
# Wed, 17 Aug 2016 19:40:25 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/
# Wed, 17 Aug 2016 19:40:26 GMT
VOLUME [/root/.m2]
# Wed, 17 Aug 2016 19:40:26 GMT
ENTRYPOINT &{["/usr/local/bin/mvn-entrypoint.sh"]}
# Wed, 17 Aug 2016 19:40:27 GMT
CMD ["mvn"]
# Wed, 17 Aug 2016 19:40:30 GMT
RUN mkdir -p /usr/src/app
# Wed, 17 Aug 2016 19:40:38 GMT
WORKDIR /usr/src/app
# Wed, 17 Aug 2016 19:40:39 GMT
ONBUILD ADD . /usr/src/app
# Wed, 17 Aug 2016 19:40:40 GMT
ONBUILD RUN mvn install
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
	-	`sha256:c4f25a7091e79de2add92836a554263f476300e8bdfebb0b5e202c741cd907a6`  
		Last Modified: Wed, 17 Aug 2016 19:45:33 GMT  
		Size: 8.6 MB (8598853 bytes)
	-	`sha256:b2c79660917fb74b01b567555347f9f7443d351a1a6c93d0bc1bd3c252e442f0`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 691.0 B
	-	`sha256:75c9d0ac3f73514e20309cd8ab4ca66f541aaf22bb82559f7b4446119dd24125`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 348.0 B
	-	`sha256:683c37f6cfa9aa8639c51dbc53f2072ac168fda469ef503e272e8bbaf3c69a5b`  
		Last Modified: Wed, 17 Aug 2016 19:47:13 GMT  
		Size: 158.0 B

## `maven:3.3.9-onbuild`

```console
$ docker pull maven@sha256:019a6e247ca1c10c73422648a644b267554063684fab5f74441e31104709549f
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251951267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:399ad9fa777d50079b08b3454dae1b275d56aefbfe89ae36f4b0b307c019af2d`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 09 Jun 2016 21:28:42 GMT
ADD file:76679eeb94129df23c99013487d6b6bd779d2107bf07d194a524fdbb6a961530 in /
# Thu, 09 Jun 2016 21:28:43 GMT
CMD ["/bin/bash"]
# Thu, 09 Jun 2016 21:35:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 21:37:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 22:05:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 22:10:09 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Thu, 09 Jun 2016 22:10:09 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jun 2016 22:10:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 09 Jun 2016 22:10:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Thu, 09 Jun 2016 22:10:11 GMT
ENV JAVA_VERSION=8u91
# Thu, 09 Jun 2016 22:10:11 GMT
ENV JAVA_DEBIAN_VERSION=8u91-b14-1~bpo8+1
# Thu, 09 Jun 2016 22:10:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Thu, 09 Jun 2016 22:12:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 09 Jun 2016 22:12:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 10 Jun 2016 21:52:14 GMT
ENV MAVEN_VERSION=3.3.9
# Fri, 10 Jun 2016 21:52:16 GMT
RUN mkdir -p /usr/share/maven   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 10 Jun 2016 21:52:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 10 Jun 2016 21:52:17 GMT
VOLUME [/root/.m2]
# Fri, 10 Jun 2016 21:52:17 GMT
CMD ["mvn"]
# Fri, 10 Jun 2016 21:52:19 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Jun 2016 21:52:19 GMT
WORKDIR /usr/src/app
# Fri, 10 Jun 2016 21:52:19 GMT
ONBUILD ADD . /usr/src/app
# Fri, 10 Jun 2016 21:52:20 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:5c90d4a2d1a8dfffd05ff2dd659923f0ca2d843b5e45d030e17abbcd06a11b5b`  
		Last Modified: Thu, 09 Jun 2016 21:30:47 GMT  
		Size: 51.4 MB (51352535 bytes)
	-	`sha256:ab30c63719b10dd434ddbe896879bd9b637fe4e16749a94d3dc827450dc2a437`  
		Last Modified: Thu, 09 Jun 2016 21:46:24 GMT  
		Size: 18.5 MB (18547219 bytes)
	-	`sha256:c6072700a24252bd71f6c5d2cabf5978ddf324a959b05bad417d8b3789f8df33`  
		Last Modified: Thu, 09 Jun 2016 21:46:52 GMT  
		Size: 42.5 MB (42525371 bytes)
	-	`sha256:5f444d0704271a846e0b83af62071bc825052d6eabba96121bc0acda9c8f9e64`  
		Last Modified: Thu, 09 Jun 2016 22:17:38 GMT  
		Size: 622.3 KB (622260 bytes)
	-	`sha256:620b5227cf380167d746f024d97b53f26fafcbd253df4cf56b3b3a056bf12ae1`  
		Last Modified: Thu, 09 Jun 2016 22:20:33 GMT  
		Size: 219.0 B
	-	`sha256:3cfd33220efaaad496080e9fdb124ddb9ba07742852c2db816c9870fe2e10c2a`  
		Last Modified: Thu, 09 Jun 2016 22:20:33 GMT  
		Size: 241.0 B
	-	`sha256:864a98a84dd2bba52cf57d13161517ee01e2966e72c3ac842c6a3d49c07dcb37`  
		Last Modified: Thu, 09 Jun 2016 22:21:03 GMT  
		Size: 130.0 MB (130020091 bytes)
	-	`sha256:734cc28150de3e42c9e581aa1d7da3f378fcde2a00719a2d42ec376519050365`  
		Last Modified: Thu, 09 Jun 2016 22:20:34 GMT  
		Size: 284.4 KB (284370 bytes)
	-	`sha256:2503296da5416749b1c8c7e79b0ddc06beabf7fc363eeb30de4c208ddc9f1d5a`  
		Last Modified: Mon, 27 Jun 2016 16:58:47 GMT  
		Size: 8.6 MB (8598802 bytes)
	-	`sha256:be2efd3cf3b62e52312cacde6db0dd1c96035bda7e3b7c811fbef1eb70440744`  
		Last Modified: Mon, 27 Jun 2016 16:58:45 GMT  
		Size: 159.0 B

## `maven:3.3-jdk-8-onbuild`

```console
$ docker pull maven@sha256:019a6e247ca1c10c73422648a644b267554063684fab5f74441e31104709549f
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-8-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251951267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:399ad9fa777d50079b08b3454dae1b275d56aefbfe89ae36f4b0b307c019af2d`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 09 Jun 2016 21:28:42 GMT
ADD file:76679eeb94129df23c99013487d6b6bd779d2107bf07d194a524fdbb6a961530 in /
# Thu, 09 Jun 2016 21:28:43 GMT
CMD ["/bin/bash"]
# Thu, 09 Jun 2016 21:35:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 21:37:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 22:05:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 22:10:09 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Thu, 09 Jun 2016 22:10:09 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jun 2016 22:10:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 09 Jun 2016 22:10:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Thu, 09 Jun 2016 22:10:11 GMT
ENV JAVA_VERSION=8u91
# Thu, 09 Jun 2016 22:10:11 GMT
ENV JAVA_DEBIAN_VERSION=8u91-b14-1~bpo8+1
# Thu, 09 Jun 2016 22:10:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Thu, 09 Jun 2016 22:12:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 09 Jun 2016 22:12:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 10 Jun 2016 21:52:14 GMT
ENV MAVEN_VERSION=3.3.9
# Fri, 10 Jun 2016 21:52:16 GMT
RUN mkdir -p /usr/share/maven   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 10 Jun 2016 21:52:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 10 Jun 2016 21:52:17 GMT
VOLUME [/root/.m2]
# Fri, 10 Jun 2016 21:52:17 GMT
CMD ["mvn"]
# Fri, 10 Jun 2016 21:52:19 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Jun 2016 21:52:19 GMT
WORKDIR /usr/src/app
# Fri, 10 Jun 2016 21:52:19 GMT
ONBUILD ADD . /usr/src/app
# Fri, 10 Jun 2016 21:52:20 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:5c90d4a2d1a8dfffd05ff2dd659923f0ca2d843b5e45d030e17abbcd06a11b5b`  
		Last Modified: Thu, 09 Jun 2016 21:30:47 GMT  
		Size: 51.4 MB (51352535 bytes)
	-	`sha256:ab30c63719b10dd434ddbe896879bd9b637fe4e16749a94d3dc827450dc2a437`  
		Last Modified: Thu, 09 Jun 2016 21:46:24 GMT  
		Size: 18.5 MB (18547219 bytes)
	-	`sha256:c6072700a24252bd71f6c5d2cabf5978ddf324a959b05bad417d8b3789f8df33`  
		Last Modified: Thu, 09 Jun 2016 21:46:52 GMT  
		Size: 42.5 MB (42525371 bytes)
	-	`sha256:5f444d0704271a846e0b83af62071bc825052d6eabba96121bc0acda9c8f9e64`  
		Last Modified: Thu, 09 Jun 2016 22:17:38 GMT  
		Size: 622.3 KB (622260 bytes)
	-	`sha256:620b5227cf380167d746f024d97b53f26fafcbd253df4cf56b3b3a056bf12ae1`  
		Last Modified: Thu, 09 Jun 2016 22:20:33 GMT  
		Size: 219.0 B
	-	`sha256:3cfd33220efaaad496080e9fdb124ddb9ba07742852c2db816c9870fe2e10c2a`  
		Last Modified: Thu, 09 Jun 2016 22:20:33 GMT  
		Size: 241.0 B
	-	`sha256:864a98a84dd2bba52cf57d13161517ee01e2966e72c3ac842c6a3d49c07dcb37`  
		Last Modified: Thu, 09 Jun 2016 22:21:03 GMT  
		Size: 130.0 MB (130020091 bytes)
	-	`sha256:734cc28150de3e42c9e581aa1d7da3f378fcde2a00719a2d42ec376519050365`  
		Last Modified: Thu, 09 Jun 2016 22:20:34 GMT  
		Size: 284.4 KB (284370 bytes)
	-	`sha256:2503296da5416749b1c8c7e79b0ddc06beabf7fc363eeb30de4c208ddc9f1d5a`  
		Last Modified: Mon, 27 Jun 2016 16:58:47 GMT  
		Size: 8.6 MB (8598802 bytes)
	-	`sha256:be2efd3cf3b62e52312cacde6db0dd1c96035bda7e3b7c811fbef1eb70440744`  
		Last Modified: Mon, 27 Jun 2016 16:58:45 GMT  
		Size: 159.0 B

## `maven:3.3-onbuild`

```console
$ docker pull maven@sha256:019a6e247ca1c10c73422648a644b267554063684fab5f74441e31104709549f
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251951267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:399ad9fa777d50079b08b3454dae1b275d56aefbfe89ae36f4b0b307c019af2d`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 09 Jun 2016 21:28:42 GMT
ADD file:76679eeb94129df23c99013487d6b6bd779d2107bf07d194a524fdbb6a961530 in /
# Thu, 09 Jun 2016 21:28:43 GMT
CMD ["/bin/bash"]
# Thu, 09 Jun 2016 21:35:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 21:37:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 22:05:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 22:10:09 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Thu, 09 Jun 2016 22:10:09 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jun 2016 22:10:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 09 Jun 2016 22:10:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Thu, 09 Jun 2016 22:10:11 GMT
ENV JAVA_VERSION=8u91
# Thu, 09 Jun 2016 22:10:11 GMT
ENV JAVA_DEBIAN_VERSION=8u91-b14-1~bpo8+1
# Thu, 09 Jun 2016 22:10:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Thu, 09 Jun 2016 22:12:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 09 Jun 2016 22:12:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 10 Jun 2016 21:52:14 GMT
ENV MAVEN_VERSION=3.3.9
# Fri, 10 Jun 2016 21:52:16 GMT
RUN mkdir -p /usr/share/maven   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 10 Jun 2016 21:52:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 10 Jun 2016 21:52:17 GMT
VOLUME [/root/.m2]
# Fri, 10 Jun 2016 21:52:17 GMT
CMD ["mvn"]
# Fri, 10 Jun 2016 21:52:19 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Jun 2016 21:52:19 GMT
WORKDIR /usr/src/app
# Fri, 10 Jun 2016 21:52:19 GMT
ONBUILD ADD . /usr/src/app
# Fri, 10 Jun 2016 21:52:20 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:5c90d4a2d1a8dfffd05ff2dd659923f0ca2d843b5e45d030e17abbcd06a11b5b`  
		Last Modified: Thu, 09 Jun 2016 21:30:47 GMT  
		Size: 51.4 MB (51352535 bytes)
	-	`sha256:ab30c63719b10dd434ddbe896879bd9b637fe4e16749a94d3dc827450dc2a437`  
		Last Modified: Thu, 09 Jun 2016 21:46:24 GMT  
		Size: 18.5 MB (18547219 bytes)
	-	`sha256:c6072700a24252bd71f6c5d2cabf5978ddf324a959b05bad417d8b3789f8df33`  
		Last Modified: Thu, 09 Jun 2016 21:46:52 GMT  
		Size: 42.5 MB (42525371 bytes)
	-	`sha256:5f444d0704271a846e0b83af62071bc825052d6eabba96121bc0acda9c8f9e64`  
		Last Modified: Thu, 09 Jun 2016 22:17:38 GMT  
		Size: 622.3 KB (622260 bytes)
	-	`sha256:620b5227cf380167d746f024d97b53f26fafcbd253df4cf56b3b3a056bf12ae1`  
		Last Modified: Thu, 09 Jun 2016 22:20:33 GMT  
		Size: 219.0 B
	-	`sha256:3cfd33220efaaad496080e9fdb124ddb9ba07742852c2db816c9870fe2e10c2a`  
		Last Modified: Thu, 09 Jun 2016 22:20:33 GMT  
		Size: 241.0 B
	-	`sha256:864a98a84dd2bba52cf57d13161517ee01e2966e72c3ac842c6a3d49c07dcb37`  
		Last Modified: Thu, 09 Jun 2016 22:21:03 GMT  
		Size: 130.0 MB (130020091 bytes)
	-	`sha256:734cc28150de3e42c9e581aa1d7da3f378fcde2a00719a2d42ec376519050365`  
		Last Modified: Thu, 09 Jun 2016 22:20:34 GMT  
		Size: 284.4 KB (284370 bytes)
	-	`sha256:2503296da5416749b1c8c7e79b0ddc06beabf7fc363eeb30de4c208ddc9f1d5a`  
		Last Modified: Mon, 27 Jun 2016 16:58:47 GMT  
		Size: 8.6 MB (8598802 bytes)
	-	`sha256:be2efd3cf3b62e52312cacde6db0dd1c96035bda7e3b7c811fbef1eb70440744`  
		Last Modified: Mon, 27 Jun 2016 16:58:45 GMT  
		Size: 159.0 B

## `maven:3-jdk-8-onbuild`

```console
$ docker pull maven@sha256:019a6e247ca1c10c73422648a644b267554063684fab5f74441e31104709549f
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251951267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:399ad9fa777d50079b08b3454dae1b275d56aefbfe89ae36f4b0b307c019af2d`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 09 Jun 2016 21:28:42 GMT
ADD file:76679eeb94129df23c99013487d6b6bd779d2107bf07d194a524fdbb6a961530 in /
# Thu, 09 Jun 2016 21:28:43 GMT
CMD ["/bin/bash"]
# Thu, 09 Jun 2016 21:35:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 21:37:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 22:05:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 22:10:09 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Thu, 09 Jun 2016 22:10:09 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jun 2016 22:10:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 09 Jun 2016 22:10:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Thu, 09 Jun 2016 22:10:11 GMT
ENV JAVA_VERSION=8u91
# Thu, 09 Jun 2016 22:10:11 GMT
ENV JAVA_DEBIAN_VERSION=8u91-b14-1~bpo8+1
# Thu, 09 Jun 2016 22:10:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Thu, 09 Jun 2016 22:12:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 09 Jun 2016 22:12:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 10 Jun 2016 21:52:14 GMT
ENV MAVEN_VERSION=3.3.9
# Fri, 10 Jun 2016 21:52:16 GMT
RUN mkdir -p /usr/share/maven   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 10 Jun 2016 21:52:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 10 Jun 2016 21:52:17 GMT
VOLUME [/root/.m2]
# Fri, 10 Jun 2016 21:52:17 GMT
CMD ["mvn"]
# Fri, 10 Jun 2016 21:52:19 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Jun 2016 21:52:19 GMT
WORKDIR /usr/src/app
# Fri, 10 Jun 2016 21:52:19 GMT
ONBUILD ADD . /usr/src/app
# Fri, 10 Jun 2016 21:52:20 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:5c90d4a2d1a8dfffd05ff2dd659923f0ca2d843b5e45d030e17abbcd06a11b5b`  
		Last Modified: Thu, 09 Jun 2016 21:30:47 GMT  
		Size: 51.4 MB (51352535 bytes)
	-	`sha256:ab30c63719b10dd434ddbe896879bd9b637fe4e16749a94d3dc827450dc2a437`  
		Last Modified: Thu, 09 Jun 2016 21:46:24 GMT  
		Size: 18.5 MB (18547219 bytes)
	-	`sha256:c6072700a24252bd71f6c5d2cabf5978ddf324a959b05bad417d8b3789f8df33`  
		Last Modified: Thu, 09 Jun 2016 21:46:52 GMT  
		Size: 42.5 MB (42525371 bytes)
	-	`sha256:5f444d0704271a846e0b83af62071bc825052d6eabba96121bc0acda9c8f9e64`  
		Last Modified: Thu, 09 Jun 2016 22:17:38 GMT  
		Size: 622.3 KB (622260 bytes)
	-	`sha256:620b5227cf380167d746f024d97b53f26fafcbd253df4cf56b3b3a056bf12ae1`  
		Last Modified: Thu, 09 Jun 2016 22:20:33 GMT  
		Size: 219.0 B
	-	`sha256:3cfd33220efaaad496080e9fdb124ddb9ba07742852c2db816c9870fe2e10c2a`  
		Last Modified: Thu, 09 Jun 2016 22:20:33 GMT  
		Size: 241.0 B
	-	`sha256:864a98a84dd2bba52cf57d13161517ee01e2966e72c3ac842c6a3d49c07dcb37`  
		Last Modified: Thu, 09 Jun 2016 22:21:03 GMT  
		Size: 130.0 MB (130020091 bytes)
	-	`sha256:734cc28150de3e42c9e581aa1d7da3f378fcde2a00719a2d42ec376519050365`  
		Last Modified: Thu, 09 Jun 2016 22:20:34 GMT  
		Size: 284.4 KB (284370 bytes)
	-	`sha256:2503296da5416749b1c8c7e79b0ddc06beabf7fc363eeb30de4c208ddc9f1d5a`  
		Last Modified: Mon, 27 Jun 2016 16:58:47 GMT  
		Size: 8.6 MB (8598802 bytes)
	-	`sha256:be2efd3cf3b62e52312cacde6db0dd1c96035bda7e3b7c811fbef1eb70440744`  
		Last Modified: Mon, 27 Jun 2016 16:58:45 GMT  
		Size: 159.0 B

## `maven:3-onbuild`

```console
$ docker pull maven@sha256:019a6e247ca1c10c73422648a644b267554063684fab5f74441e31104709549f
```

-	Platforms:
	-	linux; amd64

### `maven:3-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251951267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:399ad9fa777d50079b08b3454dae1b275d56aefbfe89ae36f4b0b307c019af2d`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 09 Jun 2016 21:28:42 GMT
ADD file:76679eeb94129df23c99013487d6b6bd779d2107bf07d194a524fdbb6a961530 in /
# Thu, 09 Jun 2016 21:28:43 GMT
CMD ["/bin/bash"]
# Thu, 09 Jun 2016 21:35:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 21:37:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 22:05:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 22:10:09 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Thu, 09 Jun 2016 22:10:09 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jun 2016 22:10:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 09 Jun 2016 22:10:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Thu, 09 Jun 2016 22:10:11 GMT
ENV JAVA_VERSION=8u91
# Thu, 09 Jun 2016 22:10:11 GMT
ENV JAVA_DEBIAN_VERSION=8u91-b14-1~bpo8+1
# Thu, 09 Jun 2016 22:10:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Thu, 09 Jun 2016 22:12:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 09 Jun 2016 22:12:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 10 Jun 2016 21:52:14 GMT
ENV MAVEN_VERSION=3.3.9
# Fri, 10 Jun 2016 21:52:16 GMT
RUN mkdir -p /usr/share/maven   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 10 Jun 2016 21:52:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 10 Jun 2016 21:52:17 GMT
VOLUME [/root/.m2]
# Fri, 10 Jun 2016 21:52:17 GMT
CMD ["mvn"]
# Fri, 10 Jun 2016 21:52:19 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Jun 2016 21:52:19 GMT
WORKDIR /usr/src/app
# Fri, 10 Jun 2016 21:52:19 GMT
ONBUILD ADD . /usr/src/app
# Fri, 10 Jun 2016 21:52:20 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:5c90d4a2d1a8dfffd05ff2dd659923f0ca2d843b5e45d030e17abbcd06a11b5b`  
		Last Modified: Thu, 09 Jun 2016 21:30:47 GMT  
		Size: 51.4 MB (51352535 bytes)
	-	`sha256:ab30c63719b10dd434ddbe896879bd9b637fe4e16749a94d3dc827450dc2a437`  
		Last Modified: Thu, 09 Jun 2016 21:46:24 GMT  
		Size: 18.5 MB (18547219 bytes)
	-	`sha256:c6072700a24252bd71f6c5d2cabf5978ddf324a959b05bad417d8b3789f8df33`  
		Last Modified: Thu, 09 Jun 2016 21:46:52 GMT  
		Size: 42.5 MB (42525371 bytes)
	-	`sha256:5f444d0704271a846e0b83af62071bc825052d6eabba96121bc0acda9c8f9e64`  
		Last Modified: Thu, 09 Jun 2016 22:17:38 GMT  
		Size: 622.3 KB (622260 bytes)
	-	`sha256:620b5227cf380167d746f024d97b53f26fafcbd253df4cf56b3b3a056bf12ae1`  
		Last Modified: Thu, 09 Jun 2016 22:20:33 GMT  
		Size: 219.0 B
	-	`sha256:3cfd33220efaaad496080e9fdb124ddb9ba07742852c2db816c9870fe2e10c2a`  
		Last Modified: Thu, 09 Jun 2016 22:20:33 GMT  
		Size: 241.0 B
	-	`sha256:864a98a84dd2bba52cf57d13161517ee01e2966e72c3ac842c6a3d49c07dcb37`  
		Last Modified: Thu, 09 Jun 2016 22:21:03 GMT  
		Size: 130.0 MB (130020091 bytes)
	-	`sha256:734cc28150de3e42c9e581aa1d7da3f378fcde2a00719a2d42ec376519050365`  
		Last Modified: Thu, 09 Jun 2016 22:20:34 GMT  
		Size: 284.4 KB (284370 bytes)
	-	`sha256:2503296da5416749b1c8c7e79b0ddc06beabf7fc363eeb30de4c208ddc9f1d5a`  
		Last Modified: Mon, 27 Jun 2016 16:58:47 GMT  
		Size: 8.6 MB (8598802 bytes)
	-	`sha256:be2efd3cf3b62e52312cacde6db0dd1c96035bda7e3b7c811fbef1eb70440744`  
		Last Modified: Mon, 27 Jun 2016 16:58:45 GMT  
		Size: 159.0 B

## `maven:onbuild`

```console
$ docker pull maven@sha256:019a6e247ca1c10c73422648a644b267554063684fab5f74441e31104709549f
```

-	Platforms:
	-	linux; amd64

### `maven:onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251951267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:399ad9fa777d50079b08b3454dae1b275d56aefbfe89ae36f4b0b307c019af2d`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 09 Jun 2016 21:28:42 GMT
ADD file:76679eeb94129df23c99013487d6b6bd779d2107bf07d194a524fdbb6a961530 in /
# Thu, 09 Jun 2016 21:28:43 GMT
CMD ["/bin/bash"]
# Thu, 09 Jun 2016 21:35:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 21:37:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 22:05:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 22:10:09 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Thu, 09 Jun 2016 22:10:09 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jun 2016 22:10:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 09 Jun 2016 22:10:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Thu, 09 Jun 2016 22:10:11 GMT
ENV JAVA_VERSION=8u91
# Thu, 09 Jun 2016 22:10:11 GMT
ENV JAVA_DEBIAN_VERSION=8u91-b14-1~bpo8+1
# Thu, 09 Jun 2016 22:10:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Thu, 09 Jun 2016 22:12:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 09 Jun 2016 22:12:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 10 Jun 2016 21:52:14 GMT
ENV MAVEN_VERSION=3.3.9
# Fri, 10 Jun 2016 21:52:16 GMT
RUN mkdir -p /usr/share/maven   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 10 Jun 2016 21:52:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 10 Jun 2016 21:52:17 GMT
VOLUME [/root/.m2]
# Fri, 10 Jun 2016 21:52:17 GMT
CMD ["mvn"]
# Fri, 10 Jun 2016 21:52:19 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Jun 2016 21:52:19 GMT
WORKDIR /usr/src/app
# Fri, 10 Jun 2016 21:52:19 GMT
ONBUILD ADD . /usr/src/app
# Fri, 10 Jun 2016 21:52:20 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:5c90d4a2d1a8dfffd05ff2dd659923f0ca2d843b5e45d030e17abbcd06a11b5b`  
		Last Modified: Thu, 09 Jun 2016 21:30:47 GMT  
		Size: 51.4 MB (51352535 bytes)
	-	`sha256:ab30c63719b10dd434ddbe896879bd9b637fe4e16749a94d3dc827450dc2a437`  
		Last Modified: Thu, 09 Jun 2016 21:46:24 GMT  
		Size: 18.5 MB (18547219 bytes)
	-	`sha256:c6072700a24252bd71f6c5d2cabf5978ddf324a959b05bad417d8b3789f8df33`  
		Last Modified: Thu, 09 Jun 2016 21:46:52 GMT  
		Size: 42.5 MB (42525371 bytes)
	-	`sha256:5f444d0704271a846e0b83af62071bc825052d6eabba96121bc0acda9c8f9e64`  
		Last Modified: Thu, 09 Jun 2016 22:17:38 GMT  
		Size: 622.3 KB (622260 bytes)
	-	`sha256:620b5227cf380167d746f024d97b53f26fafcbd253df4cf56b3b3a056bf12ae1`  
		Last Modified: Thu, 09 Jun 2016 22:20:33 GMT  
		Size: 219.0 B
	-	`sha256:3cfd33220efaaad496080e9fdb124ddb9ba07742852c2db816c9870fe2e10c2a`  
		Last Modified: Thu, 09 Jun 2016 22:20:33 GMT  
		Size: 241.0 B
	-	`sha256:864a98a84dd2bba52cf57d13161517ee01e2966e72c3ac842c6a3d49c07dcb37`  
		Last Modified: Thu, 09 Jun 2016 22:21:03 GMT  
		Size: 130.0 MB (130020091 bytes)
	-	`sha256:734cc28150de3e42c9e581aa1d7da3f378fcde2a00719a2d42ec376519050365`  
		Last Modified: Thu, 09 Jun 2016 22:20:34 GMT  
		Size: 284.4 KB (284370 bytes)
	-	`sha256:2503296da5416749b1c8c7e79b0ddc06beabf7fc363eeb30de4c208ddc9f1d5a`  
		Last Modified: Mon, 27 Jun 2016 16:58:47 GMT  
		Size: 8.6 MB (8598802 bytes)
	-	`sha256:be2efd3cf3b62e52312cacde6db0dd1c96035bda7e3b7c811fbef1eb70440744`  
		Last Modified: Mon, 27 Jun 2016 16:58:45 GMT  
		Size: 159.0 B

## `maven:3.3.9-jdk-8-alpine`

**does not exist** (yet?)

## `maven:3.3.9-alpine`

**does not exist** (yet?)

## `maven:3.3-jdk-8-alpine`

**does not exist** (yet?)

## `maven:3.3-alpine`

```console
$ docker pull maven@sha256:06b7e944af3b61215ad9cce60a51ca3e2f25bd326aae7a515919dfd5557de62c
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61922258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:039229773b5572207ae5cb762128af2f59f73d3e116fc78ed0cb818eb19bcd60`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 17 Aug 2016 19:40:46 GMT
RUN apk add --no-cache curl tar bash
# Wed, 17 Aug 2016 19:40:47 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 17 Aug 2016 19:40:54 GMT
ARG USER_HOME_DIR=/root
# Wed, 17 Aug 2016 19:40:57 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 17 Aug 2016 19:40:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 17 Aug 2016 19:40:59 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 17 Aug 2016 19:41:00 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh
# Wed, 17 Aug 2016 19:41:08 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/
# Wed, 17 Aug 2016 19:41:09 GMT
VOLUME [/root/.m2]
# Wed, 17 Aug 2016 19:41:10 GMT
ENTRYPOINT &{["/usr/local/bin/mvn-entrypoint.sh"]}
# Wed, 17 Aug 2016 19:41:11 GMT
CMD ["mvn"]
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
	-	`sha256:d3ea2f07ee575d2db4e2bb2ed6cfb309dd245ca0f0c50a9217ade36cb7632ee6`  
		Last Modified: Wed, 17 Aug 2016 19:48:51 GMT  
		Size: 1.7 MB (1686608 bytes)
	-	`sha256:ba787c9eff568f8ebc3b2896c3302d8c6e5d7efad4d3223e5ddb4659336a0bc5`  
		Last Modified: Wed, 17 Aug 2016 19:48:52 GMT  
		Size: 8.6 MB (8598855 bytes)
	-	`sha256:d7b9e34a813e9aaed891f82dec2bfb10eeb4c42d6db44733df02e4b17fac54cf`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 687.0 B
	-	`sha256:2ae872ee257f06c3e1cec76d2906bb39f6e0104f09769974401d57561cbeaa5e`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 349.0 B

## `maven:3-jdk-8-alpine`

```console
$ docker pull maven@sha256:06b7e944af3b61215ad9cce60a51ca3e2f25bd326aae7a515919dfd5557de62c
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61922258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:039229773b5572207ae5cb762128af2f59f73d3e116fc78ed0cb818eb19bcd60`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 17 Aug 2016 19:40:46 GMT
RUN apk add --no-cache curl tar bash
# Wed, 17 Aug 2016 19:40:47 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 17 Aug 2016 19:40:54 GMT
ARG USER_HOME_DIR=/root
# Wed, 17 Aug 2016 19:40:57 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 17 Aug 2016 19:40:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 17 Aug 2016 19:40:59 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 17 Aug 2016 19:41:00 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh
# Wed, 17 Aug 2016 19:41:08 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/
# Wed, 17 Aug 2016 19:41:09 GMT
VOLUME [/root/.m2]
# Wed, 17 Aug 2016 19:41:10 GMT
ENTRYPOINT &{["/usr/local/bin/mvn-entrypoint.sh"]}
# Wed, 17 Aug 2016 19:41:11 GMT
CMD ["mvn"]
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
	-	`sha256:d3ea2f07ee575d2db4e2bb2ed6cfb309dd245ca0f0c50a9217ade36cb7632ee6`  
		Last Modified: Wed, 17 Aug 2016 19:48:51 GMT  
		Size: 1.7 MB (1686608 bytes)
	-	`sha256:ba787c9eff568f8ebc3b2896c3302d8c6e5d7efad4d3223e5ddb4659336a0bc5`  
		Last Modified: Wed, 17 Aug 2016 19:48:52 GMT  
		Size: 8.6 MB (8598855 bytes)
	-	`sha256:d7b9e34a813e9aaed891f82dec2bfb10eeb4c42d6db44733df02e4b17fac54cf`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 687.0 B
	-	`sha256:2ae872ee257f06c3e1cec76d2906bb39f6e0104f09769974401d57561cbeaa5e`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 349.0 B

## `maven:3-alpine`

```console
$ docker pull maven@sha256:06b7e944af3b61215ad9cce60a51ca3e2f25bd326aae7a515919dfd5557de62c
```

-	Platforms:
	-	linux; amd64

### `maven:3-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61922258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:039229773b5572207ae5cb762128af2f59f73d3e116fc78ed0cb818eb19bcd60`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 17 Aug 2016 19:40:46 GMT
RUN apk add --no-cache curl tar bash
# Wed, 17 Aug 2016 19:40:47 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 17 Aug 2016 19:40:54 GMT
ARG USER_HOME_DIR=/root
# Wed, 17 Aug 2016 19:40:57 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 17 Aug 2016 19:40:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 17 Aug 2016 19:40:59 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 17 Aug 2016 19:41:00 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh
# Wed, 17 Aug 2016 19:41:08 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/
# Wed, 17 Aug 2016 19:41:09 GMT
VOLUME [/root/.m2]
# Wed, 17 Aug 2016 19:41:10 GMT
ENTRYPOINT &{["/usr/local/bin/mvn-entrypoint.sh"]}
# Wed, 17 Aug 2016 19:41:11 GMT
CMD ["mvn"]
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
	-	`sha256:d3ea2f07ee575d2db4e2bb2ed6cfb309dd245ca0f0c50a9217ade36cb7632ee6`  
		Last Modified: Wed, 17 Aug 2016 19:48:51 GMT  
		Size: 1.7 MB (1686608 bytes)
	-	`sha256:ba787c9eff568f8ebc3b2896c3302d8c6e5d7efad4d3223e5ddb4659336a0bc5`  
		Last Modified: Wed, 17 Aug 2016 19:48:52 GMT  
		Size: 8.6 MB (8598855 bytes)
	-	`sha256:d7b9e34a813e9aaed891f82dec2bfb10eeb4c42d6db44733df02e4b17fac54cf`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 687.0 B
	-	`sha256:2ae872ee257f06c3e1cec76d2906bb39f6e0104f09769974401d57561cbeaa5e`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 349.0 B

## `maven:alpine`

**does not exist** (yet?)

## `maven:3.3.9-jdk-8-onbuild-alpine`

```console
$ docker pull maven@sha256:8796a3339c35e5817baa28128c0826b5414b47ef4275aab71019c9d7eb83d8fd
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-8-onbuild-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61922416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99db5f281e83f433488c171b21cc4135fa29c4d144178e94b123cad8a6ca189d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 17 Aug 2016 19:40:46 GMT
RUN apk add --no-cache curl tar bash
# Wed, 17 Aug 2016 19:40:47 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 17 Aug 2016 19:40:54 GMT
ARG USER_HOME_DIR=/root
# Wed, 17 Aug 2016 19:40:57 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 17 Aug 2016 19:40:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 17 Aug 2016 19:40:59 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 17 Aug 2016 19:41:00 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh
# Wed, 17 Aug 2016 19:41:08 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/
# Wed, 17 Aug 2016 19:41:09 GMT
VOLUME [/root/.m2]
# Wed, 17 Aug 2016 19:41:10 GMT
ENTRYPOINT &{["/usr/local/bin/mvn-entrypoint.sh"]}
# Wed, 17 Aug 2016 19:41:11 GMT
CMD ["mvn"]
# Wed, 17 Aug 2016 19:41:14 GMT
RUN mkdir -p /usr/src/app
# Wed, 17 Aug 2016 19:41:15 GMT
WORKDIR /usr/src/app
# Wed, 17 Aug 2016 19:41:22 GMT
ONBUILD ADD . /usr/src/app
# Wed, 17 Aug 2016 19:41:23 GMT
ONBUILD RUN mvn install
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
	-	`sha256:d3ea2f07ee575d2db4e2bb2ed6cfb309dd245ca0f0c50a9217ade36cb7632ee6`  
		Last Modified: Wed, 17 Aug 2016 19:48:51 GMT  
		Size: 1.7 MB (1686608 bytes)
	-	`sha256:ba787c9eff568f8ebc3b2896c3302d8c6e5d7efad4d3223e5ddb4659336a0bc5`  
		Last Modified: Wed, 17 Aug 2016 19:48:52 GMT  
		Size: 8.6 MB (8598855 bytes)
	-	`sha256:d7b9e34a813e9aaed891f82dec2bfb10eeb4c42d6db44733df02e4b17fac54cf`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 687.0 B
	-	`sha256:2ae872ee257f06c3e1cec76d2906bb39f6e0104f09769974401d57561cbeaa5e`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 349.0 B
	-	`sha256:30a3dc0807347dd6157236174e51a291eed206943ed8b899953923744dbb7211`  
		Last Modified: Wed, 17 Aug 2016 19:50:28 GMT  
		Size: 158.0 B

## `maven:3.3.9-onbuild-alpine`

**does not exist** (yet?)

## `maven:3.3-jdk-8-onbuild-alpine`

**does not exist** (yet?)

## `maven:3.3-onbuild-alpine`

**does not exist** (yet?)

## `maven:3-jdk-8-onbuild-alpine`

**does not exist** (yet?)

## `maven:3-onbuild-alpine`

**does not exist** (yet?)

## `maven:onbuild-alpine`

**does not exist** (yet?)

## `maven:3.3.9-jdk-9`

```console
$ docker pull maven@sha256:afeb90f43d7bf960debab13c6b4e0d14d6b516631917abc3467de75c247cdf2c
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-9` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248311641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec49233e2f49db9b6cfb4832c8922ec58051513b630b0d728b31ce7cf576c59`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 09 Jun 2016 21:29:06 GMT
ADD file:8fdc004f9416952c9e1590e8cabcbb49792bbd424d6ee25dae34e39fb952832b in /
# Thu, 09 Jun 2016 21:29:06 GMT
CMD ["/bin/bash"]
# Thu, 09 Jun 2016 21:39:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 21:40:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 22:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 22:14:02 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 09 Jun 2016 22:14:02 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jun 2016 22:14:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 09 Jun 2016 22:14:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Sat, 25 Jun 2016 01:29:53 GMT
ENV JAVA_VERSION=9~b124
# Sat, 25 Jun 2016 01:29:53 GMT
ENV JAVA_DEBIAN_VERSION=9~b124-1
# Sat, 25 Jun 2016 01:30:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 27 Jun 2016 16:58:03 GMT
ENV MAVEN_VERSION=3.3.9
# Mon, 27 Jun 2016 16:58:06 GMT
RUN mkdir -p /usr/share/maven   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 27 Jun 2016 16:58:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 27 Jun 2016 16:58:07 GMT
VOLUME [/root/.m2]
# Mon, 27 Jun 2016 16:58:08 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:2346a4d49ad1b9c5274a3f172de0791bc0a0dd146df3f2a860a7d471c06ebf6e`  
		Last Modified: Thu, 09 Jun 2016 21:32:04 GMT  
		Size: 44.1 MB (44108517 bytes)
	-	`sha256:881ef9f33a20eb7545a8f0377184054f31f8b6f5369d81b4d91e0a313a867d10`  
		Last Modified: Thu, 09 Jun 2016 21:49:39 GMT  
		Size: 20.5 MB (20489787 bytes)
	-	`sha256:07941125c95738fc85a9df97621da186ed1600919a59109e4e3ce16934405c4c`  
		Last Modified: Thu, 09 Jun 2016 21:50:04 GMT  
		Size: 47.2 MB (47223255 bytes)
	-	`sha256:d57fbf322429d41dd686897eff5145aadb30024eeac110cae15b085a0974f9cb`  
		Last Modified: Thu, 09 Jun 2016 22:23:44 GMT  
		Size: 604.7 KB (604706 bytes)
	-	`sha256:b14578373d89b4e7892bd37440b5365835325f7c23f2ee6b2e5d37f1f39836cf`  
		Last Modified: Thu, 09 Jun 2016 22:23:43 GMT  
		Size: 218.0 B
	-	`sha256:912784d40414a45d3629e1f548410af18e29e92616a1b81c261a79c5d2f2c2be`  
		Last Modified: Thu, 09 Jun 2016 22:23:43 GMT  
		Size: 241.0 B
	-	`sha256:f8db15d5cc1666c28ca35e44b11f0bc24a0786d6c952398b31edd2be7f3066a6`  
		Last Modified: Sat, 25 Jun 2016 01:39:30 GMT  
		Size: 127.3 MB (127286117 bytes)
	-	`sha256:8a871615e2891fa11b9ab5dbf6af16b0e20660d08b3d7711dc2473ab9472456a`  
		Last Modified: Mon, 27 Jun 2016 16:58:16 GMT  
		Size: 8.6 MB (8598800 bytes)

## `maven:3.3-jdk-9`

```console
$ docker pull maven@sha256:afeb90f43d7bf960debab13c6b4e0d14d6b516631917abc3467de75c247cdf2c
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-9` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248311641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec49233e2f49db9b6cfb4832c8922ec58051513b630b0d728b31ce7cf576c59`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 09 Jun 2016 21:29:06 GMT
ADD file:8fdc004f9416952c9e1590e8cabcbb49792bbd424d6ee25dae34e39fb952832b in /
# Thu, 09 Jun 2016 21:29:06 GMT
CMD ["/bin/bash"]
# Thu, 09 Jun 2016 21:39:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 21:40:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 22:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 22:14:02 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 09 Jun 2016 22:14:02 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jun 2016 22:14:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 09 Jun 2016 22:14:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Sat, 25 Jun 2016 01:29:53 GMT
ENV JAVA_VERSION=9~b124
# Sat, 25 Jun 2016 01:29:53 GMT
ENV JAVA_DEBIAN_VERSION=9~b124-1
# Sat, 25 Jun 2016 01:30:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 27 Jun 2016 16:58:03 GMT
ENV MAVEN_VERSION=3.3.9
# Mon, 27 Jun 2016 16:58:06 GMT
RUN mkdir -p /usr/share/maven   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 27 Jun 2016 16:58:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 27 Jun 2016 16:58:07 GMT
VOLUME [/root/.m2]
# Mon, 27 Jun 2016 16:58:08 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:2346a4d49ad1b9c5274a3f172de0791bc0a0dd146df3f2a860a7d471c06ebf6e`  
		Last Modified: Thu, 09 Jun 2016 21:32:04 GMT  
		Size: 44.1 MB (44108517 bytes)
	-	`sha256:881ef9f33a20eb7545a8f0377184054f31f8b6f5369d81b4d91e0a313a867d10`  
		Last Modified: Thu, 09 Jun 2016 21:49:39 GMT  
		Size: 20.5 MB (20489787 bytes)
	-	`sha256:07941125c95738fc85a9df97621da186ed1600919a59109e4e3ce16934405c4c`  
		Last Modified: Thu, 09 Jun 2016 21:50:04 GMT  
		Size: 47.2 MB (47223255 bytes)
	-	`sha256:d57fbf322429d41dd686897eff5145aadb30024eeac110cae15b085a0974f9cb`  
		Last Modified: Thu, 09 Jun 2016 22:23:44 GMT  
		Size: 604.7 KB (604706 bytes)
	-	`sha256:b14578373d89b4e7892bd37440b5365835325f7c23f2ee6b2e5d37f1f39836cf`  
		Last Modified: Thu, 09 Jun 2016 22:23:43 GMT  
		Size: 218.0 B
	-	`sha256:912784d40414a45d3629e1f548410af18e29e92616a1b81c261a79c5d2f2c2be`  
		Last Modified: Thu, 09 Jun 2016 22:23:43 GMT  
		Size: 241.0 B
	-	`sha256:f8db15d5cc1666c28ca35e44b11f0bc24a0786d6c952398b31edd2be7f3066a6`  
		Last Modified: Sat, 25 Jun 2016 01:39:30 GMT  
		Size: 127.3 MB (127286117 bytes)
	-	`sha256:8a871615e2891fa11b9ab5dbf6af16b0e20660d08b3d7711dc2473ab9472456a`  
		Last Modified: Mon, 27 Jun 2016 16:58:16 GMT  
		Size: 8.6 MB (8598800 bytes)

## `maven:3-jdk-9`

```console
$ docker pull maven@sha256:afeb90f43d7bf960debab13c6b4e0d14d6b516631917abc3467de75c247cdf2c
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248311641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec49233e2f49db9b6cfb4832c8922ec58051513b630b0d728b31ce7cf576c59`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 09 Jun 2016 21:29:06 GMT
ADD file:8fdc004f9416952c9e1590e8cabcbb49792bbd424d6ee25dae34e39fb952832b in /
# Thu, 09 Jun 2016 21:29:06 GMT
CMD ["/bin/bash"]
# Thu, 09 Jun 2016 21:39:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 21:40:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 22:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 22:14:02 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 09 Jun 2016 22:14:02 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jun 2016 22:14:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 09 Jun 2016 22:14:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Sat, 25 Jun 2016 01:29:53 GMT
ENV JAVA_VERSION=9~b124
# Sat, 25 Jun 2016 01:29:53 GMT
ENV JAVA_DEBIAN_VERSION=9~b124-1
# Sat, 25 Jun 2016 01:30:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 27 Jun 2016 16:58:03 GMT
ENV MAVEN_VERSION=3.3.9
# Mon, 27 Jun 2016 16:58:06 GMT
RUN mkdir -p /usr/share/maven   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 27 Jun 2016 16:58:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 27 Jun 2016 16:58:07 GMT
VOLUME [/root/.m2]
# Mon, 27 Jun 2016 16:58:08 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:2346a4d49ad1b9c5274a3f172de0791bc0a0dd146df3f2a860a7d471c06ebf6e`  
		Last Modified: Thu, 09 Jun 2016 21:32:04 GMT  
		Size: 44.1 MB (44108517 bytes)
	-	`sha256:881ef9f33a20eb7545a8f0377184054f31f8b6f5369d81b4d91e0a313a867d10`  
		Last Modified: Thu, 09 Jun 2016 21:49:39 GMT  
		Size: 20.5 MB (20489787 bytes)
	-	`sha256:07941125c95738fc85a9df97621da186ed1600919a59109e4e3ce16934405c4c`  
		Last Modified: Thu, 09 Jun 2016 21:50:04 GMT  
		Size: 47.2 MB (47223255 bytes)
	-	`sha256:d57fbf322429d41dd686897eff5145aadb30024eeac110cae15b085a0974f9cb`  
		Last Modified: Thu, 09 Jun 2016 22:23:44 GMT  
		Size: 604.7 KB (604706 bytes)
	-	`sha256:b14578373d89b4e7892bd37440b5365835325f7c23f2ee6b2e5d37f1f39836cf`  
		Last Modified: Thu, 09 Jun 2016 22:23:43 GMT  
		Size: 218.0 B
	-	`sha256:912784d40414a45d3629e1f548410af18e29e92616a1b81c261a79c5d2f2c2be`  
		Last Modified: Thu, 09 Jun 2016 22:23:43 GMT  
		Size: 241.0 B
	-	`sha256:f8db15d5cc1666c28ca35e44b11f0bc24a0786d6c952398b31edd2be7f3066a6`  
		Last Modified: Sat, 25 Jun 2016 01:39:30 GMT  
		Size: 127.3 MB (127286117 bytes)
	-	`sha256:8a871615e2891fa11b9ab5dbf6af16b0e20660d08b3d7711dc2473ab9472456a`  
		Last Modified: Mon, 27 Jun 2016 16:58:16 GMT  
		Size: 8.6 MB (8598800 bytes)

## `maven:3.3.9-jdk-9-onbuild`

```console
$ docker pull maven@sha256:019a6e247ca1c10c73422648a644b267554063684fab5f74441e31104709549f
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-9-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251951267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:399ad9fa777d50079b08b3454dae1b275d56aefbfe89ae36f4b0b307c019af2d`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 09 Jun 2016 21:28:42 GMT
ADD file:76679eeb94129df23c99013487d6b6bd779d2107bf07d194a524fdbb6a961530 in /
# Thu, 09 Jun 2016 21:28:43 GMT
CMD ["/bin/bash"]
# Thu, 09 Jun 2016 21:35:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 21:37:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 22:05:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 22:10:09 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Thu, 09 Jun 2016 22:10:09 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jun 2016 22:10:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 09 Jun 2016 22:10:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Thu, 09 Jun 2016 22:10:11 GMT
ENV JAVA_VERSION=8u91
# Thu, 09 Jun 2016 22:10:11 GMT
ENV JAVA_DEBIAN_VERSION=8u91-b14-1~bpo8+1
# Thu, 09 Jun 2016 22:10:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Thu, 09 Jun 2016 22:12:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 09 Jun 2016 22:12:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 10 Jun 2016 21:52:14 GMT
ENV MAVEN_VERSION=3.3.9
# Fri, 10 Jun 2016 21:52:16 GMT
RUN mkdir -p /usr/share/maven   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 10 Jun 2016 21:52:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 10 Jun 2016 21:52:17 GMT
VOLUME [/root/.m2]
# Fri, 10 Jun 2016 21:52:17 GMT
CMD ["mvn"]
# Fri, 10 Jun 2016 21:52:19 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Jun 2016 21:52:19 GMT
WORKDIR /usr/src/app
# Fri, 10 Jun 2016 21:52:19 GMT
ONBUILD ADD . /usr/src/app
# Fri, 10 Jun 2016 21:52:20 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:5c90d4a2d1a8dfffd05ff2dd659923f0ca2d843b5e45d030e17abbcd06a11b5b`  
		Last Modified: Thu, 09 Jun 2016 21:30:47 GMT  
		Size: 51.4 MB (51352535 bytes)
	-	`sha256:ab30c63719b10dd434ddbe896879bd9b637fe4e16749a94d3dc827450dc2a437`  
		Last Modified: Thu, 09 Jun 2016 21:46:24 GMT  
		Size: 18.5 MB (18547219 bytes)
	-	`sha256:c6072700a24252bd71f6c5d2cabf5978ddf324a959b05bad417d8b3789f8df33`  
		Last Modified: Thu, 09 Jun 2016 21:46:52 GMT  
		Size: 42.5 MB (42525371 bytes)
	-	`sha256:5f444d0704271a846e0b83af62071bc825052d6eabba96121bc0acda9c8f9e64`  
		Last Modified: Thu, 09 Jun 2016 22:17:38 GMT  
		Size: 622.3 KB (622260 bytes)
	-	`sha256:620b5227cf380167d746f024d97b53f26fafcbd253df4cf56b3b3a056bf12ae1`  
		Last Modified: Thu, 09 Jun 2016 22:20:33 GMT  
		Size: 219.0 B
	-	`sha256:3cfd33220efaaad496080e9fdb124ddb9ba07742852c2db816c9870fe2e10c2a`  
		Last Modified: Thu, 09 Jun 2016 22:20:33 GMT  
		Size: 241.0 B
	-	`sha256:864a98a84dd2bba52cf57d13161517ee01e2966e72c3ac842c6a3d49c07dcb37`  
		Last Modified: Thu, 09 Jun 2016 22:21:03 GMT  
		Size: 130.0 MB (130020091 bytes)
	-	`sha256:734cc28150de3e42c9e581aa1d7da3f378fcde2a00719a2d42ec376519050365`  
		Last Modified: Thu, 09 Jun 2016 22:20:34 GMT  
		Size: 284.4 KB (284370 bytes)
	-	`sha256:2503296da5416749b1c8c7e79b0ddc06beabf7fc363eeb30de4c208ddc9f1d5a`  
		Last Modified: Mon, 27 Jun 2016 16:58:47 GMT  
		Size: 8.6 MB (8598802 bytes)
	-	`sha256:be2efd3cf3b62e52312cacde6db0dd1c96035bda7e3b7c811fbef1eb70440744`  
		Last Modified: Mon, 27 Jun 2016 16:58:45 GMT  
		Size: 159.0 B

## `maven:3.3-jdk-9-onbuild`

```console
$ docker pull maven@sha256:019a6e247ca1c10c73422648a644b267554063684fab5f74441e31104709549f
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-9-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251951267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:399ad9fa777d50079b08b3454dae1b275d56aefbfe89ae36f4b0b307c019af2d`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 09 Jun 2016 21:28:42 GMT
ADD file:76679eeb94129df23c99013487d6b6bd779d2107bf07d194a524fdbb6a961530 in /
# Thu, 09 Jun 2016 21:28:43 GMT
CMD ["/bin/bash"]
# Thu, 09 Jun 2016 21:35:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 21:37:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 22:05:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 22:10:09 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Thu, 09 Jun 2016 22:10:09 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jun 2016 22:10:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 09 Jun 2016 22:10:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Thu, 09 Jun 2016 22:10:11 GMT
ENV JAVA_VERSION=8u91
# Thu, 09 Jun 2016 22:10:11 GMT
ENV JAVA_DEBIAN_VERSION=8u91-b14-1~bpo8+1
# Thu, 09 Jun 2016 22:10:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Thu, 09 Jun 2016 22:12:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 09 Jun 2016 22:12:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 10 Jun 2016 21:52:14 GMT
ENV MAVEN_VERSION=3.3.9
# Fri, 10 Jun 2016 21:52:16 GMT
RUN mkdir -p /usr/share/maven   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 10 Jun 2016 21:52:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 10 Jun 2016 21:52:17 GMT
VOLUME [/root/.m2]
# Fri, 10 Jun 2016 21:52:17 GMT
CMD ["mvn"]
# Fri, 10 Jun 2016 21:52:19 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Jun 2016 21:52:19 GMT
WORKDIR /usr/src/app
# Fri, 10 Jun 2016 21:52:19 GMT
ONBUILD ADD . /usr/src/app
# Fri, 10 Jun 2016 21:52:20 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:5c90d4a2d1a8dfffd05ff2dd659923f0ca2d843b5e45d030e17abbcd06a11b5b`  
		Last Modified: Thu, 09 Jun 2016 21:30:47 GMT  
		Size: 51.4 MB (51352535 bytes)
	-	`sha256:ab30c63719b10dd434ddbe896879bd9b637fe4e16749a94d3dc827450dc2a437`  
		Last Modified: Thu, 09 Jun 2016 21:46:24 GMT  
		Size: 18.5 MB (18547219 bytes)
	-	`sha256:c6072700a24252bd71f6c5d2cabf5978ddf324a959b05bad417d8b3789f8df33`  
		Last Modified: Thu, 09 Jun 2016 21:46:52 GMT  
		Size: 42.5 MB (42525371 bytes)
	-	`sha256:5f444d0704271a846e0b83af62071bc825052d6eabba96121bc0acda9c8f9e64`  
		Last Modified: Thu, 09 Jun 2016 22:17:38 GMT  
		Size: 622.3 KB (622260 bytes)
	-	`sha256:620b5227cf380167d746f024d97b53f26fafcbd253df4cf56b3b3a056bf12ae1`  
		Last Modified: Thu, 09 Jun 2016 22:20:33 GMT  
		Size: 219.0 B
	-	`sha256:3cfd33220efaaad496080e9fdb124ddb9ba07742852c2db816c9870fe2e10c2a`  
		Last Modified: Thu, 09 Jun 2016 22:20:33 GMT  
		Size: 241.0 B
	-	`sha256:864a98a84dd2bba52cf57d13161517ee01e2966e72c3ac842c6a3d49c07dcb37`  
		Last Modified: Thu, 09 Jun 2016 22:21:03 GMT  
		Size: 130.0 MB (130020091 bytes)
	-	`sha256:734cc28150de3e42c9e581aa1d7da3f378fcde2a00719a2d42ec376519050365`  
		Last Modified: Thu, 09 Jun 2016 22:20:34 GMT  
		Size: 284.4 KB (284370 bytes)
	-	`sha256:2503296da5416749b1c8c7e79b0ddc06beabf7fc363eeb30de4c208ddc9f1d5a`  
		Last Modified: Mon, 27 Jun 2016 16:58:47 GMT  
		Size: 8.6 MB (8598802 bytes)
	-	`sha256:be2efd3cf3b62e52312cacde6db0dd1c96035bda7e3b7c811fbef1eb70440744`  
		Last Modified: Mon, 27 Jun 2016 16:58:45 GMT  
		Size: 159.0 B

## `maven:3-jdk-9-onbuild`

```console
$ docker pull maven@sha256:019a6e247ca1c10c73422648a644b267554063684fab5f74441e31104709549f
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251951267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:399ad9fa777d50079b08b3454dae1b275d56aefbfe89ae36f4b0b307c019af2d`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 09 Jun 2016 21:28:42 GMT
ADD file:76679eeb94129df23c99013487d6b6bd779d2107bf07d194a524fdbb6a961530 in /
# Thu, 09 Jun 2016 21:28:43 GMT
CMD ["/bin/bash"]
# Thu, 09 Jun 2016 21:35:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 21:37:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 22:05:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 22:10:09 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Thu, 09 Jun 2016 22:10:09 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jun 2016 22:10:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 09 Jun 2016 22:10:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Thu, 09 Jun 2016 22:10:11 GMT
ENV JAVA_VERSION=8u91
# Thu, 09 Jun 2016 22:10:11 GMT
ENV JAVA_DEBIAN_VERSION=8u91-b14-1~bpo8+1
# Thu, 09 Jun 2016 22:10:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Thu, 09 Jun 2016 22:12:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 09 Jun 2016 22:12:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 10 Jun 2016 21:52:14 GMT
ENV MAVEN_VERSION=3.3.9
# Fri, 10 Jun 2016 21:52:16 GMT
RUN mkdir -p /usr/share/maven   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 10 Jun 2016 21:52:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 10 Jun 2016 21:52:17 GMT
VOLUME [/root/.m2]
# Fri, 10 Jun 2016 21:52:17 GMT
CMD ["mvn"]
# Fri, 10 Jun 2016 21:52:19 GMT
RUN mkdir -p /usr/src/app
# Fri, 10 Jun 2016 21:52:19 GMT
WORKDIR /usr/src/app
# Fri, 10 Jun 2016 21:52:19 GMT
ONBUILD ADD . /usr/src/app
# Fri, 10 Jun 2016 21:52:20 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:5c90d4a2d1a8dfffd05ff2dd659923f0ca2d843b5e45d030e17abbcd06a11b5b`  
		Last Modified: Thu, 09 Jun 2016 21:30:47 GMT  
		Size: 51.4 MB (51352535 bytes)
	-	`sha256:ab30c63719b10dd434ddbe896879bd9b637fe4e16749a94d3dc827450dc2a437`  
		Last Modified: Thu, 09 Jun 2016 21:46:24 GMT  
		Size: 18.5 MB (18547219 bytes)
	-	`sha256:c6072700a24252bd71f6c5d2cabf5978ddf324a959b05bad417d8b3789f8df33`  
		Last Modified: Thu, 09 Jun 2016 21:46:52 GMT  
		Size: 42.5 MB (42525371 bytes)
	-	`sha256:5f444d0704271a846e0b83af62071bc825052d6eabba96121bc0acda9c8f9e64`  
		Last Modified: Thu, 09 Jun 2016 22:17:38 GMT  
		Size: 622.3 KB (622260 bytes)
	-	`sha256:620b5227cf380167d746f024d97b53f26fafcbd253df4cf56b3b3a056bf12ae1`  
		Last Modified: Thu, 09 Jun 2016 22:20:33 GMT  
		Size: 219.0 B
	-	`sha256:3cfd33220efaaad496080e9fdb124ddb9ba07742852c2db816c9870fe2e10c2a`  
		Last Modified: Thu, 09 Jun 2016 22:20:33 GMT  
		Size: 241.0 B
	-	`sha256:864a98a84dd2bba52cf57d13161517ee01e2966e72c3ac842c6a3d49c07dcb37`  
		Last Modified: Thu, 09 Jun 2016 22:21:03 GMT  
		Size: 130.0 MB (130020091 bytes)
	-	`sha256:734cc28150de3e42c9e581aa1d7da3f378fcde2a00719a2d42ec376519050365`  
		Last Modified: Thu, 09 Jun 2016 22:20:34 GMT  
		Size: 284.4 KB (284370 bytes)
	-	`sha256:2503296da5416749b1c8c7e79b0ddc06beabf7fc363eeb30de4c208ddc9f1d5a`  
		Last Modified: Mon, 27 Jun 2016 16:58:47 GMT  
		Size: 8.6 MB (8598802 bytes)
	-	`sha256:be2efd3cf3b62e52312cacde6db0dd1c96035bda7e3b7c811fbef1eb70440744`  
		Last Modified: Mon, 27 Jun 2016 16:58:45 GMT  
		Size: 159.0 B
