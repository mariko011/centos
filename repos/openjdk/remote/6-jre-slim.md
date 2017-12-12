## `openjdk:6-jre-slim`

```console
$ docker pull openjdk@sha256:582c93cd14260e243d9c9c8249ae22d1b19c1d18bb85130685905159a3aefaab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:6-jre-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:791889794b7d05c8eb2ccf668f8788c559dbdfd396c612d7ee04cbf941ad7dc1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74198976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c965c40963257be4a7eebac33822db398215f5e7e78fe3f409541fd22254cfa`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:46:27 GMT
ADD file:664e20ea0b4805f811ed279f86823b281c39df127d0f73ae147468bc1a9e4020 in / 
# Tue, 12 Dec 2017 01:46:27 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:22:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 05:22:06 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 05:22:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 05:22:07 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 05:23:20 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Dec 2017 05:23:20 GMT
ENV JAVA_VERSION=6b38
# Tue, 12 Dec 2017 05:23:21 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 12 Dec 2017 05:23:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:b967c325a8b3055106908c059240f7ea99c3b22958080fa3a0c1688e1e6739d1`  
		Last Modified: Tue, 12 Dec 2017 02:00:41 GMT  
		Size: 19.2 MB (19164678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ab31a7467b755cf13f9578f99299095595a6594a518958a383c74fccae00d3`  
		Last Modified: Tue, 12 Dec 2017 05:44:46 GMT  
		Size: 401.1 KB (401149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b86ff4ae90bddf1b252aadf18122772766c05a133e63f6ef460fe5323b825390`  
		Last Modified: Tue, 12 Dec 2017 05:44:46 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f831342cbb14a17ea53bdd6a57939188f09323ebd8f90634249849b957a043`  
		Last Modified: Tue, 12 Dec 2017 05:44:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8544b3bb998913159ac77a2ff161c3ca38acf36587587cb54cd31f907a89cc8f`  
		Last Modified: Tue, 12 Dec 2017 05:45:51 GMT  
		Size: 54.6 MB (54632771 bytes)  
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
$ docker pull openjdk@sha256:7fcfa03beef187c6efc812942748717b167d510772e5893f2540dd3522290f17
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.2 MB (61197286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6210a32b4291a96fbc12ceb8c2f5fbca1cd2bd319fb057f1d2c9d9a068593559`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 13:36:52 GMT
ADD file:52eaf771571129528a0836b8ecc4fbee481902e6a38fbf1d40a9353131575be0 in / 
# Tue, 12 Dec 2017 13:36:52 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 15:02:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:02:54 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 15:03:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 15:03:14 GMT
RUN ln -svT "/usr/lib/jvm/java-6-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 15:05:44 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Dec 2017 15:05:44 GMT
ENV JAVA_VERSION=6b38
# Tue, 12 Dec 2017 15:05:45 GMT
ENV JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1
# Tue, 12 Dec 2017 15:06:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-6-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:adf381d5b09feaa2e2e96c85bb8c1f1d9ea18b076cc45d5fcbaa8afa7c5d4a31`  
		Last Modified: Tue, 12 Dec 2017 13:49:05 GMT  
		Size: 16.8 MB (16762408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374ba9957d8911e4e75b860de69b28fdf8bb202469b1d47e380c5f578dd8e347`  
		Last Modified: Tue, 12 Dec 2017 15:27:23 GMT  
		Size: 391.0 KB (390955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6efae5015b1b6884963bca92d23ece4cfc9bc844491b354d84e61aff93e8ef0`  
		Last Modified: Tue, 12 Dec 2017 15:27:19 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1758be8cfd1c0ff8c0bbe9514a2934d7d2eb09e2e8e58dd456c7d47ef3801c85`  
		Last Modified: Tue, 12 Dec 2017 15:27:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a2b7913b7115a7a53fd63d36ea2753f823171f9a8e26cfd8d5234313b11433`  
		Last Modified: Tue, 12 Dec 2017 15:29:22 GMT  
		Size: 44.0 MB (44043546 bytes)  
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
