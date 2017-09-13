## `openjdk:6b38-jre`

```console
$ docker pull openjdk@sha256:de613466288798e2fbfdf4aabef9ada15d2af73387153d5dbcf5272314513f13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:6b38-jre` - linux; amd64

```console
$ docker pull openjdk@sha256:08e6abbfe74d12eefda93891180fbfa137b64f2db319e95ced6e3a9788fef878
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.8 MB (139769647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03eb481ea6886cb1a1eedeca673267c8d4ebc738c9c36158d79d237d3b271993`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:08:56 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Thu, 07 Sep 2017 23:08:56 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:32:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:32:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 23:44:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:44:23 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:44:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:44:25 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 23:44:25 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Sep 2017 23:44:25 GMT
ENV JAVA_VERSION=6b38
# Tue, 12 Sep 2017 23:44:26 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 12 Sep 2017 23:45:18 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb9984d33964d5be0a6994369af9b8e3099ef8b1da68a1a5ef6509716353f79`  
		Last Modified: Thu, 07 Sep 2017 23:57:20 GMT  
		Size: 6.9 MB (6949665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05251c4a3e57829db1e6fb29d7f854b4165f259156e46383d7edb41945308f3c`  
		Last Modified: Tue, 12 Sep 2017 23:59:36 GMT  
		Size: 548.9 KB (548876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7491290e87e2c0e22eef77ae9022a378a35eb9fce58b500cfb04553cadbec8c9`  
		Last Modified: Tue, 12 Sep 2017 23:59:36 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8002f34914e96e5f635fae2014336fe4eb20baa103c86bc0d4171045b0f568`  
		Last Modified: Tue, 12 Sep 2017 23:59:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2789fb31f6d081c3cea2f84c8b28038fee75ebc6a78526dd84bac9c2b68089c0`  
		Last Modified: Tue, 12 Sep 2017 23:59:56 GMT  
		Size: 94.2 MB (94167601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6b38-jre` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:c9aaa9ccefb976b8e30da72503e014b9f341eb46b99b8ecc420e55ba9b813abe
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.4 MB (127383043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcd2ab1192eaa706b15d5272a14fc565c89f0f1f33123b2ef21ef8091386e026`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 20:05:19 GMT
ADD file:97525cbf8fe115c33a8b9bbc20bfb2d1f48ccaeff1e82e1e5586f31290a445d4 in / 
# Mon, 24 Jul 2017 20:05:20 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 11:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 11:21:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 18:09:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 18:09:38 GMT
ENV LANG=C.UTF-8
# Tue, 25 Jul 2017 18:09:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Jul 2017 18:09:45 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 25 Jul 2017 18:09:47 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 25 Jul 2017 18:09:48 GMT
ENV JAVA_VERSION=6b38
# Tue, 25 Jul 2017 18:09:50 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 12 Sep 2017 00:40:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:4e4464497efd5dc9c76c4f98018614a042f8649da82c1502e8ba195158c6a2e9`  
		Last Modified: Mon, 24 Jul 2017 20:19:17 GMT  
		Size: 36.9 MB (36944440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dae05ee801b4b4820759dee217bdf1c6eda7658570a5174bd428b11b1a1a8`  
		Last Modified: Tue, 25 Jul 2017 11:42:50 GMT  
		Size: 6.6 MB (6586999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581bec38f0e3b068ddd437ba892dae62792cbcd064944e477d39031ad23ea414`  
		Last Modified: Wed, 09 Aug 2017 10:10:22 GMT  
		Size: 550.4 KB (550354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d1a063a62668ea21fe9f13d50faf4b08c19eb56003026a10d77a7ee509ad782`  
		Last Modified: Wed, 09 Aug 2017 10:10:21 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ee9ab630d0d9a8ae26766bc034aff80a53997d32b339eababa65905ce18b17`  
		Last Modified: Wed, 09 Aug 2017 10:10:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e79c82be6a9825c5c1981656b08d86e35ea6ddd3df9aa780daee6f6bfbb2b99`  
		Last Modified: Tue, 12 Sep 2017 02:19:48 GMT  
		Size: 83.3 MB (83300871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6b38-jre` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:a58ad0ff375c6c3774120659c6f9cf85df94970ec1e79a1176eca904997d8f92
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.4 MB (124376989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:436aa5acf2cac3fd869afe03ee02c4624dbb1097b49f762b7201bddf7a43e3c2`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 13:01:57 GMT
ADD file:383f867e58ac7d7020c618a7428b47b8b1911785ac6ae78a6751fb7f55eeb5c2 in / 
# Tue, 25 Jul 2017 13:01:59 GMT
CMD ["bash"]
# Fri, 11 Aug 2017 18:14:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 18:14:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 18 Aug 2017 18:43:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 18 Aug 2017 18:43:47 GMT
ENV LANG=C.UTF-8
# Fri, 18 Aug 2017 18:43:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 18 Aug 2017 18:43:51 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 18 Aug 2017 18:43:52 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 18 Aug 2017 18:43:53 GMT
ENV JAVA_VERSION=6b38
# Fri, 18 Aug 2017 18:43:53 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 12 Sep 2017 22:25:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:ada306cd59ed8be1f27f62bff2346a7c5647fef217a4b7fe851279c6c305e1f1`  
		Last Modified: Tue, 25 Jul 2017 13:16:28 GMT  
		Size: 35.7 MB (35656025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:931ec72c8732d6f74931a7086e7f2fe329cf03fa2b247dc18bce5b1201fb974a`  
		Last Modified: Fri, 11 Aug 2017 19:00:50 GMT  
		Size: 6.4 MB (6369136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a732a550d711835a41c986942f9d42c5bff79eb9abeb50e0b271de93f917b9d`  
		Last Modified: Wed, 23 Aug 2017 03:16:01 GMT  
		Size: 537.9 KB (537907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ac2df39fa45f248581510c8bfc208a540bcd66123a80f2dbb63cae9e36d689`  
		Last Modified: Wed, 23 Aug 2017 03:16:00 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee06b117bd6adeecdd820ebfd8c45b37e880153b78dba6f92d64fdb117421d5`  
		Last Modified: Wed, 23 Aug 2017 03:16:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9143941aaec967fb34fbbcf7fdb8b1615314fd0f698375f952ac1f80040fe4`  
		Last Modified: Tue, 12 Sep 2017 23:58:38 GMT  
		Size: 81.8 MB (81813541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6b38-jre` - linux; 386

```console
$ docker pull openjdk@sha256:75d2de0e02d220bcc81793cbacb8e190acd37893304270edc18ea368f9a639ef
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148790860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f07820dabe5549209479cf898bb7e6c9d401fe54433c545a93a080ffc2fc7491`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:20:48 GMT
ADD file:6e69a03d6dde108627b32e45abd197b90df267d161800ebec8416063a64aef06 in / 
# Fri, 08 Sep 2017 13:20:48 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 13:52:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 13:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Sep 2017 14:50:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 14:50:25 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 14:50:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 09 Sep 2017 14:50:29 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 09 Sep 2017 14:50:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 09 Sep 2017 14:50:30 GMT
ENV JAVA_VERSION=6b38
# Sat, 09 Sep 2017 14:50:33 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Sat, 09 Sep 2017 14:51:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:62bb183541ac6fc75244fe087faa7c427d0bc7cd70f749e3415bc6cb2e02638a`  
		Last Modified: Fri, 08 Sep 2017 13:29:31 GMT  
		Size: 37.4 MB (37433264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e79e19235ec8912002a9f320de08671905f5729502dc642eb94047db21c0467e`  
		Last Modified: Sat, 09 Sep 2017 14:08:40 GMT  
		Size: 8.8 MB (8799111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:592c64afbf74937424a20ddb46d39e2350ebfc1a356f00ffe4f19f8c2464fb08`  
		Last Modified: Sat, 09 Sep 2017 15:23:32 GMT  
		Size: 538.4 KB (538395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19104ffaf38081e112d0f16d446ec59ebdecd7e28d27c129864001374456974`  
		Last Modified: Sat, 09 Sep 2017 15:23:32 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a88b31333fc305de5aca4cc672aa0d1b26766a6b2d6e9d47d2a42d1161bc0f`  
		Last Modified: Sat, 09 Sep 2017 15:23:31 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df43be0e7a5f8b10eb51c0e73e22f26220b5d35d21b6c173fd0e42eaf4a2dc9`  
		Last Modified: Sat, 09 Sep 2017 15:23:52 GMT  
		Size: 102.0 MB (102019714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
