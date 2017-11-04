## `openjdk:6-jre-slim`

```console
$ docker pull openjdk@sha256:2a8f4822676f6f7124bb0a00fe69912ba981de88c117dbc3761b751ad4fd4459
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:6-jre-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:110faafda1b59b0978e5647c3c1142bd4fe645dc43399668831a16b10b585759
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.7 MB (74680888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0be5d63f60311642930328273720be7833768dcaa6db265cb43487faa616e7f0`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:27:35 GMT
ADD file:01722c260f7b906a9418654b45a70341a85bbfcd1ecdda1b3dbab312cacbc174 in / 
# Sat, 04 Nov 2017 05:27:35 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:35:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:35:27 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:35:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:35:29 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:36:59 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 05:36:59 GMT
ENV JAVA_VERSION=6b38
# Sat, 04 Nov 2017 05:36:59 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Sat, 04 Nov 2017 05:37:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:0f873bc6703c5a0d96888df9932f6d8aaafba24b63317dfc7e9f57dee3f3ad98`  
		Last Modified: Mon, 09 Oct 2017 21:45:07 GMT  
		Size: 19.2 MB (19159103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da05e80ea369f7ca40b614d96463efb275485ba16ce43556208636663a326d2`  
		Last Modified: Sat, 04 Nov 2017 05:55:44 GMT  
		Size: 401.3 KB (401268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe33d38643acad1dbd183f5e6a6c2c83e27e3e44bbe460e193e4a1effb667bec`  
		Last Modified: Sat, 04 Nov 2017 05:55:44 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a17dc23f5db5dd260166fa61f517363229347bf72ee7e716cb6ef9415916d1`  
		Last Modified: Sat, 04 Nov 2017 05:55:44 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f18221337db1f182e1cd334f7edfa5329ce9b80a3cfdcb4ceed0d630d4c9fbb`  
		Last Modified: Sat, 04 Nov 2017 05:57:01 GMT  
		Size: 55.1 MB (55120140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6-jre-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:4f704a401cbf62f8a69b48f8365849b79e3a8258ef4db5948b0b5fdcaf78a6ca
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63441485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1499f3540dabd149a9dfb9adb156761f3e5c758811d7273ee6b18edc5068384`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:46:03 GMT
ADD file:14d060c2bbf983c6f8bf1a7f0be8c11af38c802d1976884a8abb9e2e68a933ef in / 
# Mon, 09 Oct 2017 21:46:04 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:22:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:22:49 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:22:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:22:51 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:24:02 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 09 Oct 2017 22:24:03 GMT
ENV JAVA_VERSION=6b38
# Mon, 09 Oct 2017 22:24:03 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Mon, 09 Oct 2017 22:24:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:6548ed048b6a8628eb743a6c161347c7346d3e9b2863ca40b96cde8ad9740685`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 18.0 MB (18016903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b7b0269323e2de7a3ec7d3c4ef2ef14188c7e87c077bdfce0f3e57c4854f3b`  
		Last Modified: Mon, 09 Oct 2017 22:32:44 GMT  
		Size: 403.5 KB (403498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd130e15ca46966b89da0090d85ab9de2095d95b9784b425be56ec6420a5aa5`  
		Last Modified: Mon, 09 Oct 2017 22:32:46 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd62b617d52906cbf8f4e7f2d132df007e415f729ce803fe5e05ed9632e5ecb5`  
		Last Modified: Mon, 09 Oct 2017 22:32:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cda9d80c27811da8f92f858b6604eb084c65014d96d3e10ba3f8e7a6f9a56f0`  
		Last Modified: Mon, 09 Oct 2017 22:33:24 GMT  
		Size: 45.0 MB (45020707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6-jre-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:9342d160679c5b9bcd014035c69b14e104d0e0a540808219d7f033d426f6431c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.2 MB (61192373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db6828a82f8151585b7795d40f4efedc1a7f4ca9e21b1e1490691fc128b5379f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:23 GMT
ADD file:b266d990ce55ec965e222a1be7b95fbe01c6d99821fa22199415e21a96fa0d01 in / 
# Mon, 09 Oct 2017 21:47:23 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:52:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:52:26 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:52:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:52:30 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:54:34 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 09 Oct 2017 22:54:34 GMT
ENV JAVA_VERSION=6b38
# Mon, 09 Oct 2017 22:54:38 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Mon, 09 Oct 2017 22:54:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:c4e53cb9c74291ac4a5a1f7db0b5f789031b91fb7247c48559b64cdd85af2b6c`  
		Last Modified: Mon, 09 Oct 2017 21:57:13 GMT  
		Size: 16.8 MB (16756444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c753c57ca0dfb4539431cd77e9f4be80250d14b30a5aa493cb012cd53c14b5dc`  
		Last Modified: Mon, 09 Oct 2017 23:14:52 GMT  
		Size: 391.1 KB (391089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:881070e246872adebfcd5edd9206a3bd313c9bd22eb69180b19c1ab3c5452b7f`  
		Last Modified: Mon, 09 Oct 2017 23:14:51 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2c74dd0b150de1ae8f90b7a17c3041cba9ad4bed3758de29866679394efdd5`  
		Last Modified: Mon, 09 Oct 2017 23:14:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6238070ff053e865269fc31d33398995170d475a6b5db3488c88bb9c2ec4343`  
		Last Modified: Mon, 09 Oct 2017 23:16:40 GMT  
		Size: 44.0 MB (44044463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:6-jre-slim` - linux; 386

```console
$ docker pull openjdk@sha256:ea8a82fc86705031238d27287ba3665527817c8838e073af6548d0dcfc5c141f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83886289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a2899ac8fc5406210070b6db6457173a66ba1f56e8bf32cc35fb9ef85006f6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:46:48 GMT
ADD file:db9c18a5aed697b855ea74a4c419a75ba771664f6f5f3a1a69028cafe801d824 in / 
# Mon, 09 Oct 2017 21:46:49 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:45:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:46:25 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:46:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:46:27 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:51:25 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:51:25 GMT
ENV JAVA_VERSION=6b38
# Tue, 10 Oct 2017 00:51:25 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 10 Oct 2017 00:51:54 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:b7382aa0fb9022fb39c105bc94edf6f0c88d40f9c313a6b8b44de7fc5030038b`  
		Last Modified: Mon, 09 Oct 2017 22:01:19 GMT  
		Size: 18.5 MB (18492372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548f11acd0f1c441a74b06d6e293217dff73ed94f649a58d783d29c2cc5f13c7`  
		Last Modified: Tue, 10 Oct 2017 01:36:49 GMT  
		Size: 392.0 KB (391991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbe9e39fa4eb2c376153536425d00cc8b4672fdab31de73682cb6dc115dc83b`  
		Last Modified: Tue, 10 Oct 2017 01:36:48 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4af251c264114c528452810cc24f05dcedbbc1e254b0fb841a4fbdbf733ea4f`  
		Last Modified: Tue, 10 Oct 2017 01:36:49 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c451959157bee4e68761df4e1eaf78629fe92ded01f782f149e02df2d3d09675`  
		Last Modified: Tue, 10 Oct 2017 01:41:05 GMT  
		Size: 65.0 MB (65001549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
