## `openjdk:6-jdk`

```console
$ docker pull openjdk@sha256:d0fe1753d7eedadbb7fc9d751578f8feaaeca05b4f62008c32dbc91a783f9557
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:6-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:266f215dcb453bc960c970793a0e661cf4917e8fef6725a6f687d931b61efd60
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.7 MB (189722645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:927e8dde050adab136acb73a6e477474c2472f012b8d2618bb872f01f63fb902`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:42:15 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Wed, 13 Sep 2017 08:42:15 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:41:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:41:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:41:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:04:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:04:04 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:04:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:04:07 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:04:07 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 04:04:07 GMT
ENV JAVA_VERSION=6b38
# Thu, 14 Sep 2017 04:04:07 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Thu, 14 Sep 2017 04:05:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d764e03a215333db8170acb0685d3ba179bb4286392cf97457e43a5d7d7f534`  
		Last Modified: Wed, 13 Sep 2017 13:00:25 GMT  
		Size: 6.9 MB (6949930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c8c9cc9165a217cad986958be6a567f84d18746e6a847e8f3e974a63cdde63`  
		Last Modified: Wed, 13 Sep 2017 13:00:44 GMT  
		Size: 37.9 MB (37946927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e79d30a9742629a52a4120f9f23d32a454a1334b9d3bde9d94560fe8f93d64b`  
		Last Modified: Thu, 14 Sep 2017 04:37:54 GMT  
		Size: 616.8 KB (616778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88377a4ae2ff84def193c15d0173fd17cf6d150250cca467726196cf6c862563`  
		Last Modified: Thu, 14 Sep 2017 04:37:53 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94759ba8137280714309af5b5f256387cac0e17f83b27741822af615ce368a59`  
		Last Modified: Thu, 14 Sep 2017 04:37:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b572de93086663a69d398246dd13d98da1f7556cc4f6994ce9d93a866ad8e1`  
		Last Modified: Thu, 14 Sep 2017 04:38:23 GMT  
		Size: 106.1 MB (106105505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6-jdk` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:8e6dc6b812d53dad3acfa58a966f2bc8986fed6c0df331fb0608e8c3b00a7213
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173638240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:171a163227a1cd72dc55776f3a0ba0385f4475aa374b625dba8bbe19758faa4e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 20:07:17 GMT
ADD file:18a2e1c93fd8ef18e5dc0578441d01bdc59fc9584f845a6309bb4cb656cab9b6 in / 
# Fri, 08 Sep 2017 20:07:18 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 03:51:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 03:51:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Sep 2017 03:53:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 11:21:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 11:21:37 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 11:21:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 11:21:41 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 11:21:42 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Sep 2017 11:21:42 GMT
ENV JAVA_VERSION=6b38
# Tue, 12 Sep 2017 11:21:43 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 12 Sep 2017 11:25:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:29e65e191a6c3d91d7ae2bd899e20d1bad6428e467dde869fa02dba34c275b4a`  
		Last Modified: Fri, 08 Sep 2017 20:24:29 GMT  
		Size: 36.9 MB (36945037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e79fec58295ab928e8d6c95f4ab2cf3c98d5ee139069db34c75384a74366a75`  
		Last Modified: Tue, 12 Sep 2017 04:25:48 GMT  
		Size: 6.6 MB (6587375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a9ee05eb1aad550373a595bce2e732d83378f179abd9b3905db8909f1fc88b`  
		Last Modified: Tue, 12 Sep 2017 04:26:32 GMT  
		Size: 35.9 MB (35888757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b083197a5be9246a8e14fa4264ff1ed423b1dfcf0416bbf7fcf9af3ef29f52`  
		Last Modified: Wed, 13 Sep 2017 09:10:25 GMT  
		Size: 619.0 KB (619027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75cfaba3726ee126f975179925512c3073b8b47df662db9c337c829834a343e`  
		Last Modified: Wed, 13 Sep 2017 09:10:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18574e82b4ec3a3a6b2164ade435242798b33774effe688ae37aa188e7a73d92`  
		Last Modified: Wed, 13 Sep 2017 09:10:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d81ab0a081d6bccbeefba56de940a66117d650c89390b95f47e6c0fbcf929fc`  
		Last Modified: Wed, 13 Sep 2017 09:11:12 GMT  
		Size: 93.6 MB (93597666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6-jdk` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:c393e27aa72269dc3b71e820ac688dd96447a842facdf908b23cec7f20ff4d13
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.4 MB (169390304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d3443355d838d8ef1497364ac3091320e2c795c551f9d77fb1562e1e6745770`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:52 GMT
ADD file:6fef303ff382655f8d1b02443e95419e1f9610b563e8b11e7e4a021e4feaf3cc in / 
# Wed, 27 Sep 2017 04:15:53 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:48:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:48:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 04:48:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:11:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:11:18 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 05:11:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Sep 2017 05:11:20 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Sep 2017 05:11:20 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Sep 2017 05:11:21 GMT
ENV JAVA_VERSION=6b38
# Wed, 27 Sep 2017 05:11:21 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Wed, 27 Sep 2017 05:12:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:4ef58d6ed384b29697e2eecab4fcac62ff529eaef9f19f5a7b6183002b94947a`  
		Last Modified: Wed, 27 Sep 2017 04:22:15 GMT  
		Size: 35.7 MB (35656317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73bb7694eb262dad2621691e41facaf77c7adcb91925e9af6c1871a15ee24fa8`  
		Last Modified: Wed, 27 Sep 2017 05:01:42 GMT  
		Size: 6.4 MB (6369873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06359fa47c0b9c280bc37ffe7c5e51f250589e7fd27b6bde01d486428feff561`  
		Last Modified: Wed, 27 Sep 2017 05:02:00 GMT  
		Size: 34.9 MB (34872809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e69df4516395ec934257aa6a914548339f7d8c0eb195e6e4f6b0dac1ca8707`  
		Last Modified: Wed, 27 Sep 2017 05:31:53 GMT  
		Size: 606.5 KB (606451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4866347933a28e2afeee23af14ac8071975746e3102141cb9c329d09733f67`  
		Last Modified: Wed, 27 Sep 2017 05:31:53 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6b02dcaa29de452a1a84509d6e85bc34c6c3bd3d731d63c5290cd34656c17d`  
		Last Modified: Wed, 27 Sep 2017 05:31:54 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c005604d4f7d282fd06587d267f1d196293400cc7756183742f502e6f24ed31`  
		Last Modified: Wed, 27 Sep 2017 05:32:11 GMT  
		Size: 91.9 MB (91884476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6-jdk` - linux; 386

```console
$ docker pull openjdk@sha256:3d062de92ab49f4e7af178ca753c4537bcec2341a11fdbe17e8046ba785cfcd2
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.4 MB (198438940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f265c88fa1987923b7a3d30a3e1a9e7ffc99dcad059af3460f7c5e066f88e170`
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
# Sat, 09 Sep 2017 13:52:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 14:46:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 14:46:17 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 14:46:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 09 Sep 2017 14:46:18 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 09 Sep 2017 14:46:19 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 09 Sep 2017 14:46:19 GMT
ENV JAVA_VERSION=6b38
# Sat, 09 Sep 2017 14:46:19 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Sat, 09 Sep 2017 14:47:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:0bc5b4cb9f9beaf6ce08c9ec324ca4399cec2945bbbf8d613aebda1f0065adc5`  
		Last Modified: Sat, 09 Sep 2017 14:09:05 GMT  
		Size: 37.1 MB (37053834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:522539a268674c8f0669df164c07b5fe9c5d32bc09340ebd4bc5bae462474221`  
		Last Modified: Sat, 09 Sep 2017 15:22:43 GMT  
		Size: 607.5 KB (607499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5fee850854ffe73e5c5787ea096bb54948a52d46b2979e09fc6541a74a6175a`  
		Last Modified: Sat, 09 Sep 2017 15:22:44 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeed361c59b379bae387c42a32bc49f0418d389d5cff08b041072d7ec56ba872`  
		Last Modified: Sat, 09 Sep 2017 15:22:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1afde0468f5ccbd400e01cdf2a8b9138ad407beb9be879cd42dd28b68a0570f`  
		Last Modified: Sat, 09 Sep 2017 15:23:02 GMT  
		Size: 114.5 MB (114544858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
