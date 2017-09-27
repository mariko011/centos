## `clojure:lein-onbuild`

```console
$ docker pull clojure@sha256:3ccea87dac89e444f68cd5ed7728839aaa27413d5c18f58abe7d553502bac984
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `clojure:lein-onbuild` - linux; amd64

```console
$ docker pull clojure@sha256:7fe1f5a961a1499d8766ae06428da9592e9b5aecb571b86d0e3e4ca71e335faf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.9 MB (312887224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7866d45fb42a80a8b51e6794e76b4f82e96226d92a67cc189286f2653868252c`
-	Default Command: `["lein","run"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:18:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:18:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:19:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:19:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:05:05 GMT
MAINTAINER Paul Lam <paul@quantisan.com>
# Thu, 14 Sep 2017 06:05:05 GMT
ENV LEIN_VERSION=2.7.1
# Thu, 14 Sep 2017 06:05:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 14 Sep 2017 06:05:06 GMT
WORKDIR /tmp
# Thu, 14 Sep 2017 06:05:41 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://github.com/technomancy/leiningen/archive/$LEIN_VERSION.tar.gz   && echo "Comparing archive checksum ..."   && echo "876221e884780c865c2ce5c9aa5675a7cae9f215 *$LEIN_VERSION.tar.gz" | sha1sum -c -   && mkdir ./leiningen   && tar -xzf $LEIN_VERSION.tar.gz  -C ./leiningen/ --strip-components=1   && mv leiningen/bin/lein-pkg $LEIN_INSTALL/lein   && rm -rf $LEIN_VERSION.tar.gz ./leiningen   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --keyserver pool.sks-keyservers.net --recv-key 2E708FB2FCECA07FF8184E275A92E04305696D78   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 14 Sep 2017 06:05:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 14 Sep 2017 06:05:42 GMT
ENV LEIN_ROOT=1
# Thu, 14 Sep 2017 06:05:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.8.0"]])' > project.clj   && lein deps && rm project.clj
# Thu, 14 Sep 2017 06:05:54 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Thu, 14 Sep 2017 06:05:54 GMT
WORKDIR /usr/src/app
# Thu, 14 Sep 2017 06:05:54 GMT
ONBUILD COPY project.clj /usr/src/app/
# Thu, 14 Sep 2017 06:05:54 GMT
ONBUILD RUN lein deps
# Thu, 14 Sep 2017 06:05:54 GMT
ONBUILD COPY . /usr/src/app
# Thu, 14 Sep 2017 06:05:55 GMT
CMD ["lein" "run"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d83cd5dabc8ae549b560ca520b1371f13d8baef53bcdfa4ec214987faf7718d`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 892.0 KB (892036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543947717bd00d6ab61f70fcd34dfb353cf6fbac6792971978dffdec837889f2`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344e9890b7318c3327a159d040a78ed639f2fc35cca96713f4052d6b3d37ac3a`  
		Last Modified: Thu, 14 Sep 2017 04:53:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6553263ea2e2528a718004ece3dac7bdaf66f2250816e28288fc61673bd40705`  
		Last Modified: Thu, 14 Sep 2017 04:54:20 GMT  
		Size: 183.7 MB (183691703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b668a5599b5fcf8e160432f65f880a9fa43e702fcc25b4c94db1989d3769c4b`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 272.1 KB (272083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c52bbb06aa40ce81369ad51b927568ed1c17eac6ccf235bb92881d266c8552e`  
		Last Modified: Thu, 14 Sep 2017 06:17:27 GMT  
		Size: 13.8 MB (13811115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7fe5a5623d8ff6e641230cb83a6f4f146bda0d6c45d40aa9b71ab9446a31c0`  
		Last Modified: Thu, 14 Sep 2017 06:17:26 GMT  
		Size: 3.3 MB (3340972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b870737ade620707370e8b2dfb521f3234e91857f978eb200427f8b58d5725`  
		Last Modified: Thu, 14 Sep 2017 06:17:44 GMT  
		Size: 130.0 B  
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
$ docker pull clojure@sha256:77c999ca1085331c5b3495a659a3472a1276382e5bf0df224a5b185152ef19fb
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.5 MB (292485312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66fdc751384e72c747b89c71750b65fb06968b07b7101b695fc4117df46be196`
-	Default Command: `["lein","run"]`

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
# Fri, 15 Sep 2017 16:30:26 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Fri, 15 Sep 2017 16:30:26 GMT
WORKDIR /usr/src/app
# Fri, 15 Sep 2017 16:30:27 GMT
ONBUILD COPY project.clj /usr/src/app/
# Fri, 15 Sep 2017 16:30:28 GMT
ONBUILD RUN lein deps
# Fri, 15 Sep 2017 16:30:28 GMT
ONBUILD COPY . /usr/src/app
# Fri, 15 Sep 2017 16:30:29 GMT
CMD ["lein" "run"]
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
	-	`sha256:427549b01650fde23dc4740bb0c7b1bff8a157df7670d6b6144258ddd8b62545`  
		Last Modified: Fri, 15 Sep 2017 16:31:26 GMT  
		Size: 131.0 B  
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
$ docker pull clojure@sha256:2eaa0ee153d7f585f3da7e551bbd0ad3566ed37ad49b3f1fa4c683bc79169087
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.0 MB (301009686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85d10ef259286247e9a96ff39cd8b1a94dbfb3b7482d88f260daca6e2964904a`
-	Default Command: `["lein","run"]`

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
# Fri, 15 Sep 2017 16:29:08 GMT
MAINTAINER Kirillov Alexandr <kirillov@evrone.ru>
# Fri, 15 Sep 2017 16:29:11 GMT
WORKDIR /usr/src/app
# Fri, 15 Sep 2017 16:29:14 GMT
ONBUILD COPY project.clj /usr/src/app/
# Fri, 15 Sep 2017 16:29:17 GMT
ONBUILD RUN lein deps
# Fri, 15 Sep 2017 16:29:20 GMT
ONBUILD COPY . /usr/src/app
# Fri, 15 Sep 2017 16:29:23 GMT
CMD ["lein" "run"]
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
	-	`sha256:6e4836475a737b40dd1f357f581e8573aeaa4620bea0d135f28efcae993de41c`  
		Last Modified: Fri, 15 Sep 2017 16:30:09 GMT  
		Size: 164.0 B  
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
