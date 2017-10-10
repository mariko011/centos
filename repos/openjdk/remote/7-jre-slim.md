## `openjdk:7-jre-slim`

```console
$ docker pull openjdk@sha256:39fff4c52bf6f0b0f7dc9fee3777ff7021ba2c8fc4860d942b739b331bd2c2a9
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

### `openjdk:7-jre-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:cdd3084059b913ff870f1bd4552e08a2f6cb98baba19996d02678b2e34e8bd2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104316658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b50450bb836cd7399dbfc0fdfa2449a4ad5ee33d72279253ead2e8e68c7887bb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:39:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:39:23 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:39:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:39:24 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:47:13 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:47:13 GMT
ENV JAVA_VERSION=7u151
# Tue, 10 Oct 2017 00:47:14 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 10 Oct 2017 00:48:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d75e6917dfd0d5d7a37b7bea6aa0d539a7bb5f045515b2a32f8da43731504f`  
		Last Modified: Tue, 10 Oct 2017 01:12:59 GMT  
		Size: 463.7 KB (463711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20723108e6b6322856d2b65c4a741a10fe2759e1bc2a0fc484ea30ba3b908351`  
		Last Modified: Tue, 10 Oct 2017 01:12:59 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73eb678afb47ff30f4dc5af40857769153bd8f4f93daaee1da126adbde8f5a77`  
		Last Modified: Tue, 10 Oct 2017 01:12:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2195779cea1cb9210db01a55445af5062aee8109b7a8853d1c776ab7defb1d94`  
		Last Modified: Tue, 10 Oct 2017 01:14:56 GMT  
		Size: 73.7 MB (73739251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:2946c8b4f3926919bbfe83046d1242bf6f8d67c929689e0c22dc3845c978f766
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.2 MB (92248116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4997548e0465036ea56936a5abc5bb79eedea878f2703d80db2b6da3d1f11811`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:24 GMT
ADD file:b3e61e5275e7047cc330ef997896c9e74467b5134f0cada4325564a122204b61 in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:25:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:25:06 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:25:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:25:08 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:27:00 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 09 Oct 2017 22:27:00 GMT
ENV JAVA_VERSION=7u151
# Mon, 09 Oct 2017 22:27:01 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Mon, 09 Oct 2017 22:28:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:355c947ce54f583e3c4723632384e762cf27a159cb11b7ff6af3106dc7bf8e99`  
		Last Modified: Mon, 09 Oct 2017 21:47:41 GMT  
		Size: 28.4 MB (28424201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82b02d7fa857225f8fe9f4bcfcde571076c36be7dfca1e4e88ce780d72e4fad`  
		Last Modified: Mon, 09 Oct 2017 22:33:33 GMT  
		Size: 456.4 KB (456423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c8c85f6ae880c220ff4fa80b9fd4b97ec42f75161b1ce865acd3f831f4b66b3`  
		Last Modified: Mon, 09 Oct 2017 22:33:32 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23c3842706b23b79fdd1182c1ffd24590067bf1e89812f0bdd57ff59be6b842`  
		Last Modified: Mon, 09 Oct 2017 22:33:32 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927dcea351a29206f5ca25a34a52c709c8585a1993b63b9eb07166c5949ad1a7`  
		Last Modified: Mon, 09 Oct 2017 22:34:19 GMT  
		Size: 63.4 MB (63367115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:a05eb4dd6755a83613c5fa0d468fa219d767a121dcbddff5de5f97c0b47b9118
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.6 MB (88632660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58475c5c5f6b03d2ea69ac85c4bae796c4076a66b7742c8742c46b7acc85f2c6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:58:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:58:03 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:58:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:58:06 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 23:02:13 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 09 Oct 2017 23:02:14 GMT
ENV JAVA_VERSION=7u151
# Mon, 09 Oct 2017 23:02:14 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Mon, 09 Oct 2017 23:03:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56737cf8b0a227d3dcf38f93083649d33067af29ad83acb7cda371feeb5c30c6`  
		Last Modified: Mon, 09 Oct 2017 23:19:29 GMT  
		Size: 432.3 KB (432318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab04a111a353c6324d58a94a808e88676f5b7ee1b89772d7f9e34c7096024fa`  
		Last Modified: Mon, 09 Oct 2017 23:19:29 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0b012822f315e1f4eb8326a27154f0889af8f3fa51b6f05abdf1830383bc0c`  
		Last Modified: Mon, 09 Oct 2017 23:19:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018bbe2282db0f88dde24d49c57c1882058494b1fbfb9378a4a94e1513a5f4f7`  
		Last Modified: Mon, 09 Oct 2017 23:22:35 GMT  
		Size: 61.9 MB (61918983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:b5eda2b458d6c917d53d488ae65fe4823da9da2a0cb57b7060b256ffb4fcfdb8
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.8 MB (91842629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdcf61082e91142fbb9289a4c1b3a9b41620a10d47428df226e09019dd01bfd1`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 22:31:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 22:31:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 22:31:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 22:31:39 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 22:38:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 22:38:10 GMT
ENV JAVA_VERSION=7u151
# Fri, 08 Sep 2017 22:38:11 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Fri, 08 Sep 2017 22:43:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06476177444c94ae833f2a9b435a2ba24073c044c2fa6c7e7d4218dd3819f080`  
		Last Modified: Fri, 08 Sep 2017 22:53:55 GMT  
		Size: 457.9 KB (457912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffe3505ab724417f4366915a5597416c6df57c75d3dc4ec153fe96af92fe02b`  
		Last Modified: Fri, 08 Sep 2017 22:53:54 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d57d331bf9b5c2e2c4dea583baa9a0972413082c64388450695b43dcec6fa98`  
		Last Modified: Fri, 08 Sep 2017 22:53:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68c9c5a1021af89cc88bbabb99f82bb6f6957ff1a7fd83e312bee8373af3dda4`  
		Last Modified: Fri, 08 Sep 2017 22:55:12 GMT  
		Size: 63.9 MB (63903951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-slim` - linux; 386

```console
$ docker pull openjdk@sha256:ff8b5b2122eb7204a94fd7ae6aad1569e812cbf92a6b2d3647181724d886013b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115626656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d80d6570db3b95cf6c63b87f3e4025195277bf580fbb49a8207703ed5283eaf`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:30 GMT
ADD file:169ab3194fd1b25e06359d6eceb655093f44f0255c799ae8a3fc5bf8ba50fd8d in / 
# Mon, 09 Oct 2017 21:42:31 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:57:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:57:59 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:58:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:58:00 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 01:05:40 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 01:05:40 GMT
ENV JAVA_VERSION=7u151
# Tue, 10 Oct 2017 01:05:40 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 10 Oct 2017 01:07:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:d8b3cf5f6e0f087738d5589b812e12f5b8781935412c95d15f2f77d68657b006`  
		Last Modified: Mon, 09 Oct 2017 21:48:54 GMT  
		Size: 30.3 MB (30264454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27674858143a2678878a4a19958badf2b79aa26e1385415b6142991f5c2eed2e`  
		Last Modified: Tue, 10 Oct 2017 01:46:35 GMT  
		Size: 466.3 KB (466265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c66fa7f4a0e4fb087410a408a950eb8bec3cef8d46d0f060daefcea413c26e0`  
		Last Modified: Tue, 10 Oct 2017 01:46:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ac1c9d16194e316f4dbd55d7d89063cc26137e5b8e793905fc01261064edba`  
		Last Modified: Tue, 10 Oct 2017 01:46:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d7fee8dfab0fe14cfad31f4a5473bfa2268ec4c0660356a54a1f4e0f7f22a8`  
		Last Modified: Tue, 10 Oct 2017 01:48:18 GMT  
		Size: 84.9 MB (84895558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-slim` - linux; ppc64le

```console
$ docker pull openjdk@sha256:96a2497d930538ced622fbeff6c98d375b2293d5ece8035850576799a9dceb11
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 MB (95153036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9153e378def6c48a8ff1debeaa7440cf05ac3c351806e22300bf7860b4daa08`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:35 GMT
ADD file:a71c29d4477813e82c1dc250af55ac351262466c8d3b71f16ba55c334df128cb in / 
# Fri, 08 Sep 2017 00:32:35 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:24:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:24:04 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 01:24:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 01:24:06 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 01:25:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 01:25:24 GMT
ENV JAVA_VERSION=7u151
# Fri, 08 Sep 2017 01:25:25 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Fri, 08 Sep 2017 01:26:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:c81aec82dcf4ce3160634cefb76527ab80d464191cc48ad6c4593766c230004b`  
		Last Modified: Fri, 08 Sep 2017 00:37:39 GMT  
		Size: 29.3 MB (29306443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9235bff8daeb90489e9b4dcd34eecb631ebe461287578baea6765b3a098e1031`  
		Last Modified: Fri, 08 Sep 2017 01:29:08 GMT  
		Size: 460.2 KB (460188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e0b3bcb603fac0f3b60007c5d64cb7fe7cc773674dfe83ff61708768d890fe`  
		Last Modified: Fri, 08 Sep 2017 01:29:07 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f709b92b5451dcb4eb87d3c8a53e9402ecf4ac9ff98bea79845768960062888`  
		Last Modified: Fri, 08 Sep 2017 01:29:08 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b716c219e2aadc535ab11adadc1c0ce3257c4764ca6cd7770705f69d826e069`  
		Last Modified: Fri, 08 Sep 2017 01:30:06 GMT  
		Size: 65.4 MB (65386026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-slim` - linux; s390x

```console
$ docker pull openjdk@sha256:36389477f4737b08c95b3a3fac101544a3237b291c37f6889070a40f6b88267a
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96254468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96f4dc0d0bc54b5b091f9239ba986ecb3ed89988330c1f72b3cf840045ecc12f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:6cb76b1e40d19c5c42495dcfac0822e2e2e999e93fbe2274c6b7222bb6659b20 in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:46:47 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 22:46:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 22:46:48 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 22:50:02 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 09 Oct 2017 22:50:02 GMT
ENV JAVA_VERSION=7u151
# Mon, 09 Oct 2017 22:50:02 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Mon, 09 Oct 2017 22:51:04 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:e5707ed2790f9e4144aedd6b69cce68d5bbd2267ce4f8885c072ee882ab1a8ad`  
		Last Modified: Mon, 09 Oct 2017 21:46:52 GMT  
		Size: 30.3 MB (30294195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818ba875618679016cd04120ae46c200efd84d2448e1167f6704ff8073cbba66`  
		Last Modified: Mon, 09 Oct 2017 22:59:59 GMT  
		Size: 473.2 KB (473158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1ef31f07182ced6c6014230f6f96bd6f9035af692baeebeda41f62946764fd`  
		Last Modified: Mon, 09 Oct 2017 22:59:59 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5a8a703ee4e278471fc8b31d7f6746c6e40985735d58742e02536485178b4b`  
		Last Modified: Mon, 09 Oct 2017 22:59:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08014f1e980264e8f57f8ab12e98819d7b72337455021915fd65c98702918ea`  
		Last Modified: Mon, 09 Oct 2017 23:01:00 GMT  
		Size: 65.5 MB (65486738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
