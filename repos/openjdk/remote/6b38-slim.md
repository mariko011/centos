## `openjdk:6b38-slim`

```console
$ docker pull openjdk@sha256:6df4f864ea5d3b5bbf505d3cc8c16633d5b39734f928aa9f55bb056065d56974
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:6b38-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:13d27be69c053205144fb8d9b6fa3db191897e7d2a98d6821404291ec180248c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116283058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22a6de3490ab0b9029f8e4aa4df0ff1b15f0e0e68a20bf83569c0f294bf993da`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:42:21 GMT
ADD file:d8e4b007ff77e115dfa0e34b040d0e3d1edd716458d2cf8598fbceaf1c012a5a in / 
# Wed, 13 Sep 2017 08:42:21 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 04:05:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:05:19 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:05:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:05:22 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:05:22 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 04:05:22 GMT
ENV JAVA_VERSION=6b38
# Thu, 14 Sep 2017 04:05:22 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Thu, 14 Sep 2017 04:06:29 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:1b2cb524b2ec19dd2a539218233a5ef7a1c94bcda95c6be54d3ebdb85fa8d85f`  
		Last Modified: Thu, 07 Sep 2017 23:24:30 GMT  
		Size: 19.2 MB (19159087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a65446b89c2bd7c9811b12de7f02e7b5a4e8386ada74913de514a7b203bf1f8`  
		Last Modified: Thu, 14 Sep 2017 04:41:53 GMT  
		Size: 401.3 KB (401263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ecc9d5976da7d1df8c2750ed2757802b30a99824e0178dca243d69aa613bd0f`  
		Last Modified: Thu, 14 Sep 2017 04:41:52 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df0e004a0a83ffdc61b5189560d3198dc143fe72fd81ff4f46de38e3f4b4c56`  
		Last Modified: Thu, 14 Sep 2017 04:41:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e49493df515151525782ae922a02c22935bacfd158c864686d4126b73ea6414`  
		Last Modified: Thu, 14 Sep 2017 04:42:30 GMT  
		Size: 96.7 MB (96722332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6b38-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:7e4f4b3ec588c3cb17e740f7b2647f1865c29d9508528915698057c0fe33350c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101604751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76daca358d1a208a8785cc77525f0fcefbd4e2be3f8bafb681ea9b5a152ce260`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 14:27:20 GMT
ADD file:2f0a2aec2d52fa3a021db9aff440c32fb8e67948c0fd8adc3b3beeed2fadb2a7 in / 
# Wed, 27 Sep 2017 14:27:20 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 15:08:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 15:08:53 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 15:08:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Sep 2017 15:08:55 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Sep 2017 15:08:55 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Sep 2017 15:08:56 GMT
ENV JAVA_VERSION=6b38
# Wed, 27 Sep 2017 15:08:56 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Wed, 27 Sep 2017 15:09:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:a2b5814934fa0148bd58fb66969e512a4bbfe1c223d9eabda9295323f93d6dd0`  
		Last Modified: Wed, 27 Sep 2017 14:33:15 GMT  
		Size: 18.0 MB (18016817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efdac61de5d4fb1a31d79bf3bf85468e1fbc1da02c53373bc0e631067b7a72ac`  
		Last Modified: Wed, 27 Sep 2017 15:28:45 GMT  
		Size: 403.5 KB (403512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb96ecdcf7a4e7afee21368af52804c8c1a2532eec77c4a3e68d404ac84b3d88`  
		Last Modified: Wed, 27 Sep 2017 15:28:45 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3556c2ad9c1459aefad725857fc8290435b2bdc4af338ae028da611fbead2d`  
		Last Modified: Wed, 27 Sep 2017 15:28:46 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d15dad934f7cf301b71338a1ecdc51233bf83055cc948d3e54e4f839298f6`  
		Last Modified: Wed, 27 Sep 2017 15:29:04 GMT  
		Size: 83.2 MB (83184044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6b38-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:2701118abef738df40b9dd27a6204214972af0f32848550ad2fe0a4d0d7d3511
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.3 MB (98305931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cef6757b8016dd1da9731560ae2a2cd0395cc5e480c17f33fc290de529897cac`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:16:07 GMT
ADD file:b7f27d51042596627d93b4dfc6aa9947289f27da287d3120706d238f5f8d9e55 in / 
# Wed, 27 Sep 2017 04:16:07 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 05:12:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:12:17 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 05:12:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Sep 2017 05:12:19 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Sep 2017 05:12:19 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Sep 2017 05:12:19 GMT
ENV JAVA_VERSION=6b38
# Wed, 27 Sep 2017 05:12:19 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Wed, 27 Sep 2017 05:12:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:fbdcb463c9b300dea97f478b0420e8fc5e981f98eaa5495d88eef42b0106b22e`  
		Last Modified: Wed, 27 Sep 2017 04:22:38 GMT  
		Size: 16.8 MB (16756417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5850b2e096dc2eda38e7c41f36f6b5f5f9408a5bb381fd5da4bec1fb104cfb35`  
		Last Modified: Wed, 27 Sep 2017 05:32:25 GMT  
		Size: 391.1 KB (391074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4003110ae1fde09abc307a1f8d235f47a274e5b9d2af45c2277ccb49dbeb0d`  
		Last Modified: Wed, 27 Sep 2017 05:32:24 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8237f3f57dca5140af47acbb81bcd921f3a31b7c01652f5bf5995b45c20b614`  
		Last Modified: Wed, 27 Sep 2017 05:32:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4981fce0e0b6513146976eed34136000357709235897b7659f7f4c9904c50e`  
		Last Modified: Wed, 27 Sep 2017 05:32:43 GMT  
		Size: 81.2 MB (81158061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6b38-slim` - linux; 386

```console
$ docker pull openjdk@sha256:6898891dc7aeb307e1806875f667e550dda389238f0ac98f328c80971270c64f
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125216900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b1909e7a2f4f07307250b6cdd22dc58ac6838ff1b2e041154f03f7aeca6dc09`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:20:59 GMT
ADD file:da85b13122cebf877982c0aef4712a2e4d3fc1eb4218991ad72f635a97d90a7f in / 
# Fri, 08 Sep 2017 13:21:00 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:05:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 15:05:02 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 15:05:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 15:05:03 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 15:05:03 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 15:05:03 GMT
ENV JAVA_VERSION=6b38
# Fri, 08 Sep 2017 15:05:04 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Fri, 08 Sep 2017 15:05:54 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:deb6de00f97f6ae865eb39c7b57cbb71e093553119772ec401408041de09a9a5`  
		Last Modified: Fri, 08 Sep 2017 13:30:07 GMT  
		Size: 18.5 MB (18492353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d59250701eb2a9d8d1f308f49587d6b29427b55fd5d2a4ec6475a19d48a7617c`  
		Last Modified: Fri, 08 Sep 2017 15:25:58 GMT  
		Size: 392.0 KB (391985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a398a7b7ae51eaa2ee2455151d2f4ab177009845df71c541762034e287f4c4`  
		Last Modified: Fri, 08 Sep 2017 15:25:59 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685bd003ab38b3ea1a89e40d6388f565e9efd083975b47863e0c6b59d69ef608`  
		Last Modified: Fri, 08 Sep 2017 15:25:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae0c73c4ae3e25350c22587400c25b63e53683804939dd9ed279c2dd90cbc09`  
		Last Modified: Fri, 08 Sep 2017 15:26:21 GMT  
		Size: 106.3 MB (106332185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
