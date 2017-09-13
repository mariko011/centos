## `clojure:lein-onbuild`

```console
$ docker pull clojure@sha256:7feb36e6ae1fa235ec17cf06b848c132ada7183760a523100e134e3fcc3f1003
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `clojure:lein-onbuild` - linux; amd64

```console
$ docker pull clojure@sha256:c561c178a7075a8aed4f52056cf29847576d2fbbfd0c5943bfec886933f36e56
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.4 MB (312429930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:081acc8a3e5007744be8ff5001566fa6b2bd0ec6b20838121b16cfda97a9629d`
-	Default Command: `["lein","run"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:30:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:55:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:55:13 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:55:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:55:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:55:15 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 08:55:16 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:55:16 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:55:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 08 Sep 2017 08:56:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 08:56:28 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 02:56:19 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Mon, 11 Sep 2017 02:56:19 GMT
ENV LEIN_VERSION=2.7.1
# Mon, 11 Sep 2017 02:56:19 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Mon, 11 Sep 2017 02:56:20 GMT
WORKDIR /tmp
# Mon, 11 Sep 2017 02:57:22 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Mon, 11 Sep 2017 02:57:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Mon, 11 Sep 2017 02:57:22 GMT
ENV LEIN_ROOT=1
# Mon, 11 Sep 2017 02:57:26 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Mon, 11 Sep 2017 02:57:32 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Mon, 11 Sep 2017 02:57:32 GMT
WORKDIR /usr/src/app
# Mon, 11 Sep 2017 02:57:33 GMT
ONBUILD COPY project.clj /usr/src/app/
# Mon, 11 Sep 2017 02:57:33 GMT
ONBUILD RUN lein deps
# Mon, 11 Sep 2017 02:57:33 GMT
ONBUILD COPY . /usr/src/app
# Mon, 11 Sep 2017 02:57:34 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44dc7c129fe363ccac06134040592ae57125218629e5b7913aaef7e0c63e3db`  
		Last Modified: Thu, 07 Sep 2017 23:56:57 GMT  
		Size: 50.0 MB (50015366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34a55a78629d1810896a463ad235a043bfb76771657326e7f12a5d6b5462711`  
		Last Modified: Sat, 09 Sep 2017 00:34:34 GMT  
		Size: 661.9 KB (661916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0608417860f2fbf351f5691f518ecedd1b5e0fbc6a09ff9df6fc4e9cbe1d617`  
		Last Modified: Sat, 09 Sep 2017 00:34:33 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ffb0683f1a94850d234bc16a57845dbbb8096706ac2f498cfa6227b5d34c88`  
		Last Modified: Sat, 09 Sep 2017 00:34:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ab86bd63bcf0ac2f592a1ea2e581af4508a5097bdfdde4a148d9c8ce57fbdf`  
		Last Modified: Sat, 09 Sep 2017 00:35:14 GMT  
		Size: 183.7 MB (183688010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e8d28e95f8e809aafb72c4c445a45bb7f3d1f388754776e7e3abc9cd144048`  
		Last Modified: Sat, 09 Sep 2017 00:34:34 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e68f71e4bc24e76abc2b1691e4b27bd9e0e009ae8461dabf558bdc9ae0c9ac6`  
		Last Modified: Mon, 11 Sep 2017 02:59:11 GMT  
		Size: 13.8 MB (13811089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d28a83fe29d0536d7c3b5140ae8a81061077bf76e680872534cfedbb934d4b`  
		Last Modified: Mon, 11 Sep 2017 02:59:10 GMT  
		Size: 3.3 MB (3340991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616f0128f156b84dc6ead5f486f0f3975b727b5e9607cb3b86a7a58432ec125d`  
		Last Modified: Mon, 11 Sep 2017 02:59:45 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-onbuild` - linux; ppc64le

```console
$ docker pull clojure@sha256:6796bf2247da9a579ed6732027e67b1abee80c9f381a80c7797614533707438b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.0 MB (301019791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db4166743cafe163758a640a14cfa96af816a267bd2c16e3b46c9fe1a56995dc`
-	Default Command: `["lein","run"]`

```dockerfile
# Tue, 25 Jul 2017 00:32:46 GMT
ADD file:49a13ad1d6e1464971b371a1775a0b537b4aeb65a859d5bbdeac4fe7fc13a2d4 in / 
# Tue, 25 Jul 2017 00:32:46 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 01:08:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 01:08:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 01:09:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:42:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 04:42:22 GMT
ENV LANG=C.UTF-8
# Tue, 25 Jul 2017 04:42:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Jul 2017 04:42:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 25 Jul 2017 04:42:24 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 27 Jul 2017 10:47:35 GMT
ENV JAVA_VERSION=8u141
# Thu, 27 Jul 2017 10:47:35 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 27 Jul 2017 10:47:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 27 Jul 2017 10:50:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 27 Jul 2017 10:50:28 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 05 Sep 2017 23:27:10 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 05 Sep 2017 23:27:10 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 05 Sep 2017 23:27:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 05 Sep 2017 23:27:11 GMT
WORKDIR /tmp
# Tue, 05 Sep 2017 23:33:26 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 05 Sep 2017 23:33:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 05 Sep 2017 23:33:26 GMT
ENV LEIN_ROOT=1
# Tue, 05 Sep 2017 23:33:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Tue, 05 Sep 2017 23:33:39 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Tue, 05 Sep 2017 23:33:40 GMT
WORKDIR /usr/src/app
# Tue, 05 Sep 2017 23:33:40 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 05 Sep 2017 23:33:40 GMT
ONBUILD RUN lein deps
# Tue, 05 Sep 2017 23:33:40 GMT
ONBUILD COPY . /usr/src/app
# Tue, 05 Sep 2017 23:33:40 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:87aea0b325f521e478a4e365b7bf735d62fe6121a031efa1f3b0a5ba7ed47a05`  
		Last Modified: Tue, 25 Jul 2017 00:38:24 GMT  
		Size: 45.4 MB (45382884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef128394234a7b997f9273bb3435ae1a49d807f26ffaa99a7e0a5fd99c92e8f9`  
		Last Modified: Tue, 25 Jul 2017 01:14:15 GMT  
		Size: 10.3 MB (10335433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cadef9955500ddfac371fd519ad4422a80862556ab36dffafd56c3ad132aafe1`  
		Last Modified: Tue, 25 Jul 2017 01:14:14 GMT  
		Size: 4.6 MB (4587013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988cf4af342011ac4f976a26e77c79470f1ce3aa8766f7cbfae9e07d11d656fd`  
		Last Modified: Tue, 25 Jul 2017 01:14:46 GMT  
		Size: 50.0 MB (50032213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9821c2284137f3f1067230f253023a1ed0001418f9c1b9b355215b4a0b3f6d1f`  
		Last Modified: Wed, 26 Jul 2017 10:53:25 GMT  
		Size: 885.3 KB (885257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e05680c7a6b68f8ed4deac0efa4a7fb0b3cd1f36e862061b924bc07bdeec4e9`  
		Last Modified: Wed, 26 Jul 2017 10:53:25 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:925b16bffd4867460e05bb41c7c4a6dad10f63d102f486f7d2203c65d08a7022`  
		Last Modified: Wed, 26 Jul 2017 10:53:25 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e9449f1fdbfc91d0ce0f29b01ff388653cda53a283a15afcf69bb79dac15bd`  
		Last Modified: Thu, 27 Jul 2017 10:53:43 GMT  
		Size: 172.4 MB (172372148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db2dc0ff80f993d580182e290c3366285224b6c85161e5160e3531e3119ffd5`  
		Last Modified: Thu, 27 Jul 2017 10:53:06 GMT  
		Size: 272.1 KB (272070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8fdbeda0e3c35dd29d1b482904a0841b22309ceeddea98512b47aad3142476b`  
		Last Modified: Tue, 12 Sep 2017 23:14:28 GMT  
		Size: 13.8 MB (13811161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d081f88dd901531639f16bd4b6f954e1764344c0ba77393b30d65f0bdc4775`  
		Last Modified: Tue, 12 Sep 2017 23:14:28 GMT  
		Size: 3.3 MB (3341065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973e76f9308608058b2206106e68fc112ad40a9ca3252ccc1be3f24c5e137e34`  
		Last Modified: Tue, 12 Sep 2017 23:14:53 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:lein-onbuild` - linux; s390x

```console
$ docker pull clojure@sha256:77f88055d721137ddb20a1c0dcc913f6443dc66371742a3aedf2c21cb7495e02
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 MB (283234211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae0a29378b145267d2b88494956a61c66f677e9db615c2d67fa8289255cb3a72`
-	Default Command: `["lein","run"]`

```dockerfile
# Fri, 08 Sep 2017 05:22:51 GMT
ADD file:2fc0b17ef015eff73a1fa19bbc2a72baf39b9f2abe8ccd1cd8ce1c757be70308 in / 
# Fri, 08 Sep 2017 05:22:53 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 16:38:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 16:38:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 16:38:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:30:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:30:00 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 17:30:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 17:30:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 17:30:02 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 17:30:02 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 17:30:02 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 17:30:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 08 Sep 2017 17:31:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 08 Sep 2017 17:31:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 12 Sep 2017 23:14:08 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Tue, 12 Sep 2017 23:14:08 GMT
ENV LEIN_VERSION=2.7.1
# Tue, 12 Sep 2017 23:14:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 12 Sep 2017 23:14:08 GMT
WORKDIR /tmp
# Tue, 12 Sep 2017 23:16:45 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 12 Sep 2017 23:16:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 12 Sep 2017 23:16:45 GMT
ENV LEIN_ROOT=1
# Tue, 12 Sep 2017 23:17:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Tue, 12 Sep 2017 23:17:04 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Tue, 12 Sep 2017 23:17:04 GMT
WORKDIR /usr/src/app
# Tue, 12 Sep 2017 23:17:04 GMT
ONBUILD COPY project.clj /usr/src/app/
# Tue, 12 Sep 2017 23:17:04 GMT
ONBUILD RUN lein deps
# Tue, 12 Sep 2017 23:17:05 GMT
ONBUILD COPY . /usr/src/app
# Tue, 12 Sep 2017 23:17:05 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:2f25bc6ba506d980514ec3fda2b8f9cbb5e39423e5e4edad7fadf3faa9e3aef7`  
		Last Modified: Fri, 08 Sep 2017 05:26:51 GMT  
		Size: 45.0 MB (44968557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2613300bf7a17d255985767ab61134bf7ecc98fa57f7891fea9b835db02054`  
		Last Modified: Fri, 08 Sep 2017 16:44:12 GMT  
		Size: 10.7 MB (10665953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df570186a79f815ceec8bbf45a03e3ba55709c015a46d3f17c584d06443435e`  
		Last Modified: Fri, 08 Sep 2017 16:44:11 GMT  
		Size: 4.7 MB (4663240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c749fffc6dccd36770e6c1e7f0364a12c7a2ed5861a052eee9a8bf85310000b`  
		Last Modified: Fri, 08 Sep 2017 16:44:31 GMT  
		Size: 50.4 MB (50435228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c27d5023486d89da34a98c6820a658507fcf60d4f8ff271b810b218972697bf`  
		Last Modified: Fri, 08 Sep 2017 17:34:37 GMT  
		Size: 903.1 KB (903081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1eaa97ae0bd67df6c08dd144c31c98bed1153bc4811140f4b2cd4b88c4f1dd`  
		Last Modified: Fri, 08 Sep 2017 17:34:37 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb677e3381f35c592b26d43a5b44d39308cbc4b83e717ae9039f3e7a4fa8b4c4`  
		Last Modified: Fri, 08 Sep 2017 17:34:37 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9722c3492d22cfc875b9d40f1f1718ca219a1ca170dbb26effe8ef498f6dcc4b`  
		Last Modified: Fri, 08 Sep 2017 17:35:03 GMT  
		Size: 154.2 MB (154173334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89965b7d63f7969780a7deed9400deb84c72f8bf26f8892e6cbca29381e8711a`  
		Last Modified: Fri, 08 Sep 2017 17:34:37 GMT  
		Size: 272.2 KB (272193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5936ad3e2c236f602c2e2bfbbcb6649983ea94c2bd75aa7384a8285add5a3752`  
		Last Modified: Tue, 12 Sep 2017 23:19:40 GMT  
		Size: 13.8 MB (13811121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e3950ab3a8729457d699496bed53aca135c6e5abe45e3894764e21df02aeaf`  
		Last Modified: Tue, 12 Sep 2017 23:19:40 GMT  
		Size: 3.3 MB (3340994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c79e7274716daf71de1268270aa7bc331cf82c3194a162874d00db354033aafc`  
		Last Modified: Tue, 12 Sep 2017 23:19:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
