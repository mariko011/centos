<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `clojure`

-	[`clojure:alpine`](#clojurealpine)
-	[`clojure:alpine-onbuild`](#clojurealpine-onbuild)
-	[`clojure:boot`](#clojureboot)
-	[`clojure:boot-2.7.2`](#clojureboot-272)
-	[`clojure:boot-2.7.2-alpine`](#clojureboot-272-alpine)
-	[`clojure:boot-alpine`](#clojureboot-alpine)
-	[`clojure:latest`](#clojurelatest)
-	[`clojure:lein`](#clojurelein)
-	[`clojure:lein-2.7.1`](#clojurelein-271)
-	[`clojure:lein-2.7.1-alpine`](#clojurelein-271-alpine)
-	[`clojure:lein-2.7.1-alpine-onbuild`](#clojurelein-271-alpine-onbuild)
-	[`clojure:lein-2.7.1-onbuild`](#clojurelein-271-onbuild)
-	[`clojure:lein-alpine`](#clojurelein-alpine)
-	[`clojure:lein-alpine-onbuild`](#clojurelein-alpine-onbuild)
-	[`clojure:lein-onbuild`](#clojurelein-onbuild)
-	[`clojure:onbuild`](#clojureonbuild)

## `clojure:alpine`

```console
$ docker pull clojure@sha256:6afa00b92e0ed0559d6783ddeb4faf4ba63a444c6fe9a94a3001ef361f567a91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:alpine` - linux; amd64

```console
$ docker pull clojure@sha256:aec28c586cf307020b66ebb24b31a23a0cf7e732b391149cd8b217552008b32d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96107052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df3f1b2109dfa8f224892921a1d84ad2a259d33e9e17a7fabfdf88a6955a9f7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 14 Sep 2017 04:21:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:21:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:05:57 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 14 Sep 2017 06:05:57 GMT
ENV LEIN_VERSION=2.7.1
# Thu, 14 Sep 2017 06:05:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 14 Sep 2017 06:05:57 GMT
WORKDIR /tmp
# Thu, 14 Sep 2017 06:06:04 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Thu, 14 Sep 2017 06:12:45 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 14 Sep 2017 06:12:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Thu, 14 Sep 2017 06:12:45 GMT
ENV LEIN_ROOT=1
# Thu, 14 Sep 2017 06:12:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a4b3080d3cc157970baf6edf6194df12fa0a9dc61d2c1525781ae4af65213c`  
		Last Modified: Thu, 14 Sep 2017 04:59:04 GMT  
		Size: 70.1 MB (70051361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef5db8964f3b3aaa1f4550d355cd4684d8e44a3d59b3ae73e3b0bee988eb131`  
		Last Modified: Thu, 14 Sep 2017 06:18:05 GMT  
		Size: 6.9 MB (6913115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b2ff61427cdd6f7e1cb49697bd40218e29d2b3468802d562f997f9c2691c05`  
		Last Modified: Thu, 14 Sep 2017 06:18:04 GMT  
		Size: 13.8 MB (13810966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6652c9d3bf24fa81a80c5160486e61aaa40461cf272976fee29242b1c4002e`  
		Last Modified: Thu, 14 Sep 2017 06:18:03 GMT  
		Size: 3.3 MB (3340968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:alpine-onbuild`

```console
$ docker pull clojure@sha256:1961e666ec35a8a38f05c64e474893938159fbdbd7b943fb958961a638df6176
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:alpine-onbuild` - linux; amd64

```console
$ docker pull clojure@sha256:af8131e20252ea8e0760b93d65d45bb26800e2ca7e80bb1d475f3bb98974520d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96107178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba3714260d859d795645fb1442f599e897b479a272b4d6432cda1bb07708205d`
-	Default Command: `["lein","run"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 14 Sep 2017 04:21:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:21:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:05:57 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 14 Sep 2017 06:05:57 GMT
ENV LEIN_VERSION=2.7.1
# Thu, 14 Sep 2017 06:05:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 14 Sep 2017 06:05:57 GMT
WORKDIR /tmp
# Thu, 14 Sep 2017 06:06:04 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Thu, 14 Sep 2017 06:12:45 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 14 Sep 2017 06:12:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Thu, 14 Sep 2017 06:12:45 GMT
ENV LEIN_ROOT=1
# Thu, 14 Sep 2017 06:12:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Thu, 14 Sep 2017 06:12:55 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 14 Sep 2017 06:12:56 GMT
WORKDIR /usr/src/app
# Thu, 14 Sep 2017 06:12:56 GMT
ONBUILD COPY project.clj /usr/src/app/
# Thu, 14 Sep 2017 06:12:56 GMT
ONBUILD RUN lein deps
# Thu, 14 Sep 2017 06:12:56 GMT
ONBUILD COPY . /usr/src/app
# Thu, 14 Sep 2017 06:12:56 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a4b3080d3cc157970baf6edf6194df12fa0a9dc61d2c1525781ae4af65213c`  
		Last Modified: Thu, 14 Sep 2017 04:59:04 GMT  
		Size: 70.1 MB (70051361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef5db8964f3b3aaa1f4550d355cd4684d8e44a3d59b3ae73e3b0bee988eb131`  
		Last Modified: Thu, 14 Sep 2017 06:18:05 GMT  
		Size: 6.9 MB (6913115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b2ff61427cdd6f7e1cb49697bd40218e29d2b3468802d562f997f9c2691c05`  
		Last Modified: Thu, 14 Sep 2017 06:18:04 GMT  
		Size: 13.8 MB (13810966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6652c9d3bf24fa81a80c5160486e61aaa40461cf272976fee29242b1c4002e`  
		Last Modified: Thu, 14 Sep 2017 06:18:03 GMT  
		Size: 3.3 MB (3340968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e47de1c432d9081c80fc4c0f4d2f213b0a56c5f37184cb1cd9af7f82612012e`  
		Last Modified: Thu, 14 Sep 2017 06:18:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:boot`

```console
$ docker pull clojure@sha256:950525e693952a633b8b9d9a10356c5c470087e83b22b262e495e05091771972
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `clojure:boot` - linux; amd64

```console
$ docker pull clojure@sha256:94d226992b5e6b02931e02646bcb99e16499ecb2cbf87600a6060d51ec3a6088
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.2 MB (329163985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63e2e552137421896177f84c97f74035713d9af81cf004e9f46c1411536ed5f8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:48:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:49:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:11:38 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 10 Oct 2017 08:11:38 GMT
ENV BOOT_VERSION=2.7.2
# Tue, 10 Oct 2017 08:11:38 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 08:11:39 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 08:11:40 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 10 Oct 2017 08:11:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 08:11:40 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 10 Oct 2017 08:14:06 GMT
RUN boot
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77980e5d0a6deb5b982795f18597f7e9ee7f9d08614cbc57528050b2a7977044`  
		Last Modified: Tue, 10 Oct 2017 01:17:05 GMT  
		Size: 892.2 KB (892192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5458607a81d3430c59a97089416a3ef2d8788bdb7eba159b3c2508904d41b996`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cf8338f422c47dc8c752afc2b406bb502e95cd2f74af9e84bff773e72d243`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3da5c56e5c9083605636f83450dfb193a0e46c55185cf98ed1ebac26f339`  
		Last Modified: Tue, 10 Oct 2017 01:17:39 GMT  
		Size: 183.7 MB (183691300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade7a861e3fe26356fa773e1b3f05add01be9ab4c977b711223c15fc30f458e`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbbe2c3350329f6c954c4e7bda79d9f927cf4fa982c4df97d88f69c184376edb`  
		Last Modified: Tue, 10 Oct 2017 08:15:29 GMT  
		Size: 6.9 KB (6894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87276e7b4e099275d2e769f25140f67fe19338116737a684c45f8fba3af0232`  
		Last Modified: Tue, 10 Oct 2017 08:15:32 GMT  
		Size: 33.4 MB (33410499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot` - linux; arm variant v5

```console
$ docker pull clojure@sha256:ec81233ed1bd9e934406e11c79a54405da843680421d06eb1136002500770780
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.6 MB (293643085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b69b0e68ce41b420df37f6489a321e4d73592b4710b1d8ae52a6a4d339fadc06`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:33 GMT
ADD file:faa50a4d3491f148f07964f6b9f9c8e97c0cf64588b20deb10f24e2f4f6c6b87 in / 
# Mon, 09 Oct 2017 21:44:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:18:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:19:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:19:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:10:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:10:31 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 08:10:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 08:10:32 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 08:10:33 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 08:10:33 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 08:10:33 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 08:10:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 08:11:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 08:11:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:40:44 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 10 Oct 2017 08:40:45 GMT
ENV BOOT_VERSION=2.7.2
# Tue, 10 Oct 2017 08:40:45 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 08:40:45 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 08:40:46 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 10 Oct 2017 08:40:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 08:40:47 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 10 Oct 2017 08:44:25 GMT
RUN boot
```

-	Layers:
	-	`sha256:3c60e7fc5441d6c90edac385048cfe55b732e74ac7a95ce0f52555d1fdd4777a`  
		Last Modified: Mon, 09 Oct 2017 21:50:32 GMT  
		Size: 43.8 MB (43815910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c0eb374b4a5889510ab6af5360e74f8471d96bbbb4b1585f37be4fbda09d06c`  
		Last Modified: Mon, 09 Oct 2017 22:26:12 GMT  
		Size: 10.2 MB (10205119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f713ec73030eef0749d2b44c7fce2fabd4c3a5ea319b731b4a5bb22fff47d244`  
		Last Modified: Mon, 09 Oct 2017 22:26:10 GMT  
		Size: 4.5 MB (4450769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928b1607d21d7f38bc3d880c6604d185f09b8932387d93d11ffebcc62a692bb7`  
		Last Modified: Mon, 09 Oct 2017 22:26:36 GMT  
		Size: 48.2 MB (48225718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e810e0cb21607f51deaec0b47b2092240ffeb34284b114756ece80e7271c261`  
		Last Modified: Tue, 10 Oct 2017 08:19:54 GMT  
		Size: 884.5 KB (884469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3b78f2745d23c12af2bef0ab8962405410237c3eb4b792f15b583774f89cc1`  
		Last Modified: Tue, 10 Oct 2017 08:19:55 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2bb2204857cc43f2585925fe67881ec886c3581647451b6f8f301e118863c0a`  
		Last Modified: Tue, 10 Oct 2017 08:19:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9871b9608c110715cfff54ae888fdec46d037b49c5787db588a34691179e58bc`  
		Last Modified: Tue, 10 Oct 2017 08:20:32 GMT  
		Size: 152.4 MB (152370743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf427f07eaca9c816b1d9af32319f0319febad3ae8f7e72b375e26f8c9eee066`  
		Last Modified: Tue, 10 Oct 2017 08:19:54 GMT  
		Size: 272.2 KB (272199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca4c76913b01d85dbdd13c8093ddf69a0e7e2e1dc94b7654b5f9a79b2138784`  
		Last Modified: Tue, 10 Oct 2017 08:45:07 GMT  
		Size: 6.9 KB (6890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82154ea08dc2573aee304903de7965fbe4742d88f459b7da2e94d475e5ef3355`  
		Last Modified: Tue, 10 Oct 2017 08:45:12 GMT  
		Size: 33.4 MB (33410892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot` - linux; arm variant v7

```console
$ docker pull clojure@sha256:5b13fd1d9d946549e2eb94839c5025064b9064616ea2dd0a86f8401211c3e426
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.7 MB (301715509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3b637e8ad156435ed75de1ff253793554e7ff27d55701aa00885a4cef584326`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:23:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:24:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:03:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:03:54 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 23:03:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 23:03:56 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 23:03:56 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 23:03:56 GMT
ENV JAVA_VERSION=8u141
# Mon, 09 Oct 2017 23:03:56 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Mon, 09 Oct 2017 23:03:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 09 Oct 2017 23:05:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 09 Oct 2017 23:05:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 01:23:58 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 10 Oct 2017 01:23:58 GMT
ENV BOOT_VERSION=2.7.2
# Tue, 10 Oct 2017 01:23:58 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 01:23:59 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 01:24:00 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 10 Oct 2017 01:24:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 01:24:03 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 10 Oct 2017 01:27:03 GMT
RUN boot
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad02a7a5b212c86cbdd527154a30708eccaa87b89053dd8b63d970bda7eb15c`  
		Last Modified: Mon, 09 Oct 2017 22:33:56 GMT  
		Size: 9.8 MB (9823849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bbcce226c5c7c39ae672de36f27124750688da88d920faf7faeda09ffaeb06`  
		Last Modified: Mon, 09 Oct 2017 22:33:55 GMT  
		Size: 4.2 MB (4209823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb73448c519a8cf4c670c025515e5cf1507429ab1d441d31d5865ef703aba00`  
		Last Modified: Mon, 09 Oct 2017 22:34:22 GMT  
		Size: 46.3 MB (46342791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5828f6ab056e6dfd8c133aff09fb57e805a334938aeb3cb90cb71911fd819b0`  
		Last Modified: Mon, 09 Oct 2017 23:22:49 GMT  
		Size: 867.6 KB (867628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7aed84c52b0a000e2381803495aef9df9883b816f6c77b31e029e99c86303ee`  
		Last Modified: Mon, 09 Oct 2017 23:22:48 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e7f22ee9dea157175c16e8d2904c0ee97980616a186ed27d313483d5c3eabfd`  
		Last Modified: Mon, 09 Oct 2017 23:22:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f47f099fd624f10615945d01657e0d8bf98450f0ac43e3b30b124922b5f2105`  
		Last Modified: Mon, 09 Oct 2017 23:23:26 GMT  
		Size: 164.9 MB (164939369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62a39bddac666a9e1cfa2ec9410e5d055347698a854a4f9b3917d77f8428396`  
		Last Modified: Mon, 09 Oct 2017 23:22:49 GMT  
		Size: 272.2 KB (272175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3069726d367db41d0e367b8b4ecb6df1a68ed55abf57c2a3d58ce881af0e8bc4`  
		Last Modified: Tue, 10 Oct 2017 01:27:26 GMT  
		Size: 6.9 KB (6894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6179613983b22fb71ec7bdcfd629b05551c28cc61d35a417656dbbb22bd3b268`  
		Last Modified: Tue, 10 Oct 2017 01:27:32 GMT  
		Size: 33.4 MB (33410655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:45d61b65c31cc12534f93301e4b13b402c084a657c2e4235a054ff99ce7d085f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.8 MB (308770726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fa3ef550b63b0b4d4a14a5d91429891e78475d0efecdb71a4ebaf1a36c1ce85`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:07:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:20:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:20:13 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 01:20:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 01:20:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 01:20:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 01:20:18 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 01:20:19 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 01:20:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 01:27:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 01:27:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 12:43:07 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 10 Oct 2017 12:43:08 GMT
ENV BOOT_VERSION=2.7.2
# Tue, 10 Oct 2017 12:43:09 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 12:43:09 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 12:43:11 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 10 Oct 2017 12:43:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 12:43:13 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 10 Oct 2017 12:44:56 GMT
RUN boot
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fc460f5f7f70833a25c52d6200ced8a4004784a9dc391c6ea4f0bdca6cd51a`  
		Last Modified: Mon, 09 Oct 2017 23:35:03 GMT  
		Size: 48.0 MB (47973994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817e6bf894513e362c7a91204190e30a6057e47fbf58811892d850689c110148`  
		Last Modified: Tue, 10 Oct 2017 02:10:30 GMT  
		Size: 877.4 KB (877428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa01efc0c9ccad41a7a808e5ece80b39f4343666fe98e023b970780ff523af02`  
		Last Modified: Tue, 10 Oct 2017 02:10:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61fcba39e249d16cadb741e545b2914f402a0f1914bbd3132e2ddfa64d66072`  
		Last Modified: Tue, 10 Oct 2017 02:10:28 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e89db9379ff41bac275bf233d9648178158b8e8c0e1dd2f827d8e7bda22bae`  
		Last Modified: Tue, 10 Oct 2017 02:13:37 GMT  
		Size: 168.9 MB (168866096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864ced3055c23d07027e0c555a5a8e6795562212ad2a23709da9365c235cf600`  
		Last Modified: Tue, 10 Oct 2017 02:10:29 GMT  
		Size: 272.1 KB (272093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926e5358e1188b41b9a7f235d10d8c83c651dfcfdc7d39397943d5d44bd19c4f`  
		Last Modified: Tue, 10 Oct 2017 12:47:29 GMT  
		Size: 6.9 KB (6894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d856661b07c375a18f37aa4492a43aeb2b41f57cbc484e84532ee7ebd334955d`  
		Last Modified: Tue, 10 Oct 2017 12:47:36 GMT  
		Size: 33.4 MB (33410480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot` - linux; 386

```console
$ docker pull clojure@sha256:55449482a69627b9043c5bc97eb0073d187cae959e9a7830d3127066e30cc809
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.3 MB (334309817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6393b2004c19962f34f1bdc19a807cc9046321c803adea3cbc15356e7111c121`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:18:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:18:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:11:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:11:14 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 01:11:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 01:11:16 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 01:11:16 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 01:11:16 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 01:11:16 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 01:11:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 01:12:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 01:12:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 04:43:22 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 10 Oct 2017 04:43:22 GMT
ENV BOOT_VERSION=2.7.2
# Tue, 10 Oct 2017 04:43:22 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 04:43:22 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 04:43:23 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 10 Oct 2017 04:43:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 04:43:27 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 10 Oct 2017 04:46:20 GMT
RUN boot
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49155822b6274da1500beeea1b851fe93477c0f24c9139e66a6b08b28e94947a`  
		Last Modified: Mon, 09 Oct 2017 23:44:19 GMT  
		Size: 11.1 MB (11149763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612edda692ea6ffd7b7804e0853087b5051708a461f81b600a2eff2391245512`  
		Last Modified: Mon, 09 Oct 2017 23:44:18 GMT  
		Size: 4.9 MB (4852438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dde6a8931f23491215f28541bcbc153f642dff8f291c5d70cc81b9b93b7a18f`  
		Last Modified: Mon, 09 Oct 2017 23:44:56 GMT  
		Size: 51.5 MB (51547081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1eb1184fe8e84ef2abd0b7fe0a64bab48b959b13e122c28c9f0cf28427d9a3b`  
		Last Modified: Tue, 10 Oct 2017 01:52:09 GMT  
		Size: 899.8 KB (899778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f583cd0f6a0349765c0d198bb9d1901c220eb84484f3b15b84f4ed634bc3ca8`  
		Last Modified: Tue, 10 Oct 2017 01:52:09 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fea715376bd8f147a32b4726364d6821d751e16cf860308fb7768c498e70941`  
		Last Modified: Tue, 10 Oct 2017 01:52:09 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d07fe9dbb343e113bddab9415a0d69171dbf69851fc5926ed1eb83018e414ebd`  
		Last Modified: Tue, 10 Oct 2017 01:52:48 GMT  
		Size: 186.3 MB (186337014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afdbe6763461b7ab93c4b69f075fdedf63389d5e532e084974681326da4b3e0`  
		Last Modified: Tue, 10 Oct 2017 01:52:09 GMT  
		Size: 272.1 KB (272111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1461910ab18847c4fb3eedd5a00b21e97bb2537ac0fb9a8a53bc99344b280fb`  
		Last Modified: Tue, 10 Oct 2017 04:46:39 GMT  
		Size: 6.9 KB (6894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f46b0454bf118be53505daf08a62bafc13ecd32192e008b028b59758e004582`  
		Last Modified: Tue, 10 Oct 2017 04:46:42 GMT  
		Size: 33.4 MB (33410683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot` - linux; ppc64le

```console
$ docker pull clojure@sha256:2b9f089b25a4b8ac94aba94fb158b6980d66866f6834e6c21d0a61c3c247c054
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.3 MB (317281320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e437b0e6b87c60c0e11ec243bd341298669c7eea6c56dd59881cf706321cbf69`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:14:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:19:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:14:04 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 03:14:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 03:14:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 03:14:19 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 03:14:21 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 03:14:24 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 03:14:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 03:37:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 03:37:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 10:25:26 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 10 Oct 2017 10:25:30 GMT
ENV BOOT_VERSION=2.7.2
# Tue, 10 Oct 2017 10:25:32 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 10:25:37 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 10:25:48 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 10 Oct 2017 10:25:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 10:25:55 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 10 Oct 2017 10:28:17 GMT
RUN boot
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68ed2fe64e9c2dfe79d5d484b75ed9d17ac5941067e9d69cb194ac257feec3a`  
		Last Modified: Tue, 10 Oct 2017 00:58:01 GMT  
		Size: 10.3 MB (10338918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcb4b07bc1d76cd1d3e264929d07b103dc8a16ecba513a1d5a03d3b5d54b919`  
		Last Modified: Tue, 10 Oct 2017 00:58:00 GMT  
		Size: 4.6 MB (4587455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f601576bea3b971a5c48ce185e438f8ef5a459c0af4d71e2a76e2f1614985ff`  
		Last Modified: Tue, 10 Oct 2017 00:58:29 GMT  
		Size: 50.0 MB (50025661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d049c690ec893d6c5bee966eccd42639439f69808bb14e8ab48e8f97effaf4e`  
		Last Modified: Tue, 10 Oct 2017 05:11:22 GMT  
		Size: 886.5 KB (886492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a017aab8d1fa4dcc9e8cc020e1d225a0cb913fd107244b705209f30616b1322`  
		Last Modified: Tue, 10 Oct 2017 05:11:21 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37714e84ae49acce27bb6b3064ddb75aa5f1524c6ee6fc23ebc9d4b2eb00e4e4`  
		Last Modified: Tue, 10 Oct 2017 05:11:22 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e742fe4b5fac456d1f466bfc7c25bbd0df09fab5df0b6127b3794d89fed1bdc`  
		Last Modified: Tue, 10 Oct 2017 05:12:07 GMT  
		Size: 172.4 MB (172374524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092d11158fbab902a752fd00d3a5cc5be658d4a1d79fc406852dde0ba417c60f`  
		Last Modified: Tue, 10 Oct 2017 05:11:21 GMT  
		Size: 272.1 KB (272058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e2a18f5053a1be97504fe027756b1a9328c05b94bb81045a63748170bdb434`  
		Last Modified: Tue, 10 Oct 2017 10:29:30 GMT  
		Size: 6.9 KB (6893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20bf3b6737fbb9e85af88dda444150e90511ac407eb0b457c9454b2f911da6f`  
		Last Modified: Tue, 10 Oct 2017 10:29:35 GMT  
		Size: 33.4 MB (33410574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot` - linux; s390x

```console
$ docker pull clojure@sha256:5da0cdb6cd3387771b7667acae3d6f01322c5b8b1f726d9d9f000fea99fce6e0
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.5 MB (299505324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b13442b3ee997c98534d9e8b78eb780b4038b1b25dcace0d4c482a7514dee66e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:15:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:16:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:51:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:51:15 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:51:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:51:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:51:17 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 22:51:17 GMT
ENV JAVA_VERSION=8u141
# Mon, 09 Oct 2017 22:51:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Mon, 09 Oct 2017 22:51:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 09 Oct 2017 22:52:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 09 Oct 2017 22:52:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 01:44:55 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 10 Oct 2017 01:44:56 GMT
ENV BOOT_VERSION=2.7.2
# Tue, 10 Oct 2017 01:44:56 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 01:44:56 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 01:44:57 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 10 Oct 2017 01:44:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 01:44:57 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 10 Oct 2017 01:47:22 GMT
RUN boot
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33b5e0a1749d0366c28b4b88ae0139119ba36640fa31f7ed3d2ec974ae1127b`  
		Last Modified: Mon, 09 Oct 2017 22:21:54 GMT  
		Size: 10.7 MB (10667715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049887af1090e55495d4d3f232c2441d3bb8b420366662539c3bfb829e349496`  
		Last Modified: Mon, 09 Oct 2017 22:21:53 GMT  
		Size: 4.7 MB (4664115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88994e2adeee9dcccd21288a4ca51444bc7374338cac5c49346a4abab141c964`  
		Last Modified: Mon, 09 Oct 2017 22:22:13 GMT  
		Size: 50.4 MB (50441493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f387eea12e61c54ddde7f0a374fdb865a9c7b947726d9059badbe523f1dbb567`  
		Last Modified: Mon, 09 Oct 2017 23:01:11 GMT  
		Size: 903.3 KB (903271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fafc101c48ae99e9e8736b5e5ab83b778b685c0b02b9a7b0c79d0ab02bf7f1f`  
		Last Modified: Mon, 09 Oct 2017 23:01:11 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3186a6b958367bf7bbb9e04ccbf7885b78581f160e7522d7e99ba22a1382295`  
		Last Modified: Mon, 09 Oct 2017 23:01:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7a175b238a1984f8feed86837873789bd27f86f8757cb2c6d5c95d7da8add6`  
		Last Modified: Mon, 09 Oct 2017 23:01:35 GMT  
		Size: 154.2 MB (154165898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deab041fe669c4ae1a41017f90c0740e574dadc67b50d182663706fddaa9fed`  
		Last Modified: Mon, 09 Oct 2017 23:01:12 GMT  
		Size: 272.2 KB (272164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a825c7379fe672f252cb26d18530dedc4a83924ea3fff9b1559baa34e07b706e`  
		Last Modified: Tue, 10 Oct 2017 01:48:12 GMT  
		Size: 6.9 KB (6894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd6cdf3f2d1b97f52c57241ff67e4746a4279035e88fc3b885f3fda218dd48b`  
		Last Modified: Tue, 10 Oct 2017 01:48:16 GMT  
		Size: 33.4 MB (33410634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:boot-2.7.2`

```console
$ docker pull clojure@sha256:950525e693952a633b8b9d9a10356c5c470087e83b22b262e495e05091771972
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `clojure:boot-2.7.2` - linux; amd64

```console
$ docker pull clojure@sha256:94d226992b5e6b02931e02646bcb99e16499ecb2cbf87600a6060d51ec3a6088
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.2 MB (329163985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63e2e552137421896177f84c97f74035713d9af81cf004e9f46c1411536ed5f8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:48:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:49:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:11:38 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 10 Oct 2017 08:11:38 GMT
ENV BOOT_VERSION=2.7.2
# Tue, 10 Oct 2017 08:11:38 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 08:11:39 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 08:11:40 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 10 Oct 2017 08:11:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 08:11:40 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 10 Oct 2017 08:14:06 GMT
RUN boot
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77980e5d0a6deb5b982795f18597f7e9ee7f9d08614cbc57528050b2a7977044`  
		Last Modified: Tue, 10 Oct 2017 01:17:05 GMT  
		Size: 892.2 KB (892192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5458607a81d3430c59a97089416a3ef2d8788bdb7eba159b3c2508904d41b996`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cf8338f422c47dc8c752afc2b406bb502e95cd2f74af9e84bff773e72d243`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3da5c56e5c9083605636f83450dfb193a0e46c55185cf98ed1ebac26f339`  
		Last Modified: Tue, 10 Oct 2017 01:17:39 GMT  
		Size: 183.7 MB (183691300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade7a861e3fe26356fa773e1b3f05add01be9ab4c977b711223c15fc30f458e`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbbe2c3350329f6c954c4e7bda79d9f927cf4fa982c4df97d88f69c184376edb`  
		Last Modified: Tue, 10 Oct 2017 08:15:29 GMT  
		Size: 6.9 KB (6894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87276e7b4e099275d2e769f25140f67fe19338116737a684c45f8fba3af0232`  
		Last Modified: Tue, 10 Oct 2017 08:15:32 GMT  
		Size: 33.4 MB (33410499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot-2.7.2` - linux; arm variant v5

```console
$ docker pull clojure@sha256:ec81233ed1bd9e934406e11c79a54405da843680421d06eb1136002500770780
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.6 MB (293643085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b69b0e68ce41b420df37f6489a321e4d73592b4710b1d8ae52a6a4d339fadc06`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:33 GMT
ADD file:faa50a4d3491f148f07964f6b9f9c8e97c0cf64588b20deb10f24e2f4f6c6b87 in / 
# Mon, 09 Oct 2017 21:44:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:18:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:19:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:19:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:10:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:10:31 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 08:10:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 08:10:32 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 08:10:33 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 08:10:33 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 08:10:33 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 08:10:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 08:11:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 08:11:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:40:44 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 10 Oct 2017 08:40:45 GMT
ENV BOOT_VERSION=2.7.2
# Tue, 10 Oct 2017 08:40:45 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 08:40:45 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 08:40:46 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 10 Oct 2017 08:40:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 08:40:47 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 10 Oct 2017 08:44:25 GMT
RUN boot
```

-	Layers:
	-	`sha256:3c60e7fc5441d6c90edac385048cfe55b732e74ac7a95ce0f52555d1fdd4777a`  
		Last Modified: Mon, 09 Oct 2017 21:50:32 GMT  
		Size: 43.8 MB (43815910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c0eb374b4a5889510ab6af5360e74f8471d96bbbb4b1585f37be4fbda09d06c`  
		Last Modified: Mon, 09 Oct 2017 22:26:12 GMT  
		Size: 10.2 MB (10205119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f713ec73030eef0749d2b44c7fce2fabd4c3a5ea319b731b4a5bb22fff47d244`  
		Last Modified: Mon, 09 Oct 2017 22:26:10 GMT  
		Size: 4.5 MB (4450769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928b1607d21d7f38bc3d880c6604d185f09b8932387d93d11ffebcc62a692bb7`  
		Last Modified: Mon, 09 Oct 2017 22:26:36 GMT  
		Size: 48.2 MB (48225718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e810e0cb21607f51deaec0b47b2092240ffeb34284b114756ece80e7271c261`  
		Last Modified: Tue, 10 Oct 2017 08:19:54 GMT  
		Size: 884.5 KB (884469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3b78f2745d23c12af2bef0ab8962405410237c3eb4b792f15b583774f89cc1`  
		Last Modified: Tue, 10 Oct 2017 08:19:55 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2bb2204857cc43f2585925fe67881ec886c3581647451b6f8f301e118863c0a`  
		Last Modified: Tue, 10 Oct 2017 08:19:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9871b9608c110715cfff54ae888fdec46d037b49c5787db588a34691179e58bc`  
		Last Modified: Tue, 10 Oct 2017 08:20:32 GMT  
		Size: 152.4 MB (152370743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf427f07eaca9c816b1d9af32319f0319febad3ae8f7e72b375e26f8c9eee066`  
		Last Modified: Tue, 10 Oct 2017 08:19:54 GMT  
		Size: 272.2 KB (272199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca4c76913b01d85dbdd13c8093ddf69a0e7e2e1dc94b7654b5f9a79b2138784`  
		Last Modified: Tue, 10 Oct 2017 08:45:07 GMT  
		Size: 6.9 KB (6890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82154ea08dc2573aee304903de7965fbe4742d88f459b7da2e94d475e5ef3355`  
		Last Modified: Tue, 10 Oct 2017 08:45:12 GMT  
		Size: 33.4 MB (33410892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot-2.7.2` - linux; arm variant v7

```console
$ docker pull clojure@sha256:5b13fd1d9d946549e2eb94839c5025064b9064616ea2dd0a86f8401211c3e426
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.7 MB (301715509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3b637e8ad156435ed75de1ff253793554e7ff27d55701aa00885a4cef584326`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:23:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:23:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:24:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:03:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:03:54 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 23:03:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 23:03:56 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 23:03:56 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 23:03:56 GMT
ENV JAVA_VERSION=8u141
# Mon, 09 Oct 2017 23:03:56 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Mon, 09 Oct 2017 23:03:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 09 Oct 2017 23:05:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 09 Oct 2017 23:05:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 01:23:58 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 10 Oct 2017 01:23:58 GMT
ENV BOOT_VERSION=2.7.2
# Tue, 10 Oct 2017 01:23:58 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 01:23:59 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 01:24:00 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 10 Oct 2017 01:24:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 01:24:03 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 10 Oct 2017 01:27:03 GMT
RUN boot
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad02a7a5b212c86cbdd527154a30708eccaa87b89053dd8b63d970bda7eb15c`  
		Last Modified: Mon, 09 Oct 2017 22:33:56 GMT  
		Size: 9.8 MB (9823849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bbcce226c5c7c39ae672de36f27124750688da88d920faf7faeda09ffaeb06`  
		Last Modified: Mon, 09 Oct 2017 22:33:55 GMT  
		Size: 4.2 MB (4209823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb73448c519a8cf4c670c025515e5cf1507429ab1d441d31d5865ef703aba00`  
		Last Modified: Mon, 09 Oct 2017 22:34:22 GMT  
		Size: 46.3 MB (46342791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5828f6ab056e6dfd8c133aff09fb57e805a334938aeb3cb90cb71911fd819b0`  
		Last Modified: Mon, 09 Oct 2017 23:22:49 GMT  
		Size: 867.6 KB (867628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7aed84c52b0a000e2381803495aef9df9883b816f6c77b31e029e99c86303ee`  
		Last Modified: Mon, 09 Oct 2017 23:22:48 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e7f22ee9dea157175c16e8d2904c0ee97980616a186ed27d313483d5c3eabfd`  
		Last Modified: Mon, 09 Oct 2017 23:22:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f47f099fd624f10615945d01657e0d8bf98450f0ac43e3b30b124922b5f2105`  
		Last Modified: Mon, 09 Oct 2017 23:23:26 GMT  
		Size: 164.9 MB (164939369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62a39bddac666a9e1cfa2ec9410e5d055347698a854a4f9b3917d77f8428396`  
		Last Modified: Mon, 09 Oct 2017 23:22:49 GMT  
		Size: 272.2 KB (272175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3069726d367db41d0e367b8b4ecb6df1a68ed55abf57c2a3d58ce881af0e8bc4`  
		Last Modified: Tue, 10 Oct 2017 01:27:26 GMT  
		Size: 6.9 KB (6894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6179613983b22fb71ec7bdcfd629b05551c28cc61d35a417656dbbb22bd3b268`  
		Last Modified: Tue, 10 Oct 2017 01:27:32 GMT  
		Size: 33.4 MB (33410655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot-2.7.2` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:45d61b65c31cc12534f93301e4b13b402c084a657c2e4235a054ff99ce7d085f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.8 MB (308770726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fa3ef550b63b0b4d4a14a5d91429891e78475d0efecdb71a4ebaf1a36c1ce85`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:07:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:20:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:20:13 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 01:20:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 01:20:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 01:20:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 01:20:18 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 01:20:19 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 01:20:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 01:27:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 01:27:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 12:43:07 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 10 Oct 2017 12:43:08 GMT
ENV BOOT_VERSION=2.7.2
# Tue, 10 Oct 2017 12:43:09 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 12:43:09 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 12:43:11 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 10 Oct 2017 12:43:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 12:43:13 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 10 Oct 2017 12:44:56 GMT
RUN boot
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fc460f5f7f70833a25c52d6200ced8a4004784a9dc391c6ea4f0bdca6cd51a`  
		Last Modified: Mon, 09 Oct 2017 23:35:03 GMT  
		Size: 48.0 MB (47973994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817e6bf894513e362c7a91204190e30a6057e47fbf58811892d850689c110148`  
		Last Modified: Tue, 10 Oct 2017 02:10:30 GMT  
		Size: 877.4 KB (877428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa01efc0c9ccad41a7a808e5ece80b39f4343666fe98e023b970780ff523af02`  
		Last Modified: Tue, 10 Oct 2017 02:10:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61fcba39e249d16cadb741e545b2914f402a0f1914bbd3132e2ddfa64d66072`  
		Last Modified: Tue, 10 Oct 2017 02:10:28 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e89db9379ff41bac275bf233d9648178158b8e8c0e1dd2f827d8e7bda22bae`  
		Last Modified: Tue, 10 Oct 2017 02:13:37 GMT  
		Size: 168.9 MB (168866096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864ced3055c23d07027e0c555a5a8e6795562212ad2a23709da9365c235cf600`  
		Last Modified: Tue, 10 Oct 2017 02:10:29 GMT  
		Size: 272.1 KB (272093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926e5358e1188b41b9a7f235d10d8c83c651dfcfdc7d39397943d5d44bd19c4f`  
		Last Modified: Tue, 10 Oct 2017 12:47:29 GMT  
		Size: 6.9 KB (6894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d856661b07c375a18f37aa4492a43aeb2b41f57cbc484e84532ee7ebd334955d`  
		Last Modified: Tue, 10 Oct 2017 12:47:36 GMT  
		Size: 33.4 MB (33410480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot-2.7.2` - linux; 386

```console
$ docker pull clojure@sha256:55449482a69627b9043c5bc97eb0073d187cae959e9a7830d3127066e30cc809
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.3 MB (334309817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6393b2004c19962f34f1bdc19a807cc9046321c803adea3cbc15356e7111c121`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:18:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:18:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:11:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:11:14 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 01:11:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 01:11:16 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 01:11:16 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 01:11:16 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 01:11:16 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 01:11:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 01:12:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 01:12:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 04:43:22 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 10 Oct 2017 04:43:22 GMT
ENV BOOT_VERSION=2.7.2
# Tue, 10 Oct 2017 04:43:22 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 04:43:22 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 04:43:23 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 10 Oct 2017 04:43:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 04:43:27 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 10 Oct 2017 04:46:20 GMT
RUN boot
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49155822b6274da1500beeea1b851fe93477c0f24c9139e66a6b08b28e94947a`  
		Last Modified: Mon, 09 Oct 2017 23:44:19 GMT  
		Size: 11.1 MB (11149763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612edda692ea6ffd7b7804e0853087b5051708a461f81b600a2eff2391245512`  
		Last Modified: Mon, 09 Oct 2017 23:44:18 GMT  
		Size: 4.9 MB (4852438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dde6a8931f23491215f28541bcbc153f642dff8f291c5d70cc81b9b93b7a18f`  
		Last Modified: Mon, 09 Oct 2017 23:44:56 GMT  
		Size: 51.5 MB (51547081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1eb1184fe8e84ef2abd0b7fe0a64bab48b959b13e122c28c9f0cf28427d9a3b`  
		Last Modified: Tue, 10 Oct 2017 01:52:09 GMT  
		Size: 899.8 KB (899778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f583cd0f6a0349765c0d198bb9d1901c220eb84484f3b15b84f4ed634bc3ca8`  
		Last Modified: Tue, 10 Oct 2017 01:52:09 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fea715376bd8f147a32b4726364d6821d751e16cf860308fb7768c498e70941`  
		Last Modified: Tue, 10 Oct 2017 01:52:09 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d07fe9dbb343e113bddab9415a0d69171dbf69851fc5926ed1eb83018e414ebd`  
		Last Modified: Tue, 10 Oct 2017 01:52:48 GMT  
		Size: 186.3 MB (186337014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afdbe6763461b7ab93c4b69f075fdedf63389d5e532e084974681326da4b3e0`  
		Last Modified: Tue, 10 Oct 2017 01:52:09 GMT  
		Size: 272.1 KB (272111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1461910ab18847c4fb3eedd5a00b21e97bb2537ac0fb9a8a53bc99344b280fb`  
		Last Modified: Tue, 10 Oct 2017 04:46:39 GMT  
		Size: 6.9 KB (6894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f46b0454bf118be53505daf08a62bafc13ecd32192e008b028b59758e004582`  
		Last Modified: Tue, 10 Oct 2017 04:46:42 GMT  
		Size: 33.4 MB (33410683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot-2.7.2` - linux; ppc64le

```console
$ docker pull clojure@sha256:2b9f089b25a4b8ac94aba94fb158b6980d66866f6834e6c21d0a61c3c247c054
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.3 MB (317281320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e437b0e6b87c60c0e11ec243bd341298669c7eea6c56dd59881cf706321cbf69`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:14:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:19:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:14:04 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 03:14:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 03:14:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 03:14:19 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 03:14:21 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 03:14:24 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 03:14:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 03:37:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 03:37:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 10:25:26 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 10 Oct 2017 10:25:30 GMT
ENV BOOT_VERSION=2.7.2
# Tue, 10 Oct 2017 10:25:32 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 10:25:37 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 10:25:48 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 10 Oct 2017 10:25:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 10:25:55 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 10 Oct 2017 10:28:17 GMT
RUN boot
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68ed2fe64e9c2dfe79d5d484b75ed9d17ac5941067e9d69cb194ac257feec3a`  
		Last Modified: Tue, 10 Oct 2017 00:58:01 GMT  
		Size: 10.3 MB (10338918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcb4b07bc1d76cd1d3e264929d07b103dc8a16ecba513a1d5a03d3b5d54b919`  
		Last Modified: Tue, 10 Oct 2017 00:58:00 GMT  
		Size: 4.6 MB (4587455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f601576bea3b971a5c48ce185e438f8ef5a459c0af4d71e2a76e2f1614985ff`  
		Last Modified: Tue, 10 Oct 2017 00:58:29 GMT  
		Size: 50.0 MB (50025661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d049c690ec893d6c5bee966eccd42639439f69808bb14e8ab48e8f97effaf4e`  
		Last Modified: Tue, 10 Oct 2017 05:11:22 GMT  
		Size: 886.5 KB (886492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a017aab8d1fa4dcc9e8cc020e1d225a0cb913fd107244b705209f30616b1322`  
		Last Modified: Tue, 10 Oct 2017 05:11:21 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37714e84ae49acce27bb6b3064ddb75aa5f1524c6ee6fc23ebc9d4b2eb00e4e4`  
		Last Modified: Tue, 10 Oct 2017 05:11:22 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e742fe4b5fac456d1f466bfc7c25bbd0df09fab5df0b6127b3794d89fed1bdc`  
		Last Modified: Tue, 10 Oct 2017 05:12:07 GMT  
		Size: 172.4 MB (172374524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092d11158fbab902a752fd00d3a5cc5be658d4a1d79fc406852dde0ba417c60f`  
		Last Modified: Tue, 10 Oct 2017 05:11:21 GMT  
		Size: 272.1 KB (272058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e2a18f5053a1be97504fe027756b1a9328c05b94bb81045a63748170bdb434`  
		Last Modified: Tue, 10 Oct 2017 10:29:30 GMT  
		Size: 6.9 KB (6893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20bf3b6737fbb9e85af88dda444150e90511ac407eb0b457c9454b2f911da6f`  
		Last Modified: Tue, 10 Oct 2017 10:29:35 GMT  
		Size: 33.4 MB (33410574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot-2.7.2` - linux; s390x

```console
$ docker pull clojure@sha256:5da0cdb6cd3387771b7667acae3d6f01322c5b8b1f726d9d9f000fea99fce6e0
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.5 MB (299505324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b13442b3ee997c98534d9e8b78eb780b4038b1b25dcace0d4c482a7514dee66e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:15:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:16:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:51:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:51:15 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:51:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:51:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:51:17 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 22:51:17 GMT
ENV JAVA_VERSION=8u141
# Mon, 09 Oct 2017 22:51:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Mon, 09 Oct 2017 22:51:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 09 Oct 2017 22:52:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 09 Oct 2017 22:52:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 01:44:55 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 10 Oct 2017 01:44:56 GMT
ENV BOOT_VERSION=2.7.2
# Tue, 10 Oct 2017 01:44:56 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 01:44:56 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 01:44:57 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 10 Oct 2017 01:44:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 01:44:57 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 10 Oct 2017 01:47:22 GMT
RUN boot
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33b5e0a1749d0366c28b4b88ae0139119ba36640fa31f7ed3d2ec974ae1127b`  
		Last Modified: Mon, 09 Oct 2017 22:21:54 GMT  
		Size: 10.7 MB (10667715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049887af1090e55495d4d3f232c2441d3bb8b420366662539c3bfb829e349496`  
		Last Modified: Mon, 09 Oct 2017 22:21:53 GMT  
		Size: 4.7 MB (4664115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88994e2adeee9dcccd21288a4ca51444bc7374338cac5c49346a4abab141c964`  
		Last Modified: Mon, 09 Oct 2017 22:22:13 GMT  
		Size: 50.4 MB (50441493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f387eea12e61c54ddde7f0a374fdb865a9c7b947726d9059badbe523f1dbb567`  
		Last Modified: Mon, 09 Oct 2017 23:01:11 GMT  
		Size: 903.3 KB (903271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fafc101c48ae99e9e8736b5e5ab83b778b685c0b02b9a7b0c79d0ab02bf7f1f`  
		Last Modified: Mon, 09 Oct 2017 23:01:11 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3186a6b958367bf7bbb9e04ccbf7885b78581f160e7522d7e99ba22a1382295`  
		Last Modified: Mon, 09 Oct 2017 23:01:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7a175b238a1984f8feed86837873789bd27f86f8757cb2c6d5c95d7da8add6`  
		Last Modified: Mon, 09 Oct 2017 23:01:35 GMT  
		Size: 154.2 MB (154165898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deab041fe669c4ae1a41017f90c0740e574dadc67b50d182663706fddaa9fed`  
		Last Modified: Mon, 09 Oct 2017 23:01:12 GMT  
		Size: 272.2 KB (272164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a825c7379fe672f252cb26d18530dedc4a83924ea3fff9b1559baa34e07b706e`  
		Last Modified: Tue, 10 Oct 2017 01:48:12 GMT  
		Size: 6.9 KB (6894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd6cdf3f2d1b97f52c57241ff67e4746a4279035e88fc3b885f3fda218dd48b`  
		Last Modified: Tue, 10 Oct 2017 01:48:16 GMT  
		Size: 33.4 MB (33410634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:boot-2.7.2-alpine`

```console
$ docker pull clojure@sha256:721045a315e343f234e9e0fa7e5b522c9f59f7701892dfd4c8347630666ba4fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:boot-2.7.2-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:5aad6a2e61596e5c43473e22cd213126f2cb870ccfb98fedf7205dc768892c77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.4 MB (108376828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cd4e809c0315c82d62cdc499399b042b38d3f2272c968cad49c43933b7cc956`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 14 Sep 2017 04:21:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:21:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:05:57 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 14 Sep 2017 06:15:35 GMT
ENV BOOT_VERSION=2.7.2
# Thu, 14 Sep 2017 06:15:35 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Thu, 14 Sep 2017 06:15:35 GMT
WORKDIR /tmp
# Thu, 14 Sep 2017 06:15:40 GMT
RUN apk add --update bash openssl && rm -rf /var/cache/apk/*
# Thu, 14 Sep 2017 06:15:41 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Thu, 14 Sep 2017 06:15:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Thu, 14 Sep 2017 06:15:42 GMT
ENV BOOT_AS_ROOT=yes
# Thu, 14 Sep 2017 06:17:12 GMT
RUN boot
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a4b3080d3cc157970baf6edf6194df12fa0a9dc61d2c1525781ae4af65213c`  
		Last Modified: Thu, 14 Sep 2017 04:59:04 GMT  
		Size: 70.1 MB (70051361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccd702bb1f1431a57482dd2dd1bc40c97c81dcd67abcd7644b508a9b08646b4`  
		Last Modified: Thu, 14 Sep 2017 06:18:55 GMT  
		Size: 2.9 MB (2917938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1272ba519b4889704a505a82fe08069aa68d147597080d6841471d318151d8ae`  
		Last Modified: Thu, 14 Sep 2017 06:18:56 GMT  
		Size: 6.7 KB (6655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47e73ef99532708069fd6fbcac924311fd9efba6eba726727293d391d761f6e`  
		Last Modified: Thu, 14 Sep 2017 06:18:57 GMT  
		Size: 33.4 MB (33410232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:boot-alpine`

```console
$ docker pull clojure@sha256:721045a315e343f234e9e0fa7e5b522c9f59f7701892dfd4c8347630666ba4fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:boot-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:5aad6a2e61596e5c43473e22cd213126f2cb870ccfb98fedf7205dc768892c77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.4 MB (108376828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cd4e809c0315c82d62cdc499399b042b38d3f2272c968cad49c43933b7cc956`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 14 Sep 2017 04:21:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:21:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:05:57 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 14 Sep 2017 06:15:35 GMT
ENV BOOT_VERSION=2.7.2
# Thu, 14 Sep 2017 06:15:35 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Thu, 14 Sep 2017 06:15:35 GMT
WORKDIR /tmp
# Thu, 14 Sep 2017 06:15:40 GMT
RUN apk add --update bash openssl && rm -rf /var/cache/apk/*
# Thu, 14 Sep 2017 06:15:41 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Thu, 14 Sep 2017 06:15:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Thu, 14 Sep 2017 06:15:42 GMT
ENV BOOT_AS_ROOT=yes
# Thu, 14 Sep 2017 06:17:12 GMT
RUN boot
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a4b3080d3cc157970baf6edf6194df12fa0a9dc61d2c1525781ae4af65213c`  
		Last Modified: Thu, 14 Sep 2017 04:59:04 GMT  
		Size: 70.1 MB (70051361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccd702bb1f1431a57482dd2dd1bc40c97c81dcd67abcd7644b508a9b08646b4`  
		Last Modified: Thu, 14 Sep 2017 06:18:55 GMT  
		Size: 2.9 MB (2917938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1272ba519b4889704a505a82fe08069aa68d147597080d6841471d318151d8ae`  
		Last Modified: Thu, 14 Sep 2017 06:18:56 GMT  
		Size: 6.7 KB (6655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47e73ef99532708069fd6fbcac924311fd9efba6eba726727293d391d761f6e`  
		Last Modified: Thu, 14 Sep 2017 06:18:57 GMT  
		Size: 33.4 MB (33410232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:latest`

```console
$ docker pull clojure@sha256:8e24d7d374ce22a67a78e0512ab602031ea9d91dfa6321e544a892877a98ebb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `clojure:latest` - linux; amd64

```console
$ docker pull clojure@sha256:d0a4ef5c7bda3f3a7611e0178ce250efbae8f200511061ea175bde3e7e356729
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.9 MB (312894993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61f2ed231b4d8fcd35d765108b5eaf416f13877c862baff38c11015bcf9cf19d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:48:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:49:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:11:01 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 10 Oct 2017 08:11:01 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 10 Oct 2017 08:11:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 08:11:02 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 08:11:10 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 10 Oct 2017 08:11:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 08:11:11 GMT
ENV LEIN_ROOT=1
# Tue, 10 Oct 2017 08:11:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77980e5d0a6deb5b982795f18597f7e9ee7f9d08614cbc57528050b2a7977044`  
		Last Modified: Tue, 10 Oct 2017 01:17:05 GMT  
		Size: 892.2 KB (892192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5458607a81d3430c59a97089416a3ef2d8788bdb7eba159b3c2508904d41b996`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cf8338f422c47dc8c752afc2b406bb502e95cd2f74af9e84bff773e72d243`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3da5c56e5c9083605636f83450dfb193a0e46c55185cf98ed1ebac26f339`  
		Last Modified: Tue, 10 Oct 2017 01:17:39 GMT  
		Size: 183.7 MB (183691300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade7a861e3fe26356fa773e1b3f05add01be9ab4c977b711223c15fc30f458e`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d54eea8fb7c04eee51aeb520cf72a1538873b8aefb6faa757dd7b72c7435d58`  
		Last Modified: Tue, 10 Oct 2017 08:14:30 GMT  
		Size: 13.8 MB (13807406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6cb67a4f91b3714d4e8aa7797b11c9d0d3769719790a183fc93e9fe5d1be25`  
		Last Modified: Tue, 10 Oct 2017 08:14:28 GMT  
		Size: 3.3 MB (3340995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:latest` - linux; arm variant v5

```console
$ docker pull clojure@sha256:2d754fa0a91562a0f1ea708f6d10b8bfce918109fcff2f49320f57bd0e40d70f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.4 MB (277373828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6f154853f0f36f943dffd8bec83f32fbf18fe02034fc0d9996335ba29b7dfe3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:33 GMT
ADD file:faa50a4d3491f148f07964f6b9f9c8e97c0cf64588b20deb10f24e2f4f6c6b87 in / 
# Mon, 09 Oct 2017 21:44:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:18:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:19:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:19:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:10:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:10:31 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 08:10:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 08:10:32 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 08:10:33 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 08:10:33 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 08:10:33 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 08:10:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 08:11:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 08:11:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:39:26 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 10 Oct 2017 08:39:26 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 10 Oct 2017 08:39:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 08:39:29 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 08:39:42 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 10 Oct 2017 08:39:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 08:39:45 GMT
ENV LEIN_ROOT=1
# Tue, 10 Oct 2017 08:40:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:3c60e7fc5441d6c90edac385048cfe55b732e74ac7a95ce0f52555d1fdd4777a`  
		Last Modified: Mon, 09 Oct 2017 21:50:32 GMT  
		Size: 43.8 MB (43815910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c0eb374b4a5889510ab6af5360e74f8471d96bbbb4b1585f37be4fbda09d06c`  
		Last Modified: Mon, 09 Oct 2017 22:26:12 GMT  
		Size: 10.2 MB (10205119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f713ec73030eef0749d2b44c7fce2fabd4c3a5ea319b731b4a5bb22fff47d244`  
		Last Modified: Mon, 09 Oct 2017 22:26:10 GMT  
		Size: 4.5 MB (4450769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928b1607d21d7f38bc3d880c6604d185f09b8932387d93d11ffebcc62a692bb7`  
		Last Modified: Mon, 09 Oct 2017 22:26:36 GMT  
		Size: 48.2 MB (48225718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e810e0cb21607f51deaec0b47b2092240ffeb34284b114756ece80e7271c261`  
		Last Modified: Tue, 10 Oct 2017 08:19:54 GMT  
		Size: 884.5 KB (884469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3b78f2745d23c12af2bef0ab8962405410237c3eb4b792f15b583774f89cc1`  
		Last Modified: Tue, 10 Oct 2017 08:19:55 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2bb2204857cc43f2585925fe67881ec886c3581647451b6f8f301e118863c0a`  
		Last Modified: Tue, 10 Oct 2017 08:19:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9871b9608c110715cfff54ae888fdec46d037b49c5787db588a34691179e58bc`  
		Last Modified: Tue, 10 Oct 2017 08:20:32 GMT  
		Size: 152.4 MB (152370743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf427f07eaca9c816b1d9af32319f0319febad3ae8f7e72b375e26f8c9eee066`  
		Last Modified: Tue, 10 Oct 2017 08:19:54 GMT  
		Size: 272.2 KB (272199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443c95cee868d8071211a597fc61856cd37c71e76c4db7d5b0e426a41fd65b57`  
		Last Modified: Tue, 10 Oct 2017 08:44:41 GMT  
		Size: 13.8 MB (13807437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bd4dd15d54a45e9ac408106dbf893559c64585f3559344db0d7b46ab2f408f`  
		Last Modified: Tue, 10 Oct 2017 08:44:40 GMT  
		Size: 3.3 MB (3341088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:latest` - linux; arm variant v7

```console
$ docker pull clojure@sha256:0f95fe227f6d1ce55ff44e482eb94646f9cf23a087efca8dfde4daff18562c04
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.2 MB (287169708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:553f3517ed487721c3f320aeb4f630020e01cd91068053b81ea873dfe0b72872`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:38 GMT
ADD file:8ee5b45f171806d53c0b75acea33963e2387b8dce889faec31a19f69edc1adb4 in / 
# Wed, 27 Sep 2017 04:14:38 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:45:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:45:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 04:45:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:22:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:22:22 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 05:22:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Sep 2017 05:22:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Sep 2017 05:22:24 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Sep 2017 05:22:24 GMT
ENV JAVA_VERSION=8u141
# Wed, 27 Sep 2017 05:22:25 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 27 Sep 2017 05:22:25 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Sep 2017 05:23:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Sep 2017 05:23:36 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Sep 2017 07:35:49 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Wed, 27 Sep 2017 07:35:50 GMT
ENV LEIN_VERSION=2.7.1
# Wed, 27 Sep 2017 07:35:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 27 Sep 2017 07:35:50 GMT
WORKDIR /tmp
# Wed, 27 Sep 2017 07:36:00 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 27 Sep 2017 07:36:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 27 Sep 2017 07:36:01 GMT
ENV LEIN_ROOT=1
# Wed, 27 Sep 2017 07:36:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:d0e027c48353ee136b77f334ed39630b92f19fc4ef9fa26db6c744e8b577bade`  
		Last Modified: Wed, 27 Sep 2017 04:20:26 GMT  
		Size: 41.8 MB (41846555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ae0119cb83856ab78e1a9091dd8853a6354fd96b2f7ae7947314ef1d5d201`  
		Last Modified: Wed, 27 Sep 2017 05:00:05 GMT  
		Size: 9.8 MB (9821504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4ff3caeed0c4bd8411867fca9844cdf7574f03153195c5eb45ad976f434220`  
		Last Modified: Wed, 27 Sep 2017 05:00:06 GMT  
		Size: 4.2 MB (4210870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadbdb38c8b5d55333db57fa3172a5190e0e4056bc246062c1a1e832fad7cedf`  
		Last Modified: Wed, 27 Sep 2017 05:00:28 GMT  
		Size: 48.1 MB (48065892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ad59f6c54838733cf79810e1547e34ba0573a22d213d9d053f8346d2c109b7`  
		Last Modified: Wed, 27 Sep 2017 05:37:09 GMT  
		Size: 867.6 KB (867649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096d28e01ae570937743c9dafe9cebb564c18222c2b5f02bfa97dae7df24feff`  
		Last Modified: Wed, 27 Sep 2017 05:37:08 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d157469741280f79f5d59ed4c7ac534845ff8e7e2deeb2b3e15bdd611ce715`  
		Last Modified: Wed, 27 Sep 2017 05:37:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7e17032ee7c15ce8b44c551c624435c366e10c6f51b3f87ea538934dff3402`  
		Last Modified: Wed, 27 Sep 2017 05:37:49 GMT  
		Size: 164.9 MB (164932424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3ec5a643285e6622374f11309315aacd31585488c5ff91771af2eda0635a73`  
		Last Modified: Wed, 27 Sep 2017 05:37:10 GMT  
		Size: 272.2 KB (272209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd473ac34fcf8d2e2c2c9d5d8c6d91923f583179b30d1b58cf8315ba8b94dddd`  
		Last Modified: Wed, 27 Sep 2017 07:40:50 GMT  
		Size: 13.8 MB (13811146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18553c17ad406b02741b016da5a9b13ff147afb5751ff50f8e900b9bd561a869`  
		Last Modified: Wed, 27 Sep 2017 07:40:49 GMT  
		Size: 3.3 MB (3341080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:latest` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:74815bbf43ee5585a7d9893d2cb81e57df33ebb20d918f948fd519942bb7bae1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.5 MB (292501762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2f3aaf56536aa2c7bb6c252e6271c54410bae1b6aa23e390c4161c538919ee2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:07:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:20:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:20:13 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 01:20:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 01:20:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 01:20:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 01:20:18 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 01:20:19 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 01:20:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 01:27:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 01:27:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 12:41:25 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 10 Oct 2017 12:41:26 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 10 Oct 2017 12:41:26 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 12:41:27 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 12:42:11 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 10 Oct 2017 12:42:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 12:42:21 GMT
ENV LEIN_ROOT=1
# Tue, 10 Oct 2017 12:42:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fc460f5f7f70833a25c52d6200ced8a4004784a9dc391c6ea4f0bdca6cd51a`  
		Last Modified: Mon, 09 Oct 2017 23:35:03 GMT  
		Size: 48.0 MB (47973994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817e6bf894513e362c7a91204190e30a6057e47fbf58811892d850689c110148`  
		Last Modified: Tue, 10 Oct 2017 02:10:30 GMT  
		Size: 877.4 KB (877428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa01efc0c9ccad41a7a808e5ece80b39f4343666fe98e023b970780ff523af02`  
		Last Modified: Tue, 10 Oct 2017 02:10:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61fcba39e249d16cadb741e545b2914f402a0f1914bbd3132e2ddfa64d66072`  
		Last Modified: Tue, 10 Oct 2017 02:10:28 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e89db9379ff41bac275bf233d9648178158b8e8c0e1dd2f827d8e7bda22bae`  
		Last Modified: Tue, 10 Oct 2017 02:13:37 GMT  
		Size: 168.9 MB (168866096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864ced3055c23d07027e0c555a5a8e6795562212ad2a23709da9365c235cf600`  
		Last Modified: Tue, 10 Oct 2017 02:10:29 GMT  
		Size: 272.1 KB (272093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6dd2fcefe84d749c7acdb955450a3bf37cb4eaa6a7748858024feb89124840`  
		Last Modified: Tue, 10 Oct 2017 12:45:39 GMT  
		Size: 13.8 MB (13807418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bbabbe1d2522c573a1133a64c03ee6be8d0ea2ab248fbb96494e7267ed305d`  
		Last Modified: Tue, 10 Oct 2017 12:45:35 GMT  
		Size: 3.3 MB (3340992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:latest` - linux; 386

```console
$ docker pull clojure@sha256:66c566ed77dd6ff407479222146255a031d0fdd634ff7fd1d37ab0f41830e294
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.0 MB (318021205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b67486be0dff1c8f8a9432527d0e9137a70d2eaaa1770443d8ca90bb0656ef58`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:45 GMT
ADD file:402d57d8bc933b07f97c70a7d47950ab9db320f2efcbfe638adc290d1a0c159d in / 
# Fri, 08 Sep 2017 13:19:46 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 13:47:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 13:47:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 13:47:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:03:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:03:02 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 15:03:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 09 Sep 2017 15:03:06 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 09 Sep 2017 15:03:06 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 09 Sep 2017 15:03:06 GMT
ENV JAVA_VERSION=8u141
# Sat, 09 Sep 2017 15:03:07 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Sat, 09 Sep 2017 15:03:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 15:04:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 15:04:24 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 00:04:27 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Wed, 13 Sep 2017 00:04:27 GMT
ENV LEIN_VERSION=2.7.1
# Wed, 13 Sep 2017 00:04:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 13 Sep 2017 00:04:27 GMT
WORKDIR /tmp
# Wed, 13 Sep 2017 00:04:40 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 13 Sep 2017 00:04:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 13 Sep 2017 00:04:41 GMT
ENV LEIN_ROOT=1
# Wed, 13 Sep 2017 00:04:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:38807300bd16de4a00efeffb81570740677ff99a2307929b5335a897a79864df`  
		Last Modified: Fri, 08 Sep 2017 13:27:10 GMT  
		Size: 45.8 MB (45831803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21fb83cbb74ba03aed751c7f087705378edd29e4f1ce07e2716700660707347d`  
		Last Modified: Sat, 09 Sep 2017 14:06:45 GMT  
		Size: 11.1 MB (11146421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989b8d10c2f17ba15be11d9573c111eaf58cea1cf99248ed8d058f55fb7572f0`  
		Last Modified: Sat, 09 Sep 2017 14:06:43 GMT  
		Size: 4.9 MB (4853009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e492673b6687061f8973b79d73308677b8fd7d142bc4bf67739c40f9de7cf1`  
		Last Modified: Sat, 09 Sep 2017 14:07:17 GMT  
		Size: 51.5 MB (51537152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ee7d9a8357e9bc240194f3ce390d301152efd71805ec0de07b5cd3bd9bfe24`  
		Last Modified: Sat, 09 Sep 2017 15:25:45 GMT  
		Size: 899.7 KB (899707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21ef4be25518620c51bd20c29dcb719eb2a3fedb3bcda870fddda94ead5b02a`  
		Last Modified: Sat, 09 Sep 2017 15:25:45 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d3787686474fa9917f6a6e09905255f60c82112bf3377d5d6aed7a480fa187`  
		Last Modified: Sat, 09 Sep 2017 15:25:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2826765055a09c6e9786006cd7b48ce5790b799628ff9ba235295c14815b01`  
		Last Modified: Sat, 09 Sep 2017 15:26:25 GMT  
		Size: 186.3 MB (186328475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad576b57497c00d2a7d0abc85d22fd1f48b71bd68aeb32d1492894d672544e2`  
		Last Modified: Sat, 09 Sep 2017 15:25:45 GMT  
		Size: 272.1 KB (272144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ebcf571cbdab8d81f0e7a34da8a70efd195ca04e4757209b234553ff91e3a8`  
		Last Modified: Wed, 13 Sep 2017 00:07:46 GMT  
		Size: 13.8 MB (13811121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47c5d67dc9f95cd4063a302ee9fa41707e02bf49b95566b0859f2d9a97f9906`  
		Last Modified: Wed, 13 Sep 2017 00:07:45 GMT  
		Size: 3.3 MB (3340994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:latest` - linux; ppc64le

```console
$ docker pull clojure@sha256:b4b219ca628420c9e4e7a5368688e3df510bb3e460e163ad27faad8c5a119036
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.0 MB (301012349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa56c1202eabb5fa5c7138b73c1073a403746ca0e38023d87102f89c3d6b9453`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:14:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:19:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:14:04 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 03:14:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 03:14:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 03:14:19 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 03:14:21 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 03:14:24 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 03:14:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 03:37:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 03:37:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 10:23:42 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 10 Oct 2017 10:23:44 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 10 Oct 2017 10:23:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 10:23:49 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 10:24:30 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 10 Oct 2017 10:24:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 10:24:34 GMT
ENV LEIN_ROOT=1
# Tue, 10 Oct 2017 10:24:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68ed2fe64e9c2dfe79d5d484b75ed9d17ac5941067e9d69cb194ac257feec3a`  
		Last Modified: Tue, 10 Oct 2017 00:58:01 GMT  
		Size: 10.3 MB (10338918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcb4b07bc1d76cd1d3e264929d07b103dc8a16ecba513a1d5a03d3b5d54b919`  
		Last Modified: Tue, 10 Oct 2017 00:58:00 GMT  
		Size: 4.6 MB (4587455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f601576bea3b971a5c48ce185e438f8ef5a459c0af4d71e2a76e2f1614985ff`  
		Last Modified: Tue, 10 Oct 2017 00:58:29 GMT  
		Size: 50.0 MB (50025661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d049c690ec893d6c5bee966eccd42639439f69808bb14e8ab48e8f97effaf4e`  
		Last Modified: Tue, 10 Oct 2017 05:11:22 GMT  
		Size: 886.5 KB (886492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a017aab8d1fa4dcc9e8cc020e1d225a0cb913fd107244b705209f30616b1322`  
		Last Modified: Tue, 10 Oct 2017 05:11:21 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37714e84ae49acce27bb6b3064ddb75aa5f1524c6ee6fc23ebc9d4b2eb00e4e4`  
		Last Modified: Tue, 10 Oct 2017 05:11:22 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e742fe4b5fac456d1f466bfc7c25bbd0df09fab5df0b6127b3794d89fed1bdc`  
		Last Modified: Tue, 10 Oct 2017 05:12:07 GMT  
		Size: 172.4 MB (172374524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092d11158fbab902a752fd00d3a5cc5be658d4a1d79fc406852dde0ba417c60f`  
		Last Modified: Tue, 10 Oct 2017 05:11:21 GMT  
		Size: 272.1 KB (272058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42717530d7d25f6bd7ba6cc1d312622dc52184902a03b6dd1280d43b6c4ca916`  
		Last Modified: Tue, 10 Oct 2017 10:28:46 GMT  
		Size: 13.8 MB (13807441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176f2f720939405612fdf6ce53bdc0135121470c2d739db28f1a8cce0314f21c`  
		Last Modified: Tue, 10 Oct 2017 10:28:44 GMT  
		Size: 3.3 MB (3341055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:latest` - linux; s390x

```console
$ docker pull clojure@sha256:d6ca133cb2af519bf4aa53302d86d493ff8c91c009a936fa7b54dc51a1a5012d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 MB (283236192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19b4c6b196bdc7016a39b5c551a7557cee1b8fbd203fbc9ea2536305c95e1fe1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:15:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:16:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:51:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:51:15 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:51:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:51:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:51:17 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 22:51:17 GMT
ENV JAVA_VERSION=8u141
# Mon, 09 Oct 2017 22:51:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Mon, 09 Oct 2017 22:51:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 09 Oct 2017 22:52:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 09 Oct 2017 22:52:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 01:43:46 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 10 Oct 2017 01:43:46 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 10 Oct 2017 01:43:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 01:43:46 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 01:44:20 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 10 Oct 2017 01:44:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 01:44:20 GMT
ENV LEIN_ROOT=1
# Tue, 10 Oct 2017 01:44:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33b5e0a1749d0366c28b4b88ae0139119ba36640fa31f7ed3d2ec974ae1127b`  
		Last Modified: Mon, 09 Oct 2017 22:21:54 GMT  
		Size: 10.7 MB (10667715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049887af1090e55495d4d3f232c2441d3bb8b420366662539c3bfb829e349496`  
		Last Modified: Mon, 09 Oct 2017 22:21:53 GMT  
		Size: 4.7 MB (4664115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88994e2adeee9dcccd21288a4ca51444bc7374338cac5c49346a4abab141c964`  
		Last Modified: Mon, 09 Oct 2017 22:22:13 GMT  
		Size: 50.4 MB (50441493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f387eea12e61c54ddde7f0a374fdb865a9c7b947726d9059badbe523f1dbb567`  
		Last Modified: Mon, 09 Oct 2017 23:01:11 GMT  
		Size: 903.3 KB (903271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fafc101c48ae99e9e8736b5e5ab83b778b685c0b02b9a7b0c79d0ab02bf7f1f`  
		Last Modified: Mon, 09 Oct 2017 23:01:11 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3186a6b958367bf7bbb9e04ccbf7885b78581f160e7522d7e99ba22a1382295`  
		Last Modified: Mon, 09 Oct 2017 23:01:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7a175b238a1984f8feed86837873789bd27f86f8757cb2c6d5c95d7da8add6`  
		Last Modified: Mon, 09 Oct 2017 23:01:35 GMT  
		Size: 154.2 MB (154165898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deab041fe669c4ae1a41017f90c0740e574dadc67b50d182663706fddaa9fed`  
		Last Modified: Mon, 09 Oct 2017 23:01:12 GMT  
		Size: 272.2 KB (272164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240955fc43fd67ecb3b3b675460e68e86bdee756be7f0270d74eeac771ddc72e`  
		Last Modified: Tue, 10 Oct 2017 01:47:39 GMT  
		Size: 13.8 MB (13807405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f3e21f3a6f335ba5f19db3677c34637129abdf49d2c91c19a0236098d24244`  
		Last Modified: Tue, 10 Oct 2017 01:47:38 GMT  
		Size: 3.3 MB (3340991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein`

```console
$ docker pull clojure@sha256:8e24d7d374ce22a67a78e0512ab602031ea9d91dfa6321e544a892877a98ebb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `clojure:lein` - linux; amd64

```console
$ docker pull clojure@sha256:d0a4ef5c7bda3f3a7611e0178ce250efbae8f200511061ea175bde3e7e356729
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.9 MB (312894993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61f2ed231b4d8fcd35d765108b5eaf416f13877c862baff38c11015bcf9cf19d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:48:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:49:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:11:01 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 10 Oct 2017 08:11:01 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 10 Oct 2017 08:11:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 08:11:02 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 08:11:10 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 10 Oct 2017 08:11:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 08:11:11 GMT
ENV LEIN_ROOT=1
# Tue, 10 Oct 2017 08:11:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77980e5d0a6deb5b982795f18597f7e9ee7f9d08614cbc57528050b2a7977044`  
		Last Modified: Tue, 10 Oct 2017 01:17:05 GMT  
		Size: 892.2 KB (892192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5458607a81d3430c59a97089416a3ef2d8788bdb7eba159b3c2508904d41b996`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cf8338f422c47dc8c752afc2b406bb502e95cd2f74af9e84bff773e72d243`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3da5c56e5c9083605636f83450dfb193a0e46c55185cf98ed1ebac26f339`  
		Last Modified: Tue, 10 Oct 2017 01:17:39 GMT  
		Size: 183.7 MB (183691300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade7a861e3fe26356fa773e1b3f05add01be9ab4c977b711223c15fc30f458e`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d54eea8fb7c04eee51aeb520cf72a1538873b8aefb6faa757dd7b72c7435d58`  
		Last Modified: Tue, 10 Oct 2017 08:14:30 GMT  
		Size: 13.8 MB (13807406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6cb67a4f91b3714d4e8aa7797b11c9d0d3769719790a183fc93e9fe5d1be25`  
		Last Modified: Tue, 10 Oct 2017 08:14:28 GMT  
		Size: 3.3 MB (3340995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein` - linux; arm variant v5

```console
$ docker pull clojure@sha256:2d754fa0a91562a0f1ea708f6d10b8bfce918109fcff2f49320f57bd0e40d70f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.4 MB (277373828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6f154853f0f36f943dffd8bec83f32fbf18fe02034fc0d9996335ba29b7dfe3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:33 GMT
ADD file:faa50a4d3491f148f07964f6b9f9c8e97c0cf64588b20deb10f24e2f4f6c6b87 in / 
# Mon, 09 Oct 2017 21:44:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:18:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:19:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:19:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:10:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:10:31 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 08:10:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 08:10:32 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 08:10:33 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 08:10:33 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 08:10:33 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 08:10:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 08:11:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 08:11:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:39:26 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 10 Oct 2017 08:39:26 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 10 Oct 2017 08:39:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 08:39:29 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 08:39:42 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 10 Oct 2017 08:39:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 08:39:45 GMT
ENV LEIN_ROOT=1
# Tue, 10 Oct 2017 08:40:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:3c60e7fc5441d6c90edac385048cfe55b732e74ac7a95ce0f52555d1fdd4777a`  
		Last Modified: Mon, 09 Oct 2017 21:50:32 GMT  
		Size: 43.8 MB (43815910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c0eb374b4a5889510ab6af5360e74f8471d96bbbb4b1585f37be4fbda09d06c`  
		Last Modified: Mon, 09 Oct 2017 22:26:12 GMT  
		Size: 10.2 MB (10205119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f713ec73030eef0749d2b44c7fce2fabd4c3a5ea319b731b4a5bb22fff47d244`  
		Last Modified: Mon, 09 Oct 2017 22:26:10 GMT  
		Size: 4.5 MB (4450769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928b1607d21d7f38bc3d880c6604d185f09b8932387d93d11ffebcc62a692bb7`  
		Last Modified: Mon, 09 Oct 2017 22:26:36 GMT  
		Size: 48.2 MB (48225718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e810e0cb21607f51deaec0b47b2092240ffeb34284b114756ece80e7271c261`  
		Last Modified: Tue, 10 Oct 2017 08:19:54 GMT  
		Size: 884.5 KB (884469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3b78f2745d23c12af2bef0ab8962405410237c3eb4b792f15b583774f89cc1`  
		Last Modified: Tue, 10 Oct 2017 08:19:55 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2bb2204857cc43f2585925fe67881ec886c3581647451b6f8f301e118863c0a`  
		Last Modified: Tue, 10 Oct 2017 08:19:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9871b9608c110715cfff54ae888fdec46d037b49c5787db588a34691179e58bc`  
		Last Modified: Tue, 10 Oct 2017 08:20:32 GMT  
		Size: 152.4 MB (152370743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf427f07eaca9c816b1d9af32319f0319febad3ae8f7e72b375e26f8c9eee066`  
		Last Modified: Tue, 10 Oct 2017 08:19:54 GMT  
		Size: 272.2 KB (272199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443c95cee868d8071211a597fc61856cd37c71e76c4db7d5b0e426a41fd65b57`  
		Last Modified: Tue, 10 Oct 2017 08:44:41 GMT  
		Size: 13.8 MB (13807437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bd4dd15d54a45e9ac408106dbf893559c64585f3559344db0d7b46ab2f408f`  
		Last Modified: Tue, 10 Oct 2017 08:44:40 GMT  
		Size: 3.3 MB (3341088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein` - linux; arm variant v7

```console
$ docker pull clojure@sha256:0f95fe227f6d1ce55ff44e482eb94646f9cf23a087efca8dfde4daff18562c04
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.2 MB (287169708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:553f3517ed487721c3f320aeb4f630020e01cd91068053b81ea873dfe0b72872`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:38 GMT
ADD file:8ee5b45f171806d53c0b75acea33963e2387b8dce889faec31a19f69edc1adb4 in / 
# Wed, 27 Sep 2017 04:14:38 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:45:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:45:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 04:45:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:22:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:22:22 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 05:22:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Sep 2017 05:22:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Sep 2017 05:22:24 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Sep 2017 05:22:24 GMT
ENV JAVA_VERSION=8u141
# Wed, 27 Sep 2017 05:22:25 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 27 Sep 2017 05:22:25 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Sep 2017 05:23:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Sep 2017 05:23:36 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Sep 2017 07:35:49 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Wed, 27 Sep 2017 07:35:50 GMT
ENV LEIN_VERSION=2.7.1
# Wed, 27 Sep 2017 07:35:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 27 Sep 2017 07:35:50 GMT
WORKDIR /tmp
# Wed, 27 Sep 2017 07:36:00 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 27 Sep 2017 07:36:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 27 Sep 2017 07:36:01 GMT
ENV LEIN_ROOT=1
# Wed, 27 Sep 2017 07:36:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:d0e027c48353ee136b77f334ed39630b92f19fc4ef9fa26db6c744e8b577bade`  
		Last Modified: Wed, 27 Sep 2017 04:20:26 GMT  
		Size: 41.8 MB (41846555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ae0119cb83856ab78e1a9091dd8853a6354fd96b2f7ae7947314ef1d5d201`  
		Last Modified: Wed, 27 Sep 2017 05:00:05 GMT  
		Size: 9.8 MB (9821504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4ff3caeed0c4bd8411867fca9844cdf7574f03153195c5eb45ad976f434220`  
		Last Modified: Wed, 27 Sep 2017 05:00:06 GMT  
		Size: 4.2 MB (4210870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadbdb38c8b5d55333db57fa3172a5190e0e4056bc246062c1a1e832fad7cedf`  
		Last Modified: Wed, 27 Sep 2017 05:00:28 GMT  
		Size: 48.1 MB (48065892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ad59f6c54838733cf79810e1547e34ba0573a22d213d9d053f8346d2c109b7`  
		Last Modified: Wed, 27 Sep 2017 05:37:09 GMT  
		Size: 867.6 KB (867649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096d28e01ae570937743c9dafe9cebb564c18222c2b5f02bfa97dae7df24feff`  
		Last Modified: Wed, 27 Sep 2017 05:37:08 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d157469741280f79f5d59ed4c7ac534845ff8e7e2deeb2b3e15bdd611ce715`  
		Last Modified: Wed, 27 Sep 2017 05:37:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7e17032ee7c15ce8b44c551c624435c366e10c6f51b3f87ea538934dff3402`  
		Last Modified: Wed, 27 Sep 2017 05:37:49 GMT  
		Size: 164.9 MB (164932424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3ec5a643285e6622374f11309315aacd31585488c5ff91771af2eda0635a73`  
		Last Modified: Wed, 27 Sep 2017 05:37:10 GMT  
		Size: 272.2 KB (272209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd473ac34fcf8d2e2c2c9d5d8c6d91923f583179b30d1b58cf8315ba8b94dddd`  
		Last Modified: Wed, 27 Sep 2017 07:40:50 GMT  
		Size: 13.8 MB (13811146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18553c17ad406b02741b016da5a9b13ff147afb5751ff50f8e900b9bd561a869`  
		Last Modified: Wed, 27 Sep 2017 07:40:49 GMT  
		Size: 3.3 MB (3341080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:74815bbf43ee5585a7d9893d2cb81e57df33ebb20d918f948fd519942bb7bae1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.5 MB (292501762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2f3aaf56536aa2c7bb6c252e6271c54410bae1b6aa23e390c4161c538919ee2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:07:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:20:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:20:13 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 01:20:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 01:20:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 01:20:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 01:20:18 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 01:20:19 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 01:20:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 01:27:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 01:27:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 12:41:25 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 10 Oct 2017 12:41:26 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 10 Oct 2017 12:41:26 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 12:41:27 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 12:42:11 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 10 Oct 2017 12:42:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 12:42:21 GMT
ENV LEIN_ROOT=1
# Tue, 10 Oct 2017 12:42:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fc460f5f7f70833a25c52d6200ced8a4004784a9dc391c6ea4f0bdca6cd51a`  
		Last Modified: Mon, 09 Oct 2017 23:35:03 GMT  
		Size: 48.0 MB (47973994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817e6bf894513e362c7a91204190e30a6057e47fbf58811892d850689c110148`  
		Last Modified: Tue, 10 Oct 2017 02:10:30 GMT  
		Size: 877.4 KB (877428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa01efc0c9ccad41a7a808e5ece80b39f4343666fe98e023b970780ff523af02`  
		Last Modified: Tue, 10 Oct 2017 02:10:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61fcba39e249d16cadb741e545b2914f402a0f1914bbd3132e2ddfa64d66072`  
		Last Modified: Tue, 10 Oct 2017 02:10:28 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e89db9379ff41bac275bf233d9648178158b8e8c0e1dd2f827d8e7bda22bae`  
		Last Modified: Tue, 10 Oct 2017 02:13:37 GMT  
		Size: 168.9 MB (168866096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864ced3055c23d07027e0c555a5a8e6795562212ad2a23709da9365c235cf600`  
		Last Modified: Tue, 10 Oct 2017 02:10:29 GMT  
		Size: 272.1 KB (272093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6dd2fcefe84d749c7acdb955450a3bf37cb4eaa6a7748858024feb89124840`  
		Last Modified: Tue, 10 Oct 2017 12:45:39 GMT  
		Size: 13.8 MB (13807418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bbabbe1d2522c573a1133a64c03ee6be8d0ea2ab248fbb96494e7267ed305d`  
		Last Modified: Tue, 10 Oct 2017 12:45:35 GMT  
		Size: 3.3 MB (3340992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein` - linux; 386

```console
$ docker pull clojure@sha256:66c566ed77dd6ff407479222146255a031d0fdd634ff7fd1d37ab0f41830e294
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.0 MB (318021205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b67486be0dff1c8f8a9432527d0e9137a70d2eaaa1770443d8ca90bb0656ef58`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:45 GMT
ADD file:402d57d8bc933b07f97c70a7d47950ab9db320f2efcbfe638adc290d1a0c159d in / 
# Fri, 08 Sep 2017 13:19:46 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 13:47:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 13:47:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 13:47:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:03:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:03:02 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 15:03:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 09 Sep 2017 15:03:06 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 09 Sep 2017 15:03:06 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 09 Sep 2017 15:03:06 GMT
ENV JAVA_VERSION=8u141
# Sat, 09 Sep 2017 15:03:07 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Sat, 09 Sep 2017 15:03:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 15:04:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 15:04:24 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 00:04:27 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Wed, 13 Sep 2017 00:04:27 GMT
ENV LEIN_VERSION=2.7.1
# Wed, 13 Sep 2017 00:04:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 13 Sep 2017 00:04:27 GMT
WORKDIR /tmp
# Wed, 13 Sep 2017 00:04:40 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 13 Sep 2017 00:04:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 13 Sep 2017 00:04:41 GMT
ENV LEIN_ROOT=1
# Wed, 13 Sep 2017 00:04:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:38807300bd16de4a00efeffb81570740677ff99a2307929b5335a897a79864df`  
		Last Modified: Fri, 08 Sep 2017 13:27:10 GMT  
		Size: 45.8 MB (45831803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21fb83cbb74ba03aed751c7f087705378edd29e4f1ce07e2716700660707347d`  
		Last Modified: Sat, 09 Sep 2017 14:06:45 GMT  
		Size: 11.1 MB (11146421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989b8d10c2f17ba15be11d9573c111eaf58cea1cf99248ed8d058f55fb7572f0`  
		Last Modified: Sat, 09 Sep 2017 14:06:43 GMT  
		Size: 4.9 MB (4853009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e492673b6687061f8973b79d73308677b8fd7d142bc4bf67739c40f9de7cf1`  
		Last Modified: Sat, 09 Sep 2017 14:07:17 GMT  
		Size: 51.5 MB (51537152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ee7d9a8357e9bc240194f3ce390d301152efd71805ec0de07b5cd3bd9bfe24`  
		Last Modified: Sat, 09 Sep 2017 15:25:45 GMT  
		Size: 899.7 KB (899707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21ef4be25518620c51bd20c29dcb719eb2a3fedb3bcda870fddda94ead5b02a`  
		Last Modified: Sat, 09 Sep 2017 15:25:45 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d3787686474fa9917f6a6e09905255f60c82112bf3377d5d6aed7a480fa187`  
		Last Modified: Sat, 09 Sep 2017 15:25:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2826765055a09c6e9786006cd7b48ce5790b799628ff9ba235295c14815b01`  
		Last Modified: Sat, 09 Sep 2017 15:26:25 GMT  
		Size: 186.3 MB (186328475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad576b57497c00d2a7d0abc85d22fd1f48b71bd68aeb32d1492894d672544e2`  
		Last Modified: Sat, 09 Sep 2017 15:25:45 GMT  
		Size: 272.1 KB (272144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ebcf571cbdab8d81f0e7a34da8a70efd195ca04e4757209b234553ff91e3a8`  
		Last Modified: Wed, 13 Sep 2017 00:07:46 GMT  
		Size: 13.8 MB (13811121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47c5d67dc9f95cd4063a302ee9fa41707e02bf49b95566b0859f2d9a97f9906`  
		Last Modified: Wed, 13 Sep 2017 00:07:45 GMT  
		Size: 3.3 MB (3340994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein` - linux; ppc64le

```console
$ docker pull clojure@sha256:b4b219ca628420c9e4e7a5368688e3df510bb3e460e163ad27faad8c5a119036
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.0 MB (301012349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa56c1202eabb5fa5c7138b73c1073a403746ca0e38023d87102f89c3d6b9453`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:14:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:19:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:14:04 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 03:14:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 03:14:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 03:14:19 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 03:14:21 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 03:14:24 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 03:14:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 03:37:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 03:37:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 10:23:42 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 10 Oct 2017 10:23:44 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 10 Oct 2017 10:23:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 10:23:49 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 10:24:30 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 10 Oct 2017 10:24:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 10:24:34 GMT
ENV LEIN_ROOT=1
# Tue, 10 Oct 2017 10:24:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68ed2fe64e9c2dfe79d5d484b75ed9d17ac5941067e9d69cb194ac257feec3a`  
		Last Modified: Tue, 10 Oct 2017 00:58:01 GMT  
		Size: 10.3 MB (10338918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcb4b07bc1d76cd1d3e264929d07b103dc8a16ecba513a1d5a03d3b5d54b919`  
		Last Modified: Tue, 10 Oct 2017 00:58:00 GMT  
		Size: 4.6 MB (4587455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f601576bea3b971a5c48ce185e438f8ef5a459c0af4d71e2a76e2f1614985ff`  
		Last Modified: Tue, 10 Oct 2017 00:58:29 GMT  
		Size: 50.0 MB (50025661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d049c690ec893d6c5bee966eccd42639439f69808bb14e8ab48e8f97effaf4e`  
		Last Modified: Tue, 10 Oct 2017 05:11:22 GMT  
		Size: 886.5 KB (886492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a017aab8d1fa4dcc9e8cc020e1d225a0cb913fd107244b705209f30616b1322`  
		Last Modified: Tue, 10 Oct 2017 05:11:21 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37714e84ae49acce27bb6b3064ddb75aa5f1524c6ee6fc23ebc9d4b2eb00e4e4`  
		Last Modified: Tue, 10 Oct 2017 05:11:22 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e742fe4b5fac456d1f466bfc7c25bbd0df09fab5df0b6127b3794d89fed1bdc`  
		Last Modified: Tue, 10 Oct 2017 05:12:07 GMT  
		Size: 172.4 MB (172374524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092d11158fbab902a752fd00d3a5cc5be658d4a1d79fc406852dde0ba417c60f`  
		Last Modified: Tue, 10 Oct 2017 05:11:21 GMT  
		Size: 272.1 KB (272058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42717530d7d25f6bd7ba6cc1d312622dc52184902a03b6dd1280d43b6c4ca916`  
		Last Modified: Tue, 10 Oct 2017 10:28:46 GMT  
		Size: 13.8 MB (13807441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176f2f720939405612fdf6ce53bdc0135121470c2d739db28f1a8cce0314f21c`  
		Last Modified: Tue, 10 Oct 2017 10:28:44 GMT  
		Size: 3.3 MB (3341055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein` - linux; s390x

```console
$ docker pull clojure@sha256:d6ca133cb2af519bf4aa53302d86d493ff8c91c009a936fa7b54dc51a1a5012d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 MB (283236192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19b4c6b196bdc7016a39b5c551a7557cee1b8fbd203fbc9ea2536305c95e1fe1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:15:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:16:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:51:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:51:15 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:51:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:51:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:51:17 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 22:51:17 GMT
ENV JAVA_VERSION=8u141
# Mon, 09 Oct 2017 22:51:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Mon, 09 Oct 2017 22:51:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 09 Oct 2017 22:52:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 09 Oct 2017 22:52:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 01:43:46 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 10 Oct 2017 01:43:46 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 10 Oct 2017 01:43:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 01:43:46 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 01:44:20 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 10 Oct 2017 01:44:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 01:44:20 GMT
ENV LEIN_ROOT=1
# Tue, 10 Oct 2017 01:44:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33b5e0a1749d0366c28b4b88ae0139119ba36640fa31f7ed3d2ec974ae1127b`  
		Last Modified: Mon, 09 Oct 2017 22:21:54 GMT  
		Size: 10.7 MB (10667715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049887af1090e55495d4d3f232c2441d3bb8b420366662539c3bfb829e349496`  
		Last Modified: Mon, 09 Oct 2017 22:21:53 GMT  
		Size: 4.7 MB (4664115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88994e2adeee9dcccd21288a4ca51444bc7374338cac5c49346a4abab141c964`  
		Last Modified: Mon, 09 Oct 2017 22:22:13 GMT  
		Size: 50.4 MB (50441493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f387eea12e61c54ddde7f0a374fdb865a9c7b947726d9059badbe523f1dbb567`  
		Last Modified: Mon, 09 Oct 2017 23:01:11 GMT  
		Size: 903.3 KB (903271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fafc101c48ae99e9e8736b5e5ab83b778b685c0b02b9a7b0c79d0ab02bf7f1f`  
		Last Modified: Mon, 09 Oct 2017 23:01:11 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3186a6b958367bf7bbb9e04ccbf7885b78581f160e7522d7e99ba22a1382295`  
		Last Modified: Mon, 09 Oct 2017 23:01:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7a175b238a1984f8feed86837873789bd27f86f8757cb2c6d5c95d7da8add6`  
		Last Modified: Mon, 09 Oct 2017 23:01:35 GMT  
		Size: 154.2 MB (154165898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deab041fe669c4ae1a41017f90c0740e574dadc67b50d182663706fddaa9fed`  
		Last Modified: Mon, 09 Oct 2017 23:01:12 GMT  
		Size: 272.2 KB (272164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240955fc43fd67ecb3b3b675460e68e86bdee756be7f0270d74eeac771ddc72e`  
		Last Modified: Tue, 10 Oct 2017 01:47:39 GMT  
		Size: 13.8 MB (13807405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f3e21f3a6f335ba5f19db3677c34637129abdf49d2c91c19a0236098d24244`  
		Last Modified: Tue, 10 Oct 2017 01:47:38 GMT  
		Size: 3.3 MB (3340991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein-2.7.1`

```console
$ docker pull clojure@sha256:8e24d7d374ce22a67a78e0512ab602031ea9d91dfa6321e544a892877a98ebb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `clojure:lein-2.7.1` - linux; amd64

```console
$ docker pull clojure@sha256:d0a4ef5c7bda3f3a7611e0178ce250efbae8f200511061ea175bde3e7e356729
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.9 MB (312894993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61f2ed231b4d8fcd35d765108b5eaf416f13877c862baff38c11015bcf9cf19d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:48:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:49:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:11:01 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 10 Oct 2017 08:11:01 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 10 Oct 2017 08:11:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 08:11:02 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 08:11:10 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 10 Oct 2017 08:11:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 08:11:11 GMT
ENV LEIN_ROOT=1
# Tue, 10 Oct 2017 08:11:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77980e5d0a6deb5b982795f18597f7e9ee7f9d08614cbc57528050b2a7977044`  
		Last Modified: Tue, 10 Oct 2017 01:17:05 GMT  
		Size: 892.2 KB (892192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5458607a81d3430c59a97089416a3ef2d8788bdb7eba159b3c2508904d41b996`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cf8338f422c47dc8c752afc2b406bb502e95cd2f74af9e84bff773e72d243`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3da5c56e5c9083605636f83450dfb193a0e46c55185cf98ed1ebac26f339`  
		Last Modified: Tue, 10 Oct 2017 01:17:39 GMT  
		Size: 183.7 MB (183691300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade7a861e3fe26356fa773e1b3f05add01be9ab4c977b711223c15fc30f458e`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d54eea8fb7c04eee51aeb520cf72a1538873b8aefb6faa757dd7b72c7435d58`  
		Last Modified: Tue, 10 Oct 2017 08:14:30 GMT  
		Size: 13.8 MB (13807406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6cb67a4f91b3714d4e8aa7797b11c9d0d3769719790a183fc93e9fe5d1be25`  
		Last Modified: Tue, 10 Oct 2017 08:14:28 GMT  
		Size: 3.3 MB (3340995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-2.7.1` - linux; arm variant v5

```console
$ docker pull clojure@sha256:2d754fa0a91562a0f1ea708f6d10b8bfce918109fcff2f49320f57bd0e40d70f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.4 MB (277373828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6f154853f0f36f943dffd8bec83f32fbf18fe02034fc0d9996335ba29b7dfe3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:33 GMT
ADD file:faa50a4d3491f148f07964f6b9f9c8e97c0cf64588b20deb10f24e2f4f6c6b87 in / 
# Mon, 09 Oct 2017 21:44:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:18:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:19:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:19:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:10:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:10:31 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 08:10:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 08:10:32 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 08:10:33 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 08:10:33 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 08:10:33 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 08:10:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 08:11:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 08:11:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:39:26 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 10 Oct 2017 08:39:26 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 10 Oct 2017 08:39:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 08:39:29 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 08:39:42 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 10 Oct 2017 08:39:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 08:39:45 GMT
ENV LEIN_ROOT=1
# Tue, 10 Oct 2017 08:40:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:3c60e7fc5441d6c90edac385048cfe55b732e74ac7a95ce0f52555d1fdd4777a`  
		Last Modified: Mon, 09 Oct 2017 21:50:32 GMT  
		Size: 43.8 MB (43815910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c0eb374b4a5889510ab6af5360e74f8471d96bbbb4b1585f37be4fbda09d06c`  
		Last Modified: Mon, 09 Oct 2017 22:26:12 GMT  
		Size: 10.2 MB (10205119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f713ec73030eef0749d2b44c7fce2fabd4c3a5ea319b731b4a5bb22fff47d244`  
		Last Modified: Mon, 09 Oct 2017 22:26:10 GMT  
		Size: 4.5 MB (4450769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928b1607d21d7f38bc3d880c6604d185f09b8932387d93d11ffebcc62a692bb7`  
		Last Modified: Mon, 09 Oct 2017 22:26:36 GMT  
		Size: 48.2 MB (48225718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e810e0cb21607f51deaec0b47b2092240ffeb34284b114756ece80e7271c261`  
		Last Modified: Tue, 10 Oct 2017 08:19:54 GMT  
		Size: 884.5 KB (884469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3b78f2745d23c12af2bef0ab8962405410237c3eb4b792f15b583774f89cc1`  
		Last Modified: Tue, 10 Oct 2017 08:19:55 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2bb2204857cc43f2585925fe67881ec886c3581647451b6f8f301e118863c0a`  
		Last Modified: Tue, 10 Oct 2017 08:19:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9871b9608c110715cfff54ae888fdec46d037b49c5787db588a34691179e58bc`  
		Last Modified: Tue, 10 Oct 2017 08:20:32 GMT  
		Size: 152.4 MB (152370743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf427f07eaca9c816b1d9af32319f0319febad3ae8f7e72b375e26f8c9eee066`  
		Last Modified: Tue, 10 Oct 2017 08:19:54 GMT  
		Size: 272.2 KB (272199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443c95cee868d8071211a597fc61856cd37c71e76c4db7d5b0e426a41fd65b57`  
		Last Modified: Tue, 10 Oct 2017 08:44:41 GMT  
		Size: 13.8 MB (13807437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bd4dd15d54a45e9ac408106dbf893559c64585f3559344db0d7b46ab2f408f`  
		Last Modified: Tue, 10 Oct 2017 08:44:40 GMT  
		Size: 3.3 MB (3341088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-2.7.1` - linux; arm variant v7

```console
$ docker pull clojure@sha256:0f95fe227f6d1ce55ff44e482eb94646f9cf23a087efca8dfde4daff18562c04
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.2 MB (287169708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:553f3517ed487721c3f320aeb4f630020e01cd91068053b81ea873dfe0b72872`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:38 GMT
ADD file:8ee5b45f171806d53c0b75acea33963e2387b8dce889faec31a19f69edc1adb4 in / 
# Wed, 27 Sep 2017 04:14:38 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:45:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:45:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 04:45:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:22:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:22:22 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 05:22:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Sep 2017 05:22:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Sep 2017 05:22:24 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Sep 2017 05:22:24 GMT
ENV JAVA_VERSION=8u141
# Wed, 27 Sep 2017 05:22:25 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 27 Sep 2017 05:22:25 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Sep 2017 05:23:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Sep 2017 05:23:36 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Sep 2017 07:35:49 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Wed, 27 Sep 2017 07:35:50 GMT
ENV LEIN_VERSION=2.7.1
# Wed, 27 Sep 2017 07:35:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 27 Sep 2017 07:35:50 GMT
WORKDIR /tmp
# Wed, 27 Sep 2017 07:36:00 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 27 Sep 2017 07:36:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 27 Sep 2017 07:36:01 GMT
ENV LEIN_ROOT=1
# Wed, 27 Sep 2017 07:36:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:d0e027c48353ee136b77f334ed39630b92f19fc4ef9fa26db6c744e8b577bade`  
		Last Modified: Wed, 27 Sep 2017 04:20:26 GMT  
		Size: 41.8 MB (41846555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ae0119cb83856ab78e1a9091dd8853a6354fd96b2f7ae7947314ef1d5d201`  
		Last Modified: Wed, 27 Sep 2017 05:00:05 GMT  
		Size: 9.8 MB (9821504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4ff3caeed0c4bd8411867fca9844cdf7574f03153195c5eb45ad976f434220`  
		Last Modified: Wed, 27 Sep 2017 05:00:06 GMT  
		Size: 4.2 MB (4210870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadbdb38c8b5d55333db57fa3172a5190e0e4056bc246062c1a1e832fad7cedf`  
		Last Modified: Wed, 27 Sep 2017 05:00:28 GMT  
		Size: 48.1 MB (48065892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ad59f6c54838733cf79810e1547e34ba0573a22d213d9d053f8346d2c109b7`  
		Last Modified: Wed, 27 Sep 2017 05:37:09 GMT  
		Size: 867.6 KB (867649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096d28e01ae570937743c9dafe9cebb564c18222c2b5f02bfa97dae7df24feff`  
		Last Modified: Wed, 27 Sep 2017 05:37:08 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d157469741280f79f5d59ed4c7ac534845ff8e7e2deeb2b3e15bdd611ce715`  
		Last Modified: Wed, 27 Sep 2017 05:37:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7e17032ee7c15ce8b44c551c624435c366e10c6f51b3f87ea538934dff3402`  
		Last Modified: Wed, 27 Sep 2017 05:37:49 GMT  
		Size: 164.9 MB (164932424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3ec5a643285e6622374f11309315aacd31585488c5ff91771af2eda0635a73`  
		Last Modified: Wed, 27 Sep 2017 05:37:10 GMT  
		Size: 272.2 KB (272209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd473ac34fcf8d2e2c2c9d5d8c6d91923f583179b30d1b58cf8315ba8b94dddd`  
		Last Modified: Wed, 27 Sep 2017 07:40:50 GMT  
		Size: 13.8 MB (13811146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18553c17ad406b02741b016da5a9b13ff147afb5751ff50f8e900b9bd561a869`  
		Last Modified: Wed, 27 Sep 2017 07:40:49 GMT  
		Size: 3.3 MB (3341080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-2.7.1` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:74815bbf43ee5585a7d9893d2cb81e57df33ebb20d918f948fd519942bb7bae1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.5 MB (292501762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2f3aaf56536aa2c7bb6c252e6271c54410bae1b6aa23e390c4161c538919ee2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:07:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:20:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:20:13 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 01:20:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 01:20:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 01:20:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 01:20:18 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 01:20:19 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 01:20:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 01:27:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 01:27:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 12:41:25 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 10 Oct 2017 12:41:26 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 10 Oct 2017 12:41:26 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 12:41:27 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 12:42:11 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 10 Oct 2017 12:42:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 12:42:21 GMT
ENV LEIN_ROOT=1
# Tue, 10 Oct 2017 12:42:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fc460f5f7f70833a25c52d6200ced8a4004784a9dc391c6ea4f0bdca6cd51a`  
		Last Modified: Mon, 09 Oct 2017 23:35:03 GMT  
		Size: 48.0 MB (47973994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817e6bf894513e362c7a91204190e30a6057e47fbf58811892d850689c110148`  
		Last Modified: Tue, 10 Oct 2017 02:10:30 GMT  
		Size: 877.4 KB (877428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa01efc0c9ccad41a7a808e5ece80b39f4343666fe98e023b970780ff523af02`  
		Last Modified: Tue, 10 Oct 2017 02:10:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61fcba39e249d16cadb741e545b2914f402a0f1914bbd3132e2ddfa64d66072`  
		Last Modified: Tue, 10 Oct 2017 02:10:28 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e89db9379ff41bac275bf233d9648178158b8e8c0e1dd2f827d8e7bda22bae`  
		Last Modified: Tue, 10 Oct 2017 02:13:37 GMT  
		Size: 168.9 MB (168866096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864ced3055c23d07027e0c555a5a8e6795562212ad2a23709da9365c235cf600`  
		Last Modified: Tue, 10 Oct 2017 02:10:29 GMT  
		Size: 272.1 KB (272093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6dd2fcefe84d749c7acdb955450a3bf37cb4eaa6a7748858024feb89124840`  
		Last Modified: Tue, 10 Oct 2017 12:45:39 GMT  
		Size: 13.8 MB (13807418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bbabbe1d2522c573a1133a64c03ee6be8d0ea2ab248fbb96494e7267ed305d`  
		Last Modified: Tue, 10 Oct 2017 12:45:35 GMT  
		Size: 3.3 MB (3340992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-2.7.1` - linux; 386

```console
$ docker pull clojure@sha256:66c566ed77dd6ff407479222146255a031d0fdd634ff7fd1d37ab0f41830e294
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.0 MB (318021205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b67486be0dff1c8f8a9432527d0e9137a70d2eaaa1770443d8ca90bb0656ef58`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:45 GMT
ADD file:402d57d8bc933b07f97c70a7d47950ab9db320f2efcbfe638adc290d1a0c159d in / 
# Fri, 08 Sep 2017 13:19:46 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 13:47:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 13:47:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 13:47:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:03:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:03:02 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 15:03:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 09 Sep 2017 15:03:06 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 09 Sep 2017 15:03:06 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 09 Sep 2017 15:03:06 GMT
ENV JAVA_VERSION=8u141
# Sat, 09 Sep 2017 15:03:07 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Sat, 09 Sep 2017 15:03:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 15:04:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 15:04:24 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 00:04:27 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Wed, 13 Sep 2017 00:04:27 GMT
ENV LEIN_VERSION=2.7.1
# Wed, 13 Sep 2017 00:04:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 13 Sep 2017 00:04:27 GMT
WORKDIR /tmp
# Wed, 13 Sep 2017 00:04:40 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 13 Sep 2017 00:04:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 13 Sep 2017 00:04:41 GMT
ENV LEIN_ROOT=1
# Wed, 13 Sep 2017 00:04:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:38807300bd16de4a00efeffb81570740677ff99a2307929b5335a897a79864df`  
		Last Modified: Fri, 08 Sep 2017 13:27:10 GMT  
		Size: 45.8 MB (45831803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21fb83cbb74ba03aed751c7f087705378edd29e4f1ce07e2716700660707347d`  
		Last Modified: Sat, 09 Sep 2017 14:06:45 GMT  
		Size: 11.1 MB (11146421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989b8d10c2f17ba15be11d9573c111eaf58cea1cf99248ed8d058f55fb7572f0`  
		Last Modified: Sat, 09 Sep 2017 14:06:43 GMT  
		Size: 4.9 MB (4853009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e492673b6687061f8973b79d73308677b8fd7d142bc4bf67739c40f9de7cf1`  
		Last Modified: Sat, 09 Sep 2017 14:07:17 GMT  
		Size: 51.5 MB (51537152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ee7d9a8357e9bc240194f3ce390d301152efd71805ec0de07b5cd3bd9bfe24`  
		Last Modified: Sat, 09 Sep 2017 15:25:45 GMT  
		Size: 899.7 KB (899707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21ef4be25518620c51bd20c29dcb719eb2a3fedb3bcda870fddda94ead5b02a`  
		Last Modified: Sat, 09 Sep 2017 15:25:45 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d3787686474fa9917f6a6e09905255f60c82112bf3377d5d6aed7a480fa187`  
		Last Modified: Sat, 09 Sep 2017 15:25:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2826765055a09c6e9786006cd7b48ce5790b799628ff9ba235295c14815b01`  
		Last Modified: Sat, 09 Sep 2017 15:26:25 GMT  
		Size: 186.3 MB (186328475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad576b57497c00d2a7d0abc85d22fd1f48b71bd68aeb32d1492894d672544e2`  
		Last Modified: Sat, 09 Sep 2017 15:25:45 GMT  
		Size: 272.1 KB (272144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ebcf571cbdab8d81f0e7a34da8a70efd195ca04e4757209b234553ff91e3a8`  
		Last Modified: Wed, 13 Sep 2017 00:07:46 GMT  
		Size: 13.8 MB (13811121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47c5d67dc9f95cd4063a302ee9fa41707e02bf49b95566b0859f2d9a97f9906`  
		Last Modified: Wed, 13 Sep 2017 00:07:45 GMT  
		Size: 3.3 MB (3340994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-2.7.1` - linux; ppc64le

```console
$ docker pull clojure@sha256:b4b219ca628420c9e4e7a5368688e3df510bb3e460e163ad27faad8c5a119036
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.0 MB (301012349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa56c1202eabb5fa5c7138b73c1073a403746ca0e38023d87102f89c3d6b9453`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:14:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:19:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:14:04 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 03:14:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 03:14:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 03:14:19 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 03:14:21 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 03:14:24 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 03:14:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 03:37:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 03:37:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 10:23:42 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 10 Oct 2017 10:23:44 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 10 Oct 2017 10:23:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 10:23:49 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 10:24:30 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 10 Oct 2017 10:24:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 10:24:34 GMT
ENV LEIN_ROOT=1
# Tue, 10 Oct 2017 10:24:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68ed2fe64e9c2dfe79d5d484b75ed9d17ac5941067e9d69cb194ac257feec3a`  
		Last Modified: Tue, 10 Oct 2017 00:58:01 GMT  
		Size: 10.3 MB (10338918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcb4b07bc1d76cd1d3e264929d07b103dc8a16ecba513a1d5a03d3b5d54b919`  
		Last Modified: Tue, 10 Oct 2017 00:58:00 GMT  
		Size: 4.6 MB (4587455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f601576bea3b971a5c48ce185e438f8ef5a459c0af4d71e2a76e2f1614985ff`  
		Last Modified: Tue, 10 Oct 2017 00:58:29 GMT  
		Size: 50.0 MB (50025661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d049c690ec893d6c5bee966eccd42639439f69808bb14e8ab48e8f97effaf4e`  
		Last Modified: Tue, 10 Oct 2017 05:11:22 GMT  
		Size: 886.5 KB (886492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a017aab8d1fa4dcc9e8cc020e1d225a0cb913fd107244b705209f30616b1322`  
		Last Modified: Tue, 10 Oct 2017 05:11:21 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37714e84ae49acce27bb6b3064ddb75aa5f1524c6ee6fc23ebc9d4b2eb00e4e4`  
		Last Modified: Tue, 10 Oct 2017 05:11:22 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e742fe4b5fac456d1f466bfc7c25bbd0df09fab5df0b6127b3794d89fed1bdc`  
		Last Modified: Tue, 10 Oct 2017 05:12:07 GMT  
		Size: 172.4 MB (172374524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092d11158fbab902a752fd00d3a5cc5be658d4a1d79fc406852dde0ba417c60f`  
		Last Modified: Tue, 10 Oct 2017 05:11:21 GMT  
		Size: 272.1 KB (272058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42717530d7d25f6bd7ba6cc1d312622dc52184902a03b6dd1280d43b6c4ca916`  
		Last Modified: Tue, 10 Oct 2017 10:28:46 GMT  
		Size: 13.8 MB (13807441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176f2f720939405612fdf6ce53bdc0135121470c2d739db28f1a8cce0314f21c`  
		Last Modified: Tue, 10 Oct 2017 10:28:44 GMT  
		Size: 3.3 MB (3341055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-2.7.1` - linux; s390x

```console
$ docker pull clojure@sha256:d6ca133cb2af519bf4aa53302d86d493ff8c91c009a936fa7b54dc51a1a5012d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 MB (283236192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19b4c6b196bdc7016a39b5c551a7557cee1b8fbd203fbc9ea2536305c95e1fe1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:15:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:16:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:51:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:51:15 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:51:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:51:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:51:17 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 22:51:17 GMT
ENV JAVA_VERSION=8u141
# Mon, 09 Oct 2017 22:51:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Mon, 09 Oct 2017 22:51:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 09 Oct 2017 22:52:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 09 Oct 2017 22:52:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 01:43:46 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 10 Oct 2017 01:43:46 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 10 Oct 2017 01:43:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 01:43:46 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 01:44:20 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 10 Oct 2017 01:44:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 01:44:20 GMT
ENV LEIN_ROOT=1
# Tue, 10 Oct 2017 01:44:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33b5e0a1749d0366c28b4b88ae0139119ba36640fa31f7ed3d2ec974ae1127b`  
		Last Modified: Mon, 09 Oct 2017 22:21:54 GMT  
		Size: 10.7 MB (10667715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049887af1090e55495d4d3f232c2441d3bb8b420366662539c3bfb829e349496`  
		Last Modified: Mon, 09 Oct 2017 22:21:53 GMT  
		Size: 4.7 MB (4664115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88994e2adeee9dcccd21288a4ca51444bc7374338cac5c49346a4abab141c964`  
		Last Modified: Mon, 09 Oct 2017 22:22:13 GMT  
		Size: 50.4 MB (50441493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f387eea12e61c54ddde7f0a374fdb865a9c7b947726d9059badbe523f1dbb567`  
		Last Modified: Mon, 09 Oct 2017 23:01:11 GMT  
		Size: 903.3 KB (903271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fafc101c48ae99e9e8736b5e5ab83b778b685c0b02b9a7b0c79d0ab02bf7f1f`  
		Last Modified: Mon, 09 Oct 2017 23:01:11 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3186a6b958367bf7bbb9e04ccbf7885b78581f160e7522d7e99ba22a1382295`  
		Last Modified: Mon, 09 Oct 2017 23:01:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7a175b238a1984f8feed86837873789bd27f86f8757cb2c6d5c95d7da8add6`  
		Last Modified: Mon, 09 Oct 2017 23:01:35 GMT  
		Size: 154.2 MB (154165898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deab041fe669c4ae1a41017f90c0740e574dadc67b50d182663706fddaa9fed`  
		Last Modified: Mon, 09 Oct 2017 23:01:12 GMT  
		Size: 272.2 KB (272164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240955fc43fd67ecb3b3b675460e68e86bdee756be7f0270d74eeac771ddc72e`  
		Last Modified: Tue, 10 Oct 2017 01:47:39 GMT  
		Size: 13.8 MB (13807405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f3e21f3a6f335ba5f19db3677c34637129abdf49d2c91c19a0236098d24244`  
		Last Modified: Tue, 10 Oct 2017 01:47:38 GMT  
		Size: 3.3 MB (3340991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein-2.7.1-alpine`

```console
$ docker pull clojure@sha256:6afa00b92e0ed0559d6783ddeb4faf4ba63a444c6fe9a94a3001ef361f567a91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:lein-2.7.1-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:aec28c586cf307020b66ebb24b31a23a0cf7e732b391149cd8b217552008b32d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96107052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df3f1b2109dfa8f224892921a1d84ad2a259d33e9e17a7fabfdf88a6955a9f7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 14 Sep 2017 04:21:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:21:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:05:57 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 14 Sep 2017 06:05:57 GMT
ENV LEIN_VERSION=2.7.1
# Thu, 14 Sep 2017 06:05:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 14 Sep 2017 06:05:57 GMT
WORKDIR /tmp
# Thu, 14 Sep 2017 06:06:04 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Thu, 14 Sep 2017 06:12:45 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 14 Sep 2017 06:12:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Thu, 14 Sep 2017 06:12:45 GMT
ENV LEIN_ROOT=1
# Thu, 14 Sep 2017 06:12:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a4b3080d3cc157970baf6edf6194df12fa0a9dc61d2c1525781ae4af65213c`  
		Last Modified: Thu, 14 Sep 2017 04:59:04 GMT  
		Size: 70.1 MB (70051361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef5db8964f3b3aaa1f4550d355cd4684d8e44a3d59b3ae73e3b0bee988eb131`  
		Last Modified: Thu, 14 Sep 2017 06:18:05 GMT  
		Size: 6.9 MB (6913115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b2ff61427cdd6f7e1cb49697bd40218e29d2b3468802d562f997f9c2691c05`  
		Last Modified: Thu, 14 Sep 2017 06:18:04 GMT  
		Size: 13.8 MB (13810966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6652c9d3bf24fa81a80c5160486e61aaa40461cf272976fee29242b1c4002e`  
		Last Modified: Thu, 14 Sep 2017 06:18:03 GMT  
		Size: 3.3 MB (3340968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein-2.7.1-alpine-onbuild`

```console
$ docker pull clojure@sha256:1961e666ec35a8a38f05c64e474893938159fbdbd7b943fb958961a638df6176
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:lein-2.7.1-alpine-onbuild` - linux; amd64

```console
$ docker pull clojure@sha256:af8131e20252ea8e0760b93d65d45bb26800e2ca7e80bb1d475f3bb98974520d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96107178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba3714260d859d795645fb1442f599e897b479a272b4d6432cda1bb07708205d`
-	Default Command: `["lein","run"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 14 Sep 2017 04:21:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:21:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:05:57 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 14 Sep 2017 06:05:57 GMT
ENV LEIN_VERSION=2.7.1
# Thu, 14 Sep 2017 06:05:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 14 Sep 2017 06:05:57 GMT
WORKDIR /tmp
# Thu, 14 Sep 2017 06:06:04 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Thu, 14 Sep 2017 06:12:45 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 14 Sep 2017 06:12:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Thu, 14 Sep 2017 06:12:45 GMT
ENV LEIN_ROOT=1
# Thu, 14 Sep 2017 06:12:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Thu, 14 Sep 2017 06:12:55 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 14 Sep 2017 06:12:56 GMT
WORKDIR /usr/src/app
# Thu, 14 Sep 2017 06:12:56 GMT
ONBUILD COPY project.clj /usr/src/app/
# Thu, 14 Sep 2017 06:12:56 GMT
ONBUILD RUN lein deps
# Thu, 14 Sep 2017 06:12:56 GMT
ONBUILD COPY . /usr/src/app
# Thu, 14 Sep 2017 06:12:56 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a4b3080d3cc157970baf6edf6194df12fa0a9dc61d2c1525781ae4af65213c`  
		Last Modified: Thu, 14 Sep 2017 04:59:04 GMT  
		Size: 70.1 MB (70051361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef5db8964f3b3aaa1f4550d355cd4684d8e44a3d59b3ae73e3b0bee988eb131`  
		Last Modified: Thu, 14 Sep 2017 06:18:05 GMT  
		Size: 6.9 MB (6913115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b2ff61427cdd6f7e1cb49697bd40218e29d2b3468802d562f997f9c2691c05`  
		Last Modified: Thu, 14 Sep 2017 06:18:04 GMT  
		Size: 13.8 MB (13810966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6652c9d3bf24fa81a80c5160486e61aaa40461cf272976fee29242b1c4002e`  
		Last Modified: Thu, 14 Sep 2017 06:18:03 GMT  
		Size: 3.3 MB (3340968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e47de1c432d9081c80fc4c0f4d2f213b0a56c5f37184cb1cd9af7f82612012e`  
		Last Modified: Thu, 14 Sep 2017 06:18:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein-2.7.1-onbuild`

```console
$ docker pull clojure@sha256:e0dd17d11c83925fca0adee815ead782d5035650045829aeb9015cfc22e4eb20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `clojure:lein-2.7.1-onbuild` - linux; amd64

```console
$ docker pull clojure@sha256:82c2c3939086b4f3add6cbfa2d85081de690a3276b1b7fa6ae5d1456aeb04538
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.9 MB (312895124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6220f842dd417747c4e644397c07a9037d52bca299b012cf3e527fd6c8dc478`
-	Default Command: `["lein","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:48:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:49:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:11:01 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 10 Oct 2017 08:11:01 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 10 Oct 2017 08:11:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 08:11:02 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 08:11:10 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 10 Oct 2017 08:11:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 08:11:11 GMT
ENV LEIN_ROOT=1
# Tue, 10 Oct 2017 08:11:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Tue, 10 Oct 2017 08:11:30 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Tue, 10 Oct 2017 08:11:30 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 08:11:30 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 10 Oct 2017 08:11:31 GMT
ONBUILD RUN lein deps
# Tue, 10 Oct 2017 08:11:31 GMT
ONBUILD COPY . /usr/src/app
# Tue, 10 Oct 2017 08:11:31 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77980e5d0a6deb5b982795f18597f7e9ee7f9d08614cbc57528050b2a7977044`  
		Last Modified: Tue, 10 Oct 2017 01:17:05 GMT  
		Size: 892.2 KB (892192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5458607a81d3430c59a97089416a3ef2d8788bdb7eba159b3c2508904d41b996`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cf8338f422c47dc8c752afc2b406bb502e95cd2f74af9e84bff773e72d243`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3da5c56e5c9083605636f83450dfb193a0e46c55185cf98ed1ebac26f339`  
		Last Modified: Tue, 10 Oct 2017 01:17:39 GMT  
		Size: 183.7 MB (183691300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade7a861e3fe26356fa773e1b3f05add01be9ab4c977b711223c15fc30f458e`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d54eea8fb7c04eee51aeb520cf72a1538873b8aefb6faa757dd7b72c7435d58`  
		Last Modified: Tue, 10 Oct 2017 08:14:30 GMT  
		Size: 13.8 MB (13807406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6cb67a4f91b3714d4e8aa7797b11c9d0d3769719790a183fc93e9fe5d1be25`  
		Last Modified: Tue, 10 Oct 2017 08:14:28 GMT  
		Size: 3.3 MB (3340995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3badfd945afc7c2008db1a1b8614c458feb1053672b6a4a177669f36c28cb274`  
		Last Modified: Tue, 10 Oct 2017 08:15:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-2.7.1-onbuild` - linux; arm variant v5

```console
$ docker pull clojure@sha256:4689fc4999d018cb40bce86aa672c9919c5e3075a8fdf1e77b3623416911059e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.4 MB (277373994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e637e2bf912ac96609ab20009548e5259ecb107dc774fd07d5d330a547023e3c`
-	Default Command: `["lein","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:33 GMT
ADD file:faa50a4d3491f148f07964f6b9f9c8e97c0cf64588b20deb10f24e2f4f6c6b87 in / 
# Mon, 09 Oct 2017 21:44:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:18:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:19:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:19:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:10:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:10:31 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 08:10:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 08:10:32 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 08:10:33 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 08:10:33 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 08:10:33 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 08:10:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 08:11:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 08:11:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:39:26 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 10 Oct 2017 08:39:26 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 10 Oct 2017 08:39:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 08:39:29 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 08:39:42 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 10 Oct 2017 08:39:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 08:39:45 GMT
ENV LEIN_ROOT=1
# Tue, 10 Oct 2017 08:40:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Tue, 10 Oct 2017 08:40:33 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Tue, 10 Oct 2017 08:40:33 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 08:40:33 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 10 Oct 2017 08:40:33 GMT
ONBUILD RUN lein deps
# Tue, 10 Oct 2017 08:40:34 GMT
ONBUILD COPY . /usr/src/app
# Tue, 10 Oct 2017 08:40:36 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:3c60e7fc5441d6c90edac385048cfe55b732e74ac7a95ce0f52555d1fdd4777a`  
		Last Modified: Mon, 09 Oct 2017 21:50:32 GMT  
		Size: 43.8 MB (43815910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c0eb374b4a5889510ab6af5360e74f8471d96bbbb4b1585f37be4fbda09d06c`  
		Last Modified: Mon, 09 Oct 2017 22:26:12 GMT  
		Size: 10.2 MB (10205119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f713ec73030eef0749d2b44c7fce2fabd4c3a5ea319b731b4a5bb22fff47d244`  
		Last Modified: Mon, 09 Oct 2017 22:26:10 GMT  
		Size: 4.5 MB (4450769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928b1607d21d7f38bc3d880c6604d185f09b8932387d93d11ffebcc62a692bb7`  
		Last Modified: Mon, 09 Oct 2017 22:26:36 GMT  
		Size: 48.2 MB (48225718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e810e0cb21607f51deaec0b47b2092240ffeb34284b114756ece80e7271c261`  
		Last Modified: Tue, 10 Oct 2017 08:19:54 GMT  
		Size: 884.5 KB (884469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3b78f2745d23c12af2bef0ab8962405410237c3eb4b792f15b583774f89cc1`  
		Last Modified: Tue, 10 Oct 2017 08:19:55 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2bb2204857cc43f2585925fe67881ec886c3581647451b6f8f301e118863c0a`  
		Last Modified: Tue, 10 Oct 2017 08:19:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9871b9608c110715cfff54ae888fdec46d037b49c5787db588a34691179e58bc`  
		Last Modified: Tue, 10 Oct 2017 08:20:32 GMT  
		Size: 152.4 MB (152370743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf427f07eaca9c816b1d9af32319f0319febad3ae8f7e72b375e26f8c9eee066`  
		Last Modified: Tue, 10 Oct 2017 08:19:54 GMT  
		Size: 272.2 KB (272199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443c95cee868d8071211a597fc61856cd37c71e76c4db7d5b0e426a41fd65b57`  
		Last Modified: Tue, 10 Oct 2017 08:44:41 GMT  
		Size: 13.8 MB (13807437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bd4dd15d54a45e9ac408106dbf893559c64585f3559344db0d7b46ab2f408f`  
		Last Modified: Tue, 10 Oct 2017 08:44:40 GMT  
		Size: 3.3 MB (3341088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32b3018bbeeeee3e8774d82343ffc4229b416ac5876f669c077386705a1a9e2`  
		Last Modified: Tue, 10 Oct 2017 08:44:54 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-2.7.1-onbuild` - linux; arm variant v7

```console
$ docker pull clojure@sha256:4786a3b859f1d0f365fdc93a03607dafbd9e8993d40585b9ec747867922b9e34
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.2 MB (287169873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c93767bd7f4f9750a1b77087a55a574d07eae36cf169bcc4a0bcbf9cb3eadf2`
-	Default Command: `["lein","run"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:38 GMT
ADD file:8ee5b45f171806d53c0b75acea33963e2387b8dce889faec31a19f69edc1adb4 in / 
# Wed, 27 Sep 2017 04:14:38 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:45:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:45:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 04:45:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:22:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:22:22 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 05:22:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Sep 2017 05:22:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Sep 2017 05:22:24 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Sep 2017 05:22:24 GMT
ENV JAVA_VERSION=8u141
# Wed, 27 Sep 2017 05:22:25 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 27 Sep 2017 05:22:25 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Sep 2017 05:23:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Sep 2017 05:23:36 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Sep 2017 07:35:49 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Wed, 27 Sep 2017 07:35:50 GMT
ENV LEIN_VERSION=2.7.1
# Wed, 27 Sep 2017 07:35:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 27 Sep 2017 07:35:50 GMT
WORKDIR /tmp
# Wed, 27 Sep 2017 07:36:00 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 27 Sep 2017 07:36:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 27 Sep 2017 07:36:01 GMT
ENV LEIN_ROOT=1
# Wed, 27 Sep 2017 07:36:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Wed, 27 Sep 2017 07:36:49 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Wed, 27 Sep 2017 07:36:51 GMT
WORKDIR /usr/src/app
# Wed, 27 Sep 2017 07:36:53 GMT
ONBUILD COPY project.clj /usr/src/app/
# Wed, 27 Sep 2017 07:36:55 GMT
ONBUILD RUN lein deps
# Wed, 27 Sep 2017 07:36:58 GMT
ONBUILD COPY . /usr/src/app
# Wed, 27 Sep 2017 07:37:00 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:d0e027c48353ee136b77f334ed39630b92f19fc4ef9fa26db6c744e8b577bade`  
		Last Modified: Wed, 27 Sep 2017 04:20:26 GMT  
		Size: 41.8 MB (41846555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ae0119cb83856ab78e1a9091dd8853a6354fd96b2f7ae7947314ef1d5d201`  
		Last Modified: Wed, 27 Sep 2017 05:00:05 GMT  
		Size: 9.8 MB (9821504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4ff3caeed0c4bd8411867fca9844cdf7574f03153195c5eb45ad976f434220`  
		Last Modified: Wed, 27 Sep 2017 05:00:06 GMT  
		Size: 4.2 MB (4210870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadbdb38c8b5d55333db57fa3172a5190e0e4056bc246062c1a1e832fad7cedf`  
		Last Modified: Wed, 27 Sep 2017 05:00:28 GMT  
		Size: 48.1 MB (48065892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ad59f6c54838733cf79810e1547e34ba0573a22d213d9d053f8346d2c109b7`  
		Last Modified: Wed, 27 Sep 2017 05:37:09 GMT  
		Size: 867.6 KB (867649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096d28e01ae570937743c9dafe9cebb564c18222c2b5f02bfa97dae7df24feff`  
		Last Modified: Wed, 27 Sep 2017 05:37:08 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d157469741280f79f5d59ed4c7ac534845ff8e7e2deeb2b3e15bdd611ce715`  
		Last Modified: Wed, 27 Sep 2017 05:37:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7e17032ee7c15ce8b44c551c624435c366e10c6f51b3f87ea538934dff3402`  
		Last Modified: Wed, 27 Sep 2017 05:37:49 GMT  
		Size: 164.9 MB (164932424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3ec5a643285e6622374f11309315aacd31585488c5ff91771af2eda0635a73`  
		Last Modified: Wed, 27 Sep 2017 05:37:10 GMT  
		Size: 272.2 KB (272209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd473ac34fcf8d2e2c2c9d5d8c6d91923f583179b30d1b58cf8315ba8b94dddd`  
		Last Modified: Wed, 27 Sep 2017 07:40:50 GMT  
		Size: 13.8 MB (13811146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18553c17ad406b02741b016da5a9b13ff147afb5751ff50f8e900b9bd561a869`  
		Last Modified: Wed, 27 Sep 2017 07:40:49 GMT  
		Size: 3.3 MB (3341080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2ecdad064d572e81f746decbd4e5a5c78ca0ee5f79d320af188bc9a816983e`  
		Last Modified: Wed, 27 Sep 2017 07:41:04 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-2.7.1-onbuild` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8a84278aeee887e5ffdc9b196ad048b66506abd45e06139519d347ac2714c3b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.5 MB (292501894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:252c600111b8be2cc37473ca6fcddf0ff29f89afd6cdb866f9dd05581111ffbe`
-	Default Command: `["lein","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:07:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:20:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:20:13 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 01:20:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 01:20:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 01:20:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 01:20:18 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 01:20:19 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 01:20:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 01:27:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 01:27:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 12:41:25 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 10 Oct 2017 12:41:26 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 10 Oct 2017 12:41:26 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 12:41:27 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 12:42:11 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 10 Oct 2017 12:42:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 12:42:21 GMT
ENV LEIN_ROOT=1
# Tue, 10 Oct 2017 12:42:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Tue, 10 Oct 2017 12:42:50 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Tue, 10 Oct 2017 12:42:51 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 12:42:52 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 10 Oct 2017 12:42:53 GMT
ONBUILD RUN lein deps
# Tue, 10 Oct 2017 12:42:54 GMT
ONBUILD COPY . /usr/src/app
# Tue, 10 Oct 2017 12:42:54 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fc460f5f7f70833a25c52d6200ced8a4004784a9dc391c6ea4f0bdca6cd51a`  
		Last Modified: Mon, 09 Oct 2017 23:35:03 GMT  
		Size: 48.0 MB (47973994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817e6bf894513e362c7a91204190e30a6057e47fbf58811892d850689c110148`  
		Last Modified: Tue, 10 Oct 2017 02:10:30 GMT  
		Size: 877.4 KB (877428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa01efc0c9ccad41a7a808e5ece80b39f4343666fe98e023b970780ff523af02`  
		Last Modified: Tue, 10 Oct 2017 02:10:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61fcba39e249d16cadb741e545b2914f402a0f1914bbd3132e2ddfa64d66072`  
		Last Modified: Tue, 10 Oct 2017 02:10:28 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e89db9379ff41bac275bf233d9648178158b8e8c0e1dd2f827d8e7bda22bae`  
		Last Modified: Tue, 10 Oct 2017 02:13:37 GMT  
		Size: 168.9 MB (168866096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864ced3055c23d07027e0c555a5a8e6795562212ad2a23709da9365c235cf600`  
		Last Modified: Tue, 10 Oct 2017 02:10:29 GMT  
		Size: 272.1 KB (272093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6dd2fcefe84d749c7acdb955450a3bf37cb4eaa6a7748858024feb89124840`  
		Last Modified: Tue, 10 Oct 2017 12:45:39 GMT  
		Size: 13.8 MB (13807418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bbabbe1d2522c573a1133a64c03ee6be8d0ea2ab248fbb96494e7267ed305d`  
		Last Modified: Tue, 10 Oct 2017 12:45:35 GMT  
		Size: 3.3 MB (3340992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da8fc940cf2ba6afdc4d079d45b3a2726780e071ce833cec67e66a1451e9701`  
		Last Modified: Tue, 10 Oct 2017 12:46:23 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-2.7.1-onbuild` - linux; 386

```console
$ docker pull clojure@sha256:ca0046f804cefbe9f8d5d1855090131baa74202cfc0515cec5464c88e9f875ba
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.0 MB (318021336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a627a6d519f8b00a3c2865c24559d715a5940e31acb2e282addb65a6f2d2809`
-	Default Command: `["lein","run"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:45 GMT
ADD file:402d57d8bc933b07f97c70a7d47950ab9db320f2efcbfe638adc290d1a0c159d in / 
# Fri, 08 Sep 2017 13:19:46 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 13:47:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 13:47:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 13:47:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:03:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:03:02 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 15:03:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 09 Sep 2017 15:03:06 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 09 Sep 2017 15:03:06 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 09 Sep 2017 15:03:06 GMT
ENV JAVA_VERSION=8u141
# Sat, 09 Sep 2017 15:03:07 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Sat, 09 Sep 2017 15:03:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 15:04:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 15:04:24 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 00:04:27 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Wed, 13 Sep 2017 00:04:27 GMT
ENV LEIN_VERSION=2.7.1
# Wed, 13 Sep 2017 00:04:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 13 Sep 2017 00:04:27 GMT
WORKDIR /tmp
# Wed, 13 Sep 2017 00:04:40 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 13 Sep 2017 00:04:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 13 Sep 2017 00:04:41 GMT
ENV LEIN_ROOT=1
# Wed, 13 Sep 2017 00:04:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Wed, 13 Sep 2017 00:04:54 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Wed, 13 Sep 2017 00:04:54 GMT
WORKDIR /usr/src/app
# Wed, 13 Sep 2017 00:04:54 GMT
ONBUILD COPY project.clj /usr/src/app/
# Wed, 13 Sep 2017 00:04:54 GMT
ONBUILD RUN lein deps
# Wed, 13 Sep 2017 00:04:55 GMT
ONBUILD COPY . /usr/src/app
# Wed, 13 Sep 2017 00:04:55 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:38807300bd16de4a00efeffb81570740677ff99a2307929b5335a897a79864df`  
		Last Modified: Fri, 08 Sep 2017 13:27:10 GMT  
		Size: 45.8 MB (45831803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21fb83cbb74ba03aed751c7f087705378edd29e4f1ce07e2716700660707347d`  
		Last Modified: Sat, 09 Sep 2017 14:06:45 GMT  
		Size: 11.1 MB (11146421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989b8d10c2f17ba15be11d9573c111eaf58cea1cf99248ed8d058f55fb7572f0`  
		Last Modified: Sat, 09 Sep 2017 14:06:43 GMT  
		Size: 4.9 MB (4853009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e492673b6687061f8973b79d73308677b8fd7d142bc4bf67739c40f9de7cf1`  
		Last Modified: Sat, 09 Sep 2017 14:07:17 GMT  
		Size: 51.5 MB (51537152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ee7d9a8357e9bc240194f3ce390d301152efd71805ec0de07b5cd3bd9bfe24`  
		Last Modified: Sat, 09 Sep 2017 15:25:45 GMT  
		Size: 899.7 KB (899707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21ef4be25518620c51bd20c29dcb719eb2a3fedb3bcda870fddda94ead5b02a`  
		Last Modified: Sat, 09 Sep 2017 15:25:45 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d3787686474fa9917f6a6e09905255f60c82112bf3377d5d6aed7a480fa187`  
		Last Modified: Sat, 09 Sep 2017 15:25:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2826765055a09c6e9786006cd7b48ce5790b799628ff9ba235295c14815b01`  
		Last Modified: Sat, 09 Sep 2017 15:26:25 GMT  
		Size: 186.3 MB (186328475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad576b57497c00d2a7d0abc85d22fd1f48b71bd68aeb32d1492894d672544e2`  
		Last Modified: Sat, 09 Sep 2017 15:25:45 GMT  
		Size: 272.1 KB (272144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ebcf571cbdab8d81f0e7a34da8a70efd195ca04e4757209b234553ff91e3a8`  
		Last Modified: Wed, 13 Sep 2017 00:07:46 GMT  
		Size: 13.8 MB (13811121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47c5d67dc9f95cd4063a302ee9fa41707e02bf49b95566b0859f2d9a97f9906`  
		Last Modified: Wed, 13 Sep 2017 00:07:45 GMT  
		Size: 3.3 MB (3340994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f665b7cdd10d7594981d333541176123ad9e51754e68c61e56604d53936f7fb6`  
		Last Modified: Wed, 13 Sep 2017 00:08:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-2.7.1-onbuild` - linux; ppc64le

```console
$ docker pull clojure@sha256:1a47d57df306d64e53c9347f39be13e7f3bc4bff026cf89a42f665a517d1a621
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.0 MB (301012513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8302ae4161f4785aa6c7a69c10ba2315fd265f875b472aadd2989646541ade2f`
-	Default Command: `["lein","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:14:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:19:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:14:04 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 03:14:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 03:14:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 03:14:19 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 03:14:21 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 03:14:24 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 03:14:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 03:37:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 03:37:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 10:23:42 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 10 Oct 2017 10:23:44 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 10 Oct 2017 10:23:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 10:23:49 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 10:24:30 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 10 Oct 2017 10:24:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 10:24:34 GMT
ENV LEIN_ROOT=1
# Tue, 10 Oct 2017 10:24:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Tue, 10 Oct 2017 10:24:55 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Tue, 10 Oct 2017 10:25:00 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 10:25:05 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 10 Oct 2017 10:25:08 GMT
ONBUILD RUN lein deps
# Tue, 10 Oct 2017 10:25:12 GMT
ONBUILD COPY . /usr/src/app
# Tue, 10 Oct 2017 10:25:16 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68ed2fe64e9c2dfe79d5d484b75ed9d17ac5941067e9d69cb194ac257feec3a`  
		Last Modified: Tue, 10 Oct 2017 00:58:01 GMT  
		Size: 10.3 MB (10338918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcb4b07bc1d76cd1d3e264929d07b103dc8a16ecba513a1d5a03d3b5d54b919`  
		Last Modified: Tue, 10 Oct 2017 00:58:00 GMT  
		Size: 4.6 MB (4587455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f601576bea3b971a5c48ce185e438f8ef5a459c0af4d71e2a76e2f1614985ff`  
		Last Modified: Tue, 10 Oct 2017 00:58:29 GMT  
		Size: 50.0 MB (50025661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d049c690ec893d6c5bee966eccd42639439f69808bb14e8ab48e8f97effaf4e`  
		Last Modified: Tue, 10 Oct 2017 05:11:22 GMT  
		Size: 886.5 KB (886492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a017aab8d1fa4dcc9e8cc020e1d225a0cb913fd107244b705209f30616b1322`  
		Last Modified: Tue, 10 Oct 2017 05:11:21 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37714e84ae49acce27bb6b3064ddb75aa5f1524c6ee6fc23ebc9d4b2eb00e4e4`  
		Last Modified: Tue, 10 Oct 2017 05:11:22 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e742fe4b5fac456d1f466bfc7c25bbd0df09fab5df0b6127b3794d89fed1bdc`  
		Last Modified: Tue, 10 Oct 2017 05:12:07 GMT  
		Size: 172.4 MB (172374524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092d11158fbab902a752fd00d3a5cc5be658d4a1d79fc406852dde0ba417c60f`  
		Last Modified: Tue, 10 Oct 2017 05:11:21 GMT  
		Size: 272.1 KB (272058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42717530d7d25f6bd7ba6cc1d312622dc52184902a03b6dd1280d43b6c4ca916`  
		Last Modified: Tue, 10 Oct 2017 10:28:46 GMT  
		Size: 13.8 MB (13807441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176f2f720939405612fdf6ce53bdc0135121470c2d739db28f1a8cce0314f21c`  
		Last Modified: Tue, 10 Oct 2017 10:28:44 GMT  
		Size: 3.3 MB (3341055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d859612cd3a0669359a359133d78ea2e7577c6befd2871f2f8ead520b7c63ca`  
		Last Modified: Tue, 10 Oct 2017 10:29:06 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-2.7.1-onbuild` - linux; s390x

```console
$ docker pull clojure@sha256:0c46d853e80e67bad0992318ccebfe744c26f4558fe1a432e7357a0613516f2b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 MB (283236322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c29f932c4d71352c05e5f4cb1e53f2cc279a1df112f33e1e07aa7b1f999db55e`
-	Default Command: `["lein","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:15:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:16:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:51:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:51:15 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:51:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:51:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:51:17 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 22:51:17 GMT
ENV JAVA_VERSION=8u141
# Mon, 09 Oct 2017 22:51:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Mon, 09 Oct 2017 22:51:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 09 Oct 2017 22:52:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 09 Oct 2017 22:52:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 01:43:46 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 10 Oct 2017 01:43:46 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 10 Oct 2017 01:43:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 01:43:46 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 01:44:20 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 10 Oct 2017 01:44:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 01:44:20 GMT
ENV LEIN_ROOT=1
# Tue, 10 Oct 2017 01:44:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Tue, 10 Oct 2017 01:44:49 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Tue, 10 Oct 2017 01:44:49 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 01:44:49 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 10 Oct 2017 01:44:49 GMT
ONBUILD RUN lein deps
# Tue, 10 Oct 2017 01:44:49 GMT
ONBUILD COPY . /usr/src/app
# Tue, 10 Oct 2017 01:44:49 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33b5e0a1749d0366c28b4b88ae0139119ba36640fa31f7ed3d2ec974ae1127b`  
		Last Modified: Mon, 09 Oct 2017 22:21:54 GMT  
		Size: 10.7 MB (10667715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049887af1090e55495d4d3f232c2441d3bb8b420366662539c3bfb829e349496`  
		Last Modified: Mon, 09 Oct 2017 22:21:53 GMT  
		Size: 4.7 MB (4664115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88994e2adeee9dcccd21288a4ca51444bc7374338cac5c49346a4abab141c964`  
		Last Modified: Mon, 09 Oct 2017 22:22:13 GMT  
		Size: 50.4 MB (50441493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f387eea12e61c54ddde7f0a374fdb865a9c7b947726d9059badbe523f1dbb567`  
		Last Modified: Mon, 09 Oct 2017 23:01:11 GMT  
		Size: 903.3 KB (903271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fafc101c48ae99e9e8736b5e5ab83b778b685c0b02b9a7b0c79d0ab02bf7f1f`  
		Last Modified: Mon, 09 Oct 2017 23:01:11 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3186a6b958367bf7bbb9e04ccbf7885b78581f160e7522d7e99ba22a1382295`  
		Last Modified: Mon, 09 Oct 2017 23:01:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7a175b238a1984f8feed86837873789bd27f86f8757cb2c6d5c95d7da8add6`  
		Last Modified: Mon, 09 Oct 2017 23:01:35 GMT  
		Size: 154.2 MB (154165898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deab041fe669c4ae1a41017f90c0740e574dadc67b50d182663706fddaa9fed`  
		Last Modified: Mon, 09 Oct 2017 23:01:12 GMT  
		Size: 272.2 KB (272164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240955fc43fd67ecb3b3b675460e68e86bdee756be7f0270d74eeac771ddc72e`  
		Last Modified: Tue, 10 Oct 2017 01:47:39 GMT  
		Size: 13.8 MB (13807405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f3e21f3a6f335ba5f19db3677c34637129abdf49d2c91c19a0236098d24244`  
		Last Modified: Tue, 10 Oct 2017 01:47:38 GMT  
		Size: 3.3 MB (3340991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac68b7aaa7d981b8bd3e6f33ca495b14b73a309e3448d194072aeda7d1f83d2`  
		Last Modified: Tue, 10 Oct 2017 01:47:56 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein-alpine`

```console
$ docker pull clojure@sha256:6afa00b92e0ed0559d6783ddeb4faf4ba63a444c6fe9a94a3001ef361f567a91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:lein-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:aec28c586cf307020b66ebb24b31a23a0cf7e732b391149cd8b217552008b32d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96107052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df3f1b2109dfa8f224892921a1d84ad2a259d33e9e17a7fabfdf88a6955a9f7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 14 Sep 2017 04:21:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:21:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:05:57 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 14 Sep 2017 06:05:57 GMT
ENV LEIN_VERSION=2.7.1
# Thu, 14 Sep 2017 06:05:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 14 Sep 2017 06:05:57 GMT
WORKDIR /tmp
# Thu, 14 Sep 2017 06:06:04 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Thu, 14 Sep 2017 06:12:45 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 14 Sep 2017 06:12:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Thu, 14 Sep 2017 06:12:45 GMT
ENV LEIN_ROOT=1
# Thu, 14 Sep 2017 06:12:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a4b3080d3cc157970baf6edf6194df12fa0a9dc61d2c1525781ae4af65213c`  
		Last Modified: Thu, 14 Sep 2017 04:59:04 GMT  
		Size: 70.1 MB (70051361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef5db8964f3b3aaa1f4550d355cd4684d8e44a3d59b3ae73e3b0bee988eb131`  
		Last Modified: Thu, 14 Sep 2017 06:18:05 GMT  
		Size: 6.9 MB (6913115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b2ff61427cdd6f7e1cb49697bd40218e29d2b3468802d562f997f9c2691c05`  
		Last Modified: Thu, 14 Sep 2017 06:18:04 GMT  
		Size: 13.8 MB (13810966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6652c9d3bf24fa81a80c5160486e61aaa40461cf272976fee29242b1c4002e`  
		Last Modified: Thu, 14 Sep 2017 06:18:03 GMT  
		Size: 3.3 MB (3340968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein-alpine-onbuild`

```console
$ docker pull clojure@sha256:1961e666ec35a8a38f05c64e474893938159fbdbd7b943fb958961a638df6176
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:lein-alpine-onbuild` - linux; amd64

```console
$ docker pull clojure@sha256:af8131e20252ea8e0760b93d65d45bb26800e2ca7e80bb1d475f3bb98974520d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96107178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba3714260d859d795645fb1442f599e897b479a272b4d6432cda1bb07708205d`
-	Default Command: `["lein","run"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 14 Sep 2017 04:21:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:21:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:05:57 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 14 Sep 2017 06:05:57 GMT
ENV LEIN_VERSION=2.7.1
# Thu, 14 Sep 2017 06:05:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 14 Sep 2017 06:05:57 GMT
WORKDIR /tmp
# Thu, 14 Sep 2017 06:06:04 GMT
RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*
# Thu, 14 Sep 2017 06:12:45 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 14 Sep 2017 06:12:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Thu, 14 Sep 2017 06:12:45 GMT
ENV LEIN_ROOT=1
# Thu, 14 Sep 2017 06:12:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Thu, 14 Sep 2017 06:12:55 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Thu, 14 Sep 2017 06:12:56 GMT
WORKDIR /usr/src/app
# Thu, 14 Sep 2017 06:12:56 GMT
ONBUILD COPY project.clj /usr/src/app/
# Thu, 14 Sep 2017 06:12:56 GMT
ONBUILD RUN lein deps
# Thu, 14 Sep 2017 06:12:56 GMT
ONBUILD COPY . /usr/src/app
# Thu, 14 Sep 2017 06:12:56 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a4b3080d3cc157970baf6edf6194df12fa0a9dc61d2c1525781ae4af65213c`  
		Last Modified: Thu, 14 Sep 2017 04:59:04 GMT  
		Size: 70.1 MB (70051361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef5db8964f3b3aaa1f4550d355cd4684d8e44a3d59b3ae73e3b0bee988eb131`  
		Last Modified: Thu, 14 Sep 2017 06:18:05 GMT  
		Size: 6.9 MB (6913115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b2ff61427cdd6f7e1cb49697bd40218e29d2b3468802d562f997f9c2691c05`  
		Last Modified: Thu, 14 Sep 2017 06:18:04 GMT  
		Size: 13.8 MB (13810966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6652c9d3bf24fa81a80c5160486e61aaa40461cf272976fee29242b1c4002e`  
		Last Modified: Thu, 14 Sep 2017 06:18:03 GMT  
		Size: 3.3 MB (3340968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e47de1c432d9081c80fc4c0f4d2f213b0a56c5f37184cb1cd9af7f82612012e`  
		Last Modified: Thu, 14 Sep 2017 06:18:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:lein-onbuild`

```console
$ docker pull clojure@sha256:e0dd17d11c83925fca0adee815ead782d5035650045829aeb9015cfc22e4eb20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `clojure:lein-onbuild` - linux; amd64

```console
$ docker pull clojure@sha256:82c2c3939086b4f3add6cbfa2d85081de690a3276b1b7fa6ae5d1456aeb04538
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.9 MB (312895124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6220f842dd417747c4e644397c07a9037d52bca299b012cf3e527fd6c8dc478`
-	Default Command: `["lein","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:48:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:49:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:11:01 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 10 Oct 2017 08:11:01 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 10 Oct 2017 08:11:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 08:11:02 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 08:11:10 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 10 Oct 2017 08:11:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 08:11:11 GMT
ENV LEIN_ROOT=1
# Tue, 10 Oct 2017 08:11:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Tue, 10 Oct 2017 08:11:30 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Tue, 10 Oct 2017 08:11:30 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 08:11:30 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 10 Oct 2017 08:11:31 GMT
ONBUILD RUN lein deps
# Tue, 10 Oct 2017 08:11:31 GMT
ONBUILD COPY . /usr/src/app
# Tue, 10 Oct 2017 08:11:31 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77980e5d0a6deb5b982795f18597f7e9ee7f9d08614cbc57528050b2a7977044`  
		Last Modified: Tue, 10 Oct 2017 01:17:05 GMT  
		Size: 892.2 KB (892192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5458607a81d3430c59a97089416a3ef2d8788bdb7eba159b3c2508904d41b996`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cf8338f422c47dc8c752afc2b406bb502e95cd2f74af9e84bff773e72d243`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3da5c56e5c9083605636f83450dfb193a0e46c55185cf98ed1ebac26f339`  
		Last Modified: Tue, 10 Oct 2017 01:17:39 GMT  
		Size: 183.7 MB (183691300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade7a861e3fe26356fa773e1b3f05add01be9ab4c977b711223c15fc30f458e`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d54eea8fb7c04eee51aeb520cf72a1538873b8aefb6faa757dd7b72c7435d58`  
		Last Modified: Tue, 10 Oct 2017 08:14:30 GMT  
		Size: 13.8 MB (13807406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6cb67a4f91b3714d4e8aa7797b11c9d0d3769719790a183fc93e9fe5d1be25`  
		Last Modified: Tue, 10 Oct 2017 08:14:28 GMT  
		Size: 3.3 MB (3340995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3badfd945afc7c2008db1a1b8614c458feb1053672b6a4a177669f36c28cb274`  
		Last Modified: Tue, 10 Oct 2017 08:15:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-onbuild` - linux; arm variant v5

```console
$ docker pull clojure@sha256:4689fc4999d018cb40bce86aa672c9919c5e3075a8fdf1e77b3623416911059e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.4 MB (277373994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e637e2bf912ac96609ab20009548e5259ecb107dc774fd07d5d330a547023e3c`
-	Default Command: `["lein","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:33 GMT
ADD file:faa50a4d3491f148f07964f6b9f9c8e97c0cf64588b20deb10f24e2f4f6c6b87 in / 
# Mon, 09 Oct 2017 21:44:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:18:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:19:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:19:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:10:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:10:31 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 08:10:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 08:10:32 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 08:10:33 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 08:10:33 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 08:10:33 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 08:10:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 08:11:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 08:11:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:39:26 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 10 Oct 2017 08:39:26 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 10 Oct 2017 08:39:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 08:39:29 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 08:39:42 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 10 Oct 2017 08:39:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 08:39:45 GMT
ENV LEIN_ROOT=1
# Tue, 10 Oct 2017 08:40:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Tue, 10 Oct 2017 08:40:33 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Tue, 10 Oct 2017 08:40:33 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 08:40:33 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 10 Oct 2017 08:40:33 GMT
ONBUILD RUN lein deps
# Tue, 10 Oct 2017 08:40:34 GMT
ONBUILD COPY . /usr/src/app
# Tue, 10 Oct 2017 08:40:36 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:3c60e7fc5441d6c90edac385048cfe55b732e74ac7a95ce0f52555d1fdd4777a`  
		Last Modified: Mon, 09 Oct 2017 21:50:32 GMT  
		Size: 43.8 MB (43815910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c0eb374b4a5889510ab6af5360e74f8471d96bbbb4b1585f37be4fbda09d06c`  
		Last Modified: Mon, 09 Oct 2017 22:26:12 GMT  
		Size: 10.2 MB (10205119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f713ec73030eef0749d2b44c7fce2fabd4c3a5ea319b731b4a5bb22fff47d244`  
		Last Modified: Mon, 09 Oct 2017 22:26:10 GMT  
		Size: 4.5 MB (4450769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928b1607d21d7f38bc3d880c6604d185f09b8932387d93d11ffebcc62a692bb7`  
		Last Modified: Mon, 09 Oct 2017 22:26:36 GMT  
		Size: 48.2 MB (48225718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e810e0cb21607f51deaec0b47b2092240ffeb34284b114756ece80e7271c261`  
		Last Modified: Tue, 10 Oct 2017 08:19:54 GMT  
		Size: 884.5 KB (884469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3b78f2745d23c12af2bef0ab8962405410237c3eb4b792f15b583774f89cc1`  
		Last Modified: Tue, 10 Oct 2017 08:19:55 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2bb2204857cc43f2585925fe67881ec886c3581647451b6f8f301e118863c0a`  
		Last Modified: Tue, 10 Oct 2017 08:19:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9871b9608c110715cfff54ae888fdec46d037b49c5787db588a34691179e58bc`  
		Last Modified: Tue, 10 Oct 2017 08:20:32 GMT  
		Size: 152.4 MB (152370743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf427f07eaca9c816b1d9af32319f0319febad3ae8f7e72b375e26f8c9eee066`  
		Last Modified: Tue, 10 Oct 2017 08:19:54 GMT  
		Size: 272.2 KB (272199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443c95cee868d8071211a597fc61856cd37c71e76c4db7d5b0e426a41fd65b57`  
		Last Modified: Tue, 10 Oct 2017 08:44:41 GMT  
		Size: 13.8 MB (13807437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bd4dd15d54a45e9ac408106dbf893559c64585f3559344db0d7b46ab2f408f`  
		Last Modified: Tue, 10 Oct 2017 08:44:40 GMT  
		Size: 3.3 MB (3341088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32b3018bbeeeee3e8774d82343ffc4229b416ac5876f669c077386705a1a9e2`  
		Last Modified: Tue, 10 Oct 2017 08:44:54 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-onbuild` - linux; arm variant v7

```console
$ docker pull clojure@sha256:4786a3b859f1d0f365fdc93a03607dafbd9e8993d40585b9ec747867922b9e34
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.2 MB (287169873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c93767bd7f4f9750a1b77087a55a574d07eae36cf169bcc4a0bcbf9cb3eadf2`
-	Default Command: `["lein","run"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:38 GMT
ADD file:8ee5b45f171806d53c0b75acea33963e2387b8dce889faec31a19f69edc1adb4 in / 
# Wed, 27 Sep 2017 04:14:38 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:45:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:45:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 04:45:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:22:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:22:22 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 05:22:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Sep 2017 05:22:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Sep 2017 05:22:24 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Sep 2017 05:22:24 GMT
ENV JAVA_VERSION=8u141
# Wed, 27 Sep 2017 05:22:25 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 27 Sep 2017 05:22:25 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Sep 2017 05:23:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Sep 2017 05:23:36 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Sep 2017 07:35:49 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Wed, 27 Sep 2017 07:35:50 GMT
ENV LEIN_VERSION=2.7.1
# Wed, 27 Sep 2017 07:35:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 27 Sep 2017 07:35:50 GMT
WORKDIR /tmp
# Wed, 27 Sep 2017 07:36:00 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 27 Sep 2017 07:36:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 27 Sep 2017 07:36:01 GMT
ENV LEIN_ROOT=1
# Wed, 27 Sep 2017 07:36:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Wed, 27 Sep 2017 07:36:49 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Wed, 27 Sep 2017 07:36:51 GMT
WORKDIR /usr/src/app
# Wed, 27 Sep 2017 07:36:53 GMT
ONBUILD COPY project.clj /usr/src/app/
# Wed, 27 Sep 2017 07:36:55 GMT
ONBUILD RUN lein deps
# Wed, 27 Sep 2017 07:36:58 GMT
ONBUILD COPY . /usr/src/app
# Wed, 27 Sep 2017 07:37:00 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:d0e027c48353ee136b77f334ed39630b92f19fc4ef9fa26db6c744e8b577bade`  
		Last Modified: Wed, 27 Sep 2017 04:20:26 GMT  
		Size: 41.8 MB (41846555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ae0119cb83856ab78e1a9091dd8853a6354fd96b2f7ae7947314ef1d5d201`  
		Last Modified: Wed, 27 Sep 2017 05:00:05 GMT  
		Size: 9.8 MB (9821504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4ff3caeed0c4bd8411867fca9844cdf7574f03153195c5eb45ad976f434220`  
		Last Modified: Wed, 27 Sep 2017 05:00:06 GMT  
		Size: 4.2 MB (4210870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadbdb38c8b5d55333db57fa3172a5190e0e4056bc246062c1a1e832fad7cedf`  
		Last Modified: Wed, 27 Sep 2017 05:00:28 GMT  
		Size: 48.1 MB (48065892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ad59f6c54838733cf79810e1547e34ba0573a22d213d9d053f8346d2c109b7`  
		Last Modified: Wed, 27 Sep 2017 05:37:09 GMT  
		Size: 867.6 KB (867649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096d28e01ae570937743c9dafe9cebb564c18222c2b5f02bfa97dae7df24feff`  
		Last Modified: Wed, 27 Sep 2017 05:37:08 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d157469741280f79f5d59ed4c7ac534845ff8e7e2deeb2b3e15bdd611ce715`  
		Last Modified: Wed, 27 Sep 2017 05:37:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7e17032ee7c15ce8b44c551c624435c366e10c6f51b3f87ea538934dff3402`  
		Last Modified: Wed, 27 Sep 2017 05:37:49 GMT  
		Size: 164.9 MB (164932424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3ec5a643285e6622374f11309315aacd31585488c5ff91771af2eda0635a73`  
		Last Modified: Wed, 27 Sep 2017 05:37:10 GMT  
		Size: 272.2 KB (272209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd473ac34fcf8d2e2c2c9d5d8c6d91923f583179b30d1b58cf8315ba8b94dddd`  
		Last Modified: Wed, 27 Sep 2017 07:40:50 GMT  
		Size: 13.8 MB (13811146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18553c17ad406b02741b016da5a9b13ff147afb5751ff50f8e900b9bd561a869`  
		Last Modified: Wed, 27 Sep 2017 07:40:49 GMT  
		Size: 3.3 MB (3341080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2ecdad064d572e81f746decbd4e5a5c78ca0ee5f79d320af188bc9a816983e`  
		Last Modified: Wed, 27 Sep 2017 07:41:04 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-onbuild` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8a84278aeee887e5ffdc9b196ad048b66506abd45e06139519d347ac2714c3b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.5 MB (292501894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:252c600111b8be2cc37473ca6fcddf0ff29f89afd6cdb866f9dd05581111ffbe`
-	Default Command: `["lein","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:07:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:20:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:20:13 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 01:20:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 01:20:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 01:20:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 01:20:18 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 01:20:19 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 01:20:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 01:27:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 01:27:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 12:41:25 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 10 Oct 2017 12:41:26 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 10 Oct 2017 12:41:26 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 12:41:27 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 12:42:11 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 10 Oct 2017 12:42:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 12:42:21 GMT
ENV LEIN_ROOT=1
# Tue, 10 Oct 2017 12:42:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Tue, 10 Oct 2017 12:42:50 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Tue, 10 Oct 2017 12:42:51 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 12:42:52 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 10 Oct 2017 12:42:53 GMT
ONBUILD RUN lein deps
# Tue, 10 Oct 2017 12:42:54 GMT
ONBUILD COPY . /usr/src/app
# Tue, 10 Oct 2017 12:42:54 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fc460f5f7f70833a25c52d6200ced8a4004784a9dc391c6ea4f0bdca6cd51a`  
		Last Modified: Mon, 09 Oct 2017 23:35:03 GMT  
		Size: 48.0 MB (47973994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817e6bf894513e362c7a91204190e30a6057e47fbf58811892d850689c110148`  
		Last Modified: Tue, 10 Oct 2017 02:10:30 GMT  
		Size: 877.4 KB (877428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa01efc0c9ccad41a7a808e5ece80b39f4343666fe98e023b970780ff523af02`  
		Last Modified: Tue, 10 Oct 2017 02:10:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61fcba39e249d16cadb741e545b2914f402a0f1914bbd3132e2ddfa64d66072`  
		Last Modified: Tue, 10 Oct 2017 02:10:28 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e89db9379ff41bac275bf233d9648178158b8e8c0e1dd2f827d8e7bda22bae`  
		Last Modified: Tue, 10 Oct 2017 02:13:37 GMT  
		Size: 168.9 MB (168866096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864ced3055c23d07027e0c555a5a8e6795562212ad2a23709da9365c235cf600`  
		Last Modified: Tue, 10 Oct 2017 02:10:29 GMT  
		Size: 272.1 KB (272093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6dd2fcefe84d749c7acdb955450a3bf37cb4eaa6a7748858024feb89124840`  
		Last Modified: Tue, 10 Oct 2017 12:45:39 GMT  
		Size: 13.8 MB (13807418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bbabbe1d2522c573a1133a64c03ee6be8d0ea2ab248fbb96494e7267ed305d`  
		Last Modified: Tue, 10 Oct 2017 12:45:35 GMT  
		Size: 3.3 MB (3340992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da8fc940cf2ba6afdc4d079d45b3a2726780e071ce833cec67e66a1451e9701`  
		Last Modified: Tue, 10 Oct 2017 12:46:23 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-onbuild` - linux; 386

```console
$ docker pull clojure@sha256:ca0046f804cefbe9f8d5d1855090131baa74202cfc0515cec5464c88e9f875ba
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.0 MB (318021336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a627a6d519f8b00a3c2865c24559d715a5940e31acb2e282addb65a6f2d2809`
-	Default Command: `["lein","run"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:45 GMT
ADD file:402d57d8bc933b07f97c70a7d47950ab9db320f2efcbfe638adc290d1a0c159d in / 
# Fri, 08 Sep 2017 13:19:46 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 13:47:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 13:47:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 13:47:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:03:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:03:02 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 15:03:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 09 Sep 2017 15:03:06 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 09 Sep 2017 15:03:06 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 09 Sep 2017 15:03:06 GMT
ENV JAVA_VERSION=8u141
# Sat, 09 Sep 2017 15:03:07 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Sat, 09 Sep 2017 15:03:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 15:04:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 15:04:24 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 00:04:27 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Wed, 13 Sep 2017 00:04:27 GMT
ENV LEIN_VERSION=2.7.1
# Wed, 13 Sep 2017 00:04:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 13 Sep 2017 00:04:27 GMT
WORKDIR /tmp
# Wed, 13 Sep 2017 00:04:40 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 13 Sep 2017 00:04:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 13 Sep 2017 00:04:41 GMT
ENV LEIN_ROOT=1
# Wed, 13 Sep 2017 00:04:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Wed, 13 Sep 2017 00:04:54 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Wed, 13 Sep 2017 00:04:54 GMT
WORKDIR /usr/src/app
# Wed, 13 Sep 2017 00:04:54 GMT
ONBUILD COPY project.clj /usr/src/app/
# Wed, 13 Sep 2017 00:04:54 GMT
ONBUILD RUN lein deps
# Wed, 13 Sep 2017 00:04:55 GMT
ONBUILD COPY . /usr/src/app
# Wed, 13 Sep 2017 00:04:55 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:38807300bd16de4a00efeffb81570740677ff99a2307929b5335a897a79864df`  
		Last Modified: Fri, 08 Sep 2017 13:27:10 GMT  
		Size: 45.8 MB (45831803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21fb83cbb74ba03aed751c7f087705378edd29e4f1ce07e2716700660707347d`  
		Last Modified: Sat, 09 Sep 2017 14:06:45 GMT  
		Size: 11.1 MB (11146421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989b8d10c2f17ba15be11d9573c111eaf58cea1cf99248ed8d058f55fb7572f0`  
		Last Modified: Sat, 09 Sep 2017 14:06:43 GMT  
		Size: 4.9 MB (4853009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e492673b6687061f8973b79d73308677b8fd7d142bc4bf67739c40f9de7cf1`  
		Last Modified: Sat, 09 Sep 2017 14:07:17 GMT  
		Size: 51.5 MB (51537152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ee7d9a8357e9bc240194f3ce390d301152efd71805ec0de07b5cd3bd9bfe24`  
		Last Modified: Sat, 09 Sep 2017 15:25:45 GMT  
		Size: 899.7 KB (899707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21ef4be25518620c51bd20c29dcb719eb2a3fedb3bcda870fddda94ead5b02a`  
		Last Modified: Sat, 09 Sep 2017 15:25:45 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d3787686474fa9917f6a6e09905255f60c82112bf3377d5d6aed7a480fa187`  
		Last Modified: Sat, 09 Sep 2017 15:25:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2826765055a09c6e9786006cd7b48ce5790b799628ff9ba235295c14815b01`  
		Last Modified: Sat, 09 Sep 2017 15:26:25 GMT  
		Size: 186.3 MB (186328475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad576b57497c00d2a7d0abc85d22fd1f48b71bd68aeb32d1492894d672544e2`  
		Last Modified: Sat, 09 Sep 2017 15:25:45 GMT  
		Size: 272.1 KB (272144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ebcf571cbdab8d81f0e7a34da8a70efd195ca04e4757209b234553ff91e3a8`  
		Last Modified: Wed, 13 Sep 2017 00:07:46 GMT  
		Size: 13.8 MB (13811121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47c5d67dc9f95cd4063a302ee9fa41707e02bf49b95566b0859f2d9a97f9906`  
		Last Modified: Wed, 13 Sep 2017 00:07:45 GMT  
		Size: 3.3 MB (3340994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f665b7cdd10d7594981d333541176123ad9e51754e68c61e56604d53936f7fb6`  
		Last Modified: Wed, 13 Sep 2017 00:08:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-onbuild` - linux; ppc64le

```console
$ docker pull clojure@sha256:1a47d57df306d64e53c9347f39be13e7f3bc4bff026cf89a42f665a517d1a621
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.0 MB (301012513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8302ae4161f4785aa6c7a69c10ba2315fd265f875b472aadd2989646541ade2f`
-	Default Command: `["lein","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:14:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:19:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:14:04 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 03:14:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 03:14:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 03:14:19 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 03:14:21 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 03:14:24 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 03:14:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 03:37:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 03:37:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 10:23:42 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 10 Oct 2017 10:23:44 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 10 Oct 2017 10:23:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 10:23:49 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 10:24:30 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 10 Oct 2017 10:24:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 10:24:34 GMT
ENV LEIN_ROOT=1
# Tue, 10 Oct 2017 10:24:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Tue, 10 Oct 2017 10:24:55 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Tue, 10 Oct 2017 10:25:00 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 10:25:05 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 10 Oct 2017 10:25:08 GMT
ONBUILD RUN lein deps
# Tue, 10 Oct 2017 10:25:12 GMT
ONBUILD COPY . /usr/src/app
# Tue, 10 Oct 2017 10:25:16 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68ed2fe64e9c2dfe79d5d484b75ed9d17ac5941067e9d69cb194ac257feec3a`  
		Last Modified: Tue, 10 Oct 2017 00:58:01 GMT  
		Size: 10.3 MB (10338918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcb4b07bc1d76cd1d3e264929d07b103dc8a16ecba513a1d5a03d3b5d54b919`  
		Last Modified: Tue, 10 Oct 2017 00:58:00 GMT  
		Size: 4.6 MB (4587455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f601576bea3b971a5c48ce185e438f8ef5a459c0af4d71e2a76e2f1614985ff`  
		Last Modified: Tue, 10 Oct 2017 00:58:29 GMT  
		Size: 50.0 MB (50025661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d049c690ec893d6c5bee966eccd42639439f69808bb14e8ab48e8f97effaf4e`  
		Last Modified: Tue, 10 Oct 2017 05:11:22 GMT  
		Size: 886.5 KB (886492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a017aab8d1fa4dcc9e8cc020e1d225a0cb913fd107244b705209f30616b1322`  
		Last Modified: Tue, 10 Oct 2017 05:11:21 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37714e84ae49acce27bb6b3064ddb75aa5f1524c6ee6fc23ebc9d4b2eb00e4e4`  
		Last Modified: Tue, 10 Oct 2017 05:11:22 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e742fe4b5fac456d1f466bfc7c25bbd0df09fab5df0b6127b3794d89fed1bdc`  
		Last Modified: Tue, 10 Oct 2017 05:12:07 GMT  
		Size: 172.4 MB (172374524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092d11158fbab902a752fd00d3a5cc5be658d4a1d79fc406852dde0ba417c60f`  
		Last Modified: Tue, 10 Oct 2017 05:11:21 GMT  
		Size: 272.1 KB (272058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42717530d7d25f6bd7ba6cc1d312622dc52184902a03b6dd1280d43b6c4ca916`  
		Last Modified: Tue, 10 Oct 2017 10:28:46 GMT  
		Size: 13.8 MB (13807441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176f2f720939405612fdf6ce53bdc0135121470c2d739db28f1a8cce0314f21c`  
		Last Modified: Tue, 10 Oct 2017 10:28:44 GMT  
		Size: 3.3 MB (3341055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d859612cd3a0669359a359133d78ea2e7577c6befd2871f2f8ead520b7c63ca`  
		Last Modified: Tue, 10 Oct 2017 10:29:06 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-onbuild` - linux; s390x

```console
$ docker pull clojure@sha256:0c46d853e80e67bad0992318ccebfe744c26f4558fe1a432e7357a0613516f2b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 MB (283236322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c29f932c4d71352c05e5f4cb1e53f2cc279a1df112f33e1e07aa7b1f999db55e`
-	Default Command: `["lein","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:15:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:16:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:51:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:51:15 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:51:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:51:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:51:17 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 22:51:17 GMT
ENV JAVA_VERSION=8u141
# Mon, 09 Oct 2017 22:51:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Mon, 09 Oct 2017 22:51:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 09 Oct 2017 22:52:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 09 Oct 2017 22:52:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 01:43:46 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 10 Oct 2017 01:43:46 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 10 Oct 2017 01:43:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 01:43:46 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 01:44:20 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 10 Oct 2017 01:44:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 01:44:20 GMT
ENV LEIN_ROOT=1
# Tue, 10 Oct 2017 01:44:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Tue, 10 Oct 2017 01:44:49 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Tue, 10 Oct 2017 01:44:49 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 01:44:49 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 10 Oct 2017 01:44:49 GMT
ONBUILD RUN lein deps
# Tue, 10 Oct 2017 01:44:49 GMT
ONBUILD COPY . /usr/src/app
# Tue, 10 Oct 2017 01:44:49 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33b5e0a1749d0366c28b4b88ae0139119ba36640fa31f7ed3d2ec974ae1127b`  
		Last Modified: Mon, 09 Oct 2017 22:21:54 GMT  
		Size: 10.7 MB (10667715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049887af1090e55495d4d3f232c2441d3bb8b420366662539c3bfb829e349496`  
		Last Modified: Mon, 09 Oct 2017 22:21:53 GMT  
		Size: 4.7 MB (4664115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88994e2adeee9dcccd21288a4ca51444bc7374338cac5c49346a4abab141c964`  
		Last Modified: Mon, 09 Oct 2017 22:22:13 GMT  
		Size: 50.4 MB (50441493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f387eea12e61c54ddde7f0a374fdb865a9c7b947726d9059badbe523f1dbb567`  
		Last Modified: Mon, 09 Oct 2017 23:01:11 GMT  
		Size: 903.3 KB (903271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fafc101c48ae99e9e8736b5e5ab83b778b685c0b02b9a7b0c79d0ab02bf7f1f`  
		Last Modified: Mon, 09 Oct 2017 23:01:11 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3186a6b958367bf7bbb9e04ccbf7885b78581f160e7522d7e99ba22a1382295`  
		Last Modified: Mon, 09 Oct 2017 23:01:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7a175b238a1984f8feed86837873789bd27f86f8757cb2c6d5c95d7da8add6`  
		Last Modified: Mon, 09 Oct 2017 23:01:35 GMT  
		Size: 154.2 MB (154165898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deab041fe669c4ae1a41017f90c0740e574dadc67b50d182663706fddaa9fed`  
		Last Modified: Mon, 09 Oct 2017 23:01:12 GMT  
		Size: 272.2 KB (272164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240955fc43fd67ecb3b3b675460e68e86bdee756be7f0270d74eeac771ddc72e`  
		Last Modified: Tue, 10 Oct 2017 01:47:39 GMT  
		Size: 13.8 MB (13807405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f3e21f3a6f335ba5f19db3677c34637129abdf49d2c91c19a0236098d24244`  
		Last Modified: Tue, 10 Oct 2017 01:47:38 GMT  
		Size: 3.3 MB (3340991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac68b7aaa7d981b8bd3e6f33ca495b14b73a309e3448d194072aeda7d1f83d2`  
		Last Modified: Tue, 10 Oct 2017 01:47:56 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:onbuild`

```console
$ docker pull clojure@sha256:e0dd17d11c83925fca0adee815ead782d5035650045829aeb9015cfc22e4eb20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `clojure:onbuild` - linux; amd64

```console
$ docker pull clojure@sha256:82c2c3939086b4f3add6cbfa2d85081de690a3276b1b7fa6ae5d1456aeb04538
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.9 MB (312895124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6220f842dd417747c4e644397c07a9037d52bca299b012cf3e527fd6c8dc478`
-	Default Command: `["lein","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:48:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:49:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:11:01 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 10 Oct 2017 08:11:01 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 10 Oct 2017 08:11:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 08:11:02 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 08:11:10 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 10 Oct 2017 08:11:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 08:11:11 GMT
ENV LEIN_ROOT=1
# Tue, 10 Oct 2017 08:11:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Tue, 10 Oct 2017 08:11:30 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Tue, 10 Oct 2017 08:11:30 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 08:11:30 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 10 Oct 2017 08:11:31 GMT
ONBUILD RUN lein deps
# Tue, 10 Oct 2017 08:11:31 GMT
ONBUILD COPY . /usr/src/app
# Tue, 10 Oct 2017 08:11:31 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77980e5d0a6deb5b982795f18597f7e9ee7f9d08614cbc57528050b2a7977044`  
		Last Modified: Tue, 10 Oct 2017 01:17:05 GMT  
		Size: 892.2 KB (892192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5458607a81d3430c59a97089416a3ef2d8788bdb7eba159b3c2508904d41b996`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cf8338f422c47dc8c752afc2b406bb502e95cd2f74af9e84bff773e72d243`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3da5c56e5c9083605636f83450dfb193a0e46c55185cf98ed1ebac26f339`  
		Last Modified: Tue, 10 Oct 2017 01:17:39 GMT  
		Size: 183.7 MB (183691300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade7a861e3fe26356fa773e1b3f05add01be9ab4c977b711223c15fc30f458e`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d54eea8fb7c04eee51aeb520cf72a1538873b8aefb6faa757dd7b72c7435d58`  
		Last Modified: Tue, 10 Oct 2017 08:14:30 GMT  
		Size: 13.8 MB (13807406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6cb67a4f91b3714d4e8aa7797b11c9d0d3769719790a183fc93e9fe5d1be25`  
		Last Modified: Tue, 10 Oct 2017 08:14:28 GMT  
		Size: 3.3 MB (3340995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3badfd945afc7c2008db1a1b8614c458feb1053672b6a4a177669f36c28cb274`  
		Last Modified: Tue, 10 Oct 2017 08:15:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:onbuild` - linux; arm variant v5

```console
$ docker pull clojure@sha256:4689fc4999d018cb40bce86aa672c9919c5e3075a8fdf1e77b3623416911059e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.4 MB (277373994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e637e2bf912ac96609ab20009548e5259ecb107dc774fd07d5d330a547023e3c`
-	Default Command: `["lein","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:33 GMT
ADD file:faa50a4d3491f148f07964f6b9f9c8e97c0cf64588b20deb10f24e2f4f6c6b87 in / 
# Mon, 09 Oct 2017 21:44:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:18:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:19:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:19:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:10:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 08:10:31 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 08:10:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 08:10:32 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 08:10:33 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 08:10:33 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 08:10:33 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 08:10:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 08:11:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 08:11:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 08:39:26 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 10 Oct 2017 08:39:26 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 10 Oct 2017 08:39:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 08:39:29 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 08:39:42 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 10 Oct 2017 08:39:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 08:39:45 GMT
ENV LEIN_ROOT=1
# Tue, 10 Oct 2017 08:40:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Tue, 10 Oct 2017 08:40:33 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Tue, 10 Oct 2017 08:40:33 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 08:40:33 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 10 Oct 2017 08:40:33 GMT
ONBUILD RUN lein deps
# Tue, 10 Oct 2017 08:40:34 GMT
ONBUILD COPY . /usr/src/app
# Tue, 10 Oct 2017 08:40:36 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:3c60e7fc5441d6c90edac385048cfe55b732e74ac7a95ce0f52555d1fdd4777a`  
		Last Modified: Mon, 09 Oct 2017 21:50:32 GMT  
		Size: 43.8 MB (43815910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c0eb374b4a5889510ab6af5360e74f8471d96bbbb4b1585f37be4fbda09d06c`  
		Last Modified: Mon, 09 Oct 2017 22:26:12 GMT  
		Size: 10.2 MB (10205119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f713ec73030eef0749d2b44c7fce2fabd4c3a5ea319b731b4a5bb22fff47d244`  
		Last Modified: Mon, 09 Oct 2017 22:26:10 GMT  
		Size: 4.5 MB (4450769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928b1607d21d7f38bc3d880c6604d185f09b8932387d93d11ffebcc62a692bb7`  
		Last Modified: Mon, 09 Oct 2017 22:26:36 GMT  
		Size: 48.2 MB (48225718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e810e0cb21607f51deaec0b47b2092240ffeb34284b114756ece80e7271c261`  
		Last Modified: Tue, 10 Oct 2017 08:19:54 GMT  
		Size: 884.5 KB (884469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3b78f2745d23c12af2bef0ab8962405410237c3eb4b792f15b583774f89cc1`  
		Last Modified: Tue, 10 Oct 2017 08:19:55 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2bb2204857cc43f2585925fe67881ec886c3581647451b6f8f301e118863c0a`  
		Last Modified: Tue, 10 Oct 2017 08:19:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9871b9608c110715cfff54ae888fdec46d037b49c5787db588a34691179e58bc`  
		Last Modified: Tue, 10 Oct 2017 08:20:32 GMT  
		Size: 152.4 MB (152370743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf427f07eaca9c816b1d9af32319f0319febad3ae8f7e72b375e26f8c9eee066`  
		Last Modified: Tue, 10 Oct 2017 08:19:54 GMT  
		Size: 272.2 KB (272199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443c95cee868d8071211a597fc61856cd37c71e76c4db7d5b0e426a41fd65b57`  
		Last Modified: Tue, 10 Oct 2017 08:44:41 GMT  
		Size: 13.8 MB (13807437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bd4dd15d54a45e9ac408106dbf893559c64585f3559344db0d7b46ab2f408f`  
		Last Modified: Tue, 10 Oct 2017 08:44:40 GMT  
		Size: 3.3 MB (3341088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32b3018bbeeeee3e8774d82343ffc4229b416ac5876f669c077386705a1a9e2`  
		Last Modified: Tue, 10 Oct 2017 08:44:54 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:onbuild` - linux; arm variant v7

```console
$ docker pull clojure@sha256:4786a3b859f1d0f365fdc93a03607dafbd9e8993d40585b9ec747867922b9e34
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.2 MB (287169873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c93767bd7f4f9750a1b77087a55a574d07eae36cf169bcc4a0bcbf9cb3eadf2`
-	Default Command: `["lein","run"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:38 GMT
ADD file:8ee5b45f171806d53c0b75acea33963e2387b8dce889faec31a19f69edc1adb4 in / 
# Wed, 27 Sep 2017 04:14:38 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:45:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:45:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 04:45:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:22:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:22:22 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 05:22:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Sep 2017 05:22:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Sep 2017 05:22:24 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Sep 2017 05:22:24 GMT
ENV JAVA_VERSION=8u141
# Wed, 27 Sep 2017 05:22:25 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 27 Sep 2017 05:22:25 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Sep 2017 05:23:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Sep 2017 05:23:36 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Sep 2017 07:35:49 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Wed, 27 Sep 2017 07:35:50 GMT
ENV LEIN_VERSION=2.7.1
# Wed, 27 Sep 2017 07:35:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 27 Sep 2017 07:35:50 GMT
WORKDIR /tmp
# Wed, 27 Sep 2017 07:36:00 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 27 Sep 2017 07:36:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 27 Sep 2017 07:36:01 GMT
ENV LEIN_ROOT=1
# Wed, 27 Sep 2017 07:36:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Wed, 27 Sep 2017 07:36:49 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Wed, 27 Sep 2017 07:36:51 GMT
WORKDIR /usr/src/app
# Wed, 27 Sep 2017 07:36:53 GMT
ONBUILD COPY project.clj /usr/src/app/
# Wed, 27 Sep 2017 07:36:55 GMT
ONBUILD RUN lein deps
# Wed, 27 Sep 2017 07:36:58 GMT
ONBUILD COPY . /usr/src/app
# Wed, 27 Sep 2017 07:37:00 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:d0e027c48353ee136b77f334ed39630b92f19fc4ef9fa26db6c744e8b577bade`  
		Last Modified: Wed, 27 Sep 2017 04:20:26 GMT  
		Size: 41.8 MB (41846555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35ae0119cb83856ab78e1a9091dd8853a6354fd96b2f7ae7947314ef1d5d201`  
		Last Modified: Wed, 27 Sep 2017 05:00:05 GMT  
		Size: 9.8 MB (9821504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4ff3caeed0c4bd8411867fca9844cdf7574f03153195c5eb45ad976f434220`  
		Last Modified: Wed, 27 Sep 2017 05:00:06 GMT  
		Size: 4.2 MB (4210870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadbdb38c8b5d55333db57fa3172a5190e0e4056bc246062c1a1e832fad7cedf`  
		Last Modified: Wed, 27 Sep 2017 05:00:28 GMT  
		Size: 48.1 MB (48065892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ad59f6c54838733cf79810e1547e34ba0573a22d213d9d053f8346d2c109b7`  
		Last Modified: Wed, 27 Sep 2017 05:37:09 GMT  
		Size: 867.6 KB (867649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096d28e01ae570937743c9dafe9cebb564c18222c2b5f02bfa97dae7df24feff`  
		Last Modified: Wed, 27 Sep 2017 05:37:08 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d157469741280f79f5d59ed4c7ac534845ff8e7e2deeb2b3e15bdd611ce715`  
		Last Modified: Wed, 27 Sep 2017 05:37:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7e17032ee7c15ce8b44c551c624435c366e10c6f51b3f87ea538934dff3402`  
		Last Modified: Wed, 27 Sep 2017 05:37:49 GMT  
		Size: 164.9 MB (164932424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3ec5a643285e6622374f11309315aacd31585488c5ff91771af2eda0635a73`  
		Last Modified: Wed, 27 Sep 2017 05:37:10 GMT  
		Size: 272.2 KB (272209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd473ac34fcf8d2e2c2c9d5d8c6d91923f583179b30d1b58cf8315ba8b94dddd`  
		Last Modified: Wed, 27 Sep 2017 07:40:50 GMT  
		Size: 13.8 MB (13811146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18553c17ad406b02741b016da5a9b13ff147afb5751ff50f8e900b9bd561a869`  
		Last Modified: Wed, 27 Sep 2017 07:40:49 GMT  
		Size: 3.3 MB (3341080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2ecdad064d572e81f746decbd4e5a5c78ca0ee5f79d320af188bc9a816983e`  
		Last Modified: Wed, 27 Sep 2017 07:41:04 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:onbuild` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8a84278aeee887e5ffdc9b196ad048b66506abd45e06139519d347ac2714c3b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.5 MB (292501894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:252c600111b8be2cc37473ca6fcddf0ff29f89afd6cdb866f9dd05581111ffbe`
-	Default Command: `["lein","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:07:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:20:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:20:13 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 01:20:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 01:20:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 01:20:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 01:20:18 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 01:20:19 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 01:20:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 01:27:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 01:27:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 12:41:25 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 10 Oct 2017 12:41:26 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 10 Oct 2017 12:41:26 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 12:41:27 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 12:42:11 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 10 Oct 2017 12:42:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 12:42:21 GMT
ENV LEIN_ROOT=1
# Tue, 10 Oct 2017 12:42:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Tue, 10 Oct 2017 12:42:50 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Tue, 10 Oct 2017 12:42:51 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 12:42:52 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 10 Oct 2017 12:42:53 GMT
ONBUILD RUN lein deps
# Tue, 10 Oct 2017 12:42:54 GMT
ONBUILD COPY . /usr/src/app
# Tue, 10 Oct 2017 12:42:54 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7589dd246446eb7fba574b55eeb0810199cb0a935b7d349b8a930f23af9b13`  
		Last Modified: Mon, 09 Oct 2017 23:34:08 GMT  
		Size: 10.1 MB (10066395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5f5555283659c080227d6cf1bace5def3d5c3e6d742746e51494849fb4aeb3`  
		Last Modified: Mon, 09 Oct 2017 23:34:05 GMT  
		Size: 4.4 MB (4385243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fc460f5f7f70833a25c52d6200ced8a4004784a9dc391c6ea4f0bdca6cd51a`  
		Last Modified: Mon, 09 Oct 2017 23:35:03 GMT  
		Size: 48.0 MB (47973994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817e6bf894513e362c7a91204190e30a6057e47fbf58811892d850689c110148`  
		Last Modified: Tue, 10 Oct 2017 02:10:30 GMT  
		Size: 877.4 KB (877428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa01efc0c9ccad41a7a808e5ece80b39f4343666fe98e023b970780ff523af02`  
		Last Modified: Tue, 10 Oct 2017 02:10:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61fcba39e249d16cadb741e545b2914f402a0f1914bbd3132e2ddfa64d66072`  
		Last Modified: Tue, 10 Oct 2017 02:10:28 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e89db9379ff41bac275bf233d9648178158b8e8c0e1dd2f827d8e7bda22bae`  
		Last Modified: Tue, 10 Oct 2017 02:13:37 GMT  
		Size: 168.9 MB (168866096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864ced3055c23d07027e0c555a5a8e6795562212ad2a23709da9365c235cf600`  
		Last Modified: Tue, 10 Oct 2017 02:10:29 GMT  
		Size: 272.1 KB (272093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6dd2fcefe84d749c7acdb955450a3bf37cb4eaa6a7748858024feb89124840`  
		Last Modified: Tue, 10 Oct 2017 12:45:39 GMT  
		Size: 13.8 MB (13807418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bbabbe1d2522c573a1133a64c03ee6be8d0ea2ab248fbb96494e7267ed305d`  
		Last Modified: Tue, 10 Oct 2017 12:45:35 GMT  
		Size: 3.3 MB (3340992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da8fc940cf2ba6afdc4d079d45b3a2726780e071ce833cec67e66a1451e9701`  
		Last Modified: Tue, 10 Oct 2017 12:46:23 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:onbuild` - linux; 386

```console
$ docker pull clojure@sha256:ca0046f804cefbe9f8d5d1855090131baa74202cfc0515cec5464c88e9f875ba
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.0 MB (318021336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a627a6d519f8b00a3c2865c24559d715a5940e31acb2e282addb65a6f2d2809`
-	Default Command: `["lein","run"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:45 GMT
ADD file:402d57d8bc933b07f97c70a7d47950ab9db320f2efcbfe638adc290d1a0c159d in / 
# Fri, 08 Sep 2017 13:19:46 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 13:47:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 13:47:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 13:47:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:03:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 15:03:02 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 15:03:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 09 Sep 2017 15:03:06 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 09 Sep 2017 15:03:06 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 09 Sep 2017 15:03:06 GMT
ENV JAVA_VERSION=8u141
# Sat, 09 Sep 2017 15:03:07 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Sat, 09 Sep 2017 15:03:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 15:04:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 15:04:24 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Sep 2017 00:04:27 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Wed, 13 Sep 2017 00:04:27 GMT
ENV LEIN_VERSION=2.7.1
# Wed, 13 Sep 2017 00:04:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 13 Sep 2017 00:04:27 GMT
WORKDIR /tmp
# Wed, 13 Sep 2017 00:04:40 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 13 Sep 2017 00:04:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 13 Sep 2017 00:04:41 GMT
ENV LEIN_ROOT=1
# Wed, 13 Sep 2017 00:04:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Wed, 13 Sep 2017 00:04:54 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Wed, 13 Sep 2017 00:04:54 GMT
WORKDIR /usr/src/app
# Wed, 13 Sep 2017 00:04:54 GMT
ONBUILD COPY project.clj /usr/src/app/
# Wed, 13 Sep 2017 00:04:54 GMT
ONBUILD RUN lein deps
# Wed, 13 Sep 2017 00:04:55 GMT
ONBUILD COPY . /usr/src/app
# Wed, 13 Sep 2017 00:04:55 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:38807300bd16de4a00efeffb81570740677ff99a2307929b5335a897a79864df`  
		Last Modified: Fri, 08 Sep 2017 13:27:10 GMT  
		Size: 45.8 MB (45831803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21fb83cbb74ba03aed751c7f087705378edd29e4f1ce07e2716700660707347d`  
		Last Modified: Sat, 09 Sep 2017 14:06:45 GMT  
		Size: 11.1 MB (11146421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989b8d10c2f17ba15be11d9573c111eaf58cea1cf99248ed8d058f55fb7572f0`  
		Last Modified: Sat, 09 Sep 2017 14:06:43 GMT  
		Size: 4.9 MB (4853009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e492673b6687061f8973b79d73308677b8fd7d142bc4bf67739c40f9de7cf1`  
		Last Modified: Sat, 09 Sep 2017 14:07:17 GMT  
		Size: 51.5 MB (51537152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ee7d9a8357e9bc240194f3ce390d301152efd71805ec0de07b5cd3bd9bfe24`  
		Last Modified: Sat, 09 Sep 2017 15:25:45 GMT  
		Size: 899.7 KB (899707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21ef4be25518620c51bd20c29dcb719eb2a3fedb3bcda870fddda94ead5b02a`  
		Last Modified: Sat, 09 Sep 2017 15:25:45 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d3787686474fa9917f6a6e09905255f60c82112bf3377d5d6aed7a480fa187`  
		Last Modified: Sat, 09 Sep 2017 15:25:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2826765055a09c6e9786006cd7b48ce5790b799628ff9ba235295c14815b01`  
		Last Modified: Sat, 09 Sep 2017 15:26:25 GMT  
		Size: 186.3 MB (186328475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad576b57497c00d2a7d0abc85d22fd1f48b71bd68aeb32d1492894d672544e2`  
		Last Modified: Sat, 09 Sep 2017 15:25:45 GMT  
		Size: 272.1 KB (272144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ebcf571cbdab8d81f0e7a34da8a70efd195ca04e4757209b234553ff91e3a8`  
		Last Modified: Wed, 13 Sep 2017 00:07:46 GMT  
		Size: 13.8 MB (13811121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47c5d67dc9f95cd4063a302ee9fa41707e02bf49b95566b0859f2d9a97f9906`  
		Last Modified: Wed, 13 Sep 2017 00:07:45 GMT  
		Size: 3.3 MB (3340994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f665b7cdd10d7594981d333541176123ad9e51754e68c61e56604d53936f7fb6`  
		Last Modified: Wed, 13 Sep 2017 00:08:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:onbuild` - linux; ppc64le

```console
$ docker pull clojure@sha256:1a47d57df306d64e53c9347f39be13e7f3bc4bff026cf89a42f665a517d1a621
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.0 MB (301012513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8302ae4161f4785aa6c7a69c10ba2315fd265f875b472aadd2989646541ade2f`
-	Default Command: `["lein","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:14:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:19:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:14:04 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 03:14:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 03:14:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 03:14:19 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 03:14:21 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 03:14:24 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 03:14:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 03:37:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 03:37:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 10:23:42 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 10 Oct 2017 10:23:44 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 10 Oct 2017 10:23:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 10:23:49 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 10:24:30 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 10 Oct 2017 10:24:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 10:24:34 GMT
ENV LEIN_ROOT=1
# Tue, 10 Oct 2017 10:24:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Tue, 10 Oct 2017 10:24:55 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Tue, 10 Oct 2017 10:25:00 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 10:25:05 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 10 Oct 2017 10:25:08 GMT
ONBUILD RUN lein deps
# Tue, 10 Oct 2017 10:25:12 GMT
ONBUILD COPY . /usr/src/app
# Tue, 10 Oct 2017 10:25:16 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68ed2fe64e9c2dfe79d5d484b75ed9d17ac5941067e9d69cb194ac257feec3a`  
		Last Modified: Tue, 10 Oct 2017 00:58:01 GMT  
		Size: 10.3 MB (10338918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcb4b07bc1d76cd1d3e264929d07b103dc8a16ecba513a1d5a03d3b5d54b919`  
		Last Modified: Tue, 10 Oct 2017 00:58:00 GMT  
		Size: 4.6 MB (4587455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f601576bea3b971a5c48ce185e438f8ef5a459c0af4d71e2a76e2f1614985ff`  
		Last Modified: Tue, 10 Oct 2017 00:58:29 GMT  
		Size: 50.0 MB (50025661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d049c690ec893d6c5bee966eccd42639439f69808bb14e8ab48e8f97effaf4e`  
		Last Modified: Tue, 10 Oct 2017 05:11:22 GMT  
		Size: 886.5 KB (886492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a017aab8d1fa4dcc9e8cc020e1d225a0cb913fd107244b705209f30616b1322`  
		Last Modified: Tue, 10 Oct 2017 05:11:21 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37714e84ae49acce27bb6b3064ddb75aa5f1524c6ee6fc23ebc9d4b2eb00e4e4`  
		Last Modified: Tue, 10 Oct 2017 05:11:22 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e742fe4b5fac456d1f466bfc7c25bbd0df09fab5df0b6127b3794d89fed1bdc`  
		Last Modified: Tue, 10 Oct 2017 05:12:07 GMT  
		Size: 172.4 MB (172374524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092d11158fbab902a752fd00d3a5cc5be658d4a1d79fc406852dde0ba417c60f`  
		Last Modified: Tue, 10 Oct 2017 05:11:21 GMT  
		Size: 272.1 KB (272058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42717530d7d25f6bd7ba6cc1d312622dc52184902a03b6dd1280d43b6c4ca916`  
		Last Modified: Tue, 10 Oct 2017 10:28:46 GMT  
		Size: 13.8 MB (13807441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176f2f720939405612fdf6ce53bdc0135121470c2d739db28f1a8cce0314f21c`  
		Last Modified: Tue, 10 Oct 2017 10:28:44 GMT  
		Size: 3.3 MB (3341055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d859612cd3a0669359a359133d78ea2e7577c6befd2871f2f8ead520b7c63ca`  
		Last Modified: Tue, 10 Oct 2017 10:29:06 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:onbuild` - linux; s390x

```console
$ docker pull clojure@sha256:0c46d853e80e67bad0992318ccebfe744c26f4558fe1a432e7357a0613516f2b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 MB (283236322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c29f932c4d71352c05e5f4cb1e53f2cc279a1df112f33e1e07aa7b1f999db55e`
-	Default Command: `["lein","run"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:15:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:15:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:16:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:51:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:51:15 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:51:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:51:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:51:17 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 22:51:17 GMT
ENV JAVA_VERSION=8u141
# Mon, 09 Oct 2017 22:51:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Mon, 09 Oct 2017 22:51:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 09 Oct 2017 22:52:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 09 Oct 2017 22:52:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 01:43:46 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 10 Oct 2017 01:43:46 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 10 Oct 2017 01:43:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Oct 2017 01:43:46 GMT
WORKDIR /tmp
# Tue, 10 Oct 2017 01:44:20 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 10 Oct 2017 01:44:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Oct 2017 01:44:20 GMT
ENV LEIN_ROOT=1
# Tue, 10 Oct 2017 01:44:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Tue, 10 Oct 2017 01:44:49 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Tue, 10 Oct 2017 01:44:49 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 01:44:49 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 10 Oct 2017 01:44:49 GMT
ONBUILD RUN lein deps
# Tue, 10 Oct 2017 01:44:49 GMT
ONBUILD COPY . /usr/src/app
# Tue, 10 Oct 2017 01:44:49 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33b5e0a1749d0366c28b4b88ae0139119ba36640fa31f7ed3d2ec974ae1127b`  
		Last Modified: Mon, 09 Oct 2017 22:21:54 GMT  
		Size: 10.7 MB (10667715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049887af1090e55495d4d3f232c2441d3bb8b420366662539c3bfb829e349496`  
		Last Modified: Mon, 09 Oct 2017 22:21:53 GMT  
		Size: 4.7 MB (4664115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88994e2adeee9dcccd21288a4ca51444bc7374338cac5c49346a4abab141c964`  
		Last Modified: Mon, 09 Oct 2017 22:22:13 GMT  
		Size: 50.4 MB (50441493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f387eea12e61c54ddde7f0a374fdb865a9c7b947726d9059badbe523f1dbb567`  
		Last Modified: Mon, 09 Oct 2017 23:01:11 GMT  
		Size: 903.3 KB (903271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fafc101c48ae99e9e8736b5e5ab83b778b685c0b02b9a7b0c79d0ab02bf7f1f`  
		Last Modified: Mon, 09 Oct 2017 23:01:11 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3186a6b958367bf7bbb9e04ccbf7885b78581f160e7522d7e99ba22a1382295`  
		Last Modified: Mon, 09 Oct 2017 23:01:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7a175b238a1984f8feed86837873789bd27f86f8757cb2c6d5c95d7da8add6`  
		Last Modified: Mon, 09 Oct 2017 23:01:35 GMT  
		Size: 154.2 MB (154165898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deab041fe669c4ae1a41017f90c0740e574dadc67b50d182663706fddaa9fed`  
		Last Modified: Mon, 09 Oct 2017 23:01:12 GMT  
		Size: 272.2 KB (272164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240955fc43fd67ecb3b3b675460e68e86bdee756be7f0270d74eeac771ddc72e`  
		Last Modified: Tue, 10 Oct 2017 01:47:39 GMT  
		Size: 13.8 MB (13807405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f3e21f3a6f335ba5f19db3677c34637129abdf49d2c91c19a0236098d24244`  
		Last Modified: Tue, 10 Oct 2017 01:47:38 GMT  
		Size: 3.3 MB (3340991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac68b7aaa7d981b8bd3e6f33ca495b14b73a309e3448d194072aeda7d1f83d2`  
		Last Modified: Tue, 10 Oct 2017 01:47:56 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
