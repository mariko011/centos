## `openjdk:7-slim`

```console
$ docker pull openjdk@sha256:88f67f6b2f469da82f8d6d7c9060d3d3195b8dc4ce185352f5e6e49c313d9d75
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

### `openjdk:7-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:0a1b55ac6ff73a10524a8e43458ad0aff24340a4493e12001c5a8367d62ad4e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149226216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8e20f7460b11599ffb4006557ece36b23311052a9d16b038d0210a52391015`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:39:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:39:59 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:40:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:40:01 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:40:01 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 05:40:02 GMT
ENV JAVA_VERSION=7u151
# Mon, 27 Nov 2017 23:45:21 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Mon, 27 Nov 2017 23:46:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16005df8652bf68c10edfe6636aec4565f54ff3ac86ea412300364ff09886908`  
		Last Modified: Sat, 04 Nov 2017 05:58:04 GMT  
		Size: 463.7 KB (463706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b445699e285e522ae179d5f28148bd78d818856bb333a50b7cd94c3671fff38`  
		Last Modified: Sat, 04 Nov 2017 05:57:54 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45a8a88bad53c37cbc0339bd9f9455907a7f2a82a8ec9ec9bbe7f59747c3b74`  
		Last Modified: Sat, 04 Nov 2017 05:57:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b12939658fb9465d00f6eb6bdcb7c00c4003892060692c04bfcbf2bb185d181b`  
		Last Modified: Mon, 27 Nov 2017 23:50:55 GMT  
		Size: 118.6 MB (118648814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:bd1d00286120d1ba11bd2b6d18914c28cae2c6c6f81253276a1de65a11aef724
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (122049436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7776aff8b7662b851f55613b8253f6d3e6afa4f161597facb709843245a6b1b3`
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
# Mon, 09 Oct 2017 22:25:09 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 22:25:09 GMT
ENV JAVA_VERSION=7u151
# Tue, 28 Nov 2017 10:57:43 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 28 Nov 2017 10:59:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:52e2b11a2aebae0cea527a8252195865f896d909047f89aadc8616be6514a9f6`  
		Last Modified: Tue, 28 Nov 2017 11:04:23 GMT  
		Size: 93.2 MB (93168435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:440eaccebc1561efb6f05be000dda9a6e0de2869a107ba917e679f2aee652b5a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.6 MB (127623936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fdfc1c76dd6338f888003bdc9d7fe834e795d2557b4b6cffefc6565b0575ab2`
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
# Mon, 09 Oct 2017 22:58:07 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 22:58:07 GMT
ENV JAVA_VERSION=7u151
# Tue, 28 Nov 2017 02:25:52 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 28 Nov 2017 02:27:29 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:b9aff0955f3aa9773d74d78e903fe8097726dd2df087de47f1f0c116ed856e65`  
		Last Modified: Tue, 28 Nov 2017 02:35:41 GMT  
		Size: 100.9 MB (100910259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:e11acef215f695dd7ce122cb3dc8fb869bc9317553a8faa129bc58a076aff103
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.6 MB (120592753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aedfec792f5f7dc33a63410b2516f901fbeb21197e0e7f29b3350e601a6a2102`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:51 GMT
ADD file:75f5768db078e9eee90676141a2c9faa9ce02768b7c9cd6e588bdd5ffc0f65e3 in / 
# Mon, 09 Oct 2017 21:43:51 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:59:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:59:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:59:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:59:30 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:59:31 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:59:33 GMT
ENV JAVA_VERSION=7u151
# Tue, 10 Oct 2017 00:59:34 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 10 Oct 2017 01:06:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:f2da27d97c13e9e531eda9577a28eb81b0d9034d7fd7e6575bd92744eed500f6`  
		Last Modified: Mon, 09 Oct 2017 21:53:20 GMT  
		Size: 27.5 MB (27480591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a24f9054de6049ff209097f030f33b2b3a730cdda41aee7369007cadb1e0f80`  
		Last Modified: Tue, 10 Oct 2017 02:05:43 GMT  
		Size: 457.9 KB (457885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd284f43507bcac78e2f93512d0790d24f64720a1f17971e0312bb6475ea27ee`  
		Last Modified: Tue, 10 Oct 2017 02:05:43 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3a082a1003eb057bcb8d89a7c258b0fcd24e24745e03eaf2e8f0023cea29bec`  
		Last Modified: Tue, 10 Oct 2017 02:05:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb29937877c30b6010c20b737c764f913bdc768027f8ea2c69e69cb5b015c71`  
		Last Modified: Tue, 10 Oct 2017 02:06:09 GMT  
		Size: 92.7 MB (92653900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-slim` - linux; 386

```console
$ docker pull openjdk@sha256:007d3afdaf8c1025a1b7c3cde49c35f157e9a30bd1a9c004a391433eccf48877
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.3 MB (162304141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:888bb530fc921615c17f0956219cb91bf4c132681db38b46993c7771fb2566cc`
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
# Tue, 10 Oct 2017 00:58:00 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:58:01 GMT
ENV JAVA_VERSION=7u151
# Tue, 28 Nov 2017 11:03:07 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 28 Nov 2017 11:05:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:19547545ee6dd9e93223bf9644f82f1d15ef13606bb4c5099128acc51c7bfba7`  
		Last Modified: Tue, 28 Nov 2017 11:19:24 GMT  
		Size: 131.6 MB (131573043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-slim` - linux; ppc64le

```console
$ docker pull openjdk@sha256:214b18ead80aab91072a2700424520dab8b88cbea2e6c585c9c6f83b98d610de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.5 MB (125451419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f174e58b81a588158a62b792cfcc65c4922b91bbb69baa256d2f51953bb7f4fa`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:16 GMT
ADD file:2116c25fe6275b240bd8d3a4bfe6f707d53b8f7c679a08dc4e82f9351e32073f in / 
# Mon, 09 Oct 2017 21:43:18 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:09:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:09:53 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 02:10:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 02:10:17 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 02:10:21 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 02:10:33 GMT
ENV JAVA_VERSION=7u151
# Tue, 28 Nov 2017 11:53:46 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 28 Nov 2017 12:00:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:3e88472df41b6d64a43bb66e5def74c4e222f868fe8eb13015accec0b9812609`  
		Last Modified: Mon, 09 Oct 2017 21:49:29 GMT  
		Size: 29.3 MB (29306532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e1ed1d900b37736f1a8f470e2333ec5eb513a0bd4b31234801e9c4da19dea0`  
		Last Modified: Tue, 10 Oct 2017 05:09:11 GMT  
		Size: 460.3 KB (460258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1242e525ea86c836dafa19aefa426e8fc3d3bde6dd0f3a3acfb8fbe1fac623cd`  
		Last Modified: Tue, 10 Oct 2017 05:09:11 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47db0afcfbdac0ddb62992cde96279bf3cb3f0f0767b813ee0554237c51b26fa`  
		Last Modified: Tue, 10 Oct 2017 05:09:11 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3d9f234f5f11c8753ad89c89850079aca8a80dbd0fc59da8a1fc7306b07f57`  
		Last Modified: Tue, 28 Nov 2017 12:14:22 GMT  
		Size: 95.7 MB (95684250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-slim` - linux; s390x

```console
$ docker pull openjdk@sha256:3d552bec7b17c65aecd187021aa2bfc731b16da63949163a5571a3f46fb1cd5f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.3 MB (126299048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5e11ddf03794f49016fd46215223e96ffce72f7f2f25de52620de95105ec2a0`
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
# Mon, 09 Oct 2017 22:46:48 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 22:46:48 GMT
ENV JAVA_VERSION=7u151
# Tue, 28 Nov 2017 17:55:43 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 28 Nov 2017 17:56:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:49084c3173c55dee25291d8bd22e55ce85794132d0fa7026c356dedf764e5dd3`  
		Last Modified: Tue, 28 Nov 2017 18:01:10 GMT  
		Size: 95.5 MB (95531318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
