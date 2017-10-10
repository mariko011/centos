## `clojure:lein`

```console
$ docker pull clojure@sha256:149e7f7ab120b5437e22f0fabe744367d82b7e35067cb3440336bbc3e05ec0d0
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
$ docker pull clojure@sha256:b64af16131cf0b84ef65efcb3ea60b13aab3d52953fcff9d7a0bbff6ab480651
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.2 MB (279210970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1282dc5cbccb1de93b697879dce81af82fe1633acb94a3af016e9610cdf9dc4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 14:26:13 GMT
ADD file:111ccf88fc474ec03491c012baa75d4f4b3b6d08391bb86364b9fabdf3b57d3e in / 
# Wed, 27 Sep 2017 14:26:13 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 14:53:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 14:53:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 14:53:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 15:18:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 15:18:25 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 15:18:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Sep 2017 15:18:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Sep 2017 15:18:27 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Sep 2017 15:18:27 GMT
ENV JAVA_VERSION=8u141
# Wed, 27 Sep 2017 15:18:27 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 27 Sep 2017 15:18:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Sep 2017 15:19:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Sep 2017 15:19:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Sep 2017 16:04:53 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Wed, 27 Sep 2017 16:04:54 GMT
ENV LEIN_VERSION=2.7.1
# Wed, 27 Sep 2017 16:04:54 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 27 Sep 2017 16:04:54 GMT
WORKDIR /tmp
# Wed, 27 Sep 2017 16:05:02 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Wed, 27 Sep 2017 16:05:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 27 Sep 2017 16:05:03 GMT
ENV LEIN_ROOT=1
# Wed, 27 Sep 2017 16:05:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:ec26d49abcad5bd85bc79fcb9d95e4eeb09e21e9759bbbe4229ef9a39f88c6b8`  
		Last Modified: Wed, 27 Sep 2017 14:31:19 GMT  
		Size: 43.8 MB (43813593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c3de8383501dec27f7ba7879836ff8251f59b21d5dbfef9185768d139778c7`  
		Last Modified: Wed, 27 Sep 2017 15:04:58 GMT  
		Size: 10.2 MB (10201423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf1d369a2e9d7203bd26ddc36279bddd26c6eaba7565a5a4891b1e654bfeb28`  
		Last Modified: Wed, 27 Sep 2017 15:04:56 GMT  
		Size: 4.5 MB (4450668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e87f23d497fb186ccb5a22de838e3694de0c73a7c0cb05459d43c643864247`  
		Last Modified: Wed, 27 Sep 2017 15:05:20 GMT  
		Size: 50.1 MB (50070722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dbedb6c051beda28d6e3b6aff430de67e23db3b3aa2a76791498e3eeca4717`  
		Last Modified: Wed, 27 Sep 2017 15:32:01 GMT  
		Size: 884.4 KB (884385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6bd0522b768a2c20c7a3aa8b4188538ac827de24ecdd69a25af1294f1bf793`  
		Last Modified: Wed, 27 Sep 2017 15:32:01 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a322fe98df4e3cb5605ae9bf6d13ccbbed8797cdd700bf30f3611101b1907a`  
		Last Modified: Wed, 27 Sep 2017 15:32:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b427c9b2353922d0723bbda3c223edec36207c5f3f23dc51808e7bd864af2b74`  
		Last Modified: Wed, 27 Sep 2017 15:32:41 GMT  
		Size: 152.4 MB (152365365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba81b8974faa540fedd0b41413644694e135298c75405db45e4859e588917fe2`  
		Last Modified: Wed, 27 Sep 2017 15:32:01 GMT  
		Size: 272.2 KB (272194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02550d758b87c32ae4fa87fab554c50647e4e420fb7b619e9675ba39589eea59`  
		Last Modified: Wed, 27 Sep 2017 16:09:18 GMT  
		Size: 13.8 MB (13811157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0098202669ab37111d129ca7538a603a1bc6edfc1889ac5eca7b33da58e75a8f`  
		Last Modified: Wed, 27 Sep 2017 16:09:16 GMT  
		Size: 3.3 MB (3341084 bytes)  
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
$ docker pull clojure@sha256:6af519868330f544737b632fbcf11f33fe6653513025dada121ccacecfe0bd8f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.5 MB (292485181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed5ea7ae16b11d8bfec9bc6d4bbc470b679898ec0c85301e4081de2258f646f1`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:55:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:56:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 18:57:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 22:38:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 22:38:31 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 22:38:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 22:38:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 22:38:37 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 22:38:38 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 22:38:39 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 22:38:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 22:44:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 22:44:57 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 15 Sep 2017 01:17:21 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Fri, 15 Sep 2017 01:17:21 GMT
ENV LEIN_VERSION=2.7.1
# Fri, 15 Sep 2017 01:17:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 15 Sep 2017 01:17:23 GMT
WORKDIR /tmp
# Fri, 15 Sep 2017 16:29:52 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Fri, 15 Sep 2017 16:29:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 15 Sep 2017 16:29:58 GMT
ENV LEIN_ROOT=1
# Fri, 15 Sep 2017 16:30:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d11e594b074d73f2d3ee7cf550bc6c7c5bc0008d82374c82f85a4ee8d2a2bb`  
		Last Modified: Fri, 08 Sep 2017 22:27:11 GMT  
		Size: 10.1 MB (10064125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75742bc16f7129d92793bf71935c37e07413270822f666b69d65783bf1efb70`  
		Last Modified: Fri, 08 Sep 2017 22:27:09 GMT  
		Size: 4.4 MB (4385689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79619b70eb3b6fb67bf7c9179584d46f005e854de252c2fb150b3a47037d4a6a`  
		Last Modified: Fri, 08 Sep 2017 22:27:29 GMT  
		Size: 48.0 MB (47972928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86810aa3db4d1413183eb4bb9049b9e61f0b68e9e00ee6dc7fdf294ee7d7782`  
		Last Modified: Thu, 14 Sep 2017 23:08:05 GMT  
		Size: 877.3 KB (877294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15cc0804628a2c0f115df4f164fedfcf948773c2eeeaec6ee2972af422ad90d`  
		Last Modified: Thu, 14 Sep 2017 23:08:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1529a5d843067a9676cb0826c97aa53baec28f7a95d10ea5eca266bec38001d`  
		Last Modified: Thu, 14 Sep 2017 23:08:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cebfe4b2e23b8c03b4c75d28fb598b458f9566b028f065bb657bd7515f5f55`  
		Last Modified: Thu, 14 Sep 2017 23:08:55 GMT  
		Size: 168.9 MB (168856434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdca121c3c762332a3ff76ae4d85acd3adff9fd4174a9f3f1c01c6a9c5cd76e1`  
		Last Modified: Thu, 14 Sep 2017 23:08:04 GMT  
		Size: 272.1 KB (272144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e990e589ee77d5cf161128b3f18e2924552d83ff2b3ebab5e04e9446ac496f1f`  
		Last Modified: Fri, 15 Sep 2017 16:30:49 GMT  
		Size: 13.8 MB (13811133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61fb2e3f254290632664ee0dd020a991d5451af42ff0892122fc86b792dc0cae`  
		Last Modified: Fri, 15 Sep 2017 16:30:47 GMT  
		Size: 3.3 MB (3340977 bytes)  
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
$ docker pull clojure@sha256:782a189d74fbe83c28abf2baaf09d0a3bb2a714bb876d767b920b040cbf28a9f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.0 MB (301009522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31ababdd9c8bafa4c0db8e355ec8601d6c714c68004a43f0864af95591a1836c`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:09 GMT
ADD file:dcb3d4c61a7bf218af93e213165a66227776bbbf5a29daf22d6bf27b0925f97a in / 
# Fri, 08 Sep 2017 00:34:09 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 00:50:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 00:50:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 00:50:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 00:51:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 00:51:32 GMT
ENV LANG=C.UTF-8
# Fri, 15 Sep 2017 00:51:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 15 Sep 2017 00:51:44 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 15 Sep 2017 00:51:47 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 15 Sep 2017 00:51:49 GMT
ENV JAVA_VERSION=8u141
# Fri, 15 Sep 2017 00:51:51 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 15 Sep 2017 00:51:53 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 15 Sep 2017 01:06:04 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 15 Sep 2017 01:06:25 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 15 Sep 2017 02:58:43 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Fri, 15 Sep 2017 02:58:54 GMT
ENV LEIN_VERSION=2.7.1
# Fri, 15 Sep 2017 02:58:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 15 Sep 2017 02:59:01 GMT
WORKDIR /tmp
# Fri, 15 Sep 2017 16:28:36 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Fri, 15 Sep 2017 16:28:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 15 Sep 2017 16:28:43 GMT
ENV LEIN_ROOT=1
# Fri, 15 Sep 2017 16:28:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
```

-	Layers:
	-	`sha256:97a7e851b7e2e26b94781e2f2bd23043fa46c09b45f0944d9ee2dfd81fa79762`  
		Last Modified: Fri, 08 Sep 2017 00:40:54 GMT  
		Size: 45.4 MB (45376722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8023675c5e9ce36b2e8f22aa583f4048c79f85acd5bb46eafb4238ad6fb5ab01`  
		Last Modified: Thu, 14 Sep 2017 22:24:50 GMT  
		Size: 10.3 MB (10336273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3d63d328170af6f0891c6bd9981c8e320ded44c0fc69539f39a8a39da351a4`  
		Last Modified: Thu, 14 Sep 2017 22:24:50 GMT  
		Size: 4.6 MB (4587222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a04b1bba6cfd2540466516486980293079cc5269a15223da5184073ec277b5`  
		Last Modified: Thu, 14 Sep 2017 22:25:22 GMT  
		Size: 50.0 MB (50023657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daa8f4b584d8458d7410d9fe9df4b32d9935ac098fb2f13b9de878cef50058a`  
		Last Modified: Fri, 15 Sep 2017 01:44:58 GMT  
		Size: 885.5 KB (885496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b42aff0a22f588bd7a38c409bcfe157db17fcc21aa43a7fc8152cca2fa5a8b`  
		Last Modified: Fri, 15 Sep 2017 01:44:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e09eaec52f1e376ad5fa179b3bd02f6d1f3ddbed6c0bf11eeebfea21bff6504d`  
		Last Modified: Fri, 15 Sep 2017 01:44:58 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff689292765d43b9498f7a910e7c46e3c2b14b5bbee2cd7e453edb840fcb3e56`  
		Last Modified: Fri, 15 Sep 2017 01:45:42 GMT  
		Size: 172.4 MB (172375458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901472014df342c5bfb8319e0e8ef20938266a973ed87f010dbaf2caac3f67c8`  
		Last Modified: Fri, 15 Sep 2017 01:44:58 GMT  
		Size: 272.1 KB (272084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05277b70c4b11647e1ba8381b302f8d5a08cf55f96c092ad81d0e8e726af07e6`  
		Last Modified: Fri, 15 Sep 2017 16:29:43 GMT  
		Size: 13.8 MB (13811164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8fc9419860120ab8d44725894d09712e20aed3b4081af143b5899be65e09f7`  
		Last Modified: Fri, 15 Sep 2017 16:29:42 GMT  
		Size: 3.3 MB (3341065 bytes)  
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
