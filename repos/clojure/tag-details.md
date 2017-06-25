<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `clojure`

-	[`clojure:lein-2.7.1`](#clojurelein-271)
-	[`clojure:lein`](#clojurelein)
-	[`clojure:latest`](#clojurelatest)
-	[`clojure:lein-2.7.1-onbuild`](#clojurelein-271-onbuild)
-	[`clojure:lein-onbuild`](#clojurelein-onbuild)
-	[`clojure:onbuild`](#clojureonbuild)
-	[`clojure:lein-2.7.1-alpine`](#clojurelein-271-alpine)
-	[`clojure:lein-alpine`](#clojurelein-alpine)
-	[`clojure:alpine`](#clojurealpine)
-	[`clojure:lein-2.7.1-alpine-onbuild`](#clojurelein-271-alpine-onbuild)
-	[`clojure:lein-alpine-onbuild`](#clojurelein-alpine-onbuild)
-	[`clojure:alpine-onbuild`](#clojurealpine-onbuild)
-	[`clojure:boot-2.7.1`](#clojureboot-271)
-	[`clojure:boot`](#clojureboot)
-	[`clojure:boot-2.7.1-alpine`](#clojureboot-271-alpine)
-	[`clojure:boot-alpine`](#clojureboot-alpine)

## `clojure:lein-2.7.1`

```console
$ docker pull clojure@sha256:4d27e5b4610e80a2f037daeca7299e9f347e4141cf95636e93630a83bbc4e7fe
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-2.7.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.5 MB (252508357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef3cb912623ad905ff540e48a16353c337c86a0ef45d8ba4734069d329a8c7c5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 01:52:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:41:22 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:41:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:41:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:41:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:41:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:41:27 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:41:28 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:41:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:42:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:42:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 14:12:45 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Fri, 23 Jun 2017 14:12:46 GMT
ENV LEIN_VERSION=2.7.1
# Fri, 23 Jun 2017 14:12:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 23 Jun 2017 14:12:48 GMT
WORKDIR /tmp
# Fri, 23 Jun 2017 14:12:56 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Fri, 23 Jun 2017 14:13:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 23 Jun 2017 14:13:15 GMT
ENV LEIN_ROOT=1
# Fri, 23 Jun 2017 14:13:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd20aef2091895544e1f428c076d83267e49462e9c8ce7b19516940fa360f818`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 594.4 KB (594399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45121f36b267f144e4eb0fcf5eb9d7f9cdfa042a932e7f21644e2180afa1ec2`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ab37d060419095173bd9b57d4e21d2c1b353f23e11241371508d59d43639c8`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c611b2838da4d4cfad18b4e414d5c40d1bc9c1c54c1b4733a2245a1e71c379`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3c1f5610321e9bff27d7b8f01668ffce08f7519c724137c76aaebf911b9879`  
		Last Modified: Fri, 23 Jun 2017 14:09:26 GMT  
		Size: 119.4 MB (119365066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463554ba15a0ea914e9827ef50734bcdba3dd7fbf525b26b67f8528032bf2c4a`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 289.7 KB (289653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bedb8b9c49ddee2e8fb9023b1680527c32e1cc233b19fc66dd3bb44f3002a76`  
		Last Modified: Sun, 25 Jun 2017 07:16:06 GMT  
		Size: 13.8 MB (13811220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a37af26592e1d31b4bf23b4aa6392707e5abd1a3099cbd003b724968e941067`  
		Last Modified: Sun, 25 Jun 2017 07:16:05 GMT  
		Size: 3.3 MB (3340983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein`

```console
$ docker pull clojure@sha256:4d27e5b4610e80a2f037daeca7299e9f347e4141cf95636e93630a83bbc4e7fe
```

-	Platforms:
	-	linux; amd64

### `clojure:lein` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.5 MB (252508357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef3cb912623ad905ff540e48a16353c337c86a0ef45d8ba4734069d329a8c7c5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 01:52:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:41:22 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:41:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:41:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:41:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:41:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:41:27 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:41:28 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:41:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:42:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:42:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 14:12:45 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Fri, 23 Jun 2017 14:12:46 GMT
ENV LEIN_VERSION=2.7.1
# Fri, 23 Jun 2017 14:12:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 23 Jun 2017 14:12:48 GMT
WORKDIR /tmp
# Fri, 23 Jun 2017 14:12:56 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Fri, 23 Jun 2017 14:13:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 23 Jun 2017 14:13:15 GMT
ENV LEIN_ROOT=1
# Fri, 23 Jun 2017 14:13:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd20aef2091895544e1f428c076d83267e49462e9c8ce7b19516940fa360f818`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 594.4 KB (594399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45121f36b267f144e4eb0fcf5eb9d7f9cdfa042a932e7f21644e2180afa1ec2`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ab37d060419095173bd9b57d4e21d2c1b353f23e11241371508d59d43639c8`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c611b2838da4d4cfad18b4e414d5c40d1bc9c1c54c1b4733a2245a1e71c379`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3c1f5610321e9bff27d7b8f01668ffce08f7519c724137c76aaebf911b9879`  
		Last Modified: Fri, 23 Jun 2017 14:09:26 GMT  
		Size: 119.4 MB (119365066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463554ba15a0ea914e9827ef50734bcdba3dd7fbf525b26b67f8528032bf2c4a`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 289.7 KB (289653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bedb8b9c49ddee2e8fb9023b1680527c32e1cc233b19fc66dd3bb44f3002a76`  
		Last Modified: Sun, 25 Jun 2017 07:16:06 GMT  
		Size: 13.8 MB (13811220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a37af26592e1d31b4bf23b4aa6392707e5abd1a3099cbd003b724968e941067`  
		Last Modified: Sun, 25 Jun 2017 07:16:05 GMT  
		Size: 3.3 MB (3340983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:latest`

```console
$ docker pull clojure@sha256:4d27e5b4610e80a2f037daeca7299e9f347e4141cf95636e93630a83bbc4e7fe
```

-	Platforms:
	-	linux; amd64

### `clojure:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.5 MB (252508357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef3cb912623ad905ff540e48a16353c337c86a0ef45d8ba4734069d329a8c7c5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 01:52:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:41:22 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:41:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:41:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:41:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:41:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:41:27 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:41:28 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:41:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:42:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:42:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 14:12:45 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Fri, 23 Jun 2017 14:12:46 GMT
ENV LEIN_VERSION=2.7.1
# Fri, 23 Jun 2017 14:12:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 23 Jun 2017 14:12:48 GMT
WORKDIR /tmp
# Fri, 23 Jun 2017 14:12:56 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Fri, 23 Jun 2017 14:13:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 23 Jun 2017 14:13:15 GMT
ENV LEIN_ROOT=1
# Fri, 23 Jun 2017 14:13:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd20aef2091895544e1f428c076d83267e49462e9c8ce7b19516940fa360f818`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 594.4 KB (594399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45121f36b267f144e4eb0fcf5eb9d7f9cdfa042a932e7f21644e2180afa1ec2`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ab37d060419095173bd9b57d4e21d2c1b353f23e11241371508d59d43639c8`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c611b2838da4d4cfad18b4e414d5c40d1bc9c1c54c1b4733a2245a1e71c379`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3c1f5610321e9bff27d7b8f01668ffce08f7519c724137c76aaebf911b9879`  
		Last Modified: Fri, 23 Jun 2017 14:09:26 GMT  
		Size: 119.4 MB (119365066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463554ba15a0ea914e9827ef50734bcdba3dd7fbf525b26b67f8528032bf2c4a`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 289.7 KB (289653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bedb8b9c49ddee2e8fb9023b1680527c32e1cc233b19fc66dd3bb44f3002a76`  
		Last Modified: Sun, 25 Jun 2017 07:16:06 GMT  
		Size: 13.8 MB (13811220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a37af26592e1d31b4bf23b4aa6392707e5abd1a3099cbd003b724968e941067`  
		Last Modified: Sun, 25 Jun 2017 07:16:05 GMT  
		Size: 3.3 MB (3340983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein-2.7.1-onbuild`

```console
$ docker pull clojure@sha256:022a6d8324c29a277e86ad2718a5ece831b65d4c95562998941d58a39a899112
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-2.7.1-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.5 MB (252508483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b89bb4cd47f430b3d51a702a80cfd077a0a354432f643eb3e4bd4e67697922d`
-	Default Command: `["lein","run"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 01:52:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:41:22 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:41:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:41:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:41:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:41:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:41:27 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:41:28 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:41:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:42:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:42:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 14:12:45 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Fri, 23 Jun 2017 14:12:46 GMT
ENV LEIN_VERSION=2.7.1
# Fri, 23 Jun 2017 14:12:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 23 Jun 2017 14:12:48 GMT
WORKDIR /tmp
# Fri, 23 Jun 2017 14:12:56 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Fri, 23 Jun 2017 14:13:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 23 Jun 2017 14:13:15 GMT
ENV LEIN_ROOT=1
# Fri, 23 Jun 2017 14:13:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Fri, 23 Jun 2017 14:14:11 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Fri, 23 Jun 2017 14:14:12 GMT
WORKDIR /usr/src/app
# Fri, 23 Jun 2017 14:14:13 GMT
ONBUILD COPY project.clj /usr/src/app/
# Fri, 23 Jun 2017 14:14:14 GMT
ONBUILD RUN lein deps
# Fri, 23 Jun 2017 14:14:15 GMT
ONBUILD COPY . /usr/src/app
# Fri, 23 Jun 2017 14:14:16 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd20aef2091895544e1f428c076d83267e49462e9c8ce7b19516940fa360f818`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 594.4 KB (594399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45121f36b267f144e4eb0fcf5eb9d7f9cdfa042a932e7f21644e2180afa1ec2`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ab37d060419095173bd9b57d4e21d2c1b353f23e11241371508d59d43639c8`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c611b2838da4d4cfad18b4e414d5c40d1bc9c1c54c1b4733a2245a1e71c379`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3c1f5610321e9bff27d7b8f01668ffce08f7519c724137c76aaebf911b9879`  
		Last Modified: Fri, 23 Jun 2017 14:09:26 GMT  
		Size: 119.4 MB (119365066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463554ba15a0ea914e9827ef50734bcdba3dd7fbf525b26b67f8528032bf2c4a`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 289.7 KB (289653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bedb8b9c49ddee2e8fb9023b1680527c32e1cc233b19fc66dd3bb44f3002a76`  
		Last Modified: Sun, 25 Jun 2017 07:16:06 GMT  
		Size: 13.8 MB (13811220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a37af26592e1d31b4bf23b4aa6392707e5abd1a3099cbd003b724968e941067`  
		Last Modified: Sun, 25 Jun 2017 07:16:05 GMT  
		Size: 3.3 MB (3340983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a0d9d9cd37c125e56fa312b07075d4784282576798794e376e289be9b0cddd`  
		Last Modified: Sun, 25 Jun 2017 07:17:31 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein-onbuild`

```console
$ docker pull clojure@sha256:022a6d8324c29a277e86ad2718a5ece831b65d4c95562998941d58a39a899112
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.5 MB (252508483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b89bb4cd47f430b3d51a702a80cfd077a0a354432f643eb3e4bd4e67697922d`
-	Default Command: `["lein","run"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 01:52:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:41:22 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:41:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:41:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:41:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:41:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:41:27 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:41:28 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:41:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:42:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:42:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 14:12:45 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Fri, 23 Jun 2017 14:12:46 GMT
ENV LEIN_VERSION=2.7.1
# Fri, 23 Jun 2017 14:12:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 23 Jun 2017 14:12:48 GMT
WORKDIR /tmp
# Fri, 23 Jun 2017 14:12:56 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Fri, 23 Jun 2017 14:13:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 23 Jun 2017 14:13:15 GMT
ENV LEIN_ROOT=1
# Fri, 23 Jun 2017 14:13:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Fri, 23 Jun 2017 14:14:11 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Fri, 23 Jun 2017 14:14:12 GMT
WORKDIR /usr/src/app
# Fri, 23 Jun 2017 14:14:13 GMT
ONBUILD COPY project.clj /usr/src/app/
# Fri, 23 Jun 2017 14:14:14 GMT
ONBUILD RUN lein deps
# Fri, 23 Jun 2017 14:14:15 GMT
ONBUILD COPY . /usr/src/app
# Fri, 23 Jun 2017 14:14:16 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd20aef2091895544e1f428c076d83267e49462e9c8ce7b19516940fa360f818`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 594.4 KB (594399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45121f36b267f144e4eb0fcf5eb9d7f9cdfa042a932e7f21644e2180afa1ec2`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ab37d060419095173bd9b57d4e21d2c1b353f23e11241371508d59d43639c8`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c611b2838da4d4cfad18b4e414d5c40d1bc9c1c54c1b4733a2245a1e71c379`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3c1f5610321e9bff27d7b8f01668ffce08f7519c724137c76aaebf911b9879`  
		Last Modified: Fri, 23 Jun 2017 14:09:26 GMT  
		Size: 119.4 MB (119365066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463554ba15a0ea914e9827ef50734bcdba3dd7fbf525b26b67f8528032bf2c4a`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 289.7 KB (289653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bedb8b9c49ddee2e8fb9023b1680527c32e1cc233b19fc66dd3bb44f3002a76`  
		Last Modified: Sun, 25 Jun 2017 07:16:06 GMT  
		Size: 13.8 MB (13811220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a37af26592e1d31b4bf23b4aa6392707e5abd1a3099cbd003b724968e941067`  
		Last Modified: Sun, 25 Jun 2017 07:16:05 GMT  
		Size: 3.3 MB (3340983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a0d9d9cd37c125e56fa312b07075d4784282576798794e376e289be9b0cddd`  
		Last Modified: Sun, 25 Jun 2017 07:17:31 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:onbuild`

```console
$ docker pull clojure@sha256:022a6d8324c29a277e86ad2718a5ece831b65d4c95562998941d58a39a899112
```

-	Platforms:
	-	linux; amd64

### `clojure:onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.5 MB (252508483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b89bb4cd47f430b3d51a702a80cfd077a0a354432f643eb3e4bd4e67697922d`
-	Default Command: `["lein","run"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 01:52:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:41:22 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:41:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:41:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:41:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:41:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:41:27 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:41:28 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:41:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:42:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:42:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 14:12:45 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Fri, 23 Jun 2017 14:12:46 GMT
ENV LEIN_VERSION=2.7.1
# Fri, 23 Jun 2017 14:12:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 23 Jun 2017 14:12:48 GMT
WORKDIR /tmp
# Fri, 23 Jun 2017 14:12:56 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Fri, 23 Jun 2017 14:13:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 23 Jun 2017 14:13:15 GMT
ENV LEIN_ROOT=1
# Fri, 23 Jun 2017 14:13:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Fri, 23 Jun 2017 14:14:11 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Fri, 23 Jun 2017 14:14:12 GMT
WORKDIR /usr/src/app
# Fri, 23 Jun 2017 14:14:13 GMT
ONBUILD COPY project.clj /usr/src/app/
# Fri, 23 Jun 2017 14:14:14 GMT
ONBUILD RUN lein deps
# Fri, 23 Jun 2017 14:14:15 GMT
ONBUILD COPY . /usr/src/app
# Fri, 23 Jun 2017 14:14:16 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd20aef2091895544e1f428c076d83267e49462e9c8ce7b19516940fa360f818`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 594.4 KB (594399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45121f36b267f144e4eb0fcf5eb9d7f9cdfa042a932e7f21644e2180afa1ec2`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ab37d060419095173bd9b57d4e21d2c1b353f23e11241371508d59d43639c8`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c611b2838da4d4cfad18b4e414d5c40d1bc9c1c54c1b4733a2245a1e71c379`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3c1f5610321e9bff27d7b8f01668ffce08f7519c724137c76aaebf911b9879`  
		Last Modified: Fri, 23 Jun 2017 14:09:26 GMT  
		Size: 119.4 MB (119365066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463554ba15a0ea914e9827ef50734bcdba3dd7fbf525b26b67f8528032bf2c4a`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 289.7 KB (289653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bedb8b9c49ddee2e8fb9023b1680527c32e1cc233b19fc66dd3bb44f3002a76`  
		Last Modified: Sun, 25 Jun 2017 07:16:06 GMT  
		Size: 13.8 MB (13811220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a37af26592e1d31b4bf23b4aa6392707e5abd1a3099cbd003b724968e941067`  
		Last Modified: Sun, 25 Jun 2017 07:16:05 GMT  
		Size: 3.3 MB (3340983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a0d9d9cd37c125e56fa312b07075d4784282576798794e376e289be9b0cddd`  
		Last Modified: Sun, 25 Jun 2017 07:17:31 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein-2.7.1-alpine`

```console
$ docker pull clojure@sha256:2d017ac0cb7cd5863c1f1e58d4523a56600b19139709f8802b84297d735ce55b
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-2.7.1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96103930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c39907e6e88656276607c249c85a788e8425e64054b07462f6d68e9e0d1e0307`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:35:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Mon, 19 Jun 2017 22:35:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:36:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Jun 2017 17:43:09 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 20 Jun 2017 17:43:10 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 20 Jun 2017 17:43:11 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 20 Jun 2017 17:43:12 GMT
WORKDIR /tmp
# Tue, 20 Jun 2017 17:43:17 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Tue, 20 Jun 2017 17:43:26 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 20 Jun 2017 17:43:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Tue, 20 Jun 2017 17:43:28 GMT
ENV LEIN_ROOT=1
# Tue, 20 Jun 2017 17:43:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d6fbc2ab6eafc4e238b99bdbd470d39d99dffe9d70123777c74469211364bb`  
		Last Modified: Tue, 20 Jun 2017 21:04:41 GMT  
		Size: 70.1 MB (70050234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195a431bfa0fac9f92210ea815447b8ddb4332ac887649697cddef429110665f`  
		Last Modified: Sun, 25 Jun 2017 07:18:58 GMT  
		Size: 6.9 MB (6911336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0bebfa9be70c879acb237787711c1668545f84e82cc2c09856654a82b477fb`  
		Last Modified: Sun, 25 Jun 2017 07:18:57 GMT  
		Size: 13.8 MB (13810985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ca1a7d529b80044683e6ec60a9f2f900b4201c12e96638601ef81d9ff3deb6`  
		Last Modified: Sun, 25 Jun 2017 07:18:57 GMT  
		Size: 3.3 MB (3340981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein-alpine`

```console
$ docker pull clojure@sha256:2d017ac0cb7cd5863c1f1e58d4523a56600b19139709f8802b84297d735ce55b
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96103930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c39907e6e88656276607c249c85a788e8425e64054b07462f6d68e9e0d1e0307`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:35:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Mon, 19 Jun 2017 22:35:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:36:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Jun 2017 17:43:09 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 20 Jun 2017 17:43:10 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 20 Jun 2017 17:43:11 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 20 Jun 2017 17:43:12 GMT
WORKDIR /tmp
# Tue, 20 Jun 2017 17:43:17 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Tue, 20 Jun 2017 17:43:26 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 20 Jun 2017 17:43:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Tue, 20 Jun 2017 17:43:28 GMT
ENV LEIN_ROOT=1
# Tue, 20 Jun 2017 17:43:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d6fbc2ab6eafc4e238b99bdbd470d39d99dffe9d70123777c74469211364bb`  
		Last Modified: Tue, 20 Jun 2017 21:04:41 GMT  
		Size: 70.1 MB (70050234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195a431bfa0fac9f92210ea815447b8ddb4332ac887649697cddef429110665f`  
		Last Modified: Sun, 25 Jun 2017 07:18:58 GMT  
		Size: 6.9 MB (6911336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0bebfa9be70c879acb237787711c1668545f84e82cc2c09856654a82b477fb`  
		Last Modified: Sun, 25 Jun 2017 07:18:57 GMT  
		Size: 13.8 MB (13810985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ca1a7d529b80044683e6ec60a9f2f900b4201c12e96638601ef81d9ff3deb6`  
		Last Modified: Sun, 25 Jun 2017 07:18:57 GMT  
		Size: 3.3 MB (3340981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:alpine`

```console
$ docker pull clojure@sha256:2d017ac0cb7cd5863c1f1e58d4523a56600b19139709f8802b84297d735ce55b
```

-	Platforms:
	-	linux; amd64

### `clojure:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96103930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c39907e6e88656276607c249c85a788e8425e64054b07462f6d68e9e0d1e0307`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:35:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Mon, 19 Jun 2017 22:35:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:36:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Jun 2017 17:43:09 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 20 Jun 2017 17:43:10 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 20 Jun 2017 17:43:11 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 20 Jun 2017 17:43:12 GMT
WORKDIR /tmp
# Tue, 20 Jun 2017 17:43:17 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Tue, 20 Jun 2017 17:43:26 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 20 Jun 2017 17:43:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Tue, 20 Jun 2017 17:43:28 GMT
ENV LEIN_ROOT=1
# Tue, 20 Jun 2017 17:43:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d6fbc2ab6eafc4e238b99bdbd470d39d99dffe9d70123777c74469211364bb`  
		Last Modified: Tue, 20 Jun 2017 21:04:41 GMT  
		Size: 70.1 MB (70050234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195a431bfa0fac9f92210ea815447b8ddb4332ac887649697cddef429110665f`  
		Last Modified: Sun, 25 Jun 2017 07:18:58 GMT  
		Size: 6.9 MB (6911336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0bebfa9be70c879acb237787711c1668545f84e82cc2c09856654a82b477fb`  
		Last Modified: Sun, 25 Jun 2017 07:18:57 GMT  
		Size: 13.8 MB (13810985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ca1a7d529b80044683e6ec60a9f2f900b4201c12e96638601ef81d9ff3deb6`  
		Last Modified: Sun, 25 Jun 2017 07:18:57 GMT  
		Size: 3.3 MB (3340981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein-2.7.1-alpine-onbuild`

```console
$ docker pull clojure@sha256:5b044d5e51210bf5a2a48cf1215f9608842111571bbcc48be8f668d310eb9457
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-2.7.1-alpine-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96104056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1baf7b39d6f18167650808aba8e39a2558636afeab110df7a4fd0f29299af710`
-	Default Command: `["lein","run"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:35:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Mon, 19 Jun 2017 22:35:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:36:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Jun 2017 17:43:09 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 20 Jun 2017 17:43:10 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 20 Jun 2017 17:43:11 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 20 Jun 2017 17:43:12 GMT
WORKDIR /tmp
# Tue, 20 Jun 2017 17:43:17 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Tue, 20 Jun 2017 17:43:26 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 20 Jun 2017 17:43:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Tue, 20 Jun 2017 17:43:28 GMT
ENV LEIN_ROOT=1
# Tue, 20 Jun 2017 17:43:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Tue, 20 Jun 2017 17:44:02 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 20 Jun 2017 17:44:03 GMT
WORKDIR /usr/src/app
# Tue, 20 Jun 2017 17:44:04 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 20 Jun 2017 17:44:05 GMT
ONBUILD RUN lein deps
# Tue, 20 Jun 2017 17:44:06 GMT
ONBUILD COPY . /usr/src/app
# Tue, 20 Jun 2017 17:44:06 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d6fbc2ab6eafc4e238b99bdbd470d39d99dffe9d70123777c74469211364bb`  
		Last Modified: Tue, 20 Jun 2017 21:04:41 GMT  
		Size: 70.1 MB (70050234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195a431bfa0fac9f92210ea815447b8ddb4332ac887649697cddef429110665f`  
		Last Modified: Sun, 25 Jun 2017 07:18:58 GMT  
		Size: 6.9 MB (6911336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0bebfa9be70c879acb237787711c1668545f84e82cc2c09856654a82b477fb`  
		Last Modified: Sun, 25 Jun 2017 07:18:57 GMT  
		Size: 13.8 MB (13810985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ca1a7d529b80044683e6ec60a9f2f900b4201c12e96638601ef81d9ff3deb6`  
		Last Modified: Sun, 25 Jun 2017 07:18:57 GMT  
		Size: 3.3 MB (3340981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc417d137f601f218b98d1442b1d5b487d96ffaf83b4145e946ebca74079c4d`  
		Last Modified: Sun, 25 Jun 2017 07:20:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein-alpine-onbuild`

```console
$ docker pull clojure@sha256:5b044d5e51210bf5a2a48cf1215f9608842111571bbcc48be8f668d310eb9457
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-alpine-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96104056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1baf7b39d6f18167650808aba8e39a2558636afeab110df7a4fd0f29299af710`
-	Default Command: `["lein","run"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:35:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Mon, 19 Jun 2017 22:35:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:36:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Jun 2017 17:43:09 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 20 Jun 2017 17:43:10 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 20 Jun 2017 17:43:11 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 20 Jun 2017 17:43:12 GMT
WORKDIR /tmp
# Tue, 20 Jun 2017 17:43:17 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Tue, 20 Jun 2017 17:43:26 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 20 Jun 2017 17:43:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Tue, 20 Jun 2017 17:43:28 GMT
ENV LEIN_ROOT=1
# Tue, 20 Jun 2017 17:43:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Tue, 20 Jun 2017 17:44:02 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 20 Jun 2017 17:44:03 GMT
WORKDIR /usr/src/app
# Tue, 20 Jun 2017 17:44:04 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 20 Jun 2017 17:44:05 GMT
ONBUILD RUN lein deps
# Tue, 20 Jun 2017 17:44:06 GMT
ONBUILD COPY . /usr/src/app
# Tue, 20 Jun 2017 17:44:06 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d6fbc2ab6eafc4e238b99bdbd470d39d99dffe9d70123777c74469211364bb`  
		Last Modified: Tue, 20 Jun 2017 21:04:41 GMT  
		Size: 70.1 MB (70050234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195a431bfa0fac9f92210ea815447b8ddb4332ac887649697cddef429110665f`  
		Last Modified: Sun, 25 Jun 2017 07:18:58 GMT  
		Size: 6.9 MB (6911336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0bebfa9be70c879acb237787711c1668545f84e82cc2c09856654a82b477fb`  
		Last Modified: Sun, 25 Jun 2017 07:18:57 GMT  
		Size: 13.8 MB (13810985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ca1a7d529b80044683e6ec60a9f2f900b4201c12e96638601ef81d9ff3deb6`  
		Last Modified: Sun, 25 Jun 2017 07:18:57 GMT  
		Size: 3.3 MB (3340981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc417d137f601f218b98d1442b1d5b487d96ffaf83b4145e946ebca74079c4d`  
		Last Modified: Sun, 25 Jun 2017 07:20:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:alpine-onbuild`

```console
$ docker pull clojure@sha256:2ca63047227045a5d01c591313ae80ea3e320bcdf2db05b18fbfd0e9c3aa5233
```

-	Platforms:
	-	linux; amd64

### `clojure:alpine-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95805913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aa3b1305277495cf5021acaea8ec0afdb07161b96d259e9bff042601a6e0497`
-	Default Command: `["lein","run"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 00:01:37 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 11 May 2017 00:01:38 GMT
ENV LEIN_VERSION=2.7.1
# Thu, 11 May 2017 00:01:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 11 May 2017 00:01:39 GMT
WORKDIR /tmp
# Thu, 11 May 2017 00:01:43 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Thu, 11 May 2017 00:04:02 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 11 May 2017 00:04:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Thu, 11 May 2017 00:04:04 GMT
ENV LEIN_ROOT=1
# Tue, 30 May 2017 17:01:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Tue, 30 May 2017 17:01:49 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 30 May 2017 17:01:51 GMT
WORKDIR /usr/src/app
# Tue, 30 May 2017 17:01:52 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 30 May 2017 17:01:53 GMT
ONBUILD RUN lein deps
# Tue, 30 May 2017 17:01:54 GMT
ONBUILD COPY . /usr/src/app
# Tue, 30 May 2017 17:01:55 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1658a217ee34b7e20fced2197b9dcb4a342745ca7664d460c92375c927e05f9`  
		Last Modified: Sat, 13 May 2017 15:08:12 GMT  
		Size: 6.7 MB (6681641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27fb92513618cbee27aa32d6fe627c44b4eb8978996b8fc94e81a986d807462a`  
		Last Modified: Sat, 13 May 2017 15:08:10 GMT  
		Size: 13.8 MB (13810868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f029aebe2e5f07650a106cfd3f9f7c6ff560d1ae38bbf0f552dfe91e9a8c67b2`  
		Last Modified: Tue, 30 May 2017 17:07:15 GMT  
		Size: 3.3 MB (3340993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b4ef63a71963fa59e7bffe30378a0438ad34d19e40e948893ffba7fab2cd56`  
		Last Modified: Tue, 30 May 2017 17:10:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:boot-2.7.1`

```console
$ docker pull clojure@sha256:aa01dede662f600cb6a5e7a5da12a35775fb33effbe8d01381ee36e6d01ec88a
```

-	Platforms:
	-	linux; amd64

### `clojure:boot-2.7.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268668165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a6000ee5a0281780223b90cc63eea26e9591f3fc3fbdc845c4ca670b396e5ea`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 May 2017 17:24:35 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:24:36 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:24:37 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:25:28 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:25:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 19:52:24 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 16 May 2017 19:52:26 GMT
ENV BOOT_VERSION=2.7.1
# Tue, 16 May 2017 19:52:27 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 16 May 2017 19:52:28 GMT
WORKDIR /tmp
# Tue, 16 May 2017 19:52:31 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.5.2/boot.sh   && echo "Comparing installer checksum..."   && echo "d9cbefc6cbf043361a58b416e6d62fc80e5ead32 *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 16 May 2017 19:52:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 16 May 2017 19:52:33 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 16 May 2017 19:54:47 GMT
RUN boot
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a479609da9c84ce06a53830a9b6da0725422474002ffc30a574ed0fbc5efca86`  
		Last Modified: Tue, 16 May 2017 17:39:22 GMT  
		Size: 119.4 MB (119353660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32f81724ea45927d432793e3a33fadc213949aaa5a35217f9fc9ac6e147c8b3`  
		Last Modified: Tue, 16 May 2017 17:39:07 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678b247dc3a21834d423ab4d1ac7104b8d457fad29ffe0791434500fa090ed94`  
		Last Modified: Tue, 16 May 2017 20:07:05 GMT  
		Size: 6.4 KB (6364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87dd72d72fc683f81b07cef050cfddc5efe3f9eaf40b87506deb2a23b470a28`  
		Last Modified: Tue, 16 May 2017 20:07:08 GMT  
		Size: 33.3 MB (33336144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:boot`

```console
$ docker pull clojure@sha256:aa01dede662f600cb6a5e7a5da12a35775fb33effbe8d01381ee36e6d01ec88a
```

-	Platforms:
	-	linux; amd64

### `clojure:boot` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268668165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a6000ee5a0281780223b90cc63eea26e9591f3fc3fbdc845c4ca670b396e5ea`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:58 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 13:58:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 13:59:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 13:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 13:59:03 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 May 2017 17:24:35 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:24:36 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:24:37 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:25:28 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:25:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 19:52:24 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 16 May 2017 19:52:26 GMT
ENV BOOT_VERSION=2.7.1
# Tue, 16 May 2017 19:52:27 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 16 May 2017 19:52:28 GMT
WORKDIR /tmp
# Tue, 16 May 2017 19:52:31 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.5.2/boot.sh   && echo "Comparing installer checksum..."   && echo "d9cbefc6cbf043361a58b416e6d62fc80e5ead32 *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 16 May 2017 19:52:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 16 May 2017 19:52:33 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 16 May 2017 19:54:47 GMT
RUN boot
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6c40e9ec4f6391c64835fdca6e24f30e94cf00167fcab85f7924edd28e8dc3`  
		Last Modified: Fri, 12 May 2017 15:06:38 GMT  
		Size: 599.4 KB (599411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a63e1725461305af88d10e61a92787181321ad3d7b6136c7e48fe98feaf90ab`  
		Last Modified: Fri, 12 May 2017 15:13:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8ed83f43abdbf634120e74208a01288910381bfe3390fa76cd64ec0e17891`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161cbb85a481fc9402d5916ebf18e88d992e4d149ddd1ac4f5580757a84ace19`  
		Last Modified: Fri, 12 May 2017 15:13:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a479609da9c84ce06a53830a9b6da0725422474002ffc30a574ed0fbc5efca86`  
		Last Modified: Tue, 16 May 2017 17:39:22 GMT  
		Size: 119.4 MB (119353660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32f81724ea45927d432793e3a33fadc213949aaa5a35217f9fc9ac6e147c8b3`  
		Last Modified: Tue, 16 May 2017 17:39:07 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678b247dc3a21834d423ab4d1ac7104b8d457fad29ffe0791434500fa090ed94`  
		Last Modified: Tue, 16 May 2017 20:07:05 GMT  
		Size: 6.4 KB (6364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87dd72d72fc683f81b07cef050cfddc5efe3f9eaf40b87506deb2a23b470a28`  
		Last Modified: Tue, 16 May 2017 20:07:08 GMT  
		Size: 33.3 MB (33336144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:boot-2.7.1-alpine`

```console
$ docker pull clojure@sha256:cf5846e403a891ed6dcc8a9a86974fb1aa58d8c44ddf7d4bd1484e088f37b1de
```

-	Platforms:
	-	linux; amd64

### `clojure:boot-2.7.1-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108229988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42e752cc38599bf5a198a8c83898cd36ba995252ad44b2cc585251000e5f3ee6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 00:01:37 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 11 May 2017 00:10:40 GMT
ENV BOOT_VERSION=2.7.1
# Thu, 11 May 2017 00:10:40 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Thu, 11 May 2017 00:10:41 GMT
WORKDIR /tmp
# Thu, 11 May 2017 00:10:44 GMT
RUN apk add --update bash openssl && rm -rf /var/cache/apk/*
# Thu, 11 May 2017 00:10:47 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.5.2/boot.sh   && echo "Comparing installer checksum..."   && echo "d9cbefc6cbf043361a58b416e6d62fc80e5ead32 *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Thu, 11 May 2017 00:10:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Thu, 11 May 2017 00:10:48 GMT
ENV BOOT_AS_ROOT=yes
# Thu, 11 May 2017 00:12:52 GMT
RUN boot
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8f8e530827aff593f28fe39c0fcdbc2946b662f228e42a935f2fff8242e678`  
		Last Modified: Sat, 13 May 2017 15:06:06 GMT  
		Size: 2.9 MB (2915538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8be8d83eff1d1106107a3e81de42425dbd189f26b8cda98167fdebbe756034`  
		Last Modified: Sat, 13 May 2017 15:06:06 GMT  
		Size: 6.3 KB (6347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f46c6aa4a5ccfd642f647d79d5d3b88b3c985f7a980183ba8a41a2a1ca340d5`  
		Last Modified: Sat, 13 May 2017 15:06:08 GMT  
		Size: 33.3 MB (33335818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:boot-alpine`

```console
$ docker pull clojure@sha256:cf5846e403a891ed6dcc8a9a86974fb1aa58d8c44ddf7d4bd1484e088f37b1de
```

-	Platforms:
	-	linux; amd64

### `clojure:boot-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108229988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42e752cc38599bf5a198a8c83898cd36ba995252ad44b2cc585251000e5f3ee6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 00:01:37 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 11 May 2017 00:10:40 GMT
ENV BOOT_VERSION=2.7.1
# Thu, 11 May 2017 00:10:40 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Thu, 11 May 2017 00:10:41 GMT
WORKDIR /tmp
# Thu, 11 May 2017 00:10:44 GMT
RUN apk add --update bash openssl && rm -rf /var/cache/apk/*
# Thu, 11 May 2017 00:10:47 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.5.2/boot.sh   && echo "Comparing installer checksum..."   && echo "d9cbefc6cbf043361a58b416e6d62fc80e5ead32 *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Thu, 11 May 2017 00:10:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Thu, 11 May 2017 00:10:48 GMT
ENV BOOT_AS_ROOT=yes
# Thu, 11 May 2017 00:12:52 GMT
RUN boot
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8f8e530827aff593f28fe39c0fcdbc2946b662f228e42a935f2fff8242e678`  
		Last Modified: Sat, 13 May 2017 15:06:06 GMT  
		Size: 2.9 MB (2915538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8be8d83eff1d1106107a3e81de42425dbd189f26b8cda98167fdebbe756034`  
		Last Modified: Sat, 13 May 2017 15:06:06 GMT  
		Size: 6.3 KB (6347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f46c6aa4a5ccfd642f647d79d5d3b88b3c985f7a980183ba8a41a2a1ca340d5`  
		Last Modified: Sat, 13 May 2017 15:06:08 GMT  
		Size: 33.3 MB (33335818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
