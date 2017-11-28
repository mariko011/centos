## `openjdk:7u151-jre-slim`

```console
$ docker pull openjdk@sha256:a3b1587a6c524ca4577c294380453da9ffe44aa9b184ea4577f49911b10d3bf5
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

### `openjdk:7u151-jre-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:05c3e8308fbc6290b3a735f891b539348b33bb26bed9406b042b9d4630925d57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104767450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7de192ac621d0fd634d86147c0de4db8d28db66ff0544bb0adc71f48a14c7059`
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
# Sat, 04 Nov 2017 05:44:04 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 05:44:04 GMT
ENV JAVA_VERSION=7u151
# Mon, 27 Nov 2017 23:48:18 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Mon, 27 Nov 2017 23:49:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:3534ed108660deab8f5aa7389b7f1e3d93ee312dbd8831185347a8f094dddf0a`  
		Last Modified: Mon, 27 Nov 2017 23:52:14 GMT  
		Size: 74.2 MB (74190048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jre-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:5399034b0d595b8cc5575dcc00d0b4e9e65e2af86392f45fbc167f839bd30de3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92707188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56531502aac0cc301fb7fb322572ecd95075299c2948d3f284d265768fc258f9`
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
# Tue, 28 Nov 2017 11:01:11 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 28 Nov 2017 11:02:24 GMT
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
	-	`sha256:ddd363d76de0cf7e9567f9c9eed9787ec937a71aad871aa5490499150f54ac06`  
		Last Modified: Tue, 28 Nov 2017 11:05:46 GMT  
		Size: 63.8 MB (63826187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jre-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:ec64d9bc9dd0b2fcdfebf4e606d801fd5722302e39d10aa17771ea91be19a7f9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89087353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d36a4df07b7f86f066461c73db57cc83d27636b6eacb8c2d482677c2187d38aa`
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
# Tue, 28 Nov 2017 02:29:13 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 28 Nov 2017 02:30:16 GMT
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
	-	`sha256:bee18d22464801b8a0660a6df54d0717bf4eff258bba87162eadaa530958f44f`  
		Last Modified: Tue, 28 Nov 2017 02:37:16 GMT  
		Size: 62.4 MB (62373676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jre-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:88ae3aec2e0b42aea2a433a03dbb6331b1ac215fd60a0c57fbdd3a96fe10b1fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.8 MB (91842247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9db47804148b24526bfa917822f382c919ed75a7754ec533fe63607a93aa633a`
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
# Tue, 10 Oct 2017 01:15:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 01:15:10 GMT
ENV JAVA_VERSION=7u151
# Tue, 10 Oct 2017 01:15:11 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 10 Oct 2017 01:19:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:8c888fe2f35ff6417157d3bbd6ceb500142c8571f68d42abf677527888aa4f9f`  
		Last Modified: Tue, 10 Oct 2017 02:10:01 GMT  
		Size: 63.9 MB (63903394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jre-slim` - linux; 386

```console
$ docker pull openjdk@sha256:5d3862297e509da668831435770f33af1e627d5e2cc280c391aa4e0a3b060b55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.1 MB (116090934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d84e36dd368070115c303072970a1299156ee241b543d1dcf8dde161701fd31`
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
# Tue, 28 Nov 2017 11:14:19 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 28 Nov 2017 11:15:32 GMT
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
	-	`sha256:6e953d90f439876cbe923b42367b5cc7a380b58ca023ad8e9a493e91f9f1fdf2`  
		Last Modified: Tue, 28 Nov 2017 11:22:55 GMT  
		Size: 85.4 MB (85359836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jre-slim` - linux; ppc64le

```console
$ docker pull openjdk@sha256:b5b8479ee6500876878e67ab8346b4c31390e2ac10719e434a17a093aa8d317b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.6 MB (95626050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:251952dce06f707a04bd377250c22798a32f97f935428cdbfe75719bec980dfc`
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
# Tue, 10 Oct 2017 02:56:19 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 02:56:23 GMT
ENV JAVA_VERSION=7u151
# Tue, 28 Nov 2017 12:07:13 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 28 Nov 2017 12:12:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:aa31d287af3f0f80fa2aaa409adcd7035cabec529bf5c51b6dee0c192b2702c3`  
		Last Modified: Tue, 28 Nov 2017 12:15:26 GMT  
		Size: 65.9 MB (65858881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u151-jre-slim` - linux; s390x

```console
$ docker pull openjdk@sha256:8b6265b9637fbc88b1a32f83349088bfafc0cb161af6a43a67cf25ef68a7830d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.7 MB (96710556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc3fd3355db8d894d57869d89afc05981b67b41fddaa7ab16f6baf8fa1a7acd`
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
# Tue, 28 Nov 2017 17:58:15 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Tue, 28 Nov 2017 17:59:27 GMT
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
	-	`sha256:4cab28f9f7bb4087bc6a84be431f786b14ff8766d077d858e923a6daafe31639`  
		Last Modified: Tue, 28 Nov 2017 18:02:06 GMT  
		Size: 65.9 MB (65942826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
