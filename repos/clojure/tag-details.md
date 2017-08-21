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
-	[`clojure:boot-2.7.2`](#clojureboot-272)
-	[`clojure:boot`](#clojureboot)
-	[`clojure:boot-2.7.2-alpine`](#clojureboot-272-alpine)
-	[`clojure:boot-alpine`](#clojureboot-alpine)

## `clojure:lein-2.7.1`

```console
$ docker pull clojure@sha256:d5aa73b538074fbf1c33c579b2fa05596ef7c671fd33b993809d2f91075b9ffa
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-2.7.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.4 MB (312432294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a169ad0d1576b62b6309b29332e910be9bf6ea0f9b5e60e5f7fcd1e651680ca9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:51 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:09:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:32:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:33:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:33:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 16:06:37 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Thu, 27 Jul 2017 16:06:37 GMT
ENV LEIN_VERSION=2.7.1
# Thu, 27 Jul 2017 16:06:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 27 Jul 2017 16:06:38 GMT
WORKDIR /tmp
# Thu, 27 Jul 2017 16:06:49 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 27 Jul 2017 16:06:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 27 Jul 2017 16:06:50 GMT
ENV LEIN_ROOT=1
# Thu, 27 Jul 2017 16:06:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eaa20184e60073d2705ab636fb92b4428dfc503b858b423608dba26d628c99`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 660.5 KB (660458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a8522e2399427c6c6d4cb5748e3c9ea39188af728386b37ffa3719b60a08a0`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ba9d7befcada9c3bfe28fe046ee3ddf551dbcd0fe29a620071c07f49afc2e9`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635bf5037831b9d348a557e32db9ca3c918de37880ff495a93d232ca111c7dba`  
		Last Modified: Wed, 26 Jul 2017 20:37:36 GMT  
		Size: 183.7 MB (183682145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1236c277f1c5f5d26d97dca2662375f8b807e82196737c10ee54219109a86b0`  
		Last Modified: Wed, 26 Jul 2017 20:37:10 GMT  
		Size: 272.0 KB (271991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d68e864a7bb847393d85afc0382d79c8c9872c0745cd345a86ca0aa064714c`  
		Last Modified: Thu, 27 Jul 2017 16:07:38 GMT  
		Size: 13.8 MB (13811120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c373e33260dbed423e4f53c783db78e09f80a61cf23bc960f45701715823d5d2`  
		Last Modified: Thu, 27 Jul 2017 16:07:38 GMT  
		Size: 3.3 MB (3340975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein`

```console
$ docker pull clojure@sha256:d5aa73b538074fbf1c33c579b2fa05596ef7c671fd33b993809d2f91075b9ffa
```

-	Platforms:
	-	linux; amd64

### `clojure:lein` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.4 MB (312432294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a169ad0d1576b62b6309b29332e910be9bf6ea0f9b5e60e5f7fcd1e651680ca9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:51 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:09:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:32:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:33:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:33:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 16:06:37 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Thu, 27 Jul 2017 16:06:37 GMT
ENV LEIN_VERSION=2.7.1
# Thu, 27 Jul 2017 16:06:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 27 Jul 2017 16:06:38 GMT
WORKDIR /tmp
# Thu, 27 Jul 2017 16:06:49 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 27 Jul 2017 16:06:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 27 Jul 2017 16:06:50 GMT
ENV LEIN_ROOT=1
# Thu, 27 Jul 2017 16:06:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eaa20184e60073d2705ab636fb92b4428dfc503b858b423608dba26d628c99`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 660.5 KB (660458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a8522e2399427c6c6d4cb5748e3c9ea39188af728386b37ffa3719b60a08a0`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ba9d7befcada9c3bfe28fe046ee3ddf551dbcd0fe29a620071c07f49afc2e9`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635bf5037831b9d348a557e32db9ca3c918de37880ff495a93d232ca111c7dba`  
		Last Modified: Wed, 26 Jul 2017 20:37:36 GMT  
		Size: 183.7 MB (183682145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1236c277f1c5f5d26d97dca2662375f8b807e82196737c10ee54219109a86b0`  
		Last Modified: Wed, 26 Jul 2017 20:37:10 GMT  
		Size: 272.0 KB (271991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d68e864a7bb847393d85afc0382d79c8c9872c0745cd345a86ca0aa064714c`  
		Last Modified: Thu, 27 Jul 2017 16:07:38 GMT  
		Size: 13.8 MB (13811120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c373e33260dbed423e4f53c783db78e09f80a61cf23bc960f45701715823d5d2`  
		Last Modified: Thu, 27 Jul 2017 16:07:38 GMT  
		Size: 3.3 MB (3340975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:latest`

```console
$ docker pull clojure@sha256:d5aa73b538074fbf1c33c579b2fa05596ef7c671fd33b993809d2f91075b9ffa
```

-	Platforms:
	-	linux; amd64

### `clojure:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.4 MB (312432294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a169ad0d1576b62b6309b29332e910be9bf6ea0f9b5e60e5f7fcd1e651680ca9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:51 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:09:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:32:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:33:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:33:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 16:06:37 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Thu, 27 Jul 2017 16:06:37 GMT
ENV LEIN_VERSION=2.7.1
# Thu, 27 Jul 2017 16:06:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 27 Jul 2017 16:06:38 GMT
WORKDIR /tmp
# Thu, 27 Jul 2017 16:06:49 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 27 Jul 2017 16:06:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 27 Jul 2017 16:06:50 GMT
ENV LEIN_ROOT=1
# Thu, 27 Jul 2017 16:06:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eaa20184e60073d2705ab636fb92b4428dfc503b858b423608dba26d628c99`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 660.5 KB (660458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a8522e2399427c6c6d4cb5748e3c9ea39188af728386b37ffa3719b60a08a0`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ba9d7befcada9c3bfe28fe046ee3ddf551dbcd0fe29a620071c07f49afc2e9`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635bf5037831b9d348a557e32db9ca3c918de37880ff495a93d232ca111c7dba`  
		Last Modified: Wed, 26 Jul 2017 20:37:36 GMT  
		Size: 183.7 MB (183682145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1236c277f1c5f5d26d97dca2662375f8b807e82196737c10ee54219109a86b0`  
		Last Modified: Wed, 26 Jul 2017 20:37:10 GMT  
		Size: 272.0 KB (271991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d68e864a7bb847393d85afc0382d79c8c9872c0745cd345a86ca0aa064714c`  
		Last Modified: Thu, 27 Jul 2017 16:07:38 GMT  
		Size: 13.8 MB (13811120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c373e33260dbed423e4f53c783db78e09f80a61cf23bc960f45701715823d5d2`  
		Last Modified: Thu, 27 Jul 2017 16:07:38 GMT  
		Size: 3.3 MB (3340975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein-2.7.1-onbuild`

```console
$ docker pull clojure@sha256:962872fd6548af15b1df0ad3f26a286ccfda65e5d4a06544f6b17ca8bb4480fe
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-2.7.1-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.4 MB (312432420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:089679344dcc2d81d33909a6b128beff854050434a10bba17e5a16c63c365c85`
-	Default Command: `["lein","run"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:51 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:09:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:32:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:33:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:33:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 16:06:37 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Thu, 27 Jul 2017 16:06:37 GMT
ENV LEIN_VERSION=2.7.1
# Thu, 27 Jul 2017 16:06:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 27 Jul 2017 16:06:38 GMT
WORKDIR /tmp
# Thu, 27 Jul 2017 16:06:49 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 27 Jul 2017 16:06:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 27 Jul 2017 16:06:50 GMT
ENV LEIN_ROOT=1
# Thu, 27 Jul 2017 16:06:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Thu, 27 Jul 2017 16:06:57 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Thu, 27 Jul 2017 16:06:57 GMT
WORKDIR /usr/src/app
# Thu, 27 Jul 2017 16:07:00 GMT
ONBUILD COPY project.clj /usr/src/app/
# Thu, 27 Jul 2017 16:07:00 GMT
ONBUILD RUN lein deps
# Thu, 27 Jul 2017 16:07:00 GMT
ONBUILD COPY . /usr/src/app
# Thu, 27 Jul 2017 16:07:01 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eaa20184e60073d2705ab636fb92b4428dfc503b858b423608dba26d628c99`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 660.5 KB (660458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a8522e2399427c6c6d4cb5748e3c9ea39188af728386b37ffa3719b60a08a0`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ba9d7befcada9c3bfe28fe046ee3ddf551dbcd0fe29a620071c07f49afc2e9`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635bf5037831b9d348a557e32db9ca3c918de37880ff495a93d232ca111c7dba`  
		Last Modified: Wed, 26 Jul 2017 20:37:36 GMT  
		Size: 183.7 MB (183682145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1236c277f1c5f5d26d97dca2662375f8b807e82196737c10ee54219109a86b0`  
		Last Modified: Wed, 26 Jul 2017 20:37:10 GMT  
		Size: 272.0 KB (271991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d68e864a7bb847393d85afc0382d79c8c9872c0745cd345a86ca0aa064714c`  
		Last Modified: Thu, 27 Jul 2017 16:07:38 GMT  
		Size: 13.8 MB (13811120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c373e33260dbed423e4f53c783db78e09f80a61cf23bc960f45701715823d5d2`  
		Last Modified: Thu, 27 Jul 2017 16:07:38 GMT  
		Size: 3.3 MB (3340975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac06db3a5c6467b71f3439a2b9726bb2c53c27716cec11ff112f8144834c1f6`  
		Last Modified: Thu, 27 Jul 2017 16:08:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein-onbuild`

```console
$ docker pull clojure@sha256:962872fd6548af15b1df0ad3f26a286ccfda65e5d4a06544f6b17ca8bb4480fe
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.4 MB (312432420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:089679344dcc2d81d33909a6b128beff854050434a10bba17e5a16c63c365c85`
-	Default Command: `["lein","run"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:51 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:09:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:32:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:33:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:33:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 16:06:37 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Thu, 27 Jul 2017 16:06:37 GMT
ENV LEIN_VERSION=2.7.1
# Thu, 27 Jul 2017 16:06:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 27 Jul 2017 16:06:38 GMT
WORKDIR /tmp
# Thu, 27 Jul 2017 16:06:49 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 27 Jul 2017 16:06:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 27 Jul 2017 16:06:50 GMT
ENV LEIN_ROOT=1
# Thu, 27 Jul 2017 16:06:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Thu, 27 Jul 2017 16:06:57 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Thu, 27 Jul 2017 16:06:57 GMT
WORKDIR /usr/src/app
# Thu, 27 Jul 2017 16:07:00 GMT
ONBUILD COPY project.clj /usr/src/app/
# Thu, 27 Jul 2017 16:07:00 GMT
ONBUILD RUN lein deps
# Thu, 27 Jul 2017 16:07:00 GMT
ONBUILD COPY . /usr/src/app
# Thu, 27 Jul 2017 16:07:01 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eaa20184e60073d2705ab636fb92b4428dfc503b858b423608dba26d628c99`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 660.5 KB (660458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a8522e2399427c6c6d4cb5748e3c9ea39188af728386b37ffa3719b60a08a0`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ba9d7befcada9c3bfe28fe046ee3ddf551dbcd0fe29a620071c07f49afc2e9`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635bf5037831b9d348a557e32db9ca3c918de37880ff495a93d232ca111c7dba`  
		Last Modified: Wed, 26 Jul 2017 20:37:36 GMT  
		Size: 183.7 MB (183682145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1236c277f1c5f5d26d97dca2662375f8b807e82196737c10ee54219109a86b0`  
		Last Modified: Wed, 26 Jul 2017 20:37:10 GMT  
		Size: 272.0 KB (271991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d68e864a7bb847393d85afc0382d79c8c9872c0745cd345a86ca0aa064714c`  
		Last Modified: Thu, 27 Jul 2017 16:07:38 GMT  
		Size: 13.8 MB (13811120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c373e33260dbed423e4f53c783db78e09f80a61cf23bc960f45701715823d5d2`  
		Last Modified: Thu, 27 Jul 2017 16:07:38 GMT  
		Size: 3.3 MB (3340975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac06db3a5c6467b71f3439a2b9726bb2c53c27716cec11ff112f8144834c1f6`  
		Last Modified: Thu, 27 Jul 2017 16:08:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:onbuild`

```console
$ docker pull clojure@sha256:962872fd6548af15b1df0ad3f26a286ccfda65e5d4a06544f6b17ca8bb4480fe
```

-	Platforms:
	-	linux; amd64

### `clojure:onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.4 MB (312432420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:089679344dcc2d81d33909a6b128beff854050434a10bba17e5a16c63c365c85`
-	Default Command: `["lein","run"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:51 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:09:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:32:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:33:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:33:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 16:06:37 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Thu, 27 Jul 2017 16:06:37 GMT
ENV LEIN_VERSION=2.7.1
# Thu, 27 Jul 2017 16:06:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 27 Jul 2017 16:06:38 GMT
WORKDIR /tmp
# Thu, 27 Jul 2017 16:06:49 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 27 Jul 2017 16:06:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 27 Jul 2017 16:06:50 GMT
ENV LEIN_ROOT=1
# Thu, 27 Jul 2017 16:06:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Thu, 27 Jul 2017 16:06:57 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Thu, 27 Jul 2017 16:06:57 GMT
WORKDIR /usr/src/app
# Thu, 27 Jul 2017 16:07:00 GMT
ONBUILD COPY project.clj /usr/src/app/
# Thu, 27 Jul 2017 16:07:00 GMT
ONBUILD RUN lein deps
# Thu, 27 Jul 2017 16:07:00 GMT
ONBUILD COPY . /usr/src/app
# Thu, 27 Jul 2017 16:07:01 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eaa20184e60073d2705ab636fb92b4428dfc503b858b423608dba26d628c99`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 660.5 KB (660458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a8522e2399427c6c6d4cb5748e3c9ea39188af728386b37ffa3719b60a08a0`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ba9d7befcada9c3bfe28fe046ee3ddf551dbcd0fe29a620071c07f49afc2e9`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635bf5037831b9d348a557e32db9ca3c918de37880ff495a93d232ca111c7dba`  
		Last Modified: Wed, 26 Jul 2017 20:37:36 GMT  
		Size: 183.7 MB (183682145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1236c277f1c5f5d26d97dca2662375f8b807e82196737c10ee54219109a86b0`  
		Last Modified: Wed, 26 Jul 2017 20:37:10 GMT  
		Size: 272.0 KB (271991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d68e864a7bb847393d85afc0382d79c8c9872c0745cd345a86ca0aa064714c`  
		Last Modified: Thu, 27 Jul 2017 16:07:38 GMT  
		Size: 13.8 MB (13811120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c373e33260dbed423e4f53c783db78e09f80a61cf23bc960f45701715823d5d2`  
		Last Modified: Thu, 27 Jul 2017 16:07:38 GMT  
		Size: 3.3 MB (3340975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac06db3a5c6467b71f3439a2b9726bb2c53c27716cec11ff112f8144834c1f6`  
		Last Modified: Thu, 27 Jul 2017 16:08:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein-2.7.1-alpine`

```console
$ docker pull clojure@sha256:7643e8b511e7783f9514b11c92068c997e9eb496cb52f1cbed0431b7e72af38e
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-2.7.1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96104171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0b4217256b87f31a5ead36a9e74abaa347f31377429c68ca0fffc87f8614a70`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 28 Jun 2017 20:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:04:48 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:04:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:04:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 01:41:53 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 29 Jun 2017 01:41:54 GMT
ENV LEIN_VERSION=2.7.1
# Thu, 29 Jun 2017 01:41:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Jun 2017 01:41:57 GMT
WORKDIR /tmp
# Thu, 29 Jun 2017 01:42:05 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Thu, 29 Jun 2017 01:42:38 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 29 Jun 2017 01:42:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Thu, 29 Jun 2017 01:42:58 GMT
ENV LEIN_ROOT=1
# Thu, 29 Jun 2017 01:43:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ed68184682c19ccbab7445ae3789b7e8a72ccd4d68b9b64548e0d71c17b15b`  
		Last Modified: Thu, 29 Jun 2017 23:42:08 GMT  
		Size: 70.1 MB (70050180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057c0eefd4c106d32e1c5055f450b66b6527f9e21a7019625bfd67401fab9bf6`  
		Last Modified: Fri, 30 Jun 2017 15:59:45 GMT  
		Size: 6.9 MB (6911370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f65ce4b1ed500a14f5392d01b90d9a4a1049f06462924a65a39064ee64b828`  
		Last Modified: Fri, 30 Jun 2017 15:59:43 GMT  
		Size: 13.8 MB (13810991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9250531d53d844e862ea57e97b0678989fc83e98cb35dd1157813ce69f67c3d1`  
		Last Modified: Fri, 30 Jun 2017 15:59:42 GMT  
		Size: 3.3 MB (3340997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein-alpine`

```console
$ docker pull clojure@sha256:7643e8b511e7783f9514b11c92068c997e9eb496cb52f1cbed0431b7e72af38e
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96104171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0b4217256b87f31a5ead36a9e74abaa347f31377429c68ca0fffc87f8614a70`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 28 Jun 2017 20:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:04:48 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:04:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:04:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 01:41:53 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 29 Jun 2017 01:41:54 GMT
ENV LEIN_VERSION=2.7.1
# Thu, 29 Jun 2017 01:41:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Jun 2017 01:41:57 GMT
WORKDIR /tmp
# Thu, 29 Jun 2017 01:42:05 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Thu, 29 Jun 2017 01:42:38 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 29 Jun 2017 01:42:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Thu, 29 Jun 2017 01:42:58 GMT
ENV LEIN_ROOT=1
# Thu, 29 Jun 2017 01:43:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ed68184682c19ccbab7445ae3789b7e8a72ccd4d68b9b64548e0d71c17b15b`  
		Last Modified: Thu, 29 Jun 2017 23:42:08 GMT  
		Size: 70.1 MB (70050180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057c0eefd4c106d32e1c5055f450b66b6527f9e21a7019625bfd67401fab9bf6`  
		Last Modified: Fri, 30 Jun 2017 15:59:45 GMT  
		Size: 6.9 MB (6911370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f65ce4b1ed500a14f5392d01b90d9a4a1049f06462924a65a39064ee64b828`  
		Last Modified: Fri, 30 Jun 2017 15:59:43 GMT  
		Size: 13.8 MB (13810991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9250531d53d844e862ea57e97b0678989fc83e98cb35dd1157813ce69f67c3d1`  
		Last Modified: Fri, 30 Jun 2017 15:59:42 GMT  
		Size: 3.3 MB (3340997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:alpine`

```console
$ docker pull clojure@sha256:7643e8b511e7783f9514b11c92068c997e9eb496cb52f1cbed0431b7e72af38e
```

-	Platforms:
	-	linux; amd64

### `clojure:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96104171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0b4217256b87f31a5ead36a9e74abaa347f31377429c68ca0fffc87f8614a70`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 28 Jun 2017 20:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:04:48 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:04:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:04:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 01:41:53 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 29 Jun 2017 01:41:54 GMT
ENV LEIN_VERSION=2.7.1
# Thu, 29 Jun 2017 01:41:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Jun 2017 01:41:57 GMT
WORKDIR /tmp
# Thu, 29 Jun 2017 01:42:05 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Thu, 29 Jun 2017 01:42:38 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 29 Jun 2017 01:42:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Thu, 29 Jun 2017 01:42:58 GMT
ENV LEIN_ROOT=1
# Thu, 29 Jun 2017 01:43:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ed68184682c19ccbab7445ae3789b7e8a72ccd4d68b9b64548e0d71c17b15b`  
		Last Modified: Thu, 29 Jun 2017 23:42:08 GMT  
		Size: 70.1 MB (70050180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057c0eefd4c106d32e1c5055f450b66b6527f9e21a7019625bfd67401fab9bf6`  
		Last Modified: Fri, 30 Jun 2017 15:59:45 GMT  
		Size: 6.9 MB (6911370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f65ce4b1ed500a14f5392d01b90d9a4a1049f06462924a65a39064ee64b828`  
		Last Modified: Fri, 30 Jun 2017 15:59:43 GMT  
		Size: 13.8 MB (13810991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9250531d53d844e862ea57e97b0678989fc83e98cb35dd1157813ce69f67c3d1`  
		Last Modified: Fri, 30 Jun 2017 15:59:42 GMT  
		Size: 3.3 MB (3340997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein-2.7.1-alpine-onbuild`

```console
$ docker pull clojure@sha256:7f8077c9062aec2da14b74c68a3821760dc58a133613e31721a9d7517442ba1e
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-2.7.1-alpine-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96104295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a3203afa68cac0004bddb90812c42b25b981a970f5815dccb9659257184a248`
-	Default Command: `["lein","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 28 Jun 2017 20:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:04:48 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:04:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:04:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 01:41:53 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 29 Jun 2017 01:41:54 GMT
ENV LEIN_VERSION=2.7.1
# Thu, 29 Jun 2017 01:41:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Jun 2017 01:41:57 GMT
WORKDIR /tmp
# Thu, 29 Jun 2017 01:42:05 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Thu, 29 Jun 2017 01:42:38 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 29 Jun 2017 01:42:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Thu, 29 Jun 2017 01:42:58 GMT
ENV LEIN_ROOT=1
# Thu, 29 Jun 2017 01:43:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Thu, 29 Jun 2017 01:44:42 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 29 Jun 2017 01:44:44 GMT
WORKDIR /usr/src/app
# Thu, 29 Jun 2017 01:44:45 GMT
ONBUILD COPY project.clj /usr/src/app/
# Thu, 29 Jun 2017 01:44:46 GMT
ONBUILD RUN lein deps
# Thu, 29 Jun 2017 01:46:52 GMT
ONBUILD COPY . /usr/src/app
# Thu, 29 Jun 2017 01:46:53 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ed68184682c19ccbab7445ae3789b7e8a72ccd4d68b9b64548e0d71c17b15b`  
		Last Modified: Thu, 29 Jun 2017 23:42:08 GMT  
		Size: 70.1 MB (70050180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057c0eefd4c106d32e1c5055f450b66b6527f9e21a7019625bfd67401fab9bf6`  
		Last Modified: Fri, 30 Jun 2017 15:59:45 GMT  
		Size: 6.9 MB (6911370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f65ce4b1ed500a14f5392d01b90d9a4a1049f06462924a65a39064ee64b828`  
		Last Modified: Fri, 30 Jun 2017 15:59:43 GMT  
		Size: 13.8 MB (13810991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9250531d53d844e862ea57e97b0678989fc83e98cb35dd1157813ce69f67c3d1`  
		Last Modified: Fri, 30 Jun 2017 15:59:42 GMT  
		Size: 3.3 MB (3340997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8ff78a802567eacfea36679abadbc1fb24a7f700387304faf6647f736ffe57`  
		Last Modified: Fri, 30 Jun 2017 16:01:39 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein-alpine-onbuild`

```console
$ docker pull clojure@sha256:7f8077c9062aec2da14b74c68a3821760dc58a133613e31721a9d7517442ba1e
```

-	Platforms:
	-	linux; amd64

### `clojure:lein-alpine-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96104295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a3203afa68cac0004bddb90812c42b25b981a970f5815dccb9659257184a248`
-	Default Command: `["lein","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 28 Jun 2017 20:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:04:48 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:04:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:04:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 01:41:53 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 29 Jun 2017 01:41:54 GMT
ENV LEIN_VERSION=2.7.1
# Thu, 29 Jun 2017 01:41:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Jun 2017 01:41:57 GMT
WORKDIR /tmp
# Thu, 29 Jun 2017 01:42:05 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Thu, 29 Jun 2017 01:42:38 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 29 Jun 2017 01:42:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Thu, 29 Jun 2017 01:42:58 GMT
ENV LEIN_ROOT=1
# Thu, 29 Jun 2017 01:43:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Thu, 29 Jun 2017 01:44:42 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 29 Jun 2017 01:44:44 GMT
WORKDIR /usr/src/app
# Thu, 29 Jun 2017 01:44:45 GMT
ONBUILD COPY project.clj /usr/src/app/
# Thu, 29 Jun 2017 01:44:46 GMT
ONBUILD RUN lein deps
# Thu, 29 Jun 2017 01:46:52 GMT
ONBUILD COPY . /usr/src/app
# Thu, 29 Jun 2017 01:46:53 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ed68184682c19ccbab7445ae3789b7e8a72ccd4d68b9b64548e0d71c17b15b`  
		Last Modified: Thu, 29 Jun 2017 23:42:08 GMT  
		Size: 70.1 MB (70050180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057c0eefd4c106d32e1c5055f450b66b6527f9e21a7019625bfd67401fab9bf6`  
		Last Modified: Fri, 30 Jun 2017 15:59:45 GMT  
		Size: 6.9 MB (6911370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f65ce4b1ed500a14f5392d01b90d9a4a1049f06462924a65a39064ee64b828`  
		Last Modified: Fri, 30 Jun 2017 15:59:43 GMT  
		Size: 13.8 MB (13810991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9250531d53d844e862ea57e97b0678989fc83e98cb35dd1157813ce69f67c3d1`  
		Last Modified: Fri, 30 Jun 2017 15:59:42 GMT  
		Size: 3.3 MB (3340997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8ff78a802567eacfea36679abadbc1fb24a7f700387304faf6647f736ffe57`  
		Last Modified: Fri, 30 Jun 2017 16:01:39 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:alpine-onbuild`

```console
$ docker pull clojure@sha256:7f8077c9062aec2da14b74c68a3821760dc58a133613e31721a9d7517442ba1e
```

-	Platforms:
	-	linux; amd64

### `clojure:alpine-onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96104295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a3203afa68cac0004bddb90812c42b25b981a970f5815dccb9659257184a248`
-	Default Command: `["lein","run"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 28 Jun 2017 20:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:04:48 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:04:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:04:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 01:41:53 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 29 Jun 2017 01:41:54 GMT
ENV LEIN_VERSION=2.7.1
# Thu, 29 Jun 2017 01:41:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Jun 2017 01:41:57 GMT
WORKDIR /tmp
# Thu, 29 Jun 2017 01:42:05 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Thu, 29 Jun 2017 01:42:38 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 29 Jun 2017 01:42:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Thu, 29 Jun 2017 01:42:58 GMT
ENV LEIN_ROOT=1
# Thu, 29 Jun 2017 01:43:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Thu, 29 Jun 2017 01:44:42 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 29 Jun 2017 01:44:44 GMT
WORKDIR /usr/src/app
# Thu, 29 Jun 2017 01:44:45 GMT
ONBUILD COPY project.clj /usr/src/app/
# Thu, 29 Jun 2017 01:44:46 GMT
ONBUILD RUN lein deps
# Thu, 29 Jun 2017 01:46:52 GMT
ONBUILD COPY . /usr/src/app
# Thu, 29 Jun 2017 01:46:53 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ed68184682c19ccbab7445ae3789b7e8a72ccd4d68b9b64548e0d71c17b15b`  
		Last Modified: Thu, 29 Jun 2017 23:42:08 GMT  
		Size: 70.1 MB (70050180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057c0eefd4c106d32e1c5055f450b66b6527f9e21a7019625bfd67401fab9bf6`  
		Last Modified: Fri, 30 Jun 2017 15:59:45 GMT  
		Size: 6.9 MB (6911370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f65ce4b1ed500a14f5392d01b90d9a4a1049f06462924a65a39064ee64b828`  
		Last Modified: Fri, 30 Jun 2017 15:59:43 GMT  
		Size: 13.8 MB (13810991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9250531d53d844e862ea57e97b0678989fc83e98cb35dd1157813ce69f67c3d1`  
		Last Modified: Fri, 30 Jun 2017 15:59:42 GMT  
		Size: 3.3 MB (3340997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8ff78a802567eacfea36679abadbc1fb24a7f700387304faf6647f736ffe57`  
		Last Modified: Fri, 30 Jun 2017 16:01:39 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:boot-2.7.2`

```console
$ docker pull clojure@sha256:e7347c9cbd8ad410cf52ccf2b01ec54cc62d82ea8cd67d8b993b0a1360152275
```

-	Platforms:
	-	linux; amd64

### `clojure:boot-2.7.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.7 MB (328690320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f13a967fa38d5350442ebca9cdbe53f704447dd523c747f2d84fe181ed4ad0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:51 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:09:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:32:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:33:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:33:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 16:03:16 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Mon, 21 Aug 2017 16:53:23 GMT
ENV BOOT_VERSION=2.7.2
# Mon, 21 Aug 2017 16:53:23 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Mon, 21 Aug 2017 16:53:24 GMT
WORKDIR /tmp
# Mon, 21 Aug 2017 16:53:26 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.5.2/boot.sh   && echo "Comparing installer checksum..."   && echo "d9cbefc6cbf043361a58b416e6d62fc80e5ead32 *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Mon, 21 Aug 2017 16:53:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Mon, 21 Aug 2017 16:53:26 GMT
ENV BOOT_AS_ROOT=yes
# Mon, 21 Aug 2017 16:55:37 GMT
RUN boot
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eaa20184e60073d2705ab636fb92b4428dfc503b858b423608dba26d628c99`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 660.5 KB (660458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a8522e2399427c6c6d4cb5748e3c9ea39188af728386b37ffa3719b60a08a0`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ba9d7befcada9c3bfe28fe046ee3ddf551dbcd0fe29a620071c07f49afc2e9`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635bf5037831b9d348a557e32db9ca3c918de37880ff495a93d232ca111c7dba`  
		Last Modified: Wed, 26 Jul 2017 20:37:36 GMT  
		Size: 183.7 MB (183682145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1236c277f1c5f5d26d97dca2662375f8b807e82196737c10ee54219109a86b0`  
		Last Modified: Wed, 26 Jul 2017 20:37:10 GMT  
		Size: 272.0 KB (271991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e5530689eb59399560ab986b8b77186b32829e0bb82387e22fa371de008e75`  
		Last Modified: Mon, 21 Aug 2017 16:59:00 GMT  
		Size: 6.6 KB (6593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd6517a66dc4be62710ffa57cf77e395e8a7046ca476d6553d0005836902cb2`  
		Last Modified: Mon, 21 Aug 2017 16:59:03 GMT  
		Size: 33.4 MB (33403528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:boot`

```console
$ docker pull clojure@sha256:e7347c9cbd8ad410cf52ccf2b01ec54cc62d82ea8cd67d8b993b0a1360152275
```

-	Platforms:
	-	linux; amd64

### `clojure:boot` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.7 MB (328690320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f13a967fa38d5350442ebca9cdbe53f704447dd523c747f2d84fe181ed4ad0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:51 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:09:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:32:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:33:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:33:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 16:03:16 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Mon, 21 Aug 2017 16:53:23 GMT
ENV BOOT_VERSION=2.7.2
# Mon, 21 Aug 2017 16:53:23 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Mon, 21 Aug 2017 16:53:24 GMT
WORKDIR /tmp
# Mon, 21 Aug 2017 16:53:26 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.5.2/boot.sh   && echo "Comparing installer checksum..."   && echo "d9cbefc6cbf043361a58b416e6d62fc80e5ead32 *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Mon, 21 Aug 2017 16:53:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Mon, 21 Aug 2017 16:53:26 GMT
ENV BOOT_AS_ROOT=yes
# Mon, 21 Aug 2017 16:55:37 GMT
RUN boot
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eaa20184e60073d2705ab636fb92b4428dfc503b858b423608dba26d628c99`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 660.5 KB (660458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a8522e2399427c6c6d4cb5748e3c9ea39188af728386b37ffa3719b60a08a0`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ba9d7befcada9c3bfe28fe046ee3ddf551dbcd0fe29a620071c07f49afc2e9`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635bf5037831b9d348a557e32db9ca3c918de37880ff495a93d232ca111c7dba`  
		Last Modified: Wed, 26 Jul 2017 20:37:36 GMT  
		Size: 183.7 MB (183682145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1236c277f1c5f5d26d97dca2662375f8b807e82196737c10ee54219109a86b0`  
		Last Modified: Wed, 26 Jul 2017 20:37:10 GMT  
		Size: 272.0 KB (271991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e5530689eb59399560ab986b8b77186b32829e0bb82387e22fa371de008e75`  
		Last Modified: Mon, 21 Aug 2017 16:59:00 GMT  
		Size: 6.6 KB (6593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd6517a66dc4be62710ffa57cf77e395e8a7046ca476d6553d0005836902cb2`  
		Last Modified: Mon, 21 Aug 2017 16:59:03 GMT  
		Size: 33.4 MB (33403528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:boot-2.7.2-alpine`

```console
$ docker pull clojure@sha256:b4ea8f5aa11ab3e1799051acf653590976a410d49685ff9d1206141a10a1ae6b
```

-	Platforms:
	-	linux; amd64

### `clojure:boot-2.7.2-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.4 MB (108366652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:996db4e35ceb0413f0480e927f5d076372c7bcc1d1c75cfcf7821c36a0b00975`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 28 Jun 2017 20:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:04:48 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:04:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:04:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 01:41:53 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Mon, 21 Aug 2017 16:55:41 GMT
ENV BOOT_VERSION=2.7.2
# Mon, 21 Aug 2017 16:55:42 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Mon, 21 Aug 2017 16:55:42 GMT
WORKDIR /tmp
# Mon, 21 Aug 2017 16:55:50 GMT
RUN apk add --update bash openssl && rm -rf /var/cache/apk/*
# Mon, 21 Aug 2017 16:55:52 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.5.2/boot.sh   && echo "Comparing installer checksum..."   && echo "d9cbefc6cbf043361a58b416e6d62fc80e5ead32 *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Mon, 21 Aug 2017 16:55:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Mon, 21 Aug 2017 16:55:52 GMT
ENV BOOT_AS_ROOT=yes
# Mon, 21 Aug 2017 16:57:30 GMT
RUN boot
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ed68184682c19ccbab7445ae3789b7e8a72ccd4d68b9b64548e0d71c17b15b`  
		Last Modified: Thu, 29 Jun 2017 23:42:08 GMT  
		Size: 70.1 MB (70050180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfdcb49dce1599bd0b0a990c87200ba79a5bdd40653ade0557cc16aedc996685`  
		Last Modified: Mon, 21 Aug 2017 16:59:22 GMT  
		Size: 2.9 MB (2916214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf60c9dc909f407780bd70cd214885cfb7b4c9c5c1b50a566d6196253baa4141`  
		Last Modified: Mon, 21 Aug 2017 16:59:21 GMT  
		Size: 6.3 KB (6347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5fa9c8514a377b42de81fbe506d4c03cc5be1cec2a86a45bacaada96046a49`  
		Last Modified: Mon, 21 Aug 2017 16:59:23 GMT  
		Size: 33.4 MB (33403278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:boot-alpine`

```console
$ docker pull clojure@sha256:b4ea8f5aa11ab3e1799051acf653590976a410d49685ff9d1206141a10a1ae6b
```

-	Platforms:
	-	linux; amd64

### `clojure:boot-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.4 MB (108366652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:996db4e35ceb0413f0480e927f5d076372c7bcc1d1c75cfcf7821c36a0b00975`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 28 Jun 2017 20:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:04:48 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:04:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:04:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 01:41:53 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Mon, 21 Aug 2017 16:55:41 GMT
ENV BOOT_VERSION=2.7.2
# Mon, 21 Aug 2017 16:55:42 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Mon, 21 Aug 2017 16:55:42 GMT
WORKDIR /tmp
# Mon, 21 Aug 2017 16:55:50 GMT
RUN apk add --update bash openssl && rm -rf /var/cache/apk/*
# Mon, 21 Aug 2017 16:55:52 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.5.2/boot.sh   && echo "Comparing installer checksum..."   && echo "d9cbefc6cbf043361a58b416e6d62fc80e5ead32 *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Mon, 21 Aug 2017 16:55:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Mon, 21 Aug 2017 16:55:52 GMT
ENV BOOT_AS_ROOT=yes
# Mon, 21 Aug 2017 16:57:30 GMT
RUN boot
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ed68184682c19ccbab7445ae3789b7e8a72ccd4d68b9b64548e0d71c17b15b`  
		Last Modified: Thu, 29 Jun 2017 23:42:08 GMT  
		Size: 70.1 MB (70050180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfdcb49dce1599bd0b0a990c87200ba79a5bdd40653ade0557cc16aedc996685`  
		Last Modified: Mon, 21 Aug 2017 16:59:22 GMT  
		Size: 2.9 MB (2916214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf60c9dc909f407780bd70cd214885cfb7b4c9c5c1b50a566d6196253baa4141`  
		Last Modified: Mon, 21 Aug 2017 16:59:21 GMT  
		Size: 6.3 KB (6347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5fa9c8514a377b42de81fbe506d4c03cc5be1cec2a86a45bacaada96046a49`  
		Last Modified: Mon, 21 Aug 2017 16:59:23 GMT  
		Size: 33.4 MB (33403278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
