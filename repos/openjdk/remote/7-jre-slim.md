## `openjdk:7-jre-slim`

```console
$ docker pull openjdk@sha256:1da503e3f6ba570459cbf01a4753ce963a200196f9fda3e37fd4217fcb6a14c7
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
$ docker pull openjdk@sha256:147bc9d5dd45884470a2ecfc56318420f6fda469e3ac8ce411eeba1afa39c8a2
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104111224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:340583b147f9a342e50975a6e9aaf8bf362dc970cff06797cbf66294c4294202`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:52:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:52:16 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:52:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:52:18 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:54:21 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:54:21 GMT
ENV JAVA_VERSION=7u151
# Fri, 08 Sep 2017 08:54:22 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Fri, 08 Sep 2017 08:55:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2407ceaa40e946bd4d5b271cfd98a70515099c84edb8f487ca9d206eb492018`  
		Last Modified: Sat, 09 Sep 2017 00:32:10 GMT  
		Size: 258.7 KB (258702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e996de5daf9c740dfb8c9e5d8c6aa328d7ace73799ec80500a92d23f30ba21f4`  
		Last Modified: Sat, 09 Sep 2017 00:32:09 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f93740825f716133a99911ac3b1845baff9e883cc818381e25ca05d441f5a6f`  
		Last Modified: Sat, 09 Sep 2017 00:32:09 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e23b4bf4ff422c23df2bbc15586d2a33e706c5e04c0d259c746ba9ca39ec68`  
		Last Modified: Sat, 09 Sep 2017 00:34:13 GMT  
		Size: 73.7 MB (73739017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:c2700e87f84f71d62cb89b5af8870f4fb974579086daf9166259a6abc9dc207b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.2 MB (92241049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7768b9878496a5326b2c3b483c385421ad3f2a7e6e6828e02f57269558b5d54e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 19:57:26 GMT
ADD file:606c213181f629ee41d4467828fb9801d09971722004715d4ee5e715f51d1704 in / 
# Fri, 08 Sep 2017 19:57:29 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 00:48:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 00:48:41 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 00:48:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 00:48:45 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Sep 2017 01:09:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Sep 2017 01:09:14 GMT
ENV JAVA_VERSION=7u151
# Tue, 12 Sep 2017 01:09:15 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 12 Sep 2017 01:19:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:c730baecba27c98917b2ee85dc172ed0ef62d1decdc5064d89296a8edb1657f3`  
		Last Modified: Fri, 08 Sep 2017 20:13:04 GMT  
		Size: 28.4 MB (28422486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf22afcbde24d1bb6bc8c96cc8ed1b84d607d78d0aac01e60d197b419ef9347`  
		Last Modified: Tue, 12 Sep 2017 02:21:00 GMT  
		Size: 456.4 KB (456370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b97fabe8888e623cefb68c94840763dfbeb55c81578ab535b2f79f21a0a9f4e6`  
		Last Modified: Tue, 12 Sep 2017 02:20:57 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9df8e5cf38736b24b37090f580267708fc0675c52f64f3820b0c70d1f5b44`  
		Last Modified: Tue, 12 Sep 2017 02:20:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:990d05c38eda65329834095e1bba473f31f3c8153f9b01527b3411ed1c7025b5`  
		Last Modified: Tue, 12 Sep 2017 02:24:22 GMT  
		Size: 63.4 MB (63361815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:2a829a2a49492210910ef6a1c30c2822cfacd1f7df904e47fee74a98007a55e4
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.6 MB (88624460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d598d220265ffce1183c1248b5f6d068afb3913359ffe87a947f2f87f2d0f2c`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:46 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Sat, 09 Sep 2017 01:40:47 GMT
CMD ["bash"]
# Mon, 11 Sep 2017 23:08:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:08:43 GMT
ENV LANG=C.UTF-8
# Mon, 11 Sep 2017 23:08:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 11 Sep 2017 23:08:49 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 11 Sep 2017 23:28:36 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 11 Sep 2017 23:28:37 GMT
ENV JAVA_VERSION=7u151
# Mon, 11 Sep 2017 23:28:38 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Mon, 11 Sep 2017 23:35:57 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:5ec7d30a9a8c4943b1650d24c5857d17b69f0e4bb62241d56894484ff9315547`  
		Last Modified: Sat, 09 Sep 2017 01:51:42 GMT  
		Size: 26.3 MB (26279463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74da791cbaf371cdd0cc3dd8f149c43032cc1214a54c1176a4208b42bbd7183e`  
		Last Modified: Tue, 12 Sep 2017 00:31:58 GMT  
		Size: 432.2 KB (432220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbda354a2949b31cbfd43a7e6595a0d01f8c801b8099bd6010c0189770e6c987`  
		Last Modified: Tue, 12 Sep 2017 00:31:57 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73630d3b6686d8b35de217e14411959b4b07bafd5565b8724fd3c4161fa5809f`  
		Last Modified: Tue, 12 Sep 2017 00:31:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dce0ebb3b5b80423e1e15f4d6cfc0f348c954a1970484410a9bb1cc53e826b4`  
		Last Modified: Tue, 12 Sep 2017 00:35:58 GMT  
		Size: 61.9 MB (61912399 bytes)  
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
$ docker pull openjdk@sha256:3b52be369112f982b2dab930ef7f72efde38a7019292eb100bf78b9f6538a7d2
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115626300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab50e9ac251066764565fd2ddb79784932b2274e23df08c62c632ad61252bec0`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:09:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 15:09:19 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 15:09:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 15:09:21 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 15:11:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 15:11:29 GMT
ENV JAVA_VERSION=7u151
# Fri, 08 Sep 2017 15:11:29 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Fri, 08 Sep 2017 15:12:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5602c48c129a841ddaa28f06465e135c9abda1ba67db997c6e3af4b6155ead1`  
		Last Modified: Fri, 08 Sep 2017 15:27:34 GMT  
		Size: 466.3 KB (466262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d8de44a200f38e970d37186053d51e522863f55948ae18482ae41854c7e05f`  
		Last Modified: Fri, 08 Sep 2017 15:27:34 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f1fac857e012d0594a3757a9f81dc72e73a5a8288a42f0237a12ed99a3dc1d`  
		Last Modified: Fri, 08 Sep 2017 15:27:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd102aa957d07c305abaa1e44b02ee6734e238a1ee4fde77f10289c4026ded56`  
		Last Modified: Fri, 08 Sep 2017 15:32:09 GMT  
		Size: 84.9 MB (84895495 bytes)  
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
$ docker pull openjdk@sha256:08be438118c59ad6cf98203b947b814f56a84eb7afd4eaeaff82642bd2867799
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96254285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37f635b15f1676295b487370e8da9591231a56d7737f615b02c8c6dd8bbfbcc3`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:50 GMT
ADD file:520d2b400acdfce1df5aa9f6322a091acc0302fcef67b02c35f2fabb06f00377 in / 
# Fri, 08 Sep 2017 05:21:51 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:52:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:52:41 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 05:52:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 05:52:42 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 05:53:50 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 05:53:50 GMT
ENV JAVA_VERSION=7u151
# Fri, 08 Sep 2017 05:53:50 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Fri, 08 Sep 2017 05:54:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:69a1c1f09006646402113c13549903b3334134cbc88f6a3cc3aa52b906115dae`  
		Last Modified: Fri, 08 Sep 2017 05:25:03 GMT  
		Size: 30.3 MB (30294153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:683391cda11fb12ccd4d778e62cbb394a30d981ea34fb375da34a75f6201ca37`  
		Last Modified: Fri, 08 Sep 2017 05:57:01 GMT  
		Size: 473.2 KB (473158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6976c7fffe7f57d70821f68aa8b3ba712391b09b7b3c7e6e41a1c12ce6e7a1c`  
		Last Modified: Fri, 08 Sep 2017 05:57:00 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767d73c3e4385b79b6fed7fb2c28e35c551b21d8c20cfdf82d408880e3a5aa32`  
		Last Modified: Fri, 08 Sep 2017 05:57:00 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9e20ca0d21002a28cd00950126c879df9ecdf608b1373007562afa1bd48718`  
		Last Modified: Fri, 08 Sep 2017 05:57:38 GMT  
		Size: 65.5 MB (65486595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
