## `openjdk:6-jre`

```console
$ docker pull openjdk@sha256:99cb1d2418d226aff7c8bac9b56ec83e549efc186560219465186218ea42881e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:6-jre` - linux; amd64

```console
$ docker pull openjdk@sha256:a44de41f34dd5869f8a683fd0d9b2018e65ca40b98be4f1e67a6de6840d6f5d4
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.6 MB (139581536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a271a62932efe23f77eb1703138f8955896a18f4ba58e4cf811b1fcf71512b7`
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
# Fri, 08 Sep 2017 08:49:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:49:51 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:49:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:49:52 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:49:53 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:49:53 GMT
ENV JAVA_VERSION=6b38
# Fri, 08 Sep 2017 08:49:53 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Sat, 09 Sep 2017 00:55:47 GMT
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
	-	`sha256:0ad5bf63077b3c015b58db1be1f8316755e5f4768292a3053d15f02aeb1c49c3`  
		Last Modified: Sat, 09 Sep 2017 00:30:05 GMT  
		Size: 360.7 KB (360678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936e82a13841098791688f7f1bccafe687eb1d04e4468a8111c68db123dcf571`  
		Last Modified: Sat, 09 Sep 2017 00:30:04 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebf64abef0fb21f9bd928a1a541868ee04d2b0648bf434e724918c0205457bc`  
		Last Modified: Sat, 09 Sep 2017 00:30:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fc5b0943fba35bb64d77ebfa2c5cbff70d4b97a94e99bf4d37e43bf5df2059`  
		Last Modified: Sat, 09 Sep 2017 01:02:22 GMT  
		Size: 94.2 MB (94167695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6-jre` - linux; arm variant v5

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

### `openjdk:6-jre` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:f5ed8399ce0f8e7342c2f3c286376d27a623cc6cf2acca2886439c5c27447b2c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.4 MB (124377233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2822d2d112e37afc3c4a4ff8c064bcc104e2b3cea78860b000181d00deeb145`
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
# Sat, 12 Aug 2017 13:10:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 12 Aug 2017 13:10:58 GMT
ENV LANG=C.UTF-8
# Sat, 12 Aug 2017 13:11:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 12 Aug 2017 13:11:02 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 12 Aug 2017 13:11:03 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 12 Aug 2017 13:11:04 GMT
ENV JAVA_VERSION=6b38
# Sat, 12 Aug 2017 13:11:05 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Mon, 11 Sep 2017 23:00:07 GMT
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
	-	`sha256:ec948972f2b19c6c100f5a36c45ccb9c0ba74296351f450ccc59f425cee0f7d2`  
		Last Modified: Sat, 12 Aug 2017 14:27:49 GMT  
		Size: 537.9 KB (537885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed63e9abe28534e3830ac974dc10ce0b55b7ec082aa757bd801f4febf2c68fbc`  
		Last Modified: Sat, 12 Aug 2017 14:27:48 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5fbf531a8d1bfc72f8a4cf900be2b937b264a1f7e3270fe7266203f9febde1`  
		Last Modified: Sat, 12 Aug 2017 14:27:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fce3f6fc16d30136586fc0df11414f51e1a7f391cf0832ba297f12c8ee05f20`  
		Last Modified: Tue, 12 Sep 2017 00:29:16 GMT  
		Size: 81.8 MB (81813808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6-jre` - linux; 386

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
