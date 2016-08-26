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
$ docker pull maven@sha256:0849b69f084eccc8545ff7292c56371931bae6b1168dfb748cb43d0c8a915169
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261186132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:898739f7e11cb401dc272c4738c9245751272e6ac88cbe6f76cd88b35ee5f664`
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
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557cb7f84eb963a60165663691b52690b01249b98c7c106228ee789eaa5070a3`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 593.2 KB (593224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbd9fac5727074a3af671d929e588dc9d9b1f78cdf87523ac35926fe8cd7e01`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f5ec8580f15fa5e9ab163c0e8e1ef1153596f9ef3184c4ed141f4d1e41ac4a`  
		Last Modified: Fri, 05 Aug 2016 22:13:01 GMT  
		Size: 139.6 MB (139604792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91df8c05571365c5771c92b77f8fa5367d037ee6a1871eb2a3d8aaefb58a593`  
		Last Modified: Wed, 17 Aug 2016 19:42:10 GMT  
		Size: 8.6 MB (8598861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ca13583f0208ee12e2b9338a4e8fe2ebeee0f1448b2c9e9ad0d30e05196c1e`  
		Last Modified: Wed, 17 Aug 2016 19:42:10 GMT  
		Size: 692.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aad738f48439e20fe8ab5421fc9077e46de84ac1d4514b6e57b2b8a83115a99`  
		Last Modified: Wed, 17 Aug 2016 19:42:09 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-7`

```console
$ docker pull maven@sha256:0849b69f084eccc8545ff7292c56371931bae6b1168dfb748cb43d0c8a915169
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261186132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:898739f7e11cb401dc272c4738c9245751272e6ac88cbe6f76cd88b35ee5f664`
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
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557cb7f84eb963a60165663691b52690b01249b98c7c106228ee789eaa5070a3`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 593.2 KB (593224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbd9fac5727074a3af671d929e588dc9d9b1f78cdf87523ac35926fe8cd7e01`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f5ec8580f15fa5e9ab163c0e8e1ef1153596f9ef3184c4ed141f4d1e41ac4a`  
		Last Modified: Fri, 05 Aug 2016 22:13:01 GMT  
		Size: 139.6 MB (139604792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91df8c05571365c5771c92b77f8fa5367d037ee6a1871eb2a3d8aaefb58a593`  
		Last Modified: Wed, 17 Aug 2016 19:42:10 GMT  
		Size: 8.6 MB (8598861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ca13583f0208ee12e2b9338a4e8fe2ebeee0f1448b2c9e9ad0d30e05196c1e`  
		Last Modified: Wed, 17 Aug 2016 19:42:10 GMT  
		Size: 692.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aad738f48439e20fe8ab5421fc9077e46de84ac1d4514b6e57b2b8a83115a99`  
		Last Modified: Wed, 17 Aug 2016 19:42:09 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7`

```console
$ docker pull maven@sha256:0849b69f084eccc8545ff7292c56371931bae6b1168dfb748cb43d0c8a915169
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261186132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:898739f7e11cb401dc272c4738c9245751272e6ac88cbe6f76cd88b35ee5f664`
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
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557cb7f84eb963a60165663691b52690b01249b98c7c106228ee789eaa5070a3`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 593.2 KB (593224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbd9fac5727074a3af671d929e588dc9d9b1f78cdf87523ac35926fe8cd7e01`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f5ec8580f15fa5e9ab163c0e8e1ef1153596f9ef3184c4ed141f4d1e41ac4a`  
		Last Modified: Fri, 05 Aug 2016 22:13:01 GMT  
		Size: 139.6 MB (139604792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91df8c05571365c5771c92b77f8fa5367d037ee6a1871eb2a3d8aaefb58a593`  
		Last Modified: Wed, 17 Aug 2016 19:42:10 GMT  
		Size: 8.6 MB (8598861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ca13583f0208ee12e2b9338a4e8fe2ebeee0f1448b2c9e9ad0d30e05196c1e`  
		Last Modified: Wed, 17 Aug 2016 19:42:10 GMT  
		Size: 692.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aad738f48439e20fe8ab5421fc9077e46de84ac1d4514b6e57b2b8a83115a99`  
		Last Modified: Wed, 17 Aug 2016 19:42:09 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557cb7f84eb963a60165663691b52690b01249b98c7c106228ee789eaa5070a3`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 593.2 KB (593224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbd9fac5727074a3af671d929e588dc9d9b1f78cdf87523ac35926fe8cd7e01`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f5ec8580f15fa5e9ab163c0e8e1ef1153596f9ef3184c4ed141f4d1e41ac4a`  
		Last Modified: Fri, 05 Aug 2016 22:13:01 GMT  
		Size: 139.6 MB (139604792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91df8c05571365c5771c92b77f8fa5367d037ee6a1871eb2a3d8aaefb58a593`  
		Last Modified: Wed, 17 Aug 2016 19:42:10 GMT  
		Size: 8.6 MB (8598861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ca13583f0208ee12e2b9338a4e8fe2ebeee0f1448b2c9e9ad0d30e05196c1e`  
		Last Modified: Wed, 17 Aug 2016 19:42:10 GMT  
		Size: 692.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aad738f48439e20fe8ab5421fc9077e46de84ac1d4514b6e57b2b8a83115a99`  
		Last Modified: Wed, 17 Aug 2016 19:42:09 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c587e74e653819223951504f9b8fc2036c9820e4e7db6c9dc2aa8aea68ad0f86`  
		Last Modified: Wed, 17 Aug 2016 19:42:54 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-7-onbuild`

```console
$ docker pull maven@sha256:db987fd5d3e1c9d07d7196d94466a171517b4005cdf9e5649d4114fe0cd3f4ab
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-7-onbuild` - linux; amd64

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557cb7f84eb963a60165663691b52690b01249b98c7c106228ee789eaa5070a3`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 593.2 KB (593224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbd9fac5727074a3af671d929e588dc9d9b1f78cdf87523ac35926fe8cd7e01`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f5ec8580f15fa5e9ab163c0e8e1ef1153596f9ef3184c4ed141f4d1e41ac4a`  
		Last Modified: Fri, 05 Aug 2016 22:13:01 GMT  
		Size: 139.6 MB (139604792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91df8c05571365c5771c92b77f8fa5367d037ee6a1871eb2a3d8aaefb58a593`  
		Last Modified: Wed, 17 Aug 2016 19:42:10 GMT  
		Size: 8.6 MB (8598861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ca13583f0208ee12e2b9338a4e8fe2ebeee0f1448b2c9e9ad0d30e05196c1e`  
		Last Modified: Wed, 17 Aug 2016 19:42:10 GMT  
		Size: 692.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aad738f48439e20fe8ab5421fc9077e46de84ac1d4514b6e57b2b8a83115a99`  
		Last Modified: Wed, 17 Aug 2016 19:42:09 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c587e74e653819223951504f9b8fc2036c9820e4e7db6c9dc2aa8aea68ad0f86`  
		Last Modified: Wed, 17 Aug 2016 19:42:54 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-onbuild`

```console
$ docker pull maven@sha256:db987fd5d3e1c9d07d7196d94466a171517b4005cdf9e5649d4114fe0cd3f4ab
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-onbuild` - linux; amd64

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557cb7f84eb963a60165663691b52690b01249b98c7c106228ee789eaa5070a3`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 593.2 KB (593224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbd9fac5727074a3af671d929e588dc9d9b1f78cdf87523ac35926fe8cd7e01`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f5ec8580f15fa5e9ab163c0e8e1ef1153596f9ef3184c4ed141f4d1e41ac4a`  
		Last Modified: Fri, 05 Aug 2016 22:13:01 GMT  
		Size: 139.6 MB (139604792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91df8c05571365c5771c92b77f8fa5367d037ee6a1871eb2a3d8aaefb58a593`  
		Last Modified: Wed, 17 Aug 2016 19:42:10 GMT  
		Size: 8.6 MB (8598861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ca13583f0208ee12e2b9338a4e8fe2ebeee0f1448b2c9e9ad0d30e05196c1e`  
		Last Modified: Wed, 17 Aug 2016 19:42:10 GMT  
		Size: 692.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aad738f48439e20fe8ab5421fc9077e46de84ac1d4514b6e57b2b8a83115a99`  
		Last Modified: Wed, 17 Aug 2016 19:42:09 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c587e74e653819223951504f9b8fc2036c9820e4e7db6c9dc2aa8aea68ad0f86`  
		Last Modified: Wed, 17 Aug 2016 19:42:54 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-7-alpine`

```console
$ docker pull maven@sha256:cd0c4c4f39fa1354dbc6add9ca8e52ac17b09c18300d39a0db5bc45fb198c4bf
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-7-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.6 MB (89573492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d9a6e704735bfc98261d41781168504a3afaf3d81a80b7b039d8709d8a8f39`
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
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f289d9816581c1109ebadddd142aeba536b7b854a6be789a3a8ea9be7c07021`  
		Last Modified: Thu, 07 Jul 2016 19:08:18 GMT  
		Size: 76.6 MB (76600018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c8e452cfed35cb6111ee6d6ee4a3c50f4fc8f7b0bf8bc8fc17329bd156ded90`  
		Last Modified: Wed, 17 Aug 2016 19:43:37 GMT  
		Size: 2.1 MB (2063088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56749227c29a9e1b9ac0d0d14efb6179badd3a6ec2ca07dfd728486e4e65b95`  
		Last Modified: Wed, 17 Aug 2016 19:43:38 GMT  
		Size: 8.6 MB (8598836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c1cbca6dcf45774dabe0608fd7c176c6f33e7601dfc510969df484ce76328ea`  
		Last Modified: Wed, 17 Aug 2016 19:43:36 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a00dbcc55ebb320d5a0a100cff2dba05fe08bbc7a55cf746c9c55185f5b0e3`  
		Last Modified: Wed, 17 Aug 2016 19:43:36 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-7-alpine`

```console
$ docker pull maven@sha256:cd0c4c4f39fa1354dbc6add9ca8e52ac17b09c18300d39a0db5bc45fb198c4bf
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-7-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.6 MB (89573492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d9a6e704735bfc98261d41781168504a3afaf3d81a80b7b039d8709d8a8f39`
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
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f289d9816581c1109ebadddd142aeba536b7b854a6be789a3a8ea9be7c07021`  
		Last Modified: Thu, 07 Jul 2016 19:08:18 GMT  
		Size: 76.6 MB (76600018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c8e452cfed35cb6111ee6d6ee4a3c50f4fc8f7b0bf8bc8fc17329bd156ded90`  
		Last Modified: Wed, 17 Aug 2016 19:43:37 GMT  
		Size: 2.1 MB (2063088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56749227c29a9e1b9ac0d0d14efb6179badd3a6ec2ca07dfd728486e4e65b95`  
		Last Modified: Wed, 17 Aug 2016 19:43:38 GMT  
		Size: 8.6 MB (8598836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c1cbca6dcf45774dabe0608fd7c176c6f33e7601dfc510969df484ce76328ea`  
		Last Modified: Wed, 17 Aug 2016 19:43:36 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a00dbcc55ebb320d5a0a100cff2dba05fe08bbc7a55cf746c9c55185f5b0e3`  
		Last Modified: Wed, 17 Aug 2016 19:43:36 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-alpine`

```console
$ docker pull maven@sha256:cd0c4c4f39fa1354dbc6add9ca8e52ac17b09c18300d39a0db5bc45fb198c4bf
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-alpine` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.6 MB (89573492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d9a6e704735bfc98261d41781168504a3afaf3d81a80b7b039d8709d8a8f39`
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
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f289d9816581c1109ebadddd142aeba536b7b854a6be789a3a8ea9be7c07021`  
		Last Modified: Thu, 07 Jul 2016 19:08:18 GMT  
		Size: 76.6 MB (76600018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c8e452cfed35cb6111ee6d6ee4a3c50f4fc8f7b0bf8bc8fc17329bd156ded90`  
		Last Modified: Wed, 17 Aug 2016 19:43:37 GMT  
		Size: 2.1 MB (2063088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56749227c29a9e1b9ac0d0d14efb6179badd3a6ec2ca07dfd728486e4e65b95`  
		Last Modified: Wed, 17 Aug 2016 19:43:38 GMT  
		Size: 8.6 MB (8598836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c1cbca6dcf45774dabe0608fd7c176c6f33e7601dfc510969df484ce76328ea`  
		Last Modified: Wed, 17 Aug 2016 19:43:36 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a00dbcc55ebb320d5a0a100cff2dba05fe08bbc7a55cf746c9c55185f5b0e3`  
		Last Modified: Wed, 17 Aug 2016 19:43:36 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f289d9816581c1109ebadddd142aeba536b7b854a6be789a3a8ea9be7c07021`  
		Last Modified: Thu, 07 Jul 2016 19:08:18 GMT  
		Size: 76.6 MB (76600018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c8e452cfed35cb6111ee6d6ee4a3c50f4fc8f7b0bf8bc8fc17329bd156ded90`  
		Last Modified: Wed, 17 Aug 2016 19:43:37 GMT  
		Size: 2.1 MB (2063088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56749227c29a9e1b9ac0d0d14efb6179badd3a6ec2ca07dfd728486e4e65b95`  
		Last Modified: Wed, 17 Aug 2016 19:43:38 GMT  
		Size: 8.6 MB (8598836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c1cbca6dcf45774dabe0608fd7c176c6f33e7601dfc510969df484ce76328ea`  
		Last Modified: Wed, 17 Aug 2016 19:43:36 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a00dbcc55ebb320d5a0a100cff2dba05fe08bbc7a55cf746c9c55185f5b0e3`  
		Last Modified: Wed, 17 Aug 2016 19:43:36 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23be3520c46462a4d20ba796d5edb451743710ff2881f97d10c74baf873321d0`  
		Last Modified: Wed, 17 Aug 2016 19:44:20 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-7-onbuild-alpine`

```console
$ docker pull maven@sha256:76d45dfe706f7ccab39429ecb55a417c16b27bf23ec237e667b29247951a1803
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-7-onbuild-alpine` - linux; amd64

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f289d9816581c1109ebadddd142aeba536b7b854a6be789a3a8ea9be7c07021`  
		Last Modified: Thu, 07 Jul 2016 19:08:18 GMT  
		Size: 76.6 MB (76600018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c8e452cfed35cb6111ee6d6ee4a3c50f4fc8f7b0bf8bc8fc17329bd156ded90`  
		Last Modified: Wed, 17 Aug 2016 19:43:37 GMT  
		Size: 2.1 MB (2063088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56749227c29a9e1b9ac0d0d14efb6179badd3a6ec2ca07dfd728486e4e65b95`  
		Last Modified: Wed, 17 Aug 2016 19:43:38 GMT  
		Size: 8.6 MB (8598836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c1cbca6dcf45774dabe0608fd7c176c6f33e7601dfc510969df484ce76328ea`  
		Last Modified: Wed, 17 Aug 2016 19:43:36 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a00dbcc55ebb320d5a0a100cff2dba05fe08bbc7a55cf746c9c55185f5b0e3`  
		Last Modified: Wed, 17 Aug 2016 19:43:36 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23be3520c46462a4d20ba796d5edb451743710ff2881f97d10c74baf873321d0`  
		Last Modified: Wed, 17 Aug 2016 19:44:20 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-onbuild-alpine`

```console
$ docker pull maven@sha256:76d45dfe706f7ccab39429ecb55a417c16b27bf23ec237e667b29247951a1803
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-onbuild-alpine` - linux; amd64

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f289d9816581c1109ebadddd142aeba536b7b854a6be789a3a8ea9be7c07021`  
		Last Modified: Thu, 07 Jul 2016 19:08:18 GMT  
		Size: 76.6 MB (76600018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c8e452cfed35cb6111ee6d6ee4a3c50f4fc8f7b0bf8bc8fc17329bd156ded90`  
		Last Modified: Wed, 17 Aug 2016 19:43:37 GMT  
		Size: 2.1 MB (2063088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56749227c29a9e1b9ac0d0d14efb6179badd3a6ec2ca07dfd728486e4e65b95`  
		Last Modified: Wed, 17 Aug 2016 19:43:38 GMT  
		Size: 8.6 MB (8598836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c1cbca6dcf45774dabe0608fd7c176c6f33e7601dfc510969df484ce76328ea`  
		Last Modified: Wed, 17 Aug 2016 19:43:36 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a00dbcc55ebb320d5a0a100cff2dba05fe08bbc7a55cf746c9c55185f5b0e3`  
		Last Modified: Wed, 17 Aug 2016 19:43:36 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23be3520c46462a4d20ba796d5edb451743710ff2881f97d10c74baf873321d0`  
		Last Modified: Wed, 17 Aug 2016 19:44:20 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-8`

```console
$ docker pull maven@sha256:a5283092002ec9739819c9b392203103346dfc163586ff46c30ead13b60cc436
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-8` - linux; amd64

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557cb7f84eb963a60165663691b52690b01249b98c7c106228ee789eaa5070a3`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 593.2 KB (593224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831d48be5871bba311d21a7394b6b46f4cb6ed31881212987bf0aae298230354`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecf7eeb197dc492abce9acd7f0519424c7e5f34f4ffeffd721bf0277652d4d7`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e3695c1a93559e79e9203e80ba22855cd93c2105e5e346aaebf4c7673183eb`  
		Last Modified: Wed, 10 Aug 2016 18:49:58 GMT  
		Size: 130.1 MB (130071319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37afaae8f5b70acee6cc9f963e7ffe068bbc02e2eb59b01e64f4b50cafa22f0`  
		Last Modified: Wed, 10 Aug 2016 18:49:28 GMT  
		Size: 284.4 KB (284396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f25a7091e79de2add92836a554263f476300e8bdfebb0b5e202c741cd907a6`  
		Last Modified: Wed, 17 Aug 2016 19:45:33 GMT  
		Size: 8.6 MB (8598853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c79660917fb74b01b567555347f9f7443d351a1a6c93d0bc1bd3c252e442f0`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c9d0ac3f73514e20309cd8ab4ca66f541aaf22bb82559f7b4446119dd24125`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9`

```console
$ docker pull maven@sha256:a5283092002ec9739819c9b392203103346dfc163586ff46c30ead13b60cc436
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9` - linux; amd64

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557cb7f84eb963a60165663691b52690b01249b98c7c106228ee789eaa5070a3`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 593.2 KB (593224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831d48be5871bba311d21a7394b6b46f4cb6ed31881212987bf0aae298230354`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecf7eeb197dc492abce9acd7f0519424c7e5f34f4ffeffd721bf0277652d4d7`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e3695c1a93559e79e9203e80ba22855cd93c2105e5e346aaebf4c7673183eb`  
		Last Modified: Wed, 10 Aug 2016 18:49:58 GMT  
		Size: 130.1 MB (130071319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37afaae8f5b70acee6cc9f963e7ffe068bbc02e2eb59b01e64f4b50cafa22f0`  
		Last Modified: Wed, 10 Aug 2016 18:49:28 GMT  
		Size: 284.4 KB (284396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f25a7091e79de2add92836a554263f476300e8bdfebb0b5e202c741cd907a6`  
		Last Modified: Wed, 17 Aug 2016 19:45:33 GMT  
		Size: 8.6 MB (8598853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c79660917fb74b01b567555347f9f7443d351a1a6c93d0bc1bd3c252e442f0`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c9d0ac3f73514e20309cd8ab4ca66f541aaf22bb82559f7b4446119dd24125`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-8`

```console
$ docker pull maven@sha256:a5283092002ec9739819c9b392203103346dfc163586ff46c30ead13b60cc436
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-8` - linux; amd64

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557cb7f84eb963a60165663691b52690b01249b98c7c106228ee789eaa5070a3`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 593.2 KB (593224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831d48be5871bba311d21a7394b6b46f4cb6ed31881212987bf0aae298230354`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecf7eeb197dc492abce9acd7f0519424c7e5f34f4ffeffd721bf0277652d4d7`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e3695c1a93559e79e9203e80ba22855cd93c2105e5e346aaebf4c7673183eb`  
		Last Modified: Wed, 10 Aug 2016 18:49:58 GMT  
		Size: 130.1 MB (130071319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37afaae8f5b70acee6cc9f963e7ffe068bbc02e2eb59b01e64f4b50cafa22f0`  
		Last Modified: Wed, 10 Aug 2016 18:49:28 GMT  
		Size: 284.4 KB (284396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f25a7091e79de2add92836a554263f476300e8bdfebb0b5e202c741cd907a6`  
		Last Modified: Wed, 17 Aug 2016 19:45:33 GMT  
		Size: 8.6 MB (8598853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c79660917fb74b01b567555347f9f7443d351a1a6c93d0bc1bd3c252e442f0`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c9d0ac3f73514e20309cd8ab4ca66f541aaf22bb82559f7b4446119dd24125`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557cb7f84eb963a60165663691b52690b01249b98c7c106228ee789eaa5070a3`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 593.2 KB (593224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831d48be5871bba311d21a7394b6b46f4cb6ed31881212987bf0aae298230354`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecf7eeb197dc492abce9acd7f0519424c7e5f34f4ffeffd721bf0277652d4d7`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e3695c1a93559e79e9203e80ba22855cd93c2105e5e346aaebf4c7673183eb`  
		Last Modified: Wed, 10 Aug 2016 18:49:58 GMT  
		Size: 130.1 MB (130071319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37afaae8f5b70acee6cc9f963e7ffe068bbc02e2eb59b01e64f4b50cafa22f0`  
		Last Modified: Wed, 10 Aug 2016 18:49:28 GMT  
		Size: 284.4 KB (284396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f25a7091e79de2add92836a554263f476300e8bdfebb0b5e202c741cd907a6`  
		Last Modified: Wed, 17 Aug 2016 19:45:33 GMT  
		Size: 8.6 MB (8598853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c79660917fb74b01b567555347f9f7443d351a1a6c93d0bc1bd3c252e442f0`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c9d0ac3f73514e20309cd8ab4ca66f541aaf22bb82559f7b4446119dd24125`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557cb7f84eb963a60165663691b52690b01249b98c7c106228ee789eaa5070a3`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 593.2 KB (593224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831d48be5871bba311d21a7394b6b46f4cb6ed31881212987bf0aae298230354`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecf7eeb197dc492abce9acd7f0519424c7e5f34f4ffeffd721bf0277652d4d7`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e3695c1a93559e79e9203e80ba22855cd93c2105e5e346aaebf4c7673183eb`  
		Last Modified: Wed, 10 Aug 2016 18:49:58 GMT  
		Size: 130.1 MB (130071319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37afaae8f5b70acee6cc9f963e7ffe068bbc02e2eb59b01e64f4b50cafa22f0`  
		Last Modified: Wed, 10 Aug 2016 18:49:28 GMT  
		Size: 284.4 KB (284396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f25a7091e79de2add92836a554263f476300e8bdfebb0b5e202c741cd907a6`  
		Last Modified: Wed, 17 Aug 2016 19:45:33 GMT  
		Size: 8.6 MB (8598853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c79660917fb74b01b567555347f9f7443d351a1a6c93d0bc1bd3c252e442f0`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c9d0ac3f73514e20309cd8ab4ca66f541aaf22bb82559f7b4446119dd24125`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3`

```console
$ docker pull maven@sha256:a5283092002ec9739819c9b392203103346dfc163586ff46c30ead13b60cc436
```

-	Platforms:
	-	linux; amd64

### `maven:3` - linux; amd64

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557cb7f84eb963a60165663691b52690b01249b98c7c106228ee789eaa5070a3`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 593.2 KB (593224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831d48be5871bba311d21a7394b6b46f4cb6ed31881212987bf0aae298230354`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecf7eeb197dc492abce9acd7f0519424c7e5f34f4ffeffd721bf0277652d4d7`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e3695c1a93559e79e9203e80ba22855cd93c2105e5e346aaebf4c7673183eb`  
		Last Modified: Wed, 10 Aug 2016 18:49:58 GMT  
		Size: 130.1 MB (130071319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37afaae8f5b70acee6cc9f963e7ffe068bbc02e2eb59b01e64f4b50cafa22f0`  
		Last Modified: Wed, 10 Aug 2016 18:49:28 GMT  
		Size: 284.4 KB (284396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f25a7091e79de2add92836a554263f476300e8bdfebb0b5e202c741cd907a6`  
		Last Modified: Wed, 17 Aug 2016 19:45:33 GMT  
		Size: 8.6 MB (8598853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c79660917fb74b01b567555347f9f7443d351a1a6c93d0bc1bd3c252e442f0`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c9d0ac3f73514e20309cd8ab4ca66f541aaf22bb82559f7b4446119dd24125`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:latest`

```console
$ docker pull maven@sha256:a5283092002ec9739819c9b392203103346dfc163586ff46c30ead13b60cc436
```

-	Platforms:
	-	linux; amd64

### `maven:latest` - linux; amd64

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557cb7f84eb963a60165663691b52690b01249b98c7c106228ee789eaa5070a3`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 593.2 KB (593224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831d48be5871bba311d21a7394b6b46f4cb6ed31881212987bf0aae298230354`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecf7eeb197dc492abce9acd7f0519424c7e5f34f4ffeffd721bf0277652d4d7`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e3695c1a93559e79e9203e80ba22855cd93c2105e5e346aaebf4c7673183eb`  
		Last Modified: Wed, 10 Aug 2016 18:49:58 GMT  
		Size: 130.1 MB (130071319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37afaae8f5b70acee6cc9f963e7ffe068bbc02e2eb59b01e64f4b50cafa22f0`  
		Last Modified: Wed, 10 Aug 2016 18:49:28 GMT  
		Size: 284.4 KB (284396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f25a7091e79de2add92836a554263f476300e8bdfebb0b5e202c741cd907a6`  
		Last Modified: Wed, 17 Aug 2016 19:45:33 GMT  
		Size: 8.6 MB (8598853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c79660917fb74b01b567555347f9f7443d351a1a6c93d0bc1bd3c252e442f0`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c9d0ac3f73514e20309cd8ab4ca66f541aaf22bb82559f7b4446119dd24125`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557cb7f84eb963a60165663691b52690b01249b98c7c106228ee789eaa5070a3`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 593.2 KB (593224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831d48be5871bba311d21a7394b6b46f4cb6ed31881212987bf0aae298230354`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecf7eeb197dc492abce9acd7f0519424c7e5f34f4ffeffd721bf0277652d4d7`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e3695c1a93559e79e9203e80ba22855cd93c2105e5e346aaebf4c7673183eb`  
		Last Modified: Wed, 10 Aug 2016 18:49:58 GMT  
		Size: 130.1 MB (130071319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37afaae8f5b70acee6cc9f963e7ffe068bbc02e2eb59b01e64f4b50cafa22f0`  
		Last Modified: Wed, 10 Aug 2016 18:49:28 GMT  
		Size: 284.4 KB (284396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f25a7091e79de2add92836a554263f476300e8bdfebb0b5e202c741cd907a6`  
		Last Modified: Wed, 17 Aug 2016 19:45:33 GMT  
		Size: 8.6 MB (8598853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c79660917fb74b01b567555347f9f7443d351a1a6c93d0bc1bd3c252e442f0`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c9d0ac3f73514e20309cd8ab4ca66f541aaf22bb82559f7b4446119dd24125`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:683c37f6cfa9aa8639c51dbc53f2072ac168fda469ef503e272e8bbaf3c69a5b`  
		Last Modified: Wed, 17 Aug 2016 19:47:13 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-onbuild`

```console
$ docker pull maven@sha256:affee0a15ad7809fdc274edaa25afa2b31931f2b9731f813d869c9145c8a4ae6
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-onbuild` - linux; amd64

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557cb7f84eb963a60165663691b52690b01249b98c7c106228ee789eaa5070a3`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 593.2 KB (593224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831d48be5871bba311d21a7394b6b46f4cb6ed31881212987bf0aae298230354`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecf7eeb197dc492abce9acd7f0519424c7e5f34f4ffeffd721bf0277652d4d7`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e3695c1a93559e79e9203e80ba22855cd93c2105e5e346aaebf4c7673183eb`  
		Last Modified: Wed, 10 Aug 2016 18:49:58 GMT  
		Size: 130.1 MB (130071319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37afaae8f5b70acee6cc9f963e7ffe068bbc02e2eb59b01e64f4b50cafa22f0`  
		Last Modified: Wed, 10 Aug 2016 18:49:28 GMT  
		Size: 284.4 KB (284396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f25a7091e79de2add92836a554263f476300e8bdfebb0b5e202c741cd907a6`  
		Last Modified: Wed, 17 Aug 2016 19:45:33 GMT  
		Size: 8.6 MB (8598853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c79660917fb74b01b567555347f9f7443d351a1a6c93d0bc1bd3c252e442f0`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c9d0ac3f73514e20309cd8ab4ca66f541aaf22bb82559f7b4446119dd24125`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:683c37f6cfa9aa8639c51dbc53f2072ac168fda469ef503e272e8bbaf3c69a5b`  
		Last Modified: Wed, 17 Aug 2016 19:47:13 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-8-onbuild`

```console
$ docker pull maven@sha256:affee0a15ad7809fdc274edaa25afa2b31931f2b9731f813d869c9145c8a4ae6
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-8-onbuild` - linux; amd64

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557cb7f84eb963a60165663691b52690b01249b98c7c106228ee789eaa5070a3`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 593.2 KB (593224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831d48be5871bba311d21a7394b6b46f4cb6ed31881212987bf0aae298230354`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecf7eeb197dc492abce9acd7f0519424c7e5f34f4ffeffd721bf0277652d4d7`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e3695c1a93559e79e9203e80ba22855cd93c2105e5e346aaebf4c7673183eb`  
		Last Modified: Wed, 10 Aug 2016 18:49:58 GMT  
		Size: 130.1 MB (130071319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37afaae8f5b70acee6cc9f963e7ffe068bbc02e2eb59b01e64f4b50cafa22f0`  
		Last Modified: Wed, 10 Aug 2016 18:49:28 GMT  
		Size: 284.4 KB (284396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f25a7091e79de2add92836a554263f476300e8bdfebb0b5e202c741cd907a6`  
		Last Modified: Wed, 17 Aug 2016 19:45:33 GMT  
		Size: 8.6 MB (8598853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c79660917fb74b01b567555347f9f7443d351a1a6c93d0bc1bd3c252e442f0`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c9d0ac3f73514e20309cd8ab4ca66f541aaf22bb82559f7b4446119dd24125`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:683c37f6cfa9aa8639c51dbc53f2072ac168fda469ef503e272e8bbaf3c69a5b`  
		Last Modified: Wed, 17 Aug 2016 19:47:13 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-onbuild`

```console
$ docker pull maven@sha256:affee0a15ad7809fdc274edaa25afa2b31931f2b9731f813d869c9145c8a4ae6
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-onbuild` - linux; amd64

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557cb7f84eb963a60165663691b52690b01249b98c7c106228ee789eaa5070a3`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 593.2 KB (593224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831d48be5871bba311d21a7394b6b46f4cb6ed31881212987bf0aae298230354`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecf7eeb197dc492abce9acd7f0519424c7e5f34f4ffeffd721bf0277652d4d7`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e3695c1a93559e79e9203e80ba22855cd93c2105e5e346aaebf4c7673183eb`  
		Last Modified: Wed, 10 Aug 2016 18:49:58 GMT  
		Size: 130.1 MB (130071319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37afaae8f5b70acee6cc9f963e7ffe068bbc02e2eb59b01e64f4b50cafa22f0`  
		Last Modified: Wed, 10 Aug 2016 18:49:28 GMT  
		Size: 284.4 KB (284396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f25a7091e79de2add92836a554263f476300e8bdfebb0b5e202c741cd907a6`  
		Last Modified: Wed, 17 Aug 2016 19:45:33 GMT  
		Size: 8.6 MB (8598853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c79660917fb74b01b567555347f9f7443d351a1a6c93d0bc1bd3c252e442f0`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c9d0ac3f73514e20309cd8ab4ca66f541aaf22bb82559f7b4446119dd24125`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:683c37f6cfa9aa8639c51dbc53f2072ac168fda469ef503e272e8bbaf3c69a5b`  
		Last Modified: Wed, 17 Aug 2016 19:47:13 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-onbuild`

```console
$ docker pull maven@sha256:affee0a15ad7809fdc274edaa25afa2b31931f2b9731f813d869c9145c8a4ae6
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-onbuild` - linux; amd64

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557cb7f84eb963a60165663691b52690b01249b98c7c106228ee789eaa5070a3`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 593.2 KB (593224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831d48be5871bba311d21a7394b6b46f4cb6ed31881212987bf0aae298230354`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecf7eeb197dc492abce9acd7f0519424c7e5f34f4ffeffd721bf0277652d4d7`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e3695c1a93559e79e9203e80ba22855cd93c2105e5e346aaebf4c7673183eb`  
		Last Modified: Wed, 10 Aug 2016 18:49:58 GMT  
		Size: 130.1 MB (130071319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37afaae8f5b70acee6cc9f963e7ffe068bbc02e2eb59b01e64f4b50cafa22f0`  
		Last Modified: Wed, 10 Aug 2016 18:49:28 GMT  
		Size: 284.4 KB (284396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f25a7091e79de2add92836a554263f476300e8bdfebb0b5e202c741cd907a6`  
		Last Modified: Wed, 17 Aug 2016 19:45:33 GMT  
		Size: 8.6 MB (8598853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c79660917fb74b01b567555347f9f7443d351a1a6c93d0bc1bd3c252e442f0`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c9d0ac3f73514e20309cd8ab4ca66f541aaf22bb82559f7b4446119dd24125`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:683c37f6cfa9aa8639c51dbc53f2072ac168fda469ef503e272e8bbaf3c69a5b`  
		Last Modified: Wed, 17 Aug 2016 19:47:13 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-onbuild`

```console
$ docker pull maven@sha256:affee0a15ad7809fdc274edaa25afa2b31931f2b9731f813d869c9145c8a4ae6
```

-	Platforms:
	-	linux; amd64

### `maven:3-onbuild` - linux; amd64

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557cb7f84eb963a60165663691b52690b01249b98c7c106228ee789eaa5070a3`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 593.2 KB (593224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831d48be5871bba311d21a7394b6b46f4cb6ed31881212987bf0aae298230354`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecf7eeb197dc492abce9acd7f0519424c7e5f34f4ffeffd721bf0277652d4d7`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e3695c1a93559e79e9203e80ba22855cd93c2105e5e346aaebf4c7673183eb`  
		Last Modified: Wed, 10 Aug 2016 18:49:58 GMT  
		Size: 130.1 MB (130071319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37afaae8f5b70acee6cc9f963e7ffe068bbc02e2eb59b01e64f4b50cafa22f0`  
		Last Modified: Wed, 10 Aug 2016 18:49:28 GMT  
		Size: 284.4 KB (284396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f25a7091e79de2add92836a554263f476300e8bdfebb0b5e202c741cd907a6`  
		Last Modified: Wed, 17 Aug 2016 19:45:33 GMT  
		Size: 8.6 MB (8598853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c79660917fb74b01b567555347f9f7443d351a1a6c93d0bc1bd3c252e442f0`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c9d0ac3f73514e20309cd8ab4ca66f541aaf22bb82559f7b4446119dd24125`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:683c37f6cfa9aa8639c51dbc53f2072ac168fda469ef503e272e8bbaf3c69a5b`  
		Last Modified: Wed, 17 Aug 2016 19:47:13 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:onbuild`

```console
$ docker pull maven@sha256:affee0a15ad7809fdc274edaa25afa2b31931f2b9731f813d869c9145c8a4ae6
```

-	Platforms:
	-	linux; amd64

### `maven:onbuild` - linux; amd64

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557cb7f84eb963a60165663691b52690b01249b98c7c106228ee789eaa5070a3`  
		Last Modified: Fri, 05 Aug 2016 22:12:36 GMT  
		Size: 593.2 KB (593224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831d48be5871bba311d21a7394b6b46f4cb6ed31881212987bf0aae298230354`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecf7eeb197dc492abce9acd7f0519424c7e5f34f4ffeffd721bf0277652d4d7`  
		Last Modified: Fri, 05 Aug 2016 22:17:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e3695c1a93559e79e9203e80ba22855cd93c2105e5e346aaebf4c7673183eb`  
		Last Modified: Wed, 10 Aug 2016 18:49:58 GMT  
		Size: 130.1 MB (130071319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37afaae8f5b70acee6cc9f963e7ffe068bbc02e2eb59b01e64f4b50cafa22f0`  
		Last Modified: Wed, 10 Aug 2016 18:49:28 GMT  
		Size: 284.4 KB (284396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f25a7091e79de2add92836a554263f476300e8bdfebb0b5e202c741cd907a6`  
		Last Modified: Wed, 17 Aug 2016 19:45:33 GMT  
		Size: 8.6 MB (8598853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c79660917fb74b01b567555347f9f7443d351a1a6c93d0bc1bd3c252e442f0`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c9d0ac3f73514e20309cd8ab4ca66f541aaf22bb82559f7b4446119dd24125`  
		Last Modified: Wed, 17 Aug 2016 19:45:07 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:683c37f6cfa9aa8639c51dbc53f2072ac168fda469ef503e272e8bbaf3c69a5b`  
		Last Modified: Wed, 17 Aug 2016 19:47:13 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-8-alpine`

```console
$ docker pull maven@sha256:06b7e944af3b61215ad9cce60a51ca3e2f25bd326aae7a515919dfd5557de62c
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-8-alpine` - linux; amd64

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d57f795d926435b5621342da8fc8555bd966d7c4b15c6eb202e16737505c61`  
		Last Modified: Thu, 07 Jul 2016 19:12:16 GMT  
		Size: 49.3 MB (49325243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ea2f07ee575d2db4e2bb2ed6cfb309dd245ca0f0c50a9217ade36cb7632ee6`  
		Last Modified: Wed, 17 Aug 2016 19:48:51 GMT  
		Size: 1.7 MB (1686608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba787c9eff568f8ebc3b2896c3302d8c6e5d7efad4d3223e5ddb4659336a0bc5`  
		Last Modified: Wed, 17 Aug 2016 19:48:52 GMT  
		Size: 8.6 MB (8598855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b9e34a813e9aaed891f82dec2bfb10eeb4c42d6db44733df02e4b17fac54cf`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae872ee257f06c3e1cec76d2906bb39f6e0104f09769974401d57561cbeaa5e`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-alpine`

```console
$ docker pull maven@sha256:06b7e944af3b61215ad9cce60a51ca3e2f25bd326aae7a515919dfd5557de62c
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-alpine` - linux; amd64

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d57f795d926435b5621342da8fc8555bd966d7c4b15c6eb202e16737505c61`  
		Last Modified: Thu, 07 Jul 2016 19:12:16 GMT  
		Size: 49.3 MB (49325243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ea2f07ee575d2db4e2bb2ed6cfb309dd245ca0f0c50a9217ade36cb7632ee6`  
		Last Modified: Wed, 17 Aug 2016 19:48:51 GMT  
		Size: 1.7 MB (1686608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba787c9eff568f8ebc3b2896c3302d8c6e5d7efad4d3223e5ddb4659336a0bc5`  
		Last Modified: Wed, 17 Aug 2016 19:48:52 GMT  
		Size: 8.6 MB (8598855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b9e34a813e9aaed891f82dec2bfb10eeb4c42d6db44733df02e4b17fac54cf`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae872ee257f06c3e1cec76d2906bb39f6e0104f09769974401d57561cbeaa5e`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-8-alpine`

```console
$ docker pull maven@sha256:06b7e944af3b61215ad9cce60a51ca3e2f25bd326aae7a515919dfd5557de62c
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-8-alpine` - linux; amd64

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d57f795d926435b5621342da8fc8555bd966d7c4b15c6eb202e16737505c61`  
		Last Modified: Thu, 07 Jul 2016 19:12:16 GMT  
		Size: 49.3 MB (49325243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ea2f07ee575d2db4e2bb2ed6cfb309dd245ca0f0c50a9217ade36cb7632ee6`  
		Last Modified: Wed, 17 Aug 2016 19:48:51 GMT  
		Size: 1.7 MB (1686608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba787c9eff568f8ebc3b2896c3302d8c6e5d7efad4d3223e5ddb4659336a0bc5`  
		Last Modified: Wed, 17 Aug 2016 19:48:52 GMT  
		Size: 8.6 MB (8598855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b9e34a813e9aaed891f82dec2bfb10eeb4c42d6db44733df02e4b17fac54cf`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae872ee257f06c3e1cec76d2906bb39f6e0104f09769974401d57561cbeaa5e`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d57f795d926435b5621342da8fc8555bd966d7c4b15c6eb202e16737505c61`  
		Last Modified: Thu, 07 Jul 2016 19:12:16 GMT  
		Size: 49.3 MB (49325243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ea2f07ee575d2db4e2bb2ed6cfb309dd245ca0f0c50a9217ade36cb7632ee6`  
		Last Modified: Wed, 17 Aug 2016 19:48:51 GMT  
		Size: 1.7 MB (1686608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba787c9eff568f8ebc3b2896c3302d8c6e5d7efad4d3223e5ddb4659336a0bc5`  
		Last Modified: Wed, 17 Aug 2016 19:48:52 GMT  
		Size: 8.6 MB (8598855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b9e34a813e9aaed891f82dec2bfb10eeb4c42d6db44733df02e4b17fac54cf`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae872ee257f06c3e1cec76d2906bb39f6e0104f09769974401d57561cbeaa5e`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d57f795d926435b5621342da8fc8555bd966d7c4b15c6eb202e16737505c61`  
		Last Modified: Thu, 07 Jul 2016 19:12:16 GMT  
		Size: 49.3 MB (49325243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ea2f07ee575d2db4e2bb2ed6cfb309dd245ca0f0c50a9217ade36cb7632ee6`  
		Last Modified: Wed, 17 Aug 2016 19:48:51 GMT  
		Size: 1.7 MB (1686608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba787c9eff568f8ebc3b2896c3302d8c6e5d7efad4d3223e5ddb4659336a0bc5`  
		Last Modified: Wed, 17 Aug 2016 19:48:52 GMT  
		Size: 8.6 MB (8598855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b9e34a813e9aaed891f82dec2bfb10eeb4c42d6db44733df02e4b17fac54cf`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae872ee257f06c3e1cec76d2906bb39f6e0104f09769974401d57561cbeaa5e`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d57f795d926435b5621342da8fc8555bd966d7c4b15c6eb202e16737505c61`  
		Last Modified: Thu, 07 Jul 2016 19:12:16 GMT  
		Size: 49.3 MB (49325243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ea2f07ee575d2db4e2bb2ed6cfb309dd245ca0f0c50a9217ade36cb7632ee6`  
		Last Modified: Wed, 17 Aug 2016 19:48:51 GMT  
		Size: 1.7 MB (1686608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba787c9eff568f8ebc3b2896c3302d8c6e5d7efad4d3223e5ddb4659336a0bc5`  
		Last Modified: Wed, 17 Aug 2016 19:48:52 GMT  
		Size: 8.6 MB (8598855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b9e34a813e9aaed891f82dec2bfb10eeb4c42d6db44733df02e4b17fac54cf`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae872ee257f06c3e1cec76d2906bb39f6e0104f09769974401d57561cbeaa5e`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:alpine`

```console
$ docker pull maven@sha256:06b7e944af3b61215ad9cce60a51ca3e2f25bd326aae7a515919dfd5557de62c
```

-	Platforms:
	-	linux; amd64

### `maven:alpine` - linux; amd64

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d57f795d926435b5621342da8fc8555bd966d7c4b15c6eb202e16737505c61`  
		Last Modified: Thu, 07 Jul 2016 19:12:16 GMT  
		Size: 49.3 MB (49325243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ea2f07ee575d2db4e2bb2ed6cfb309dd245ca0f0c50a9217ade36cb7632ee6`  
		Last Modified: Wed, 17 Aug 2016 19:48:51 GMT  
		Size: 1.7 MB (1686608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba787c9eff568f8ebc3b2896c3302d8c6e5d7efad4d3223e5ddb4659336a0bc5`  
		Last Modified: Wed, 17 Aug 2016 19:48:52 GMT  
		Size: 8.6 MB (8598855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b9e34a813e9aaed891f82dec2bfb10eeb4c42d6db44733df02e4b17fac54cf`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae872ee257f06c3e1cec76d2906bb39f6e0104f09769974401d57561cbeaa5e`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d57f795d926435b5621342da8fc8555bd966d7c4b15c6eb202e16737505c61`  
		Last Modified: Thu, 07 Jul 2016 19:12:16 GMT  
		Size: 49.3 MB (49325243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ea2f07ee575d2db4e2bb2ed6cfb309dd245ca0f0c50a9217ade36cb7632ee6`  
		Last Modified: Wed, 17 Aug 2016 19:48:51 GMT  
		Size: 1.7 MB (1686608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba787c9eff568f8ebc3b2896c3302d8c6e5d7efad4d3223e5ddb4659336a0bc5`  
		Last Modified: Wed, 17 Aug 2016 19:48:52 GMT  
		Size: 8.6 MB (8598855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b9e34a813e9aaed891f82dec2bfb10eeb4c42d6db44733df02e4b17fac54cf`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae872ee257f06c3e1cec76d2906bb39f6e0104f09769974401d57561cbeaa5e`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a3dc0807347dd6157236174e51a291eed206943ed8b899953923744dbb7211`  
		Last Modified: Wed, 17 Aug 2016 19:50:28 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-onbuild-alpine`

```console
$ docker pull maven@sha256:8796a3339c35e5817baa28128c0826b5414b47ef4275aab71019c9d7eb83d8fd
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-onbuild-alpine` - linux; amd64

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d57f795d926435b5621342da8fc8555bd966d7c4b15c6eb202e16737505c61`  
		Last Modified: Thu, 07 Jul 2016 19:12:16 GMT  
		Size: 49.3 MB (49325243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ea2f07ee575d2db4e2bb2ed6cfb309dd245ca0f0c50a9217ade36cb7632ee6`  
		Last Modified: Wed, 17 Aug 2016 19:48:51 GMT  
		Size: 1.7 MB (1686608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba787c9eff568f8ebc3b2896c3302d8c6e5d7efad4d3223e5ddb4659336a0bc5`  
		Last Modified: Wed, 17 Aug 2016 19:48:52 GMT  
		Size: 8.6 MB (8598855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b9e34a813e9aaed891f82dec2bfb10eeb4c42d6db44733df02e4b17fac54cf`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae872ee257f06c3e1cec76d2906bb39f6e0104f09769974401d57561cbeaa5e`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a3dc0807347dd6157236174e51a291eed206943ed8b899953923744dbb7211`  
		Last Modified: Wed, 17 Aug 2016 19:50:28 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-8-onbuild-alpine`

```console
$ docker pull maven@sha256:8796a3339c35e5817baa28128c0826b5414b47ef4275aab71019c9d7eb83d8fd
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-8-onbuild-alpine` - linux; amd64

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d57f795d926435b5621342da8fc8555bd966d7c4b15c6eb202e16737505c61`  
		Last Modified: Thu, 07 Jul 2016 19:12:16 GMT  
		Size: 49.3 MB (49325243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ea2f07ee575d2db4e2bb2ed6cfb309dd245ca0f0c50a9217ade36cb7632ee6`  
		Last Modified: Wed, 17 Aug 2016 19:48:51 GMT  
		Size: 1.7 MB (1686608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba787c9eff568f8ebc3b2896c3302d8c6e5d7efad4d3223e5ddb4659336a0bc5`  
		Last Modified: Wed, 17 Aug 2016 19:48:52 GMT  
		Size: 8.6 MB (8598855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b9e34a813e9aaed891f82dec2bfb10eeb4c42d6db44733df02e4b17fac54cf`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae872ee257f06c3e1cec76d2906bb39f6e0104f09769974401d57561cbeaa5e`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a3dc0807347dd6157236174e51a291eed206943ed8b899953923744dbb7211`  
		Last Modified: Wed, 17 Aug 2016 19:50:28 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-onbuild-alpine`

```console
$ docker pull maven@sha256:8796a3339c35e5817baa28128c0826b5414b47ef4275aab71019c9d7eb83d8fd
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-onbuild-alpine` - linux; amd64

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d57f795d926435b5621342da8fc8555bd966d7c4b15c6eb202e16737505c61`  
		Last Modified: Thu, 07 Jul 2016 19:12:16 GMT  
		Size: 49.3 MB (49325243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ea2f07ee575d2db4e2bb2ed6cfb309dd245ca0f0c50a9217ade36cb7632ee6`  
		Last Modified: Wed, 17 Aug 2016 19:48:51 GMT  
		Size: 1.7 MB (1686608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba787c9eff568f8ebc3b2896c3302d8c6e5d7efad4d3223e5ddb4659336a0bc5`  
		Last Modified: Wed, 17 Aug 2016 19:48:52 GMT  
		Size: 8.6 MB (8598855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b9e34a813e9aaed891f82dec2bfb10eeb4c42d6db44733df02e4b17fac54cf`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae872ee257f06c3e1cec76d2906bb39f6e0104f09769974401d57561cbeaa5e`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a3dc0807347dd6157236174e51a291eed206943ed8b899953923744dbb7211`  
		Last Modified: Wed, 17 Aug 2016 19:50:28 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-onbuild-alpine`

```console
$ docker pull maven@sha256:8796a3339c35e5817baa28128c0826b5414b47ef4275aab71019c9d7eb83d8fd
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-onbuild-alpine` - linux; amd64

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d57f795d926435b5621342da8fc8555bd966d7c4b15c6eb202e16737505c61`  
		Last Modified: Thu, 07 Jul 2016 19:12:16 GMT  
		Size: 49.3 MB (49325243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ea2f07ee575d2db4e2bb2ed6cfb309dd245ca0f0c50a9217ade36cb7632ee6`  
		Last Modified: Wed, 17 Aug 2016 19:48:51 GMT  
		Size: 1.7 MB (1686608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba787c9eff568f8ebc3b2896c3302d8c6e5d7efad4d3223e5ddb4659336a0bc5`  
		Last Modified: Wed, 17 Aug 2016 19:48:52 GMT  
		Size: 8.6 MB (8598855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b9e34a813e9aaed891f82dec2bfb10eeb4c42d6db44733df02e4b17fac54cf`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae872ee257f06c3e1cec76d2906bb39f6e0104f09769974401d57561cbeaa5e`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a3dc0807347dd6157236174e51a291eed206943ed8b899953923744dbb7211`  
		Last Modified: Wed, 17 Aug 2016 19:50:28 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-onbuild-alpine`

```console
$ docker pull maven@sha256:8796a3339c35e5817baa28128c0826b5414b47ef4275aab71019c9d7eb83d8fd
```

-	Platforms:
	-	linux; amd64

### `maven:3-onbuild-alpine` - linux; amd64

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d57f795d926435b5621342da8fc8555bd966d7c4b15c6eb202e16737505c61`  
		Last Modified: Thu, 07 Jul 2016 19:12:16 GMT  
		Size: 49.3 MB (49325243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ea2f07ee575d2db4e2bb2ed6cfb309dd245ca0f0c50a9217ade36cb7632ee6`  
		Last Modified: Wed, 17 Aug 2016 19:48:51 GMT  
		Size: 1.7 MB (1686608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba787c9eff568f8ebc3b2896c3302d8c6e5d7efad4d3223e5ddb4659336a0bc5`  
		Last Modified: Wed, 17 Aug 2016 19:48:52 GMT  
		Size: 8.6 MB (8598855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b9e34a813e9aaed891f82dec2bfb10eeb4c42d6db44733df02e4b17fac54cf`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae872ee257f06c3e1cec76d2906bb39f6e0104f09769974401d57561cbeaa5e`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a3dc0807347dd6157236174e51a291eed206943ed8b899953923744dbb7211`  
		Last Modified: Wed, 17 Aug 2016 19:50:28 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:onbuild-alpine`

```console
$ docker pull maven@sha256:8796a3339c35e5817baa28128c0826b5414b47ef4275aab71019c9d7eb83d8fd
```

-	Platforms:
	-	linux; amd64

### `maven:onbuild-alpine` - linux; amd64

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
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726fbb708f0cfe4f045a0616cde707fb6bcc4e579926a29863ba422c0d86839`  
		Last Modified: Thu, 23 Jun 2016 20:35:22 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d57f795d926435b5621342da8fc8555bd966d7c4b15c6eb202e16737505c61`  
		Last Modified: Thu, 07 Jul 2016 19:12:16 GMT  
		Size: 49.3 MB (49325243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ea2f07ee575d2db4e2bb2ed6cfb309dd245ca0f0c50a9217ade36cb7632ee6`  
		Last Modified: Wed, 17 Aug 2016 19:48:51 GMT  
		Size: 1.7 MB (1686608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba787c9eff568f8ebc3b2896c3302d8c6e5d7efad4d3223e5ddb4659336a0bc5`  
		Last Modified: Wed, 17 Aug 2016 19:48:52 GMT  
		Size: 8.6 MB (8598855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b9e34a813e9aaed891f82dec2bfb10eeb4c42d6db44733df02e4b17fac54cf`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae872ee257f06c3e1cec76d2906bb39f6e0104f09769974401d57561cbeaa5e`  
		Last Modified: Wed, 17 Aug 2016 19:48:50 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a3dc0807347dd6157236174e51a291eed206943ed8b899953923744dbb7211`  
		Last Modified: Wed, 17 Aug 2016 19:50:28 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-9`

```console
$ docker pull maven@sha256:d6121419f7e62b5f608abeaccc232c21e373c38c5d8fbba933d289b75fa6c573
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-9` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247210652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aa224535f08ad9207e1a93de707fcd742511174cb57a04a9625456d91119a70`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 28 Jul 2016 17:48:23 GMT
ADD file:ef6cd3ee88d7045391cb7b6c1014d225d1abe9c0539fa50b9260639774032866 in /
# Thu, 28 Jul 2016 17:48:24 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 18:23:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 18:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:08:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:08:58 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 05 Aug 2016 22:08:58 GMT
ENV LANG=C.UTF-8
# Fri, 05 Aug 2016 22:09:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 Aug 2016 22:09:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Mon, 08 Aug 2016 19:22:12 GMT
ENV JAVA_VERSION=9~b130
# Mon, 08 Aug 2016 19:22:13 GMT
ENV JAVA_DEBIAN_VERSION=9~b130-1
# Mon, 08 Aug 2016 19:22:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 17 Aug 2016 19:41:25 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 17 Aug 2016 19:41:26 GMT
ARG USER_HOME_DIR=/root
# Wed, 17 Aug 2016 19:41:29 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 17 Aug 2016 19:41:37 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 17 Aug 2016 19:41:38 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 17 Aug 2016 19:41:39 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh
# Wed, 17 Aug 2016 19:41:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/
# Wed, 17 Aug 2016 19:41:42 GMT
VOLUME [/root/.m2]
# Wed, 17 Aug 2016 19:41:43 GMT
ENTRYPOINT &{["/usr/local/bin/mvn-entrypoint.sh"]}
# Wed, 17 Aug 2016 19:41:44 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f8e784df59625b49bca4ce9f70150e254beed293dd99fc93da5039461894ad16`  
		Last Modified: Thu, 28 Jul 2016 17:51:47 GMT  
		Size: 42.5 MB (42487630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f43e0bc93f103915619fd63da3b1b9f0c590b992436233b8a47b78abf15cb2`  
		Last Modified: Thu, 28 Jul 2016 21:55:19 GMT  
		Size: 20.5 MB (20510432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa88ad4d042668a78f51a91bda0606d38e6428ec8291c78b9ca6fc056bb7881e`  
		Last Modified: Thu, 28 Jul 2016 21:55:32 GMT  
		Size: 47.5 MB (47493601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a931bc6193178b4096590b2a5c51e5e1de37c31f32dc4544f2b1c899aa00ad`  
		Last Modified: Fri, 05 Aug 2016 22:23:10 GMT  
		Size: 595.7 KB (595719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb215ff5222e68e021e3b63c9a666bd5d3356b50b1431b62f8f1d96e7e832da`  
		Last Modified: Fri, 05 Aug 2016 22:23:06 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b7b99e80371e005bd5a6d83bb03b31b138070af3fdd92e43706ed3bd710864`  
		Last Modified: Fri, 05 Aug 2016 22:23:06 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6390e8ca1c71ea8a4e0214ef60b956c839e9bf822bfb3323690288f49ca947d2`  
		Last Modified: Mon, 08 Aug 2016 19:34:56 GMT  
		Size: 127.5 MB (127522918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a325d5fce9eb766fa568876e2dd6f9f8d3f88c7a603958cec6e7753650298c2`  
		Last Modified: Wed, 17 Aug 2016 19:52:08 GMT  
		Size: 8.6 MB (8598849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf3d7d5b5a6a5843bdbfbb198de29056815372ffbdd3f901f6244ddc01f3101`  
		Last Modified: Wed, 17 Aug 2016 19:52:06 GMT  
		Size: 692.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb8435347018eb60a8539e18ad33c1985b37f8050f9d5188e7e7fa0c489cc55`  
		Last Modified: Wed, 17 Aug 2016 19:52:06 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-9`

```console
$ docker pull maven@sha256:d6121419f7e62b5f608abeaccc232c21e373c38c5d8fbba933d289b75fa6c573
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-9` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247210652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aa224535f08ad9207e1a93de707fcd742511174cb57a04a9625456d91119a70`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 28 Jul 2016 17:48:23 GMT
ADD file:ef6cd3ee88d7045391cb7b6c1014d225d1abe9c0539fa50b9260639774032866 in /
# Thu, 28 Jul 2016 17:48:24 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 18:23:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 18:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:08:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:08:58 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 05 Aug 2016 22:08:58 GMT
ENV LANG=C.UTF-8
# Fri, 05 Aug 2016 22:09:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 Aug 2016 22:09:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Mon, 08 Aug 2016 19:22:12 GMT
ENV JAVA_VERSION=9~b130
# Mon, 08 Aug 2016 19:22:13 GMT
ENV JAVA_DEBIAN_VERSION=9~b130-1
# Mon, 08 Aug 2016 19:22:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 17 Aug 2016 19:41:25 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 17 Aug 2016 19:41:26 GMT
ARG USER_HOME_DIR=/root
# Wed, 17 Aug 2016 19:41:29 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 17 Aug 2016 19:41:37 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 17 Aug 2016 19:41:38 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 17 Aug 2016 19:41:39 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh
# Wed, 17 Aug 2016 19:41:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/
# Wed, 17 Aug 2016 19:41:42 GMT
VOLUME [/root/.m2]
# Wed, 17 Aug 2016 19:41:43 GMT
ENTRYPOINT &{["/usr/local/bin/mvn-entrypoint.sh"]}
# Wed, 17 Aug 2016 19:41:44 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f8e784df59625b49bca4ce9f70150e254beed293dd99fc93da5039461894ad16`  
		Last Modified: Thu, 28 Jul 2016 17:51:47 GMT  
		Size: 42.5 MB (42487630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f43e0bc93f103915619fd63da3b1b9f0c590b992436233b8a47b78abf15cb2`  
		Last Modified: Thu, 28 Jul 2016 21:55:19 GMT  
		Size: 20.5 MB (20510432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa88ad4d042668a78f51a91bda0606d38e6428ec8291c78b9ca6fc056bb7881e`  
		Last Modified: Thu, 28 Jul 2016 21:55:32 GMT  
		Size: 47.5 MB (47493601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a931bc6193178b4096590b2a5c51e5e1de37c31f32dc4544f2b1c899aa00ad`  
		Last Modified: Fri, 05 Aug 2016 22:23:10 GMT  
		Size: 595.7 KB (595719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb215ff5222e68e021e3b63c9a666bd5d3356b50b1431b62f8f1d96e7e832da`  
		Last Modified: Fri, 05 Aug 2016 22:23:06 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b7b99e80371e005bd5a6d83bb03b31b138070af3fdd92e43706ed3bd710864`  
		Last Modified: Fri, 05 Aug 2016 22:23:06 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6390e8ca1c71ea8a4e0214ef60b956c839e9bf822bfb3323690288f49ca947d2`  
		Last Modified: Mon, 08 Aug 2016 19:34:56 GMT  
		Size: 127.5 MB (127522918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a325d5fce9eb766fa568876e2dd6f9f8d3f88c7a603958cec6e7753650298c2`  
		Last Modified: Wed, 17 Aug 2016 19:52:08 GMT  
		Size: 8.6 MB (8598849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf3d7d5b5a6a5843bdbfbb198de29056815372ffbdd3f901f6244ddc01f3101`  
		Last Modified: Wed, 17 Aug 2016 19:52:06 GMT  
		Size: 692.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb8435347018eb60a8539e18ad33c1985b37f8050f9d5188e7e7fa0c489cc55`  
		Last Modified: Wed, 17 Aug 2016 19:52:06 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-9`

```console
$ docker pull maven@sha256:d6121419f7e62b5f608abeaccc232c21e373c38c5d8fbba933d289b75fa6c573
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247210652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aa224535f08ad9207e1a93de707fcd742511174cb57a04a9625456d91119a70`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 28 Jul 2016 17:48:23 GMT
ADD file:ef6cd3ee88d7045391cb7b6c1014d225d1abe9c0539fa50b9260639774032866 in /
# Thu, 28 Jul 2016 17:48:24 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 18:23:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 18:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:08:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:08:58 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 05 Aug 2016 22:08:58 GMT
ENV LANG=C.UTF-8
# Fri, 05 Aug 2016 22:09:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 Aug 2016 22:09:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Mon, 08 Aug 2016 19:22:12 GMT
ENV JAVA_VERSION=9~b130
# Mon, 08 Aug 2016 19:22:13 GMT
ENV JAVA_DEBIAN_VERSION=9~b130-1
# Mon, 08 Aug 2016 19:22:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 17 Aug 2016 19:41:25 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 17 Aug 2016 19:41:26 GMT
ARG USER_HOME_DIR=/root
# Wed, 17 Aug 2016 19:41:29 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 17 Aug 2016 19:41:37 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 17 Aug 2016 19:41:38 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 17 Aug 2016 19:41:39 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh
# Wed, 17 Aug 2016 19:41:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/
# Wed, 17 Aug 2016 19:41:42 GMT
VOLUME [/root/.m2]
# Wed, 17 Aug 2016 19:41:43 GMT
ENTRYPOINT &{["/usr/local/bin/mvn-entrypoint.sh"]}
# Wed, 17 Aug 2016 19:41:44 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f8e784df59625b49bca4ce9f70150e254beed293dd99fc93da5039461894ad16`  
		Last Modified: Thu, 28 Jul 2016 17:51:47 GMT  
		Size: 42.5 MB (42487630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f43e0bc93f103915619fd63da3b1b9f0c590b992436233b8a47b78abf15cb2`  
		Last Modified: Thu, 28 Jul 2016 21:55:19 GMT  
		Size: 20.5 MB (20510432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa88ad4d042668a78f51a91bda0606d38e6428ec8291c78b9ca6fc056bb7881e`  
		Last Modified: Thu, 28 Jul 2016 21:55:32 GMT  
		Size: 47.5 MB (47493601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a931bc6193178b4096590b2a5c51e5e1de37c31f32dc4544f2b1c899aa00ad`  
		Last Modified: Fri, 05 Aug 2016 22:23:10 GMT  
		Size: 595.7 KB (595719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb215ff5222e68e021e3b63c9a666bd5d3356b50b1431b62f8f1d96e7e832da`  
		Last Modified: Fri, 05 Aug 2016 22:23:06 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b7b99e80371e005bd5a6d83bb03b31b138070af3fdd92e43706ed3bd710864`  
		Last Modified: Fri, 05 Aug 2016 22:23:06 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6390e8ca1c71ea8a4e0214ef60b956c839e9bf822bfb3323690288f49ca947d2`  
		Last Modified: Mon, 08 Aug 2016 19:34:56 GMT  
		Size: 127.5 MB (127522918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a325d5fce9eb766fa568876e2dd6f9f8d3f88c7a603958cec6e7753650298c2`  
		Last Modified: Wed, 17 Aug 2016 19:52:08 GMT  
		Size: 8.6 MB (8598849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf3d7d5b5a6a5843bdbfbb198de29056815372ffbdd3f901f6244ddc01f3101`  
		Last Modified: Wed, 17 Aug 2016 19:52:06 GMT  
		Size: 692.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb8435347018eb60a8539e18ad33c1985b37f8050f9d5188e7e7fa0c489cc55`  
		Last Modified: Wed, 17 Aug 2016 19:52:06 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-9-onbuild`

```console
$ docker pull maven@sha256:0edf3375415893ddba7f94c7d90c05345397e9d35f9491c997231779e96f3cd1
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-9-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247210809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b3be1762c71a94113935b9c9a9618c5a6a0298c83ec43f9a2e973251277696c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 28 Jul 2016 17:48:23 GMT
ADD file:ef6cd3ee88d7045391cb7b6c1014d225d1abe9c0539fa50b9260639774032866 in /
# Thu, 28 Jul 2016 17:48:24 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 18:23:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 18:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:08:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:08:58 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 05 Aug 2016 22:08:58 GMT
ENV LANG=C.UTF-8
# Fri, 05 Aug 2016 22:09:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 Aug 2016 22:09:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Mon, 08 Aug 2016 19:22:12 GMT
ENV JAVA_VERSION=9~b130
# Mon, 08 Aug 2016 19:22:13 GMT
ENV JAVA_DEBIAN_VERSION=9~b130-1
# Mon, 08 Aug 2016 19:22:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 17 Aug 2016 19:41:25 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 17 Aug 2016 19:41:26 GMT
ARG USER_HOME_DIR=/root
# Wed, 17 Aug 2016 19:41:29 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 17 Aug 2016 19:41:37 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 17 Aug 2016 19:41:38 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 17 Aug 2016 19:41:39 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh
# Wed, 17 Aug 2016 19:41:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/
# Wed, 17 Aug 2016 19:41:42 GMT
VOLUME [/root/.m2]
# Wed, 17 Aug 2016 19:41:43 GMT
ENTRYPOINT &{["/usr/local/bin/mvn-entrypoint.sh"]}
# Wed, 17 Aug 2016 19:41:44 GMT
CMD ["mvn"]
# Wed, 17 Aug 2016 19:41:46 GMT
RUN mkdir -p /usr/src/app
# Wed, 17 Aug 2016 19:41:53 GMT
WORKDIR /usr/src/app
# Wed, 17 Aug 2016 19:41:54 GMT
ONBUILD ADD . /usr/src/app
# Wed, 17 Aug 2016 19:41:55 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:f8e784df59625b49bca4ce9f70150e254beed293dd99fc93da5039461894ad16`  
		Last Modified: Thu, 28 Jul 2016 17:51:47 GMT  
		Size: 42.5 MB (42487630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f43e0bc93f103915619fd63da3b1b9f0c590b992436233b8a47b78abf15cb2`  
		Last Modified: Thu, 28 Jul 2016 21:55:19 GMT  
		Size: 20.5 MB (20510432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa88ad4d042668a78f51a91bda0606d38e6428ec8291c78b9ca6fc056bb7881e`  
		Last Modified: Thu, 28 Jul 2016 21:55:32 GMT  
		Size: 47.5 MB (47493601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a931bc6193178b4096590b2a5c51e5e1de37c31f32dc4544f2b1c899aa00ad`  
		Last Modified: Fri, 05 Aug 2016 22:23:10 GMT  
		Size: 595.7 KB (595719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb215ff5222e68e021e3b63c9a666bd5d3356b50b1431b62f8f1d96e7e832da`  
		Last Modified: Fri, 05 Aug 2016 22:23:06 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b7b99e80371e005bd5a6d83bb03b31b138070af3fdd92e43706ed3bd710864`  
		Last Modified: Fri, 05 Aug 2016 22:23:06 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6390e8ca1c71ea8a4e0214ef60b956c839e9bf822bfb3323690288f49ca947d2`  
		Last Modified: Mon, 08 Aug 2016 19:34:56 GMT  
		Size: 127.5 MB (127522918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a325d5fce9eb766fa568876e2dd6f9f8d3f88c7a603958cec6e7753650298c2`  
		Last Modified: Wed, 17 Aug 2016 19:52:08 GMT  
		Size: 8.6 MB (8598849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf3d7d5b5a6a5843bdbfbb198de29056815372ffbdd3f901f6244ddc01f3101`  
		Last Modified: Wed, 17 Aug 2016 19:52:06 GMT  
		Size: 692.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb8435347018eb60a8539e18ad33c1985b37f8050f9d5188e7e7fa0c489cc55`  
		Last Modified: Wed, 17 Aug 2016 19:52:06 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f8581c08815b29353767be36dd3bb991e1ad6e9e049cdd3d40a8d4171ae1c9`  
		Last Modified: Wed, 17 Aug 2016 19:52:50 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-9-onbuild`

```console
$ docker pull maven@sha256:0edf3375415893ddba7f94c7d90c05345397e9d35f9491c997231779e96f3cd1
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-9-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247210809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b3be1762c71a94113935b9c9a9618c5a6a0298c83ec43f9a2e973251277696c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 28 Jul 2016 17:48:23 GMT
ADD file:ef6cd3ee88d7045391cb7b6c1014d225d1abe9c0539fa50b9260639774032866 in /
# Thu, 28 Jul 2016 17:48:24 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 18:23:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 18:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:08:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:08:58 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 05 Aug 2016 22:08:58 GMT
ENV LANG=C.UTF-8
# Fri, 05 Aug 2016 22:09:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 Aug 2016 22:09:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Mon, 08 Aug 2016 19:22:12 GMT
ENV JAVA_VERSION=9~b130
# Mon, 08 Aug 2016 19:22:13 GMT
ENV JAVA_DEBIAN_VERSION=9~b130-1
# Mon, 08 Aug 2016 19:22:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 17 Aug 2016 19:41:25 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 17 Aug 2016 19:41:26 GMT
ARG USER_HOME_DIR=/root
# Wed, 17 Aug 2016 19:41:29 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 17 Aug 2016 19:41:37 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 17 Aug 2016 19:41:38 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 17 Aug 2016 19:41:39 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh
# Wed, 17 Aug 2016 19:41:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/
# Wed, 17 Aug 2016 19:41:42 GMT
VOLUME [/root/.m2]
# Wed, 17 Aug 2016 19:41:43 GMT
ENTRYPOINT &{["/usr/local/bin/mvn-entrypoint.sh"]}
# Wed, 17 Aug 2016 19:41:44 GMT
CMD ["mvn"]
# Wed, 17 Aug 2016 19:41:46 GMT
RUN mkdir -p /usr/src/app
# Wed, 17 Aug 2016 19:41:53 GMT
WORKDIR /usr/src/app
# Wed, 17 Aug 2016 19:41:54 GMT
ONBUILD ADD . /usr/src/app
# Wed, 17 Aug 2016 19:41:55 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:f8e784df59625b49bca4ce9f70150e254beed293dd99fc93da5039461894ad16`  
		Last Modified: Thu, 28 Jul 2016 17:51:47 GMT  
		Size: 42.5 MB (42487630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f43e0bc93f103915619fd63da3b1b9f0c590b992436233b8a47b78abf15cb2`  
		Last Modified: Thu, 28 Jul 2016 21:55:19 GMT  
		Size: 20.5 MB (20510432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa88ad4d042668a78f51a91bda0606d38e6428ec8291c78b9ca6fc056bb7881e`  
		Last Modified: Thu, 28 Jul 2016 21:55:32 GMT  
		Size: 47.5 MB (47493601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a931bc6193178b4096590b2a5c51e5e1de37c31f32dc4544f2b1c899aa00ad`  
		Last Modified: Fri, 05 Aug 2016 22:23:10 GMT  
		Size: 595.7 KB (595719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb215ff5222e68e021e3b63c9a666bd5d3356b50b1431b62f8f1d96e7e832da`  
		Last Modified: Fri, 05 Aug 2016 22:23:06 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b7b99e80371e005bd5a6d83bb03b31b138070af3fdd92e43706ed3bd710864`  
		Last Modified: Fri, 05 Aug 2016 22:23:06 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6390e8ca1c71ea8a4e0214ef60b956c839e9bf822bfb3323690288f49ca947d2`  
		Last Modified: Mon, 08 Aug 2016 19:34:56 GMT  
		Size: 127.5 MB (127522918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a325d5fce9eb766fa568876e2dd6f9f8d3f88c7a603958cec6e7753650298c2`  
		Last Modified: Wed, 17 Aug 2016 19:52:08 GMT  
		Size: 8.6 MB (8598849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf3d7d5b5a6a5843bdbfbb198de29056815372ffbdd3f901f6244ddc01f3101`  
		Last Modified: Wed, 17 Aug 2016 19:52:06 GMT  
		Size: 692.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb8435347018eb60a8539e18ad33c1985b37f8050f9d5188e7e7fa0c489cc55`  
		Last Modified: Wed, 17 Aug 2016 19:52:06 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f8581c08815b29353767be36dd3bb991e1ad6e9e049cdd3d40a8d4171ae1c9`  
		Last Modified: Wed, 17 Aug 2016 19:52:50 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-9-onbuild`

```console
$ docker pull maven@sha256:0edf3375415893ddba7f94c7d90c05345397e9d35f9491c997231779e96f3cd1
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247210809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b3be1762c71a94113935b9c9a9618c5a6a0298c83ec43f9a2e973251277696c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 28 Jul 2016 17:48:23 GMT
ADD file:ef6cd3ee88d7045391cb7b6c1014d225d1abe9c0539fa50b9260639774032866 in /
# Thu, 28 Jul 2016 17:48:24 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 18:23:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 18:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:08:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Aug 2016 22:08:58 GMT
RUN echo 'deb http://httpredir.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 05 Aug 2016 22:08:58 GMT
ENV LANG=C.UTF-8
# Fri, 05 Aug 2016 22:09:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 Aug 2016 22:09:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Mon, 08 Aug 2016 19:22:12 GMT
ENV JAVA_VERSION=9~b130
# Mon, 08 Aug 2016 19:22:13 GMT
ENV JAVA_DEBIAN_VERSION=9~b130-1
# Mon, 08 Aug 2016 19:22:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 17 Aug 2016 19:41:25 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 17 Aug 2016 19:41:26 GMT
ARG USER_HOME_DIR=/root
# Wed, 17 Aug 2016 19:41:29 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 17 Aug 2016 19:41:37 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 17 Aug 2016 19:41:38 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 17 Aug 2016 19:41:39 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh
# Wed, 17 Aug 2016 19:41:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/
# Wed, 17 Aug 2016 19:41:42 GMT
VOLUME [/root/.m2]
# Wed, 17 Aug 2016 19:41:43 GMT
ENTRYPOINT &{["/usr/local/bin/mvn-entrypoint.sh"]}
# Wed, 17 Aug 2016 19:41:44 GMT
CMD ["mvn"]
# Wed, 17 Aug 2016 19:41:46 GMT
RUN mkdir -p /usr/src/app
# Wed, 17 Aug 2016 19:41:53 GMT
WORKDIR /usr/src/app
# Wed, 17 Aug 2016 19:41:54 GMT
ONBUILD ADD . /usr/src/app
# Wed, 17 Aug 2016 19:41:55 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:f8e784df59625b49bca4ce9f70150e254beed293dd99fc93da5039461894ad16`  
		Last Modified: Thu, 28 Jul 2016 17:51:47 GMT  
		Size: 42.5 MB (42487630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f43e0bc93f103915619fd63da3b1b9f0c590b992436233b8a47b78abf15cb2`  
		Last Modified: Thu, 28 Jul 2016 21:55:19 GMT  
		Size: 20.5 MB (20510432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa88ad4d042668a78f51a91bda0606d38e6428ec8291c78b9ca6fc056bb7881e`  
		Last Modified: Thu, 28 Jul 2016 21:55:32 GMT  
		Size: 47.5 MB (47493601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a931bc6193178b4096590b2a5c51e5e1de37c31f32dc4544f2b1c899aa00ad`  
		Last Modified: Fri, 05 Aug 2016 22:23:10 GMT  
		Size: 595.7 KB (595719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb215ff5222e68e021e3b63c9a666bd5d3356b50b1431b62f8f1d96e7e832da`  
		Last Modified: Fri, 05 Aug 2016 22:23:06 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b7b99e80371e005bd5a6d83bb03b31b138070af3fdd92e43706ed3bd710864`  
		Last Modified: Fri, 05 Aug 2016 22:23:06 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6390e8ca1c71ea8a4e0214ef60b956c839e9bf822bfb3323690288f49ca947d2`  
		Last Modified: Mon, 08 Aug 2016 19:34:56 GMT  
		Size: 127.5 MB (127522918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a325d5fce9eb766fa568876e2dd6f9f8d3f88c7a603958cec6e7753650298c2`  
		Last Modified: Wed, 17 Aug 2016 19:52:08 GMT  
		Size: 8.6 MB (8598849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf3d7d5b5a6a5843bdbfbb198de29056815372ffbdd3f901f6244ddc01f3101`  
		Last Modified: Wed, 17 Aug 2016 19:52:06 GMT  
		Size: 692.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb8435347018eb60a8539e18ad33c1985b37f8050f9d5188e7e7fa0c489cc55`  
		Last Modified: Wed, 17 Aug 2016 19:52:06 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f8581c08815b29353767be36dd3bb991e1ad6e9e049cdd3d40a8d4171ae1c9`  
		Last Modified: Wed, 17 Aug 2016 19:52:50 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
