<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `clojure`

-	[`clojure:latest`](#clojurelatest)
-	[`clojure:lein-2.7.0`](#clojurelein-270)
-	[`clojure:onbuild`](#clojureonbuild)
-	[`clojure:lein-2.7.0-onbuild`](#clojurelein-270-onbuild)
-	[`clojure:alpine`](#clojurealpine)
-	[`clojure:lein-2.7.0-alpine`](#clojurelein-270-alpine)
-	[`clojure:alpine-onbuild`](#clojurealpine-onbuild)
-	[`clojure:lein-2.7.0-alpine-onbuild`](#clojurelein-270-alpine-onbuild)

## `clojure:latest`

```console
$ docker pull clojure@sha256:7644a068c42361e6d9e2cbf2199255e60be10f92e73f14de15dfd87bde50b57c
```

-	Platforms:
	-	linux; amd64

### `clojure:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 MB (257340251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c090eaf255197414446b508a9ec2a6148d4a544660d70165aa0e37aa54eb24c9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 04:55:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:31:31 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 20 Sep 2016 16:31:32 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 16:31:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 16:31:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 20 Sep 2016 16:31:33 GMT
ENV JAVA_VERSION=8u102
# Tue, 20 Sep 2016 16:31:33 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 20 Sep 2016 16:31:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 20 Sep 2016 16:32:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:32:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Sep 2016 18:53:07 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 20 Sep 2016 18:53:08 GMT
ENV LEIN_VERSION=2.7.0
# Tue, 20 Sep 2016 18:53:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 20 Sep 2016 18:53:08 GMT
WORKDIR /tmp
# Tue, 20 Sep 2016 18:53:21 GMT
RUN mkdir -p $LEIN_INSTALL   && wget --quiet https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "b4624548ada176c1d122dd9867a1bed09706fcd0 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget --quiet https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget --quiet https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar   &&  apt-get update && apt-get install rlfe && rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 18:53:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 20 Sep 2016 18:53:22 GMT
ENV LEIN_ROOT=1
# Tue, 20 Sep 2016 18:53:25 GMT
RUN lein
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e9f9640562cf88eb4fbb29ff94d3c527e1abcaada715ce9b71011b7b9cdbc7`  
		Last Modified: Mon, 19 Sep 2016 17:55:02 GMT  
		Size: 42.5 MB (42496798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bb34190d78de660a5162c939bf1b690a7aa136c429d2aafac110d76b7bcad3`  
		Last Modified: Wed, 21 Sep 2016 16:59:32 GMT  
		Size: 592.9 KB (592910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c99c854a7534fbe1ce2ee13ec1522172b6b4fc8ef2c79ee47e4dc47bb9e6e3`  
		Last Modified: Wed, 21 Sep 2016 16:59:31 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8843ac35975edea0b8abf9c6c70819188a606fd845de4333631de18997b86081`  
		Last Modified: Wed, 21 Sep 2016 16:59:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba41c7e179c2b55e4a4cdd7c6e1b993932e4cbdd309860d169799d1f92e7610a`  
		Last Modified: Wed, 21 Sep 2016 17:00:06 GMT  
		Size: 130.1 MB (130073726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f56d642a190474a7297f62fe8ad3eb8a88a0094b558a47acc0fc2a10c1a7ab1`  
		Last Modified: Wed, 21 Sep 2016 16:59:29 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6519e053d9e25364fa84e46cb4464f2a76cafb3ab7563a890236e95919feb8b1`  
		Last Modified: Thu, 22 Sep 2016 18:13:03 GMT  
		Size: 14.0 MB (14009799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd89fad1e482a1030458c85f20a68d7fe373c2477c2497589ce0c9925daaeb30`  
		Last Modified: Thu, 22 Sep 2016 18:13:01 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein-2.7.0`

```console
$ docker pull clojure@sha256:7644a068c42361e6d9e2cbf2199255e60be10f92e73f14de15dfd87bde50b57c
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-2.7.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 MB (257340251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c090eaf255197414446b508a9ec2a6148d4a544660d70165aa0e37aa54eb24c9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 04:55:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:31:31 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 20 Sep 2016 16:31:32 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 16:31:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 16:31:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 20 Sep 2016 16:31:33 GMT
ENV JAVA_VERSION=8u102
# Tue, 20 Sep 2016 16:31:33 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 20 Sep 2016 16:31:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 20 Sep 2016 16:32:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:32:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Sep 2016 18:53:07 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 20 Sep 2016 18:53:08 GMT
ENV LEIN_VERSION=2.7.0
# Tue, 20 Sep 2016 18:53:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 20 Sep 2016 18:53:08 GMT
WORKDIR /tmp
# Tue, 20 Sep 2016 18:53:21 GMT
RUN mkdir -p $LEIN_INSTALL   && wget --quiet https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "b4624548ada176c1d122dd9867a1bed09706fcd0 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget --quiet https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget --quiet https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar   &&  apt-get update && apt-get install rlfe && rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 18:53:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 20 Sep 2016 18:53:22 GMT
ENV LEIN_ROOT=1
# Tue, 20 Sep 2016 18:53:25 GMT
RUN lein
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e9f9640562cf88eb4fbb29ff94d3c527e1abcaada715ce9b71011b7b9cdbc7`  
		Last Modified: Mon, 19 Sep 2016 17:55:02 GMT  
		Size: 42.5 MB (42496798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bb34190d78de660a5162c939bf1b690a7aa136c429d2aafac110d76b7bcad3`  
		Last Modified: Wed, 21 Sep 2016 16:59:32 GMT  
		Size: 592.9 KB (592910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c99c854a7534fbe1ce2ee13ec1522172b6b4fc8ef2c79ee47e4dc47bb9e6e3`  
		Last Modified: Wed, 21 Sep 2016 16:59:31 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8843ac35975edea0b8abf9c6c70819188a606fd845de4333631de18997b86081`  
		Last Modified: Wed, 21 Sep 2016 16:59:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba41c7e179c2b55e4a4cdd7c6e1b993932e4cbdd309860d169799d1f92e7610a`  
		Last Modified: Wed, 21 Sep 2016 17:00:06 GMT  
		Size: 130.1 MB (130073726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f56d642a190474a7297f62fe8ad3eb8a88a0094b558a47acc0fc2a10c1a7ab1`  
		Last Modified: Wed, 21 Sep 2016 16:59:29 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6519e053d9e25364fa84e46cb4464f2a76cafb3ab7563a890236e95919feb8b1`  
		Last Modified: Thu, 22 Sep 2016 18:13:03 GMT  
		Size: 14.0 MB (14009799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd89fad1e482a1030458c85f20a68d7fe373c2477c2497589ce0c9925daaeb30`  
		Last Modified: Thu, 22 Sep 2016 18:13:01 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:onbuild`

```console
$ docker pull clojure@sha256:45067dd44a68b8c2e560e19a5ebe4378e35a394f93001f94bcd404cf2bdb62c3
```

-	Platforms:
	-	linux; amd64

### `clojure:onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 MB (257340378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fc47478d0ded6fa69ec64cdf476f38cc266a05fd3b07af0bff1eb02987627b1`
-	Default Command: `["lein","run"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 04:55:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:31:31 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 20 Sep 2016 16:31:32 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 16:31:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 16:31:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 20 Sep 2016 16:31:33 GMT
ENV JAVA_VERSION=8u102
# Tue, 20 Sep 2016 16:31:33 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 20 Sep 2016 16:31:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 20 Sep 2016 16:32:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:32:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Sep 2016 18:53:07 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 20 Sep 2016 18:53:08 GMT
ENV LEIN_VERSION=2.7.0
# Tue, 20 Sep 2016 18:53:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 20 Sep 2016 18:53:08 GMT
WORKDIR /tmp
# Tue, 20 Sep 2016 18:53:21 GMT
RUN mkdir -p $LEIN_INSTALL   && wget --quiet https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "b4624548ada176c1d122dd9867a1bed09706fcd0 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget --quiet https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget --quiet https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar   &&  apt-get update && apt-get install rlfe && rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 18:53:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 20 Sep 2016 18:53:22 GMT
ENV LEIN_ROOT=1
# Tue, 20 Sep 2016 18:53:25 GMT
RUN lein
# Tue, 20 Sep 2016 18:53:26 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Tue, 20 Sep 2016 18:53:26 GMT
WORKDIR /usr/src/app
# Tue, 20 Sep 2016 18:53:26 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 20 Sep 2016 18:53:26 GMT
ONBUILD RUN lein deps
# Tue, 20 Sep 2016 18:53:27 GMT
ONBUILD COPY . /usr/src/app
# Tue, 20 Sep 2016 18:53:27 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e9f9640562cf88eb4fbb29ff94d3c527e1abcaada715ce9b71011b7b9cdbc7`  
		Last Modified: Mon, 19 Sep 2016 17:55:02 GMT  
		Size: 42.5 MB (42496798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bb34190d78de660a5162c939bf1b690a7aa136c429d2aafac110d76b7bcad3`  
		Last Modified: Wed, 21 Sep 2016 16:59:32 GMT  
		Size: 592.9 KB (592910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c99c854a7534fbe1ce2ee13ec1522172b6b4fc8ef2c79ee47e4dc47bb9e6e3`  
		Last Modified: Wed, 21 Sep 2016 16:59:31 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8843ac35975edea0b8abf9c6c70819188a606fd845de4333631de18997b86081`  
		Last Modified: Wed, 21 Sep 2016 16:59:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba41c7e179c2b55e4a4cdd7c6e1b993932e4cbdd309860d169799d1f92e7610a`  
		Last Modified: Wed, 21 Sep 2016 17:00:06 GMT  
		Size: 130.1 MB (130073726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f56d642a190474a7297f62fe8ad3eb8a88a0094b558a47acc0fc2a10c1a7ab1`  
		Last Modified: Wed, 21 Sep 2016 16:59:29 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6519e053d9e25364fa84e46cb4464f2a76cafb3ab7563a890236e95919feb8b1`  
		Last Modified: Thu, 22 Sep 2016 18:13:03 GMT  
		Size: 14.0 MB (14009799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd89fad1e482a1030458c85f20a68d7fe373c2477c2497589ce0c9925daaeb30`  
		Last Modified: Thu, 22 Sep 2016 18:13:01 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34cdd1a75424a8a7a5f2f6bf94de020fbad3e019a7070801fdeabd9dcb2e3770`  
		Last Modified: Thu, 22 Sep 2016 18:13:46 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein-2.7.0-onbuild`

```console
$ docker pull clojure@sha256:45067dd44a68b8c2e560e19a5ebe4378e35a394f93001f94bcd404cf2bdb62c3
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-2.7.0-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 MB (257340378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fc47478d0ded6fa69ec64cdf476f38cc266a05fd3b07af0bff1eb02987627b1`
-	Default Command: `["lein","run"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 04:55:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 16:31:31 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 20 Sep 2016 16:31:32 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 16:31:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 16:31:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 20 Sep 2016 16:31:33 GMT
ENV JAVA_VERSION=8u102
# Tue, 20 Sep 2016 16:31:33 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Tue, 20 Sep 2016 16:31:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 20 Sep 2016 16:32:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:32:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Sep 2016 18:53:07 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 20 Sep 2016 18:53:08 GMT
ENV LEIN_VERSION=2.7.0
# Tue, 20 Sep 2016 18:53:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 20 Sep 2016 18:53:08 GMT
WORKDIR /tmp
# Tue, 20 Sep 2016 18:53:21 GMT
RUN mkdir -p $LEIN_INSTALL   && wget --quiet https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "b4624548ada176c1d122dd9867a1bed09706fcd0 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget --quiet https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget --quiet https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar   &&  apt-get update && apt-get install rlfe && rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 18:53:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 20 Sep 2016 18:53:22 GMT
ENV LEIN_ROOT=1
# Tue, 20 Sep 2016 18:53:25 GMT
RUN lein
# Tue, 20 Sep 2016 18:53:26 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Tue, 20 Sep 2016 18:53:26 GMT
WORKDIR /usr/src/app
# Tue, 20 Sep 2016 18:53:26 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 20 Sep 2016 18:53:26 GMT
ONBUILD RUN lein deps
# Tue, 20 Sep 2016 18:53:27 GMT
ONBUILD COPY . /usr/src/app
# Tue, 20 Sep 2016 18:53:27 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e9f9640562cf88eb4fbb29ff94d3c527e1abcaada715ce9b71011b7b9cdbc7`  
		Last Modified: Mon, 19 Sep 2016 17:55:02 GMT  
		Size: 42.5 MB (42496798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bb34190d78de660a5162c939bf1b690a7aa136c429d2aafac110d76b7bcad3`  
		Last Modified: Wed, 21 Sep 2016 16:59:32 GMT  
		Size: 592.9 KB (592910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c99c854a7534fbe1ce2ee13ec1522172b6b4fc8ef2c79ee47e4dc47bb9e6e3`  
		Last Modified: Wed, 21 Sep 2016 16:59:31 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8843ac35975edea0b8abf9c6c70819188a606fd845de4333631de18997b86081`  
		Last Modified: Wed, 21 Sep 2016 16:59:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba41c7e179c2b55e4a4cdd7c6e1b993932e4cbdd309860d169799d1f92e7610a`  
		Last Modified: Wed, 21 Sep 2016 17:00:06 GMT  
		Size: 130.1 MB (130073726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f56d642a190474a7297f62fe8ad3eb8a88a0094b558a47acc0fc2a10c1a7ab1`  
		Last Modified: Wed, 21 Sep 2016 16:59:29 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6519e053d9e25364fa84e46cb4464f2a76cafb3ab7563a890236e95919feb8b1`  
		Last Modified: Thu, 22 Sep 2016 18:13:03 GMT  
		Size: 14.0 MB (14009799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd89fad1e482a1030458c85f20a68d7fe373c2477c2497589ce0c9925daaeb30`  
		Last Modified: Thu, 22 Sep 2016 18:13:01 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34cdd1a75424a8a7a5f2f6bf94de020fbad3e019a7070801fdeabd9dcb2e3770`  
		Last Modified: Thu, 22 Sep 2016 18:13:46 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:alpine`

```console
$ docker pull clojure@sha256:2d13301d76cd12686408604fb39e720db2386c383fd0108f1d982156d944ae60
```

-	Platforms:
	-	linux; amd64

### `clojure:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.6 MB (70619652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aa88824eb7d9baa2fcfb1d46a9f845544430f85f5f6c9e0417cc42313a7388c`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:20:18 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 00:20:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 00:24:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 20 Sep 2016 00:24:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 00:24:55 GMT
ENV JAVA_VERSION=8u92
# Tue, 20 Sep 2016 00:24:55 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 20 Sep 2016 00:25:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:42:12 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 20 Sep 2016 16:42:12 GMT
ENV LEIN_VERSION=2.7.0
# Tue, 20 Sep 2016 16:42:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 20 Sep 2016 16:42:13 GMT
WORKDIR /tmp
# Tue, 20 Sep 2016 16:42:16 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Tue, 20 Sep 2016 16:42:31 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "b4624548ada176c1d122dd9867a1bed09706fcd0 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 20 Sep 2016 16:42:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Tue, 20 Sep 2016 16:42:32 GMT
ENV LEIN_ROOT=1
# Tue, 20 Sep 2016 16:42:37 GMT
RUN lein
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187ddf52152d8d92e51722e536dd02ec43d2f66b476ea87b4151c382fc922fea`  
		Last Modified: Tue, 20 Sep 2016 00:20:42 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf67fd54f62e201ba82c703badd08312a6e2eca50d5b9f17b8c3cc7c574d426`  
		Last Modified: Tue, 20 Sep 2016 00:25:28 GMT  
		Size: 49.3 MB (49325081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358f3f0e832c39af2fa8060d6f5a590c7383af1f492cb6095b52aa2e2e99b336`  
		Last Modified: Tue, 20 Sep 2016 16:42:46 GMT  
		Size: 5.2 MB (5181762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba066b4040c142624ab9e1a13ee5665e0c6565d51624918efaa9cb305a31f95`  
		Last Modified: Tue, 20 Sep 2016 16:42:47 GMT  
		Size: 13.8 MB (13801361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fd67145aa5378acd12ccfbcd6be5b7123a4365f3ae9dea2af00f72e3b8b6c2`  
		Last Modified: Tue, 20 Sep 2016 16:42:48 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein-2.7.0-alpine`

```console
$ docker pull clojure@sha256:2d13301d76cd12686408604fb39e720db2386c383fd0108f1d982156d944ae60
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-2.7.0-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.6 MB (70619652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aa88824eb7d9baa2fcfb1d46a9f845544430f85f5f6c9e0417cc42313a7388c`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:20:18 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 00:20:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 00:24:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 20 Sep 2016 00:24:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 00:24:55 GMT
ENV JAVA_VERSION=8u92
# Tue, 20 Sep 2016 00:24:55 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 20 Sep 2016 00:25:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:42:12 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 20 Sep 2016 16:42:12 GMT
ENV LEIN_VERSION=2.7.0
# Tue, 20 Sep 2016 16:42:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 20 Sep 2016 16:42:13 GMT
WORKDIR /tmp
# Tue, 20 Sep 2016 16:42:16 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Tue, 20 Sep 2016 16:42:31 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "b4624548ada176c1d122dd9867a1bed09706fcd0 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 20 Sep 2016 16:42:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Tue, 20 Sep 2016 16:42:32 GMT
ENV LEIN_ROOT=1
# Tue, 20 Sep 2016 16:42:37 GMT
RUN lein
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187ddf52152d8d92e51722e536dd02ec43d2f66b476ea87b4151c382fc922fea`  
		Last Modified: Tue, 20 Sep 2016 00:20:42 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf67fd54f62e201ba82c703badd08312a6e2eca50d5b9f17b8c3cc7c574d426`  
		Last Modified: Tue, 20 Sep 2016 00:25:28 GMT  
		Size: 49.3 MB (49325081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358f3f0e832c39af2fa8060d6f5a590c7383af1f492cb6095b52aa2e2e99b336`  
		Last Modified: Tue, 20 Sep 2016 16:42:46 GMT  
		Size: 5.2 MB (5181762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba066b4040c142624ab9e1a13ee5665e0c6565d51624918efaa9cb305a31f95`  
		Last Modified: Tue, 20 Sep 2016 16:42:47 GMT  
		Size: 13.8 MB (13801361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fd67145aa5378acd12ccfbcd6be5b7123a4365f3ae9dea2af00f72e3b8b6c2`  
		Last Modified: Tue, 20 Sep 2016 16:42:48 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:alpine-onbuild`

```console
$ docker pull clojure@sha256:a3c0f36b2020dd9d78227e0403a44bea4751314537c5e8e338bd95457320ad9f
```

-	Platforms:
	-	linux; amd64

### `clojure:alpine-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.6 MB (70619780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ebdc0bad850adc5ee779fb0479ccc07ae883f155f3beb0789e3c6e847fa5985`
-	Default Command: `["lein","run"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:20:18 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 00:20:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 00:24:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 20 Sep 2016 00:24:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 00:24:55 GMT
ENV JAVA_VERSION=8u92
# Tue, 20 Sep 2016 00:24:55 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 20 Sep 2016 00:25:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:42:12 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 20 Sep 2016 16:42:12 GMT
ENV LEIN_VERSION=2.7.0
# Tue, 20 Sep 2016 16:42:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 20 Sep 2016 16:42:13 GMT
WORKDIR /tmp
# Tue, 20 Sep 2016 16:42:16 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Tue, 20 Sep 2016 16:42:31 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "b4624548ada176c1d122dd9867a1bed09706fcd0 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 20 Sep 2016 16:42:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Tue, 20 Sep 2016 16:42:32 GMT
ENV LEIN_ROOT=1
# Tue, 20 Sep 2016 16:42:37 GMT
RUN lein
# Tue, 20 Sep 2016 16:43:06 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 20 Sep 2016 16:43:06 GMT
WORKDIR /usr/src/app
# Tue, 20 Sep 2016 16:43:06 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 20 Sep 2016 16:43:07 GMT
ONBUILD RUN lein deps
# Tue, 20 Sep 2016 16:43:07 GMT
ONBUILD COPY . /usr/src/app
# Tue, 20 Sep 2016 16:43:07 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187ddf52152d8d92e51722e536dd02ec43d2f66b476ea87b4151c382fc922fea`  
		Last Modified: Tue, 20 Sep 2016 00:20:42 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf67fd54f62e201ba82c703badd08312a6e2eca50d5b9f17b8c3cc7c574d426`  
		Last Modified: Tue, 20 Sep 2016 00:25:28 GMT  
		Size: 49.3 MB (49325081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358f3f0e832c39af2fa8060d6f5a590c7383af1f492cb6095b52aa2e2e99b336`  
		Last Modified: Tue, 20 Sep 2016 16:42:46 GMT  
		Size: 5.2 MB (5181762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba066b4040c142624ab9e1a13ee5665e0c6565d51624918efaa9cb305a31f95`  
		Last Modified: Tue, 20 Sep 2016 16:42:47 GMT  
		Size: 13.8 MB (13801361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fd67145aa5378acd12ccfbcd6be5b7123a4365f3ae9dea2af00f72e3b8b6c2`  
		Last Modified: Tue, 20 Sep 2016 16:42:48 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4d0cf501adb93ba018316af13ed3c3ab78d9b70834aea83789f1b678a5fcb2`  
		Last Modified: Tue, 20 Sep 2016 16:43:15 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein-2.7.0-alpine-onbuild`

```console
$ docker pull clojure@sha256:a3c0f36b2020dd9d78227e0403a44bea4751314537c5e8e338bd95457320ad9f
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-2.7.0-alpine-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.6 MB (70619780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ebdc0bad850adc5ee779fb0479ccc07ae883f155f3beb0789e3c6e847fa5985`
-	Default Command: `["lein","run"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:20:18 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 00:20:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 00:24:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 20 Sep 2016 00:24:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 00:24:55 GMT
ENV JAVA_VERSION=8u92
# Tue, 20 Sep 2016 00:24:55 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 20 Sep 2016 00:25:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 16:42:12 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 20 Sep 2016 16:42:12 GMT
ENV LEIN_VERSION=2.7.0
# Tue, 20 Sep 2016 16:42:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 20 Sep 2016 16:42:13 GMT
WORKDIR /tmp
# Tue, 20 Sep 2016 16:42:16 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Tue, 20 Sep 2016 16:42:31 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "b4624548ada176c1d122dd9867a1bed09706fcd0 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 20 Sep 2016 16:42:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Tue, 20 Sep 2016 16:42:32 GMT
ENV LEIN_ROOT=1
# Tue, 20 Sep 2016 16:42:37 GMT
RUN lein
# Tue, 20 Sep 2016 16:43:06 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 20 Sep 2016 16:43:06 GMT
WORKDIR /usr/src/app
# Tue, 20 Sep 2016 16:43:06 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 20 Sep 2016 16:43:07 GMT
ONBUILD RUN lein deps
# Tue, 20 Sep 2016 16:43:07 GMT
ONBUILD COPY . /usr/src/app
# Tue, 20 Sep 2016 16:43:07 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187ddf52152d8d92e51722e536dd02ec43d2f66b476ea87b4151c382fc922fea`  
		Last Modified: Tue, 20 Sep 2016 00:20:42 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf67fd54f62e201ba82c703badd08312a6e2eca50d5b9f17b8c3cc7c574d426`  
		Last Modified: Tue, 20 Sep 2016 00:25:28 GMT  
		Size: 49.3 MB (49325081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358f3f0e832c39af2fa8060d6f5a590c7383af1f492cb6095b52aa2e2e99b336`  
		Last Modified: Tue, 20 Sep 2016 16:42:46 GMT  
		Size: 5.2 MB (5181762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba066b4040c142624ab9e1a13ee5665e0c6565d51624918efaa9cb305a31f95`  
		Last Modified: Tue, 20 Sep 2016 16:42:47 GMT  
		Size: 13.8 MB (13801361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fd67145aa5378acd12ccfbcd6be5b7123a4365f3ae9dea2af00f72e3b8b6c2`  
		Last Modified: Tue, 20 Sep 2016 16:42:48 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4d0cf501adb93ba018316af13ed3c3ab78d9b70834aea83789f1b678a5fcb2`  
		Last Modified: Tue, 20 Sep 2016 16:43:15 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
